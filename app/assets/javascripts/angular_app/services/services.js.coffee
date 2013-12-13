App.factory "modelStorage", ->
  STORAGE_ID = "models"
  get: ->
    JSON.parse localStorage.getItem(STORAGE_ID) or "[]"

  put: (models) ->
    localStorage.setItem STORAGE_ID, JSON.stringify(models)