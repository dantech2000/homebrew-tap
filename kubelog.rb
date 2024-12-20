# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubelog < Formula
  desc "CLI tool to fetch and enhance Kubernetes pod logs"
  homepage "https://github.com/dantech2000/kubelog"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dantech2000/kubelog/releases/download/v0.1.4/kubelog_Darwin_x86_64.tar.gz"
      sha256 "79f6b01e90cd5b2528b82ce3c5cb735ccabf44f5e1166877a6bca5b2ed2f4031"

      def install
        bin.install "kubelog"
      end
    end
    on_arm do
      url "https://github.com/dantech2000/kubelog/releases/download/v0.1.4/kubelog_Darwin_arm64.tar.gz"
      sha256 "6575aa3e8bbb6b285d3a2769b2151ffc963a0cc53f9cdcf05bed0832453f8ac7"

      def install
        bin.install "kubelog"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dantech2000/kubelog/releases/download/v0.1.4/kubelog_Linux_x86_64.tar.gz"
        sha256 "e7e8580bcb0f90b993fe9aadf896e9dd1f7aec5342f8313c9b5a30ea286a3ea1"

        def install
          bin.install "kubelog"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dantech2000/kubelog/releases/download/v0.1.4/kubelog_Linux_arm64.tar.gz"
        sha256 "a69410b200beede6e349136f566f6cb23556378f2928041d4231a4038d9f6bfe"

        def install
          bin.install "kubelog"
        end
      end
    end
  end

  test do
    system "#{bin}/kubelog version"
  end
end
