require 'test_helper'

class User::CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_card = user_cards(:one)
  end

  test "should get index" do
    get user_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_user_card_url
    assert_response :success
  end

  test "should create user_card" do
    assert_difference('User::Card.count') do
      post user_cards_url, params: { user_card: { card_it: @user_card.card_it, user_id: @user_card.user_id } }
    end

    assert_redirected_to user_card_url(User::Card.last)
  end

  test "should show user_card" do
    get user_card_url(@user_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_card_url(@user_card)
    assert_response :success
  end

  test "should update user_card" do
    patch user_card_url(@user_card), params: { user_card: { card_it: @user_card.card_it, user_id: @user_card.user_id } }
    assert_redirected_to user_card_url(@user_card)
  end

  test "should destroy user_card" do
    assert_difference('User::Card.count', -1) do
      delete user_card_url(@user_card)
    end

    assert_redirected_to user_cards_url
  end
end
