class GrandParentsController < ApplicationController
  # GET /grand_parents
  # GET /grand_parents.xml
  def index
    @grand_parents = GrandParent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grand_parents }
    end
  end

  # GET /grand_parents/1
  # GET /grand_parents/1.xml
  def show
    @grand_parent = GrandParent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grand_parent }
    end
  end

  # GET /grand_parents/new
  # GET /grand_parents/new.xml
  def new
    @grand_parent = GrandParent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grand_parent }
    end
  end

  # GET /grand_parents/1/edit
  def edit
    @grand_parent = GrandParent.find(params[:id])
  end

  # POST /grand_parents
  # POST /grand_parents.xml
  def create
    @grand_parent = GrandParent.new(params[:grand_parent])

    respond_to do |format|
      if @grand_parent.save
        format.html { redirect_to(@grand_parent, :notice => 'Grand parent was successfully created.') }
        format.xml  { render :xml => @grand_parent, :status => :created, :location => @grand_parent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grand_parent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grand_parents/1
  # PUT /grand_parents/1.xml
  def update
    @grand_parent = GrandParent.find(params[:id])

    respond_to do |format|
      if @grand_parent.update_attributes(params[:grand_parent])
        format.html { redirect_to(@grand_parent, :notice => 'Grand parent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grand_parent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grand_parents/1
  # DELETE /grand_parents/1.xml
  def destroy
    @grand_parent = GrandParent.find(params[:id])
    @grand_parent.destroy

    respond_to do |format|
      format.html { redirect_to(grand_parents_url) }
      format.xml  { head :ok }
    end
  end
end
