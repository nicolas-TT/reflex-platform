{haskellLib}: self: super: {
  jsaddle-warp = null;
  jsaddle-webkitgtk = null;
  jsaddle-webkit2gtk = null;
  jsaddle-wkwebview = null;
  jsaddle-wasm = haskellLib.addBuildDepend super.jsaddle-wasm self.parser-regex;
  splitmix = haskellLib.dontCheck (self.callHackage "splitmix""0.1.2" {});
}

