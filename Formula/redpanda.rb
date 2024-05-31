# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Redpanda < Formula
  desc "Redpanda CLI & toolbox"
  homepage "https://redpanda.com"
  version "24.1.99"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackietung-redpanda/redpanda/releases/download/v24.1.99/rpk-darwin-arm64.zip"
      sha256 "ac6168224ec8d3bcd645e3bffbf19db1778823b5d0944256c51313a1bc7b948b"

      def install
        bin.install ".rpk.ac-connect"
        bin.install "rpk"
        generate_completions_from_executable(bin/"rpk", "generate", "shell-completion", base_name: "rpk")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jackietung-redpanda/redpanda/releases/download/v24.1.99/rpk-darwin-amd64.zip"
      sha256 "8471e98fbdc6511758370ecda313e1dc711e41ecb8f0766756d14f062be35657"

      def install
        bin.install ".rpk.ac-connect"
        bin.install "rpk"
        generate_completions_from_executable(bin/"rpk", "generate", "shell-completion", base_name: "rpk")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jackietung-redpanda/redpanda/releases/download/v24.1.99/rpk-linux-arm64.zip"
      sha256 "cdc5396cd4761dc6a6c07a00834544741a2649b78f06ad917a90fbef7cdbcd0c"

      def install
        bin.install ".rpk.ac-connect"
        bin.install "rpk"
        generate_completions_from_executable(bin/"rpk", "generate", "shell-completion", base_name: "rpk")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jackietung-redpanda/redpanda/releases/download/v24.1.99/rpk-linux-amd64.zip"
      sha256 "c7b1ba6429951510a4864cdcba91cfe2476f0f55937010def902ec40d66bdef4"

      def install
        bin.install ".rpk.ac-connect"
        bin.install "rpk"
        generate_completions_from_executable(bin/"rpk", "generate", "shell-completion", base_name: "rpk")
      end
    end
  end

  def caveats
    <<~EOS
      Redpanda Keeper (rpk) is Redpanda's command line interface (CLI)
      utility. The rpk commands let you configure, manage, and tune
      Redpanda clusters. They also let you manage topics, groups,
      and access control lists (ACLs).
      Start a three-node docker cluster locally:

          rpk container start -n 3

      Interact with the cluster using commands like:

          rpk topic list

      When done, stop and delete the docker cluster:

          rpk container purge

      For more examples and guides, visit: https://docs.redpanda.com
    EOS
  end
end
