//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import CoreLocation
import AddressBook
import AVFoundation
import Photos
import EventKit
import CoreBluetooth
import CoreMotion
import CloudKit
import Accounts

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

@objc public class NotificationsPermission: NSObject, Permission {
    @objc public let type: PermissionType = .notifications
    @objc public let notificationCategories: Set<UIUserNotificationCategory>?
    
    @objc public init(notificationCategories: Set<UIUserNotificationCategory>? = nil) {
        self.notificationCategories = notificationCategories
    }
}

@objc public class LocationWhileInUsePermission: NSObject, Permission {
    @objc public let type: PermissionType = .locationInUse
}

@objc public class LocationAlwaysPermission: NSObject, Permission {
    @objc public let type: PermissionType = .locationAlways
}

@objc public class ContactsPermission: NSObject, Permission {
    @objc public let type: PermissionType = .contacts
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void

@objc public class EventsPermission: NSObject, Permission {
    @objc public let type: PermissionType = .events
}

@objc public class MicrophonePermission: NSObject, Permission {
    @objc public let type: PermissionType = .microphone
}

@objc public class CameraPermission: NSObject, Permission {
    @objc public let type: PermissionType = .camera
}

@objc public class PhotosPermission: NSObject, Permission {
    @objc public let type: PermissionType = .photos
}

@objc public class RemindersPermission: NSObject, Permission {
    @objc public let type: PermissionType = .reminders
}

@objc public class BluetoothPermission: NSObject, Permission {
    @objc public let type: PermissionType = .bluetooth
}

@objc public class MotionPermission: NSObject, Permission {
    @objc public let type: PermissionType = .motion
}
