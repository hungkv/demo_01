class Admin::WordsController < ApplicationController
  before_action :set_word, except: :index

  def index
    @categories = Category.all
    @words = Word.paginate page: params[:page]
    @word = Word.new
    @word.answers.build
  end

  def create
    word = Word.new word_params
    if word.save
      flash[:notice] = t :create_success, scope: :admin_words
      redirect_to admin_word_path word
    else
      flash[:notice] = t :create_failed, scope: :admin_words
      redirect_to :back
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    if @word.update_attributes word_params
      flash[:notice] = t :update_success, scope: :admin_words
      redirect_to admin_words_path
    else
      flash[:notice] = t :update_failed, scope: :admin_words
      redirect_to :back
    end
  end

  def destroy
    if @word.destroy
      flash[:notice] = t :delete_success, scope: :admin_words
      redirect_to admin_words_path
    else
      flash[:notice] = t :delete_failed, scope: :admin_words
      redirect_to :back
    end
  end

  private
  def word_params
    params.require(:word).permit :category_id, :content, answers_attributes: [:id, :content, :is_true, :_destroy]
  end

  def set_word
    @word = Word.find params[:id] rescue nil
  end
end
