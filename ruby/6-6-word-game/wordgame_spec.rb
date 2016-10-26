require_relative 'wordgame'

describe SecretWordGame do
  let(:secretwordgame) { SecretWordGame.new }
  
  it "assigns secret word to string variable" do
    expect(secretwordgame.secret_word("coconut")).to change{SecretWordGame.secret_word_str}.from("").to("coconut")
  end

  it "assigns secret word to array" do
    expect(secretwordgame.secret_word("coconut")).to change{SecretWordGame.secret_word_arr}.from([]).to(["c", "o", "c", "o", "n", "u", "t"])
  end

  it "assigns allowed number of guesses to be the word length plus 5" do
    expect(secretwordgame.secret_word("coconut")).to change{SecretWordGame.n_allowed_guesses}.from(nil).to(13)
  end

  it "assigns revealed word array to be the corresponding number of underscores" do
    expect(secretwordgame.secret_word("coconut")).to change{SecretWordGame.n_allowed_guesses}.from(nil).to(13)
  end

end