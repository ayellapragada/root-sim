# frozen_string_literal: true

class HomeReflex < ApplicationReflex
  def blink
    morph '#blink-button', rand
  end
end
