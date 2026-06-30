class ArticleMemosController < ApplicationController
  before_action :set_article_memo, only: %i[ show edit update destroy ]

  # GET /article_memos
  def index
    @article_memos = ArticleMemo.all
  end

  # GET /article_memos/1
  def show
  end

  # GET /article_memos/new
  def new
    @article_memo = ArticleMemo.new
  end

  # GET /article_memos/1/edit
  def edit
  end

  # POST /article_memos
  def create
    @article_memo = ArticleMemo.new(article_memo_params)

    if @article_memo.save
      redirect_to @article_memo, notice: "Article memo was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /article_memos/1
  def update
    if @article_memo.update(article_memo_params)
      redirect_to @article_memo, notice: "Article memo was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /article_memos/1
  def destroy
    @article_memo.destroy!
    redirect_to article_memos_path, notice: "Article memo was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_memo
      @article_memo = ArticleMemo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def article_memo_params
      params.expect(article_memo: [ :title, :body, :category, :status ])
    end
end
