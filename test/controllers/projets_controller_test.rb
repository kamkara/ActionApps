require "test_helper"

class ProjetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projet = projets(:one)
  end

  test "should get index" do
    get projets_url
    assert_response :success
  end

  test "should get new" do
    get new_projet_url
    assert_response :success
  end

  test "should create projet" do
    assert_difference("Projet.count") do
      post projets_url, params: { projet: { amount: @projet.amount, content: @projet.content, heroImg: @projet.heroImg, start_date: @projet.start_date, title: @projet.title, user_id: @projet.user_id } }
    end

    assert_redirected_to projet_url(Projet.last)
  end

  test "should show projet" do
    get projet_url(@projet)
    assert_response :success
  end

  test "should get edit" do
    get edit_projet_url(@projet)
    assert_response :success
  end

  test "should update projet" do
    patch projet_url(@projet), params: { projet: { amount: @projet.amount, content: @projet.content, heroImg: @projet.heroImg, start_date: @projet.start_date, title: @projet.title, user_id: @projet.user_id } }
    assert_redirected_to projet_url(@projet)
  end

  test "should destroy projet" do
    assert_difference("Projet.count", -1) do
      delete projet_url(@projet)
    end

    assert_redirected_to projets_url
  end
end
