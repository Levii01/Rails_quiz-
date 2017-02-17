require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quizz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_quizz_url
    assert_response :success
  end

  test "should create quizz" do
    assert_difference('Quizz.count') do
      post quizzes_url, params: { quizz: { description: @quizz.description, title: @quizz.title } }
    end

    assert_redirected_to quizz_url(Quizz.last)
  end

  test "should show quizz" do
    get quizz_url(@quizz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quizz_url(@quizz)
    assert_response :success
  end

  test "should update quizz" do
    patch quizz_url(@quizz), params: { quizz: { description: @quizz.description, title: @quizz.title } }
    assert_redirected_to quizz_url(@quizz)
  end

  test "should destroy quizz" do
    assert_difference('Quizz.count', -1) do
      delete quizz_url(@quizz)
    end

    assert_redirected_to quizzes_url
  end
end
