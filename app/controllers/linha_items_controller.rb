class LinhaItemsController < ApplicationController
  # GET /linha_items
  # GET /linha_items.xml
  def index
    @linha_items = LinhaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @linha_items }
    end
  end

  # GET /linha_items/1
  # GET /linha_items/1.xml
  def show
    @linha_item = LinhaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @linha_item }
    end
  end

  # GET /linha_items/new
  # GET /linha_items/new.xml
  def new
    @linha_item = LinhaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @linha_item }
    end
  end

  # GET /linha_items/1/edit
  def edit
    @linha_item = LinhaItem.find(params[:id])
  end

  # POST /linha_items
  # POST /linha_items.xml
  def create
    @carrinho = corrente_carrinho
    produto = Produto.find(params[:produto_id])
    #@linha_item = @carrinho.linha_items.build(:produto =>produto)
    @linha_item = @carrinho.adiciona_produto(produto.id)

    respond_to do |format|
      if @linha_item.save
        #format.html { redirect_to(@linha_item.carrinho) }
        format.html { redirect_to(armazem_url) }
        format.js   { @corrente_item = @linha_item }
        format.xml  { render :xml => @linha_item, :status => :created, :location => @linha_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @linha_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /linha_items/1
  # PUT /linha_items/1.xml
  def update
    @linha_item = LinhaItem.find(params[:id])

    respond_to do |format|
      if @linha_item.update_attributes(params[:linha_item])
        format.html { redirect_to(@linha_item, :notice => 'Linha item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @linha_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /linha_items/1
  # DELETE /linha_items/1.xml
  def destroy
    @linha_item = LinhaItem.find(params[:id])
    @linha_item.destroy

    respond_to do |format|
      format.html { redirect_to(linha_items_url) }
      format.xml  { head :ok }
    end
  end
end
