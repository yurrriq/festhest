{ mkDerivation, base, stdenv, yesod }:
mkDerivation {
  pname = "festhest";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base yesod ];
  homepage = "https://github.com/yurrriq/festhest";
  description = "Example app using nixops";
  license = stdenv.lib.licenses.bsd3;
}
