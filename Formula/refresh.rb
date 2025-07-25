# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Refresh < Formula
  desc "Manage and monitor AWS EKS node groups using your local kubeconfig and AWS credentials"
  homepage "https://github.com/dantech2000/refresh"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dantech2000/refresh/releases/download/v0.1.7/refresh_0.1.7_darwin_amd64.tar.gz"
      sha256 "be9cea44222d258e09244ca10d5aa1c1aa0cf28d7818c67c7690a1e9290031c1"

      def install
        bin.install "refresh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dantech2000/refresh/releases/download/v0.1.7/refresh_0.1.7_darwin_arm64.tar.gz"
      sha256 "3eef5211a9836030e54a81227fe11489c4569f43bcf425e9e5a376c4e6a6445c"

      def install
        bin.install "refresh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/dantech2000/refresh/releases/download/v0.1.7/refresh_0.1.7_linux_amd64.tar.gz"
      sha256 "8b264ee23842d562c6d246b55f4b7f353fd3289d178a6c67cb372470b45605e2"
      def install
        bin.install "refresh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/dantech2000/refresh/releases/download/v0.1.7/refresh_0.1.7_linux_arm64.tar.gz"
      sha256 "919d7f42491434aeae5983bac005be125fbcf6caa8cea69d3288455674624bf6"
      def install
        bin.install "refresh"
      end
    end
  end

  test do
    system "#{bin}/refresh version"
  end
end
