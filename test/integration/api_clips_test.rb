require 'test_helper'

class ApiClipsTest < ActionDispatch::IntegrationTest
  test "get /api/clips.json" do
    get "/api/clips.json"
    assert_response :success
    assert body == Clip.all.to_json
    clips = JSON.parse(response.body)
    assert clips.size == 3 # because there are three fixtures (see clips.yml)
    assert clips.any? { |s| s["title"] == clips(:fast_rails_commands).title }
  end

  test "get /api/clips/:id" do
    clip = clips(:fast_rails_commands)
    get "/api/clips/#{clip.id}.json"
    assert_response :success
    assert body == clip.to_json
    assert JSON.parse(response.body)["title"] == clip.title
  end
end