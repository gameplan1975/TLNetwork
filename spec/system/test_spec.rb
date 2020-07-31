require 'rails_helper'
RSpec.describe 'Tasks', type: :system do
  before do
  end
  describe "ゲーム画面のテスト" do
    before do
    end
    context "準備画面に遷移した時" do
      it "登録したジャンルが表示されること" do
        visit games_prepare_path
        expect(page).to have_content "世界史"
      end
    end
  end
end