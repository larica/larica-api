class DocController < ApplicationController
  layout :set_layout
  def index
  end

  def set_layout
    "swagger"
  end
end
