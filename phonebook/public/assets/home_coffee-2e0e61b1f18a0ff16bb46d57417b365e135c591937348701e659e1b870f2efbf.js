(function() {
  var do_after, task_line_chart;

  do_after = false;

  task_line_chart = null;

  this.charts = function() {
    var end_date, start_date;
    start_date = $('#start_date').datepicker('getFormattedDate');
    return end_date = $('#end_date').datepicker('getFormattedDate');
  };

  $(document).ready(function() {
    if ($(".home.index").length !== 0) {
      $("#end_date").datepicker();
      $("#start_date").datepicker();
      $('#start_date').on("changeDate", function() {
        return charts();
      });
      $('#end_date').on("changeDate", function() {
        return charts();
      });
      return charts();
    }
  });

}).call(this);
