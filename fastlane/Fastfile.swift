// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    func testLane() {
        desc("Build project tests and generate coverage report")
//        cocoapods(
//            clean: true,
//            podfile: "Podfile"
//        )
        scan(
//            workspace: "GroceryList.xcworkspace",
            project: "GroceryList.xcodeproj",
            scheme: "GroceryList"
        )
        slather(
            proj: "GroceryList.xcodeproj",
            scheme: "GroceryList"
        )
    }
}