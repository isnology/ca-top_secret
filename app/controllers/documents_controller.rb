class DocumentsController < ApplicationController
  def index
    if signed_in?
      @documents = Document.all
    end
  end

  def show
  end
end
