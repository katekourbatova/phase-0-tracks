require_relative 'wordgame'

describe SecretWordGame do
  let(:secretwordgame) { SecretWordGame.new }
  
  it "assigns secret word to string variable" do
    expect {secretwordgame.set_secret_word("coconut")}.to change{secretwordgame.secret_word_str}.from("").to("coconut")
  end

  it "assigns allowed number of guesses to be the word length plus 3" do
    expect {secretwordgame.set_secret_word("coconut")}.to change{secretwordgame.n_guesses_left}.from(nil).to(10)
  end

  it "assigns revealed word array to be the corresponding number of underscores" do
    expect {secretwordgame.set_secret_word("coconut")}.to change{secretwordgame.reveal_word_str}.from("").to("_______")
  end



end