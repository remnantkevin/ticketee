{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ruby #  2.7.5

    pkgs.nodejs-14_x
    pkgs.nodePackages.npm
    pkgs.nodePackages.yarn
  ];

  # Keep gems in the project dir to stop projects stomping all over each other's gems
  GEM_HOME = "${toString ./.}/ruby_gems";
  GEM_PATH = "${toString ./.}/ruby_gems";
}
