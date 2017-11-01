require 'rails_helper'

RSpec.describe Author, :type => :model do
  subject { 
    described_class.new(
      first_name: "Frank", 
      last_name: "Smith", 
      age: 25
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid without a First name" do
    subject.first_name  =  nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a Last name" do
    subject.last_name  =  nil
    expect(subject).to_not be_valid
  end
  it "is not valid without an Age" do
    subject.age = nil
    expect(subject).to_not be_valid
  end
end