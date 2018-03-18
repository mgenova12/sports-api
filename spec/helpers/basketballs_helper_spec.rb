require 'rails_helper'

describe Api::V1::BasketballsHelper do
  describe "string concat first and last name" do
    it "concats first name plus last initial" do
      expect(helper.basketball_name_brief("Marco","Genova")).to eq("Marco G.")
    end

    it "returns nil if first name is missing" do
      expect(helper.basketball_name_brief("","Genova")).to eq(nil)
    end

    it "returns nil if last name is missing" do
      expect(helper.basketball_name_brief("Marco","")).to eq(nil)
    end

  end
end