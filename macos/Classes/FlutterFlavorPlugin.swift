// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import FlutterMacOS
import Foundation

public class FlutterFlavorPlugin: NSObject, FlutterPlugin {
 public static func register(with registrar: FlutterPluginRegistrar) {
   let channel = FlutterMethodChannel(
     name: "plugins.ekleel.net/flavor",
     binaryMessenger: registrar.messenger)
   let instance = FlutterFlavorPlugin()
   registrar.addMethodCallDelegate(instance, channel: channel)
 }

 public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   let flavor = Bundle.main.infoDictionary?["Flavor"]

   print("FlutterFlavorPlugin handle flavor:", flavor)

   switch call.method {
   case "getFlavor":
     result(flavor)
   default:
     result(flavor)
   }
 }
}
