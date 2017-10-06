(function() {
  $(document).ready(function() {
    mk_clickable();
    notifyDefaults();
    datepickerDefaults();
    $('[data-toggle="tooltip"]').tooltip();
  });

  this.mk_clickable = function() {
    $(".clickable").click(function() {
      window.location = $(this).data('location');
    });
  };

  this.notifyDefaults = function() {
    return $.notifyDefaults({
      allow_dismiss: true,
      delay: 5000,
      mouse_over: 'pause',
      type: 'success',
      animate: {
        enter: 'animated slideInDown',
        exit: 'animated slideOutUp'
      },
      template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert-pastel alert-{0}" role="alert">' + '<div class="text-left"><span data-notify="icon"></span> <span data-notify="title"><strong>{1}</strong></span></div>' + '<div class="text-right small"><button type="button" aria-hidden="true" class="close fa fa-times" data-notify="dismiss"></button></div>' + '<div data-notify="message"><span data-notify="message">{2}</span></div>' + '</div>'
    });
  };

  this.datepickerDefaults = function() {
    $.fn.datepicker.defaults.format = "mm/dd/yyyy";
    $.fn.datepicker.defaults.endDate = '0d';
    $.fn.datepicker.defaults.autoclose = true;
    $.fn.datepicker.defaults.clearBtn = true;
    $.fn.datepicker.defaults.todayBtn = true;
    return $.fn.datepicker.defaults.todayHighlight = true;
  };

}).call(this);
