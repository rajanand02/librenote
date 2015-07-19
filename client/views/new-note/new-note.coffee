Template.newNote.events
  "click .note-placeholder":(e,t) ->
    t.$('.note-placeholder').hide()
    t.$('.note-inner').show()
    t.$('#text-note').focus()

  "input #text-note, blur #text-note": (e,t)->
    text = t.$('#text-note').text().trim()
    if text isnt ""
      t.$('.text-placeholder').hide()
    else
      $('.text-placeholder').show()

  "click .text-placeholder": (e,t)->
    t.$('.text-placeholder').hide()
    t.$('#text-note').focus()

  "click .btn-done":(e,t)->
    title = t.$('#title').val().trim()
    content = $('#text-note').text().trim()
    console.log title
    console.log content
    Notes.insert
      title: title
      content: content
      type: "text"
      date: Date.now()
      owner: "Anonymous dude"
    t.$('#title').val('')
    $('#text-note').text('')
    t.$('.text-placeholder').show()



