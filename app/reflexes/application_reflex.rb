# frozen_string_literal: true

class ApplicationReflex < StimulusReflex::Reflex
  delegate :current_user, to: :connection
  delegate :session_id, to: :connection
end
