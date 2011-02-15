class ProgramsController < ApplicationController
  
  before_filter :require_user
  
  def index
    @programs = current_user.programs.all
  end

  def show
    @program = Program.find(params[:id])
    @code  = Code.all
    @item = @program.items.new
  end
  
  def ref
    render :layout => 'blank'
  end

  def new
    @program = Program.new
    @goal = Goal.all
  end

  def edit
    @program = Program.find(params[:id])
    @goal = Goal.all
  end

  def create
    @user = current_user
    @program = @user.programs.new(params[:program])
    respond_to do |format|
      if @program.save
        format.html { redirect_to(@program, :notice => 'Program was successfully created.') }
        format.xml  { render :xml => @program, :status => :created, :location => @program }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @program = Program.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to(@program, :notice => 'Program was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to(programs_url) }
      format.xml  { head :ok }
    end
  end
end
