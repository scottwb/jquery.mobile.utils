(function() {

  $.mobile.utils = {
    showWaitBox: function(theme, mesg) {
      var lmtv;
      lmtv = $.mobile.loadingMessageTextVisible;
      $.mobile.loadingMessageTextVisible = true;
      $.mobile.showPageLoadingMsg(theme, mesg, false);
      return $.mobile.loadingMessageTextVisible = lmtv;
    },
    hideWaitBox: function() {
      return $.mobile.hidePageLoadingMsg();
    },
    reloadPage: function() {
      return $.mobile.changePage(window.location.href, {
        allowSamePageTransition: true,
        transition: 'none',
        showLoadMsg: false,
        reloadPage: true
      });
    }
  };

}).call(this);
