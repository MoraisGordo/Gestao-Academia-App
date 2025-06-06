class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[ show update destroy ]

  # GET /funcionarios
  def index
    @funcionarios = Funcionario.all

    render json: @funcionarios
  end

  # GET /funcionarios/1
  def show
    render json: @funcionario
  end

  # POST /funcionarios
  def create
    @funcionario = Funcionario.new(funcionario_params)

    if @funcionario.save
      render json: @funcionario, status: :created, location: @funcionario
    else
      render json: @funcionario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /funcionarios/1
  def update
    if @funcionario.update(funcionario_params)
      render json: @funcionario
    else
      render json: @funcionario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /funcionarios/1
  def destroy
    @funcionario.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def funcionario_params
      params.expect(funcionario: [ :nome, :telefone, :email, :funcao ])
    end
end
