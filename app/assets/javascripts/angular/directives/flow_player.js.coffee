App.directive 'flowPlayer', ->
  (scope, element, attrs) ->

    # Trigger when the selectedClip function is called
    # with a clip
    scope.$watch 'selectedClip', (clip) ->
      if clip

        # See http://flowplayer.org/docs/
        element.flowplayer
          playlist: [[mp4: clip.video_url]]
          ratio: 9 / 14