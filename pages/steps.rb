require_relative 'base_page'

class Steps < BasePage

  CONTINUE_BUTTON     = { css: "input[class='button'][value='Continue']" }
  ATTORNEY_ROLE       = { id: 'attNeededYes' }
  INTERNAL_ADDRESS    = { id: 'form.owner[0].internalAddr'}
  ERROR_MESSAGE       = { id: 'errmsg'}
  ENTITY_INDIVIDUAL   = { id: 'owner.individual'}
  ENTITY_CORPORATION  = { id: 'owner.corporation'}
  ENTITY_PARTNERSHIP  = { id: 'owner.partnership'}
  INDIVIDUAL_LABEL    = { id: 'form.owner[0].citizenship'}
  CORPORATION_LABEL   = { id: 'ENTITY_STATE_LABEL'}
  PARTNERSHIP_LABEL   = { id: 'entityPartner'}

  def go_to_form
    visit "/teasplus"
  end

  def continue
    click CONTINUE_BUTTON
  end

  def verify_role
    is_selected? ATTORNEY_ROLE
  end

  def fill_form
    type("ABC 123", INTERNAL_ADDRESS)
  end

  def check_entity_information?
    click ENTITY_INDIVIDUAL
    is_selected? ENTITY_INDIVIDUAL
    wait_for(3) { is_displayed? INDIVIDUAL_LABEL }

    click ENTITY_CORPORATION
    is_selected? ENTITY_CORPORATION
    wait_for(3) { is_displayed? CORPORATION_LABEL }

    click ENTITY_PARTNERSHIP
    is_selected? ENTITY_PARTNERSHIP
    wait_for(3) { is_displayed? PARTNERSHIP_LABEL }
  end

  def error_message_present?
    wait_for(10) { is_displayed? ERROR_MESSAGE }
  end

end
