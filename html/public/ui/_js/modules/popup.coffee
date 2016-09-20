'use strict'
# A class-based template for jQuery plugins in Coffeescript
#
#     $('.target').myPlugin({ paramA: 'not-foo' });
#     $('.target').myPlugin('myMethod', 'Hello, world');
#
# Check out Alan Hogan's original jQuery plugin template:
# https://github.com/alanhogan/Coffeescript-jQuery-Plugin-Template

# do($ = window.jQuery, window) ->
#   class myPopup

#     settings =
#       title : 'Popup'
#       width : 750
#       height : 500
#       toolbar : 0
#       menubar : 0
#       location : 0
#       status : 0
#       scrollbars : 0
#       resizable : 1
#       top : screen.width/2 - @settings.height/2;
#       left : screen.height/2 - @settings.width/2;

#     constructor: (el, options) ->
#       @options = $.extend({}, @defaults, options)
#       @$el = $(el)

#     # Additional plugin methods go here
#     myMethod: (echo) ->
#       @$el.html(@options.paramA + ': ' + echo)

#   # Define the plugin
#   $.fn.extend myPopup: (option, args...) ->
#     @each ->
#       $this = $(this)
#       data = $this.data('myPopup')

#       if !data
#         $this.data 'myPopup', (data = new myPopup(this, option))
#       if typeof option == 'string'
#         data[option].apply(data, args)



popupWindow = (link, title, options) ->
  if link?
  then window.open link, title ?= 'Share', options ?= 'width=750,height=500,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=1'
  else false

# class popupWindow
#   constructor: (@options) ->
#     @settings =
#       title : 'Popup'
#       width : 750
#       height : 500
#       toolbar : 0
#       menubar : 0
#       location : 0
#       status : 0
#       scrollbars : 0
#       resizable : 1
#       top : screen.width/2 - @settings.height/2;
#       left : screen.height/2 - @settings.width/2;
#     if @options and typeof @options == 'object'
#       for own key, value of @options
#          @settings[key] = @options[key]
#       @settings
#     else
#       @settings
#   popup: () ->
#     window.open @settings.link, @settings.title,
#     "width=#{@settings.width},
#     height=#{@settings.height},
#     toolbar=#{@settings.toolbar},
#     menubar=#{@settings.menubar},
#     location=#{@settings.location},
#     status=#{@settings.status},
#     scrollbars=#{@settings.scrollbars},
#     resizable=#{@settings.resizable}"
#     false
#   init: do ->
#     # alert('popups start')
#     popups = document.getElementsByClassName('popup')
#     for link in popups
#       # console.log link.href
#       link.onclick = __prototype__.popup()


# socialLinks.on 'click', 'a:not([href^="mailto"])', (event) ->
#     event.preventDefault
#     popupWindow this.href, this.title

module.exports = popupWindow

#EOF
