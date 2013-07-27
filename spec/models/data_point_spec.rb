require 'spec_helper'
include ActionView::Helpers

describe DataPoint do
  it "returns alerts" do
  	expect(subject.retrieveAlerts).to be_instance_of(DataPoint)
  end

  it "should return warnings" do
  	expect(subject.retrieveWarnings).to be_instance_of(DataPoint)
  end

 
end
