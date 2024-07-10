pkgs@{ stdenv, ... }: {
  icat = stdenv.mkDerivation {
    pname = "icat";
    version = "v0.5";
    src = pkgs.fetchFromGitHub {
      owner = "atextor";
      repo = "icat";
      rev = "v0.5";
      sha256 = "0wyy2ksxp95vnh71ybj1bbmqd5ggp13x3mk37pzr99ljs9awy8ka";
    };
    buildInputs = with pkgs; [ imlib2 xorg.libX11 ];
    installPhase = ''
      mkdir -p $out/bin
      cp icat $out/bin
    '';
  };
}
