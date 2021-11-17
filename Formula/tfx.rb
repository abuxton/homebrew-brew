# frozen_string_literal: true

# start class TFX
class Tfx < Formula
  desc 'TFX'
  homepage 'https://github.com/straubt1/tfx'
  version '0.0.3-dev'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/straubt1/tfx/releases/download/0.0.3-dev/tfx_darwin_amd64', using: :nounzip
    #   sha256 "3f70876616b289eaed6dbdd93333481cec2b8c19c80515bfff4e3dd816cd8a70"
  end

  # if OS.mac? && Hardware::CPU.arm?
  #   url "https://github.com/straubt1/tfx/releases/download/0.0.3-dev/tfx_linux_arm", :using => :nounzip
  #   sha256 "3f3e90d39d46e51c3ff40c63d629d00af4025db7b7313faccbb88159d5cca469"
  # end

  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/straubt1/tfx/releases/download/0.0.3-dev/tfx_linux_amd64', using: :nounzip
    #   sha256 "97d7ac9145ffdf256ab91045a4857a640ecaa7c56bbd66b61fb70990620f3d33"
  end

  #   if OS.windows? && Hardware::CPU.intel?
  #     url 'https://github.com/straubt1/tfx/releases/download/0.0.3-dev/tfx_windows_amd', :using => :nounzip
  #     sha256 "7cb8a2611abf962e25bc6ba943bc80e48d242d02edb718c0b3fb86c47c28a410"
  #   end

  conflicts_with 'tfx'

  def install
    bin.install 'tfx'
  end

  test do
    system "#{bin}/tfx --version"
  end
end
