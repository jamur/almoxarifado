class RetirantesController < ApplicationController
  # GET /retirantes
  # GET /retirantes.xml
  def index
    @retirantes = Retirante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @retirantes }
    end
  end

  # GET /retirantes/1
  # GET /retirantes/1.xml
  def show
    @retirante = Retirante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @retirante }
    end
  end

  # GET /retirantes/new
  # GET /retirantes/new.xml
  def new
    @retirante = Retirante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @retirante }
    end
  end

  # GET /retirantes/1/edit
  def edit
    @retirante = Retirante.find(params[:id])
  end

  # POST /retirantes
  # POST /retirantes.xml
  def create
    @retirante = Retirante.new(params[:retirante])

    respond_to do |format|
      if @retirante.save
        format.html { redirect_to(@retirante, :notice => 'Retirante was successfully created.') }
        format.xml  { render :xml => @retirante, :status => :created, :location => @retirante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @retirante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /retirantes/1
  # PUT /retirantes/1.xml
  def update
    @retirante = Retirante.find(params[:id])

    respond_to do |format|
      if @retirante.update_attributes(params[:retirante])
        format.html { redirect_to(@retirante, :notice => 'Retirante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @retirante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /retirantes/1
  # DELETE /retirantes/1.xml
  def destroy
    @retirante = Retirante.find(params[:id])
    @retirante.destroy

    respond_to do |format|
      format.html { redirect_to(retirantes_url) }
      format.xml  { head :ok }
    end
  end
end
