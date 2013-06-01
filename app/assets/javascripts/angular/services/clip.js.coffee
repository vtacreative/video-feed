App.factory 'Clip', ['$resource', ($resource) ->
  $resource '/api/clips/:id', id: '@id'
]