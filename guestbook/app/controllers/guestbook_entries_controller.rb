class GuestbookEntriesController < ApplicationController
  def index
    @guestbook_entries = GuestbookEntry.all
    @guestbook_entry = GuestbookEntry.new
  end

  def create
    @guestbook_entry = GuestbookEntry.new(guestbook_entry_params)
    if @guestbook_entry.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def guestbook_entry_params
    params.require(:guestbook_entry).permit(:body)
  end
end