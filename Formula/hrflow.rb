class Hrflow < Formula
  desc "HR Flow CLI"
  homepage "https://github.com/myyra/hrflow"
  url "https://github.com/myyra/hrflow/archive/v0.1.3.zip"
  sha256 "1f96d16c0c741cf34cbddadfaa1fb258d73af39155fe79ea3046293c25837428"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-o", bin, "github.com/myyra/hrflow"
    prefix.install_metafiles
  end
end
