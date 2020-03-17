class Hrflow < Formula
  desc "HR Flow CLI"
  homepage "https://github.com/myyra/hrflow"
  url "https://github.com/myyra/hrflow/archive/v0.2.0.zip"
  sha256 "04ed644cdf040e983a21746dfb7408d675f4907b4f69f210fc44a775a830d557"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-o", bin, "github.com/myyra/hrflow"
    prefix.install_metafiles
  end
end
