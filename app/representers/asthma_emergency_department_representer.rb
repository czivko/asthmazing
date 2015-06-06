module AsthmaEmergencyDepartmentRepresenter
  include Representable::Hash

  collection_representer class: AsthmaEmergencyDepartment

  property :zipcode, reader: lambda { |doc, args|
    self.zipcode = ::JSON.parse(doc['zipcode']['human_address'])['zip']
  }

  property :children_visits, as: :count_visits_kids
  property :children_age_adjusted_rate, as: :adjrate_kids
  property :adult_visits, as: :count_visits_adults
  property :adult_age_adjusted_rate, as: :adjrate_adults
  property :visits, as: :count_visits_all
  property :age_adjusted_rate, as: :adjrate_kids
  property :county_fips_code, as: :cnty_fips

  nested :zipcode do
    property :longitude
    property :latitude
  end
end
