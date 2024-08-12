# Razvan Rotundu 2024 
# Sub Strings test cases


require_relative "../project/sub_strings"

describe "Sub strings project testing" do
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  it "Correctly identifies if a substring is present" do
    expect(sub_strings("go", dictionary)).to eq({"go" => 1 })
  end

  it "Correctly identifies multiple substrings present" do
    expect(sub_strings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })

  end

  it "correctly identifies NO substrings found" do
    expect(sub_strings("xxx", dictionary)).to eq({})

  end

  xit "correctly identifies MULTIPLE instances of the same substring" do
    expect(sub_strings("lowlow", dictionary)).to eq({"low" => 2})

  end

end