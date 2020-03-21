module Coronavirus
    class Adapter
        DEFAULT_BASE_URL = "https://coronavirus-tracker-api.herokuapp.com/v2/"

        attr_reader :base_url, :location_id, :alpha2_code, :with_timelines

        def initialize(base_url:DEFAULT_BASE_URL, location_id:, alpha2_code:, with_timelines:false)
            @base_url = base_url
            @location_id = location_id
            @alpha2_code = alpha2_code
            @with_timelines = with_timelines

            validate_params!
        end

        def validate_params!
            raise InvalidAdapterArgs.new("you can't have both an alpha2 code and location id") if !alpha2_code.nil? && !location_id.nil?
        end
    end
end