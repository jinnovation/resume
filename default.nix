{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  # need to install source-sans-pro separately...
  name = "jjin-resume-env";
  buildInputs = with pkgs; [
    source-sans
    source-sans-pro
    (texlive.combine {
      inherit (texlive) scheme-small
        enumitem
        environ
        fontawesome5
        fontawesome
        fontspec
        luainputenc
        preprint
        tcolorbox
        titlesec;
    })
  ];
}
