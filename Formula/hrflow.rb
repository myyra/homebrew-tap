class Hrflow < Formula
  desc "HR Flow CLI"
  homepage "https://github.com/myyra/hrflow"
  url "https://github.com/myyra/hrflow/archive/v0.3.0.zip"
  sha256 "e6933cad7ba40de48d27e890158cc8b695a581f1743f4893a8c1f91f98d7dc3d"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-o", bin, "github.com/myyra/hrflow"
    prefix.install_metafiles
  end
end
