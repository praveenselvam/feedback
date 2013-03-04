class KarmaItemsController < ApplicationController
  # GET /karma_items
  # GET /karma_items.json
  def index
    @karma_items = KarmaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @karma_items }
    end
  end

  # GET /karma_items/1
  # GET /karma_items/1.json
  def show
    @karma_item = KarmaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @karma_item }
    end
  end

  # GET /karma_items/new
  # GET /karma_items/new.json
  def new
    @karma_item = KarmaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @karma_item }
    end
  end

  # GET /karma_items/1/edit
  def edit
    @karma_item = KarmaItem.find(params[:id])
  end

  # POST /karma_items
  # POST /karma_items.json
  def create
    @karma_item = KarmaItem.new(params[:karma_item])

    respond_to do |format|
      if @karma_item.save
        format.html { redirect_to @karma_item, notice: 'Karma item was successfully created.' }
        format.json { render json: @karma_item, status: :created, location: @karma_item }
      else
        format.html { render action: "new" }
        format.json { render json: @karma_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /karma_items/1
  # PUT /karma_items/1.json
  def update
    @karma_item = KarmaItem.find(params[:id])

    respond_to do |format|
      if @karma_item.update_attributes(params[:karma_item])
        format.html { redirect_to @karma_item, notice: 'Karma item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @karma_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karma_items/1
  # DELETE /karma_items/1.json
  def destroy
    @karma_item = KarmaItem.find(params[:id])
    @karma_item.destroy

    respond_to do |format|
      format.html { redirect_to karma_items_url }
      format.json { head :no_content }
    end
  end
end
