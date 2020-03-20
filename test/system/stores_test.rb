require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Company", with: @store.company_id
    fill_in "Holidays end", with: @store.holidays_end
    fill_in "Holidays start", with: @store.holidays_start
    fill_in "Image", with: @store.image
    fill_in "Integer", with: @store.integer
    fill_in "Length", with: @store.length
    fill_in "Power", with: @store.power
    fill_in "Ranking", with: @store.ranking_id
    fill_in "Rating", with: @store.rating
    fill_in "Size l", with: @store.size_l
    fill_in "Size m", with: @store.size_m
    fill_in "Time", with: @store.time
    fill_in "Walk time", with: @store.walk_time
    fill_in "Weekdays end", with: @store.weekdays_end
    fill_in "Weekdays start", with: @store.weekdays_start
    fill_in "Wifi", with: @store.wifi
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Company", with: @store.company_id
    fill_in "Holidays end", with: @store.holidays_end
    fill_in "Holidays start", with: @store.holidays_start
    fill_in "Image", with: @store.image
    fill_in "Integer", with: @store.integer
    fill_in "Length", with: @store.length
    fill_in "Power", with: @store.power
    fill_in "Ranking", with: @store.ranking_id
    fill_in "Rating", with: @store.rating
    fill_in "Size l", with: @store.size_l
    fill_in "Size m", with: @store.size_m
    fill_in "Time", with: @store.time
    fill_in "Walk time", with: @store.walk_time
    fill_in "Weekdays end", with: @store.weekdays_end
    fill_in "Weekdays start", with: @store.weekdays_start
    fill_in "Wifi", with: @store.wifi
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end
