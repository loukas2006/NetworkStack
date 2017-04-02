//
// Copyright 2017 niji
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit

protocol NavCoordinator: Coordinator {
  var navigationController: UINavigationController { get }
}

// MARK: - Default Implementation
extension NavCoordinator {
  var navigationController: UINavigationController {
    guard let nc = self.mainViewController as? UINavigationController else {
      fatalError("The rootViewController should be a UINavigationController")
    }
    return nc
  }
  
  func pushToRoot(viewController: UIViewController) {
    self.navigationController.setViewControllers([viewController], animated: false)
  }
  
  func push(viewController: UIViewController) {
    self.navigationController.pushViewController(viewController, animated: true)
  }
}
