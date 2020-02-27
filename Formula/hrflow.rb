class Hrflow < Formula
  desc "HR Flow CLI"
  homepage "https://github.com/myyra/hrflow"
  url "https://github.com/myyra/hrflow/archive/v0.1.1.zip"
  sha256 "183667c679cbdc27f40d92b870b297df51ffece8cabda365c557ab700b6364b3"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-o", bin, "github.com/myyra/hrflow"
    prefix.install_metafiles
  end
end
