class ChhsApiClient < SODA::Client
  DATASET_IDENTIFIER_MAP = {
    adoption_agencies: ENV["CHHS_ADOPTION_AGENCIES_DATASET_ID"],
    residential_facilities: ENV["CHHS_RESIDENTIAL_FACILITIES_DATASET_ID"]
  }

  def initialize
    super(
      domain: "chhs.data.ca.gov",
      app_token: Rails.application.secrets.chhs_api_token
    )
  end

  def query(dataset: :adoption_agencies)
    dataset_identifier = DATASET_IDENTIFIER_MAP[dataset]
    unless dataset_identifier
      raise ArgumentError.new(
        "Invalid dataset #{dataset}. " +
        "Valid options are #{DATASET_IDENTIFIER_MAP.keys.join(", ")}"
      )
    end

    get(dataset_identifier, {"$limit" => 10_000})
  end
end
