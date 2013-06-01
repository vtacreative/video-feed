require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  setup do
    @clip_defaults = {
      title:        'Facebook Authentication',
      summary:      'This will show how to create a new facebook application and configure it. Then add some authentication with the omniauth-facebook gem and top it off with a client-side authentication using the JavaScript SDK.',
      duration:     '12:09',
      link:         'http://railscasts.com/episodes/360-facebook-authentication',
      published_at: Date.parse('Mon, 25 Jun 2012 00:00:00 -0700'),
      source:       'railscasts',
      video_url:    'http://media.railscasts.com/assets/episodes/videos/360-facebook-authentication.mp4'
    }
  end

  test "should be invalid if missing required data" do
    clip = Clip.new
    assert !clip.valid?
    [:title, :summary, :duration, :link, :published_at, :source, :video_url].each do |field_name|
      assert clip.errors.keys.include? field_name
    end
  end

  test "should be valid if required data exists" do
    clip = Clip.new(@clip_defaults)
    assert clip.valid?
  end

  test "should only allow one clip with the same video url" do
    clip = Clip.new(@clip_defaults)
    clip.video_url = clips(:fast_rails_commands).video_url
    assert !clip.valid?
    assert clip.errors[:video_url].include? "has already been taken"
  end
end