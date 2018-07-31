with import <nixpkgs> {}; {
    MiniKnightEnv = stdenv.mkDerivation {
        name = "TankDriver";
        buildInputs = [dotnet-sdk fsharp mesa mono46 dotnetPackages.Nuget xorg.libX11 freetype libgdiplus openal];
        LD_LIBRARY_PATH="${xorg.libX11}/lib:${mesa}/lib:${freetype}/lib";
    };
}

