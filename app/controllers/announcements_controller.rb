class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]

  # GET /announcements
  # GET /announcements.json
  def index
    @announcements = Announcement.all
  end

  # GET /announcements/1
  # GET /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements
  # POST /announcements.json
  def create
    params[:announcement][:admin_id] = current_admin.id
    @announcement = Announcement.new(announcement_params)
    respond_to do |format|
      if @announcement.save
        format.html { redirect_to action: "index", notice: 'Announcement was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    params[:announcement][:admin_id] = current_admin.id
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to action: "index", notice: 'Announcement was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'Announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def announcement_params
      params.require(:announcement).permit(:publish_on, :expire_on, :critical_flag, :body, :title, :admin_id)
    end
end
