require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { company_id: @store.company_id, holidays_end: @store.holidays_end, holidays_start: @store.holidays_start, image: @store.image, integer: @store.integer, length: @store.length, power: @store.power, ranking_id: @store.ranking_id, rating: @store.rating, size_l: @store.size_l, size_m: @store.size_m, time: @store.time, walk_time: @store.walk_time, weekdays_end: @store.weekdays_end, weekdays_start: @store.weekdays_start, wifi: @store.wifi } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@store)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@store)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { company_id: @store.company_id, holidays_end: @store.holidays_end, holidays_start: @store.holidays_start, image: @store.image, integer: @store.integer, length: @store.length, power: @store.power, ranking_id: @store.ranking_id, rating: @store.rating, size_l: @store.size_l, size_m: @store.size_m, time: @store.time, walk_time: @store.walk_time, weekdays_end: @store.weekdays_end, weekdays_start: @store.weekdays_start, wifi: @store.wifi } }
    assert_redirected_to store_url(@store)
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@store)
    end

    assert_redirected_to stores_url
  end
end
