$.mobile.utils =
  showWaitBox: (theme, mesg) ->
    lmtv = $.mobile.loadingMessageTextVisible
    $.mobile.loadingMessageTextVisible = true
    $.mobile.showPageLoadingMsg theme, mesg, false
    $.mobile.loadingMessageTextVisible = lmtv

  hideWaitBox: ->
    $.mobile.hidePageLoadingMsg()

  reloadPage: ->
    $.mobile.changePage window.location.href,
      allowSamePageTransition : true,
      transition              : 'none',
      showLoadMsg             : false,
      reloadPage              : true
    
