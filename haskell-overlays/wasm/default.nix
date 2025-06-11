{haskellLib}: self: super: {
  jsaddle-warp = null;
  jsaddle-webkitgtk = null;
  jsaddle-webkit2gtk = null;
  jsaddle-wkwebview = null;
  # wasm support starts from splitmix 1.2.0
  splitmix = haskellLib.dontCheck (self.callHackageDirect {
    pkg = "splitmix";
    ver = "0.1.2";
    sha256 = "sha256-XjHAMF7vt22BkN1Je+A/w+HLY/X61pfE/+fBTSEt4gQ=";
  } {});
}

