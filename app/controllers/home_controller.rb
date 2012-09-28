class HomeController < ApplicationController
  def index
    @words = Word.all
  end

  def add_word
    word = Word.create(:word=>params[:word],:meanning=>params[:meaning])
    redirect_to "/home/index"
  end

  def start_test
    session[:test_paper_id] = rand(100000000)
    session[:q_count] = false
    redirect_to :action=>'test_vocab'
  end

  def test_vocab
    @words = Array.new
    @words.push Word.random
  end

  def answer_question
    word = params[:q_0]
    word_id = Word.where(:word=>word).first.id
    answer_word_id = params[:ans].to_i
    test_paper_id = session[:test_paper_id].to_i
    Answer.create(:test_paper_id=>test_paper_id, :answer_id=>answer_word_id, :word_id=>word_id)
    if session[:q_count] == false || session[:q_count].nil?
      session[:q_count] = 1
    else
      session[:q_count] = session[:q_count].to_i + 1
    end

    if session[:q_count] == 5
      redirect_to :action=>'show_result', :id=>test_paper_id
    else
      redirect_to :action=>'test_vocab'
    end

  end

  def show_result
    test_paper_id = params[:id].to_i
    @user_answers = Answer.where(:test_paper_id=>test_paper_id)
  end
end
