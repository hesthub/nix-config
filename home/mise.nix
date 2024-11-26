# wont install tools automaticly
# mise activate fish | source
# mise use --global go@1.21.4
{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.mise = {
    enable = true;
    enableFishIntegration = true;
    globalConfig = {
      tools = {
        go = "latest";
        java = ["openjdk-21"];
        nodejs = ["lts" "18"];
        dotnet = ["7" "8"];
      };

      settings = {
        verbose = false;
        experimental = false;
      };
    };
  };
}
