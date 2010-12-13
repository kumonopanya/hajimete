class CategsController < ApplicationController
  # GET /categs
  # GET /categs.xml
  def index
    @categs = Categ.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categs }
    end
  end

  # GET /categs/1
  # GET /categs/1.xml
  def show
    @categ = Categ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categ }
    end
  end

  # GET /categs/new
  # GET /categs/new.xml
  def new
    @categ = Categ.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categ }
    end
  end

  # GET /categs/1/edit
  def edit
    @categ = Categ.find(params[:id])
  end

  # POST /categs
  # POST /categs.xml
  def create
    @categ = Categ.new(params[:categ])

    respond_to do |format|
      if @categ.save
        format.html { redirect_to(@categ, :notice => 'Categ was successfully created.') }
        format.xml  { render :xml => @categ, :status => :created, :location => @categ }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categs/1
  # PUT /categs/1.xml
  def update
    @categ = Categ.find(params[:id])

    respond_to do |format|
      if @categ.update_attributes(params[:categ])
        format.html { redirect_to(@categ, :notice => 'Categ was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categs/1
  # DELETE /categs/1.xml
  def destroy
    @categ = Categ.find(params[:id])
    @categ.destroy

    respond_to do |format|
      format.html { redirect_to(categs_url) }
      format.xml  { head :ok }
    end
  end
end
