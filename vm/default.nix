{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.python311Packages.numpy
    pkgs.python311Packages.matplotlib
    pkgs.python311Packages.scipy
    pkgs.python311Packages.ipywidgets
    pkgs.python311Packages.plotly
    pkgs.python311Packages.pillow
    pkgs.libGL
  ];

  shellHook = ''
    echo "Python 3.11 environment with interactive terrain libraries ready."
    export PYTHONPATH=$PYTHONPATH:$(pwd)/python
  '';
}
