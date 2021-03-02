class BooksController < ApplicationController
  before_action :set_book, only: %i[ show update destroy ]

  # GET /books
  def index
    @books = Book.includes(:author).all

    render json: @books.to_json(include: [:author])
  end

  # GET /books/1
  def show
    render json: @book.to_json(include: [:author])
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book.to_json(include: [:author]), status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: @book.to_json(include: [:author]), status: :ok, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    render body: nil, status: :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :author_id, :description, :published_at)
    end
end
