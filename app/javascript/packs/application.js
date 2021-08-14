// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application.scss"

Rails.start()
ActiveStorage.start()

import "controllers"

document.addEventListener("turbo:before-visit", e => {
  window.MiniProfilerContainer = document.querySelector('body > .profiler-results')
  if(!e.defaultPrevented) window.MiniProfiler.pageTransition()
})

document.addEventListener("turbo:load", e => {
  if(window.MiniProfilerContainer) {
    document.body.appendChild(window.MiniProfilerContainer)
  }
})
