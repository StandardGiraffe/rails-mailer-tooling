class PensController < ApplicationController

  before_action :set_pen, only: [:show, :update, :destroy]

    # GET /pens
  def index
    @pens = Pen.all
    json_response(@pens)
  end

  # POST /pens
  def create
    @pen = Pen.create!(pen_params)
    json_response(@pen, :created)
  end

  # GET /pens/:id
  def show
    json_response(@pen)
  end

  # PUT /pens/:id
  def update
    @pen.update(pen_params)
    head :no_content
  end

  # DELETE /pens/:id
  def destroy
    @pen.destroy
    head :no_content
  end

private

    def pen_params
      # whitelist params
      params.permit(:model, :lent_out, :nib_id, :user_id, )
    end

    def set_pen
      @pen = Pen.find(params[:id])
    end

end
