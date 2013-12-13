App.directive 'myValid', () ->
  isValid = (s) ->
    s == 'starbuck'

  require: "ngModel"
  link: (scope, elm, attrs, ngModelCtrl) ->
    ngModelCtrl.$parsers.unshift (viewValue) ->
      ngModelCtrl.$setValidity "myValid", isValid(viewValue)
      viewValue

    ngModelCtrl.$formatters.unshift (modelValue) ->
      ngModelCtrl.$setValidity "myValid", isValid(modelValue)
      modelValue

App.directive 'modelForm', () ->
  templateUrl: 'modelFormTemplate'

App.directive 'modelView', () ->
  templateUrl: 'modelViewTemplate'

