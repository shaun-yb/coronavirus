# require_relative " ../spec_helper"

module Coronavirus
    RSpec.describe Adapter do
        describe "#new" do
            context "when both a location id and alpha2 code is passed in" do
                it "raises an InvalidAdapterArgsError error" do
                    binding.pry

                    expect { described_class.new(location_id: 1, alpha2_code: "AV") }.to raise_error(InvalidAdapterArgs)
                end
            end

            context "when a location id has been provided" do
                let(:adapter) { described_class.new(location_id: 1) }

                context "when timelines are not enabled" do
                    it "returns the result of the location with id 1" do
                        binding.pry
                    end
                end
            end
        end
    end    
end

  