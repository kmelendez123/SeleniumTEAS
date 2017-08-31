require_relative 'spec_helper'
require_relative '../pages/steps'

describe 'Steps' do

  before(:each) do
    @steps = Steps.new(@driver)
  end

  it 'Visits the teas page and checks role' do
    @steps.go_to_form
    expect(@steps.verify_role).to eql true
  end

  it 'goes through form and returns validation error' do
    @steps.go_to_form
    @steps.continue
    @steps.fill_form
    @steps.continue
    expect(@steps.error_message_present?).to eql true
  end

  it 'should prompt the correct field label per entity value' do
    @steps.go_to_form
    @steps.continue
    expect(@steps.check_entity_information?).to eql true
  end

end
