cask "refresh" do
  version "0.1.4"

  on_intel do
    sha256 "07d52bea394096e0d81c21e8fb0f4d9bd031ccf4cb0262e8935e66b8c3b8f302"
    url "https://github.com/dantech2000/refresh/releases/download/v#{version}/refresh_#{version}_darwin_amd64.tar.gz"
  end

  on_arm do
    sha256 "1a15754c2a597d033875fc0431bd76fd1a7e20d8f076e37e90498b66e2e6b4ff"
    url "https://github.com/dantech2000/refresh/releases/download/v#{version}/refresh_#{version}_darwin_arm64.tar.gz"
  end

  name "refresh"
  desc "Manage and monitor AWS EKS node groups using your local kubeconfig and AWS credentials"
  homepage "https://github.com/dantech2000/refresh"
  license "MIT"

  binary "refresh"
end

