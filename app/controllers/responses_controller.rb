class ResponsesController < ActionController::API
  def create
    response = Response.new(response_params)
    if response.save
      render json: { ok: true, id: response.id }, status: :created
    else
      render json: { ok: false, errors: response.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def response_params
    params.require(:response).permit(
      :name, :role, :sex, :age, :edu, :nation, :industry, :years, :size, :lmax, :ci, :cr,
      weights: [[:competency, :weight]],
      answers: [[:pair, :left, :right, :side, :intensity]]
    )
  end
end
