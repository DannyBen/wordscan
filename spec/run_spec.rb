describe 'run' do
  describe '--help' do
    it "shows help" do
      expect(`run --help`).to match_approval 'run_help'
    end
  end

  describe 'index' do
    it "shows index" do
      expect(`run index`).to match_approval 'run_index'
    end
  end

  describe 'find' do
    it "shows words from the dictionary" do
      expect(`run find animal ^d`).to match_approval 'run_find_animal_d'
    end

    context "with --compact" do
      it "shows results in the same line" do
        expect(`run find fruit ".*" --compact --len 4`).to match_approval 'run_find_fruit_compact'
      end
    end
  end

  describe 'like' do
    it "shows words from the thesaurus" do
      expect(`run like network -l5`).to match_approval 'run_like_network'
    end

    context "with --compact" do
      it "shows results in the same line" do
        expect(`run like arrive ^t --compact`).to match_approval 'run_like_arrive_compact'
      end
    end
  end
end

