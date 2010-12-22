require "spec_helper"

IGNORE = /\.(gitmodules|png$|tar$|gz$|rbc$|gem$)/

describe "The application itself" do
  it "has no malformed whitespace" do
    files = `git ls-files`.split "\n"
    files = files - files.grep(IGNORE)

    files.should be_well_formed
  end
end
