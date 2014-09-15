class PlayerRecordsController < ApplicationController
  # GET /player_records
  # GET /player_records.json
  load_and_authorize_resource
  skip_authorize_resource :only => :show
  def index
    @player_records = PlayerRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_records }
    end
  end

  # GET /player_records/1
  # GET /player_records/1.json
  def show
    @player_record = PlayerRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_record }
    end
  end

  # GET /player_records/new
  # GET /player_records/new.json
  def new
    @player_record = PlayerRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_record }
    end
  end

  # GET /player_records/1/edit
  def edit
    @player_record = PlayerRecord.find(params[:id])
  end

  # POST /player_records
  # POST /player_records.json
  def create
    @player_record = PlayerRecord.new(params[:player_record])

    respond_to do |format|
      if @player_record.save
        format.html { redirect_to @player_record, notice: 'Player record was successfully created.' }
        format.json { render json: @player_record, status: :created, location: @player_record }
      else
        format.html { render action: "new" }
        format.json { render json: @player_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_records/1
  # PUT /player_records/1.json
  def update
    @player_record = PlayerRecord.find(params[:id])
    respond_to do |format|
      if @player_record.update_attributes(params[:player_record])
        format.html { redirect_to @player_record, notice: 'Player record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_records/1
  # DELETE /player_records/1.json
  def destroy
    @player_record = PlayerRecord.find(params[:id])
    @player_record.destroy

    respond_to do |format|
      format.html { redirect_to player_records_url }
      format.json { head :no_content }
    end
  end
end
