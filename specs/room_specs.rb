require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test
  def setup
    @song1 = Song.new("Run to the hills")
    @song2 = Song.new("Fiesta Pagana")

    @playlist1 = [@song1, @song2]

    @guest1 = Guest.new("Jack", 20, "Run to the hills")
    @guest2 = Guest.new("John", 10, "The Trooper")

    @guest_list = [@guest1, @guest2]

    @room1 = Room.new(1, @playlist1, @guest_list, 3)
  end

  def test_has_id
  assert_equal(1, @room1.id)
  end

  def test_has_playlist
    assert_equal(@playlist1, @room1.songs)
  end

  def test_has_guests
    assert_equal(@guest_list, @room1.guests)
  end

  def test_has_room_size
    assert_equal(3, @room1.room_size)
  end
end