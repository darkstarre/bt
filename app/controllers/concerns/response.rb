# app/controllers/concerns/response.rb
module Response
  def json_respone(object, status = :ok)
    render json: object, status: status
  end
end

