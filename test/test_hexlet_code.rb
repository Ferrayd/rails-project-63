# frozen_string_literal: true

require 'test_helper'

class TestHexletCode < TestCase
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def setup
    user_class = Struct.new(:name, :job, :gender, keyword_init: true)
    @user = user_class.new name: 'rob', job: 'hexlet'
  end

  def est_default
    expected_html = make_html_oneline(load_fixture('test_default.html'))
    actual_html =
      HexletCode.form_for @user do |f|
        f.input :name
        f.input :gender
        f.input :job, as: :text
      end
    assert { actual_html == expected_html }
  end

  def test_with_class
    expected_html = make_html_oneline(load_fixture('test_with_class.html'))
    actual_html =
      HexletCode.form_for @user, url: '#' do |f|
        f.input :name, class: 'user-input'
        f.input :job
      end
    assert { actual_html == expected_html }
  end

  def test_with_text
    expected_html = make_html_oneline(load_fixture('test_with_text.html'))
    actual_html =
      HexletCode.form_for @user do |f|
        f.input :job, as: :text
        f.submit
      end
    assert { actual_html == expected_html }
  end

  def text_with_data
    expected_html = make_html_oneline(load_fixture('text_with_data.html'))
    actual_html =
      HexletCode.form_for @user, url: '/users' do |f|
        f.input :job, as: :text, rows: 50, cols: 50
        f.submit 'Wow'
      end
    assert { actual_html == expected_html }
  end

  def test_form_for_missing_field
    assert_raises NoMethodError do
      HexletCode.form_for @user do |f|
        f.input :age
      end
    end
  end
end
