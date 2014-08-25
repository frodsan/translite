require "cutest"
require_relative "../lib/translite"

test "transliterate" do
  assert_equal("AEroskobing", Translite.transliterate("Ærøskøbing"))
end

test "replacement" do
  assert_equal("abc", Translite.transliterate("abcſ"))
  assert_equal("abc?", Translite.transliterate("abcſ", "?"))
end
