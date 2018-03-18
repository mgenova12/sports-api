require 'rails_helper'

describe Api::V1::FootballsHelper do
  describe "string concat first and last name" do
    it "concats first initial and their last name" do
      expect(helper.football_name_brief("Marco","Genova")).to eq("M. Genova")
    end

    it "returns nil if first name is missing" do
      expect(helper.football_name_brief("","Genova")).to eq(nil)
    end

    it "returns nil if last name is missing" do
      expect(helper.football_name_brief("Marco","")).to eq(nil)
    end

  end
end