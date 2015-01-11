$ ->
  $.rails.allowAction = (link) ->
    return true unless link.attr('data-confirm')
    $.rails.showConfirmDialog(link) # look bellow for implementations
    false # always stops the action since code runs asynchronously

  $.rails.confirmed = (link) ->
    link.removeAttr('data-confirm')
    link.trigger('click.rails')

  $.rails.showConfirmDialog = (link) ->
    message = link.attr 'data-confirm'
    html = """
      <div class="modal fade" id="confirmationDialog" role="dialog" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="confirmModalLabel">Are you sure?</h4>
            </div>
            <div class="modal-body">
              <p>#{message}</p>
            </div>
            <div class="modal-footer">
              <button type="button" data-dismiss="modal" class="btn">Cancel</button>
              <button type="button data-dismiss="modal" class="btn btn-danger">OK</button>
            </div>
          </div>
        </div>
      </div>"""
    $(html).modal()
    $('#confirmationDialog .confirm').on 'click', -> $.rails.confirmed(link)

