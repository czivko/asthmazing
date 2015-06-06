class AsthmaEmergencyDepartmentsController < ApplicationController
  def index
    data = HTTParty.get('https://cdph.data.ca.gov/resource/fqaj-k8t7.json')
    parsed_data = [].extend(AsthmaEmergencyDepartmentRepresenter.for_collection).from_hash(data)

    render json: parsed_data.to_json
  end
end
