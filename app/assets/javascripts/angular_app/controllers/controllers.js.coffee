App.controller 'AppCtrl', ['$scope', 'modelStorage', '$collection', ($scope, $model_storage, $collection) ->

  $scope.models = $collection.getInstance().addAll $model_storage.get()

  $scope.updateStorage = () ->
    $model_storage.put $scope.models.all()

  $scope.newModel = {}

  $scope.reset = () ->
    $scope.newModel = {}

  $scope.save = (newModel) ->

    model = $scope.models.get newModel

    unless model
      $scope.models.add newModel

    $scope.updateStorage()
    $scope.reset()

  $scope.cleanModels = () ->
    $scope.models.removeAll()
    $scope.updateStorage()

  $scope.editModel = (model) ->
    $scope.newModel = $scope.models.get(model)

  $scope.delete = (model) ->
    $scope.models.remove model
    $scope.updateStorage()
]