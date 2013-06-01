App.controller 'ClipsCtrl', ['$scope', 'Clip', ($scope, Clip) ->
  # Attributes accessible on the view
  $scope.clips        = Clip.query()
  $scope.selectedClip = null

  # Set the selected clip to the one which was clicked
  $scope.showClip = (clip) ->
    $scope.selectedClip = clip
]