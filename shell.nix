with import <nixpkgs> { };

mkShell {

  name = "env";
  buildInputs = [
    python3Packages.python
    python3Packages.venvShellHook
  ];

  venvDir = "./venv";
  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
  '';

  postShellHook = ''
    # allow pip to install wheels
    unset SOURCE_DATE_EPOCH
    FLASK_RUN_PORT=8080
  '';

}