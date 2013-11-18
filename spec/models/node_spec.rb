require 'spec_helper'


describe "Nodes" do

  let(:user) { FactoryGirl.create(:user) }
  let(:map) { FactoryGirl.create(:map, user: user) }
  before { @node = map.nodes.build(title: "Lorem Ipsum" ) }

  subject { @node }

  it { should respond_to(:title) }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Map.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
  	end
  end

  describe "when map_id is not present" do
    before { @node.map_id = nil }
    it { should_not be_valid }
  end

  describe "with blank title" do
    before { @node.title = " " }
    it {should_not be_valid }
  end

end