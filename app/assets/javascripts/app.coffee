
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require tether
#= require bootstrap
#= require underscore
#= require backbone
#= require ie10-viewport-bug-workaround
#= require editor
#= require module
#= require uploader
#= require hotkeys
#= require simditor
#= require articles
#= require_tree
#= require_self

window.App =
  current_user_id: null
  turbolinks: false
  windowInActive: true

  # 警告信息显示, to 显示在那个dom前(可以用 css selector)
  alert : (msg, to) ->
    $(".alert").remove()
    $(to).before("<div class='alert alert-warning'><a class='close' href='#' data-dismiss='alert'>X</a>#{msg}</div>")

  # 成功信息显示, to 显示在那个dom前(可以用 css selector)
  notice : (msg, to) ->
    $(".alert").remove()
    $(to).before("<div class='alert alert-success'><a class='close' data-dismiss='alert' href='#'>X</a>#{msg}</div>")

  confirm: (msg, callback) ->
    bootbox.confirm msg, callback

  replaceDom: (selector) ->
    $.ajax
      url: location.href
      dataType: 'html'
      success: (html) ->
        doc = $(html).find(selector)
        $(selector).replaceWith(doc)

AppView = Backbone.View.extend
  initialize: ->
    @initCompoments()
    if $('body').data('controller') in ['articles', 'replies']
      @_articlesView = new ArticlesView({ parentView: @ })

  initCompoments: ->
    $('[data-toggle="tooltip"]').tooltip()

document.addEventListener 'turbolinks:load', ->
  if window.webkit? && window.webkit.messageHandlers?
    window.nativeApp = window.webkit.messageHandlers.NativeApp
  window._appView = new AppView()
