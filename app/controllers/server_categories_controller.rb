class ServerCategoriesController < ApplicationController
  # GET /server_categories
  # GET /server_categories.json
  def index
    @server_categories = ServerCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @server_categories }
    end
  end

  # GET /server_categories/1
  # GET /server_categories/1.json
  def show
    @server_category = ServerCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server_category }
    end
  end

  # GET /server_categories/new
  # GET /server_categories/new.json
  def new
    @server_category = ServerCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server_category }
    end
  end

  # GET /server_categories/1/edit
  def edit
    @server_category = ServerCategory.find(params[:id])
  end

  # POST /server_categories
  # POST /server_categories.json
  def create
    @server_category = ServerCategory.new(params[:server_category])

    respond_to do |format|
      if @server_category.save
        format.html { redirect_to @server_category, notice: 'Server category was successfully created.' }
        format.json { render json: @server_category, status: :created, location: @server_category }
      else
        format.html { render action: "new" }
        format.json { render json: @server_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /server_categories/1
  # PUT /server_categories/1.json
  def update
    @server_category = ServerCategory.find(params[:id])

    respond_to do |format|
      if @server_category.update_attributes(params[:server_category])
        format.html { redirect_to @server_category, notice: 'Server category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @server_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_categories/1
  # DELETE /server_categories/1.json
  def destroy
    @server_category = ServerCategory.find(params[:id])
    @server_category.destroy

    respond_to do |format|
      format.html { redirect_to server_categories_url }
      format.json { head :ok }
    end
  end
end
