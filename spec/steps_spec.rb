require_relative 'spec_helper'
require_relative '../pages/steps'

describe 'Steps' do

  before(:each) do
    @steps = Steps.new(@driver)
  end

  it 'Visits the teas page and checks role', :shallow do
    @steps.go_to_form
    expect(@steps.verify_role).to eql true
  end

  it 'goes through form and returns validation error', :deep do
    @steps.go_to_form
    @steps.continue
    @steps.fill_form
    @steps.continue
    expect(@steps.error_message_present?).to eql true
  end

  it 'should prompt the correct field label per entity value', :deep do
    @steps.go_to_form
    @steps.continue
    expect(@steps.check_entity_information?).to eql true
  end

  # it 'saves the page as html with all assets' do
  #   @steps.go_to_form
  #   @steps.continue
  #   directory = '508scan/pages_to_save'
  #   url = 'https://teas.uspto.gov/forms/teas.service'
  #   wget = "wget -p -k -P #{directory} #{url} --no-check-certificate"
  #   system(wget)
  # end
end
