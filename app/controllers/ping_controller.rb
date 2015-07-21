class PingController < ApplicationController
  def index
    @stats = Host.all.map do |h|
      `ping -q -c 1 -t 2 #{h.name}`
    end
  end
end
