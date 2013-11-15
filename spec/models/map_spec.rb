require 'spec_helper'


describe "Maps" do

  let(:user) { FactoryGirl.create(:user) }
  before { @map = user.maps.build(name: "Lorem Ipsum" ) }

  subject { @map }

  it { should respond_to(:name) }
  it { should respond_to(:user) }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Map.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
  	end
  end

  describe "when user_id is not present" do
    before { @map.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank name" do
    before { @map.name = " " }
    it {should_not be_valid }
  end

end