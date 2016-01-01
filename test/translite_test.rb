require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require "minitest/sugar"
require_relative "../lib/translite"

class TransliteTest < Minitest::Test
  test "transliterate" do
    assert_equal("AEroskobing", Translite.transliterate("Ærøskøbing"))
  end

  test "replacement" do
    assert_equal("abc", Translite.transliterate("abcſ"))
    assert_equal("abc?", Translite.transliterate("abcſ", "?"))
  end
end
