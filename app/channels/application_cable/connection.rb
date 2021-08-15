module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
    identified_by :session_id

    def connect
      self.session_id = request.session.id
      self.current_user = env['warden'].user
      reject_unauthorized_connection unless self.current_user || self.session_id
    end
  end
end
