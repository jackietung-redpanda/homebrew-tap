# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Redpanda < Formula
  desc "Redpanda CLI & toolbox"
  homepage "https://redpanda.com"
  version "23.2.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.19/rpk-darwin-arm64.zip"
      sha256 "8d8759465985d49f6017a8c57daf83ed1e16efc7f1a2641f5b44aff45be97176"

      def install
        bin.install "rpk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.19/rpk-darwin-amd64.zip"
      sha256 "03a4ea5515e88770a3907ed3dcd47b90ad492d34450a1f503cce94ddfe6b02a5"

      def install
        bin.install "rpk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.19/rpk-linux-amd64.zip"
      sha256 "c50f052188743c172d3e9f9b1aa704498f235a92b4b3673bf11309b34d98a81b"

      def install
        bin.install "rpk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.19/rpk-linux-arm64.zip"
      sha256 "4cc1338c7cfceb732a6d613951c55b92cd3a37896b526fbfac296a41ad7d1efa"

      def install
        bin.install "rpk"
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
