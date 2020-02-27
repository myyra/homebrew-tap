class Hrflow < Formula
  desc "HR Flow CLI"
  homepage "https://github.com/myyra/hrflow"
  url "https://github.com/myyra/hrflow/archive/v0.1.0.zip"
  sha256 "4082111df255ce8f2562ff4349aac5d8eb1f70f70251c6791e8f1d4c896b4088"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-o", bin, "github.com/myyra/hrflow"
    prefix.install_metafiles
  end
end
