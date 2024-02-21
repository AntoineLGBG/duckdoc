require "application_system_test_case"

class DuckmonsTest < ApplicationSystemTestCase
  setup do
    @duckmon = duckmons(:one)
  end

  test "visiting the index" do
    visit duckmons_url
    assert_selector "h1", text: "Duckmons"
  end

  test "should create duckmon" do
    visit duckmons_url
    click_on "New duckmon"

    fill_in "Attack description", with: @duckmon.attack_description
    fill_in "Attack name", with: @duckmon.attack_name
    fill_in "Damages", with: @duckmon.damages
    fill_in "Description", with: @duckmon.description
    fill_in "Health point", with: @duckmon.health_point
    fill_in "Image", with: @duckmon.image
    fill_in "Name", with: @duckmon.name
    click_on "Create Duckmon"

    assert_text "Duckmon was successfully created"
    click_on "Back"
  end

  test "should update Duckmon" do
    visit duckmon_url(@duckmon)
    click_on "Edit this duckmon", match: :first

    fill_in "Attack description", with: @duckmon.attack_description
    fill_in "Attack name", with: @duckmon.attack_name
    fill_in "Damages", with: @duckmon.damages
    fill_in "Description", with: @duckmon.description
    fill_in "Health point", with: @duckmon.health_point
    fill_in "Image", with: @duckmon.image
    fill_in "Name", with: @duckmon.name
    click_on "Update Duckmon"

    assert_text "Duckmon was successfully updated"
    click_on "Back"
  end

  test "should destroy Duckmon" do
    visit duckmon_url(@duckmon)
    click_on "Destroy this duckmon", match: :first

    assert_text "Duckmon was successfully destroyed"
  end
end
