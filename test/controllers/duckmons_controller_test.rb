require "test_helper"

class DuckmonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duckmon = duckmons(:one)
  end

  test "should get index" do
    get duckmons_url
    assert_response :success
  end

  test "should get new" do
    get new_duckmon_url
    assert_response :success
  end

  test "should create duckmon" do
    assert_difference("Duckmon.count") do
      post duckmons_url, params: { duckmon: { attack_description: @duckmon.attack_description, attack_name: @duckmon.attack_name, damages: @duckmon.damages, description: @duckmon.description, health_point: @duckmon.health_point, image: @duckmon.image, name: @duckmon.name } }
    end

    assert_redirected_to duckmon_url(Duckmon.last)
  end

  test "should show duckmon" do
    get duckmon_url(@duckmon)
    assert_response :success
  end

  test "should get edit" do
    get edit_duckmon_url(@duckmon)
    assert_response :success
  end

  test "should update duckmon" do
    patch duckmon_url(@duckmon), params: { duckmon: { attack_description: @duckmon.attack_description, attack_name: @duckmon.attack_name, damages: @duckmon.damages, description: @duckmon.description, health_point: @duckmon.health_point, image: @duckmon.image, name: @duckmon.name } }
    assert_redirected_to duckmon_url(@duckmon)
  end

  test "should destroy duckmon" do
    assert_difference("Duckmon.count", -1) do
      delete duckmon_url(@duckmon)
    end

    assert_redirected_to duckmons_url
  end
end
