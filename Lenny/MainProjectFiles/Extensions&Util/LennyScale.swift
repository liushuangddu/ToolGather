//
//  LennyScale.swift
//  ToolGather
//
//  Created by Lenny on 2021/4/22.
//  Copyright © 2021 Lenny. All rights reserved.
//

import UIKit
import DeviceKit

class LennyScale: NSObject {

}

private var safeAreaTop: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0
    }
    return 0
}
private var safeAreaBottom: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
    }
    return 0
}

private let standardDevice = Device.iPhoneX

private var standardDeviceSize: CGSize {
    switch standardDevice {
    case .iPhone5, .iPhone5c, .iPhone5s, .iPhoneSE:
        return CGSize.init(width: 320.0, height: 568.0)
    case .iPhone6, .iPhone6s, .iPhone7, .iPhone8, .iPhoneSE2:
        return CGSize.init(width: 375.0, height: 667.0)
    case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
        return CGSize.init(width: 414.0, height: 736.0)
    case .iPhoneX, .iPhoneXS, .iPhone11Pro, .iPhone12Mini:
        return CGSize.init(width: 375.0, height: 812.0 - safeAreaTop - safeAreaBottom)
    case .iPhoneXR, .iPhone11:
        return CGSize.init(width: 414.0, height: 896.0 - safeAreaTop - safeAreaBottom)
    case .iPhoneXSMax, .iPhone11ProMax:
        return CGSize.init(width: 414.0, height: 896.0 - safeAreaTop - safeAreaBottom)
    case .iPhone12, .iPhone12Pro:
        return CGSize.init(width: 390.0, height: 844.0 - safeAreaTop - safeAreaBottom)
    case .iPhone12ProMax:
        return CGSize.init(width: 428.0, height: 926.0 - safeAreaTop - safeAreaBottom)
    default:
        return CGSize.init(width: 428.0, height: 812.0 - safeAreaTop - safeAreaBottom)
    }
}

private var currentDeviceSize: CGSize {
    switch Device.current {
    case .iPhone5, .iPhone5c, .iPhone5s, .iPhoneSE:
        return CGSize.init(width: 320.0, height: 568.0)
    case .iPhone6, .iPhone6s, .iPhone7, .iPhone8, .iPhoneSE2:
        return CGSize.init(width: 375.0, height: 667.0)
    case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
        return CGSize.init(width: 414.0, height: 736.0)
    case .iPhoneX, .iPhoneXS, .iPhone11Pro, .iPhone12Mini:
        return CGSize.init(width: 375.0, height: 812.0 - safeAreaTop - safeAreaBottom)
    case .iPhoneXR, .iPhone11:
        return CGSize.init(width: 414.0, height: 896.0 - safeAreaTop - safeAreaBottom)
    case .iPhoneXSMax, .iPhone11ProMax:
        return CGSize.init(width: 414.0, height: 896.0 - safeAreaTop - safeAreaBottom)
    case .iPhone12, .iPhone12Pro:
        return CGSize.init(width: 390.0, height: 844.0 - safeAreaTop - safeAreaBottom)
    case .iPhone12ProMax:
        return CGSize.init(width: 428.0, height: 926.0 - safeAreaTop - safeAreaBottom)
    default:
        return CGSize.init(width: 428.0, height: 812.0 - safeAreaTop - safeAreaBottom)
    }
}

extension Double {
    
    func scaleW() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.width / standardDeviceSize.width)
    }
    func scaleH() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.height / standardDeviceSize.height)
    }
}
extension Int {
    
    func scaleW() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.width / standardDeviceSize.width)
    }
    func scaleH() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.height / standardDeviceSize.height)
    }
}
extension Float {
    
    func scaleW() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.width / standardDeviceSize.width)
    }
    func scaleH() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.height / standardDeviceSize.height)
    }
}
extension CGFloat {
    
    func scaleW() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.width / standardDeviceSize.width)
    }
    func scaleH() -> CGFloat {
        return CGFloat(self) * (currentDeviceSize.height / standardDeviceSize.height)
    }
}
