$.mobile.utils =
  showWaitBox: (theme, mesg) ->
    lmtv = $.mobile.loadingMessageTextVisible
    $.mobile.loadingMessageTextVisible = true
    $.mobile.showPageLoadingMsg theme, mesg, false
    $.mobile.loadingMessageTextVisible = lmtv

  hideWaitBox: ->
    $.mobile.hidePageLoadingMsg()

  reloadPage: (opts) ->
    opts = {} unless opts?
    defaults =
      allowSamePageTransition : true,
      transition              : 'none',
      showLoadMsg             : false,
      reloadPage              : true
    $.mobile.changePage window.location.href, $.extend(defaults, opts)
