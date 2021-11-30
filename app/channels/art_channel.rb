class ArtChannel < ApplicationCable::Channel
  def subscribed
    art = Art.find(params[:id])
    stream_for art
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
