// First delete all labels, then copy and paste this into your browser console

[
  {
    "name": "C1 - bug",
    "description": "A bug, if something isn't working",
    "color": "cc6565"
  },
  {
    "name": "C2 - feature",
    "description": "A suggestion or implementation of a new feature",
    "color": "DA825f"
  },
  {
    "name": "C3 - enhancement",
    "description": "A change or improvement of a existing feature",
    "color": "5194d6"
  },
  {
    "name": "C4 - documentation",
    "description": "Improvements or additions to documentation",
    "color": "db61e2"
  },
  {
    "name": "C5 - question",
    "description": "This issue is a question",
    "color": "ece476"
  },
  {
    "name": "S1 - invalid form",
    "description": "This doesn't seem right",
    "color": "000000"
  },
  {
    "name": "S2 - duplicate",
    "description": "There is already an issue with this topic",
    "color": "b2cf56"
  },
  {
    "name": "S3 - good first issue",
    "description": "Good for newcomers",
    "color": "b2cf56"
  },
  {
    "name": "S4 - more info needed",
    "description": "More information about this issue would be nice",
    "color": "6c6cee"
  },
  {
    "name": "S5 - help wanted",
    "description": "Extra attention is needed",
    "color": "6c6cee"
  },
  {
    "name": "S6 - in progress",
    "description": "This feature is still in progress and should not be reviewed",
    "color": "000000"
  },
  {
    "name": "S7 - rejected",
    "description": "This feature was rejected",
    "color": "000000"
  },
  {
    "name": "S8 - wontfix",
    "description": "This will not further be worked on",
    "color": "000000"
  },
  {
    "name": "S9 - release",
    "description": "These are releases. Mostly used for master PR's.",
    "color": "000000"
  },
  {
    "name": "T1 - critical",
    "description": "The bug causes data loss, crashes, etc",
    "color": "6086e6"
  },
  {
    "name": "T2 - hard",
    "description": "The bug reports incorrect functionality, bad functionality, a confusing user experience, etc",
    "color": "6086e6"
  },
  {
    "name": "T3 - medium",
    "description": "The bug reports cosmetic items, formatting, spelling, colors, etc.",
    "color": "6086e6"
  }
].forEach(function(label) {
  addLabel(label)
})

function updateLabel (label) {
  var flag = false;
  [].slice.call(document.querySelectorAll(".labels-list-item"))
  .forEach(function(element) {
    if (element.querySelector('.js-label-link').textContent.trim() === label.name) {
      flag = true
      element.querySelector('.js-edit-label').click()
      element.querySelector('.js-new-label-name-input').value = label.name
      element.querySelector('.js-new-label-description-input').value = label.description
      element.querySelector('.js-new-label-color-input').value = '#' + label.color
      element.querySelector('.js-edit-label-cancel ~ .btn-primary').click()
    }
  })
  return flag
}

function addNewLabel (label) {
  document.querySelector('.js-new-label-name-input').value = label.name
  document.querySelector('.js-new-label-description-input').value = label.description
  document.querySelector('.js-new-label-color-input').value = '#' + label.color
  document.querySelector('.js-details-target ~ .btn-primary').disabled = false
  document.querySelector('.js-details-target ~ .btn-primary').click()
}

function addLabel (label) {
  if (!updateLabel(label)) addNewLabel(label)
}