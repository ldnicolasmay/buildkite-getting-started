# Buildkite Getting Started

Following along with a [Buildkite YouTube demo](https://www.youtube.com/watch?v=Vcbqo4QULL4).


# Installation

1. Install Buildkite agent
   ```shell
   brew install buildkite/buildkite/buildkite-agent
   ```
2. Configure agent token
   ```shell
   sed -i '' "s/xxx/<YOUR_TOKEN_HERE>/g" "$(brew --prefix)"/etc/buildkite-agent/buildkite-agent.cfg
   ```


# Usage

1. Start Buildkite agent 
   ```shell
   buildkite-agent start --name Beam_NicolasMay_MBP1
   ```
