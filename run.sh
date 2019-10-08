#!/bin/bash
export LC_ALL=C
export USE_CCACHE=1

. build/envsetup.sh

# art
repopick 256444 # Don't fail dual map if memfd isn't supported

# bionic
repopick 256150 # bionic: Use legacy pthread_mutex_init() behavior on pre-P API levels
repopick 256151 # Actually restore pre-P mutex behavior

# bootable/recovery
repopick 255830 # Make adb use a custom prop for adb root
repopick 255831 # recovery: Get a proper shell environment in recovery
repopick 255979 # recovery: symlink /sbin for script compatibility
repopick 255846 # recovery: Allow custom bootloader msg offset in block misc
repopick 255847 # recovery: wipe bootloader message from index 0 when using custom offsets
repopick 255990 # recovery: Remove HOST_OS guard for f2fs tools
repopick 255991 # Revert "recovery: Fork a process for fuse when sideloading from SD card."
repopick 255832 # recovery: ui: Default to touch enabled
repopick 255833 # recovery: ui: Minor cleanup for touch code
repopick 255992 # recovery: ui: Support hardware virtual keys
repopick 256010 # recovery: Include vendor init trigger

# device/lineage/sepolicy
repopick 257053 # sepolicy: Make recovery permissive
repopick 257100 # [DND] Kill su

# external/tinycompress
repopick 256308 # tinycompress: Enable extended compress format

# frameworks/av
repopick 256887 # nuplayer: Avoid crash when codec fails to load
repopick 256888 # camera: Don't segfault if we get a NULL parameter
repopick 256889 # cameraservice: Resolve message vs start/stop preview races
repopick 256890 # libstagefright: Support YVU420SemiPlanar camera format
repopick 256891 # stagefright: omx: Don't signal dataspace change on legacy QCOM
repopick 256892 # stagefright: ACodec: Resolve empty vendor parameters usage
repopick 256893 # libstagefright: Free buffers on observer died
repopick 256894 # libstagefright: use 64-bit usage for native_window_set_usage
repopick 256896 # camera/media: Support legacy HALv1 camera in mediaserver
repopick 256897 # Camera: check metadata type before releasing frame
repopick 256898 # camera: include: Don't override possible overlayed header
repopick 256899 # camera: Allow devices to load custom CameraParameter code

# hardware/interfaces
repopick 258181 # keymasterV4_0: Tags support for FBE wrapped key.

# hardware/lineage/interfaces
repopick 258215 # Initial dummy cryptfshw implementation
repopick 256420 # Initial audio amplifier HAL

# hardware/qcom/bootctrl
repopick 256354 # bootcontrol: Only compile when the A/B feature is enabled

# hardware/qcom/bt
repopick 256355 # bt: Add guard makefile

# hardware/qcom/wlan
repopick 256362 # wlan: Add guard makefile

# hardware/qcom-caf/wlan
repopick 257200 # wcnss-service: Additional format support
repopick 257201 # wcnss: Build and dlopen wcnss_qmi_client as a shared library
repopick 257202 # wcnss_service: Deal with mdm-detect too
repopick 257203 # wifi-hal: Only try LOWI once
repopick 257204 # wifi-hal: stop the UMAC logspam
repopick 257205 # Wifi: Quiet some excessive debug output
repopick 257206 # Make wcnss_service build with the VNDK.
repopick 257207 # wifi-hal: Use generated kernel headers
repopick 257208 # Reading the serialno property is forbidden
repopick 257209 # wcnss-service: Opt-in to disable copying WCNSS_qcom_cfg.ini to userdata

# hardware/ril
repopick 257211 # libril: Bounds check s_commands
repopick 257212 # libril: Restore support for RIL v6, v8 and v9 stacks
repopick 257213 # libril: Fix manual network selection with old modem
repopick 257210 # FR51015: Tuning of Binder buffer for rild.
repopick 257214 # Make RIL command headers overlayable by devices.

# packages/apps/Camera2
repopick 256641 # Don't attempt to convert degree to orientation enum twice
repopick 256642 # Camera2: Only autofocus before a snap if we are actually in "auto" mode.
repopick 256643 # Camera2: Remove settings preferences only once
repopick 256646 # Camera: Powerkey shutter (2/2)
repopick 256647 # Camera2: Add option to set max screen brightness
repopick 256648 # Camera2: Remove google help preference
repopick 256649 # Camera2: Fix Undo button behaviour
repopick 256650 # Fix crash if Exif-Tag buffer-length and component-count are both 0
repopick 256816 # BasicCameraFactory: check if continuous picture af is available before requesting it.
repopick 256817 # Request WRITE_EXTERNAL_STORAGE as well
repopick 256818 # Rework permissions request flow
repopick 256645 # Camera2: Request for ACCESS_FINE_LOCATION permission

# packages/apps/Contacts
repopick 256654 # Contacts: Enable support for device contact.
repopick 256655 # Place MyInfo shortcut on drawer
repopick 256656 # Place EmergencyInfo shortcut on drawer
repopick 256657 # Allow calling contacts via specific phone accounts.
repopick 256658 # Contacts: use white nav bar

# packages/apps/DeskClock
repopick 256662 # DeskClock: Add back flip and shake actions
repopick 256663 # Provide upgrade path for cm-14.1 -> lineage-16.0
repopick 256664 # Make new menu entry to link to cLock widget settings.
repopick 256665 # DeskClock: Add support of power off alarm feature
repopick 256666 # DeskClock: Use POWER_OFF_ALARM permission

# packages/apps/Dialer
repopick 257131 # Dialer: handle database upgrade from cm-14.1
repopick 257132 # Dialer: disable anti-falsing for call answer screen
repopick 257113 # Revert "Remove dialer sounds and vibrations settings fragments and redirect to the system sound
repopick 257114 # Add back in-call vibration features
repopick 257115 # Allow using private framework API.
repopick 257133 # Re-add dialer lookup.
repopick 257118 # Generalize the in-call vibration settings category
repopick 257119 # Add setting to enable Do Not Disturb during calls
repopick 257134 # Re-add call recording.
repopick 257121 # Allow per-call account selection.
repopick 257122 # Re-add call statistics.
repopick 257135 # Control dialer's incoming call proximity sensor check via an overlay
repopick 257136 # Dialer: AudioModeProvider: use wired route for usb headsets

# packages/apps/Email
repopick 256675 # Email: handle databases from cm-14.1
repopick 256676 # Allow account deletion.
repopick 256677 # email: support for auto-sync multiple IMAP folders
repopick 256678 # email: Add an ActionBar to the mail app's PreferenceActivity
repopick 256679 # email: support per-folder notifications
repopick 256680 # Rewrite MailboxSettings loading logic.
repopick 256681 # email: fix eas autodiscover
repopick 256682 # Implement IMAP push using IMAP IDLE.
repopick 256683 # Request battery optimization exemption if IMAP IDLE is used.
repopick 256684 # Fix crash when attempting to view EML files.
repopick 256685 # Allow download of compressed attachments.
repopick 256686 # email: fix empty body update
repopick 256687 # Improve notification coalescence algorithm.
repopick 256688 # Email: Fix the ActivityNotFoundException when click "Update now"
repopick 256689 # Email: Clean duplicated WRITE_CONTACTS permission
repopick 256690 # email: return default folder name for subfolders
repopick 256691 # email: junk icon
repopick 256692 # Search in folder specified via URI parameter, if possible.
repopick 256693 # Remove max aspect ratio.
repopick 257358 # Fix Email tests on userdebug builds.
repopick 257359 # AOSP/Email -Added TEST_MAPPING file and "LOCAL_COMPATIBILITY_SUITE := ...
repopick 257360 # Remove build-time dep on opt-datetimepicker
repopick 257361 # Revert "Revert "AOSP/Email - Changes for code to work with UnifiedEmail's ...
repopick 257362 # Revert "Revert "AOSP/Email - Bump targetSdkVersion to 28.""

# packages/apps/Exchange
repopick 257297 # Exchange: Migrate to androidx

# packages/apps/Messaging
repopick 256720 # Messaging: Fix generating id in android namespace
repopick 257324 # AOSP/Messaging - Update the Messaging version to 24 until notification related logic changes are made. Fixes the error "Developer warning for package com.android. messaging failed to post notification on channel null".
repopick 257325 # AOSP/Messaging - Remove TEST_MAPPING because presubmit tests fail on build_target: aosp_cf_x86_phone-userdebug
repopick 257326 # AOSP/Messaging - Moved LOCAL_COMPATIBILITY_SUITE to tests/Android.mk. + Deleted the unnecessary blankId check. Updated the TODO comment for NUM_TEST_CONVERSATIONS+4. + Added AndroidTest.xml + Added "LOCAL_PROGUARD_ENABLED := disabled" for tests to pass on cf.
repopick 257327 # AOSP/Messaging - Fix many improperly formatted resource strings in Messaging.
repopick 257328 # Fix X-Mms-Transaction-ID of M-Acknowledge.ind
repopick 257329 # Fix SMS status handling
repopick 257330 # Use correct format info for SMS
repopick 257331 # Fix MMS Config issues in Debug menu
repopick 257332 # Fix assertion failures caused by different instance type
repopick 257333 # Fix wrong PreferenceCategory for SMS delivery report
repopick 257334 # Apply new duplication detection logic for M-Notification.ind
repopick 257335 # Replace no error code '0' for SMS with '-1'
repopick 257336 # Fix GetOrCreateConversationActionTest failure
repopick 257337 # Sort ParticipantsData in order of the slot id
repopick 257338 # Ignore unexpected ACTION_DOWN for SIM avatar icons
repopick 257339 # Fix FATAL EXCEPTION on SmsStorageLowWarningActivity
repopick 257340 # Move Messaging to /product
repopick 257341 # Move libgiftranscode.so to /product
repopick 256696 # Messaging: define app category
repopick 256697 # Messaging: adaptive icon
repopick 256698 # Messaging: Implement option for swipe right to delete.
repopick 256699 # Messaging: change Avatar fontFamily to sans-serif-medium
repopick 256700 # MessageQueue: Process pending messages per subscription
repopick 256701 # Messaging: Toggable keyboard emoticons access
repopick 256702 # Fix menu item highlight color.
repopick 256704 # Messaging: bring back accent color
repopick 256705 # Messaging: Implement saved video attachments in MMS
repopick 256706 # Play an audible notification on receiving a class zero message.
repopick 256707 # Added support for video and audio mms attachments
repopick 256708 # Fixed storage permission issue for attachments
repopick 256709 # Messaging app crashes after a few MMS
repopick 256711 # Messaging: fix bad recycle on sending two mms in a row
repopick 256712 # MediaPicker: Check for NPE
repopick 256713 # Messaging: Don't crash on unsupported shared content type
repopick 256714 # Messaging: Fix crash of blocked participant list activity
repopick 256715 # Messaging: Add "Mark as read" quick action for message notifications
repopick 256716 # Allow intent shared subject or title to be mms subject
repopick 256718 # Messaging: use white nav bar
repopick 257342 # Don't build with platform certificate
repopick 257343 # Messaging: Implement per conversation channels

# packages/apps/Nfc
repopick 256814 # NFCService: Add sysprop to prevent FW download during boot with NFC off.
repopick 257348 # NFC: Restore legacy NXP stack
repopick 257349 # nxp: jni: Forward-port the stack sources
repopick 257350 # nxp: NativeNfcManager: Implement missing inherited abstract methods
repopick 257351 # nxp: jni: use proper nativehelper headers
repopick 257352 # nxp: jni: Remove unused variables and functions
repopick 257353 # nxp: jni: Implement AOSP P abstract methods
repopick 258124 # nxp: Q api updates

# packages/apps/PackageInstaller
repopick 255658 # Revert "Remove Permissions Hub."
repopick 255659 # PermissionController: Enable permission hub by default

# packages/apps/Terminal
repopick 256242 # TerminalKeys: Disable debug
repopick 256243 # Allow terminal app to show in LeanBack (1/2)
repopick 256244 # Terminal: Fix keyboard Ctrl- and ALT-key input.
repopick 256245 # Add settings for fullscreen, orientation, font size, color
repopick 256246 # Allow access to external storage
repopick 256247 # Term: materialize
repopick 256248 # Terminal: volume keys as up/down

# packages/apps/ThemePicker
repopick 256017 # ThemePicker: Properly update clock face setting

# packages/apps/Trebuchet
repopick 256018 # Revert "[DO NOT MERGE] Disable swipe down to pull noti shade for Q"
repopick 256019 # Launcher3: Export GridOptionsProvider

# packages/apps/UnifiedEmail
repopick 256727 # unified email: prefer account display name to sender name
repopick 256728 # email: fix back button
repopick 256729 # unified-email: check notification support prior to create notification objects
repopick 256730 # unified-email: respect swipe user setting
repopick 256731 # email: linkify urls in plain text emails
repopick 256732 # email: do not close the input attachment buffer in Conversion#parseBodyFields
repopick 256733 # email: linkify phone numbers
repopick 256734 # Remove obsolete theme.
repopick 256735 # Don't assume that a string isn't empty
repopick 256736 # Add an ActionBar to the mail app's PreferenceActivity.
repopick 256737 # email: allow move/copy operations to more system folders
repopick 256738 # unifiedemail: junk icon
repopick 256739 # Remove mail signatures from notification text.
repopick 256740 # MimeUtility: ensure streams are always closed
repopick 256741 # Fix cut off notification sounds.
repopick 256742 # Pass selected folder to message search.
repopick 256743 # Properly close body InputStreams.
repopick 256744 # Make navigation drawer extend over status bar.
repopick 256745 # Disable animations for translucent activities.
repopick 256746 # Don't re-show search bar on query click.
repopick 257366 # Fix UnifiedEmail tests on userdebug builds.
repopick 257367 # AOSP/UnifiedEmail -  Fix improperly formatted resource strings in UnifiedEmail.
repopick 257368 # Remove build-time dep on opt-datetimepicker
repopick 257369 # Import translations. DO NOT MERGE]
repopick 257370 # Revert "Revert "AOSP/UnifiedEmail - Bumped the targetSdkVersion to 28 ...

# packages/providers/ContactsProvider
repopick 256773 # ContactsProvider: Prevent device contact being deleted.
repopick 256774 # CallLogDatabase: Try to re-run the version 5 upgrade path

# packages/providers/TelephonyProvider
repopick 256780 # TelephonyProvider: add upgrade support from cm-14.1

# packages/services/Telecomm
repopick 256161 # Telecomm: Make sensitive phone numbers not to be shown in call log history.
repopick 256265 # CallLog: Take into account multiple SIMs for sensitive numbers

# packages/services/Telephony
repopick 256792 # Telephony: Add ERI configuration for U.S. Cellular
repopick 256793 # Telephony: Support muting by RIL command
repopick 256794 # Fix non-protected broadcasts sent from phone process.
repopick 256795 # Don't start SIP service before decrypted
repopick 256797 # Allow to disable the new scan API for manual network search.

# system/core
repopick 258166 # Squashed wrapped key support?
repopick 255932 # adb: Add wait-for-online command
repopick 256219 # utils: Threads: Handle empty thread names
repopick 256823 # Camera: Add feature extensions

# system/netd
repopick 256959 # netd: Allow devices to force-add directly-connected routes

# system/vold
repopick 258131 # vold: Add Hardware FDE feature
repopick 258132 # system: vold: Remove crypto block device creation
repopick 258133 # vold: Wrapped key support for FBE
repopick 258134 # vold: Use separate flag for wrappedkey
repopick 258135 # Remove no longer relevant header file
repopick 258136 # vold: add support for clear key
repopick 258137 # Fix for CTS test CtsAppSecurityHostTestCases
repopick 258138 # vold: fix build error
repopick 258139 # vold: change to upgrade key if export fails
repopick 258141 # system: vold: fix block disk encryption to work with metadata encryption
repopick 258145 # Updates for migrated code upstream
repopick 258147 # system: vold: Close crypto block device if it was created
repopick 258148 # system: vold: pass proper extra params to load crypto device
repopick 258140 # system: vold: Use wrapped key for metadata encryption
repopick 258149 # [automerger] vold: resolve crypto device creation failure with dm-crypt skipped: 4b5c1b2db2
repopick 258150 # system: vold: Use ICE for UFS card
repopick 258151 # vold: Move QCOM HW FDE inclusion under Lineage namespace
repopick 258169 # vold: add support for more filesystems for public storage
repopick 258170 # vold: Fix fsck on public volumes
repopick 258171 # vold: Support internal storage partitions
repopick 258172 # vold: Honor mount options for ext4/f2fs partitions
repopick 258173 # vold: Mount ext4/f2fs portable storage with sdcard_posix
repopick 258174 # vold ext4/f2fs: do not use dirsync if we're mounting adopted storage
repopick 258175 # Fix the group permissions of the sdcard root.
repopick 258176 # vold: skip first disk change when converting MBR to GPT
repopick 258177 # vold: Allow reset after shutdown
repopick 258178 # vold: Accept Linux GPT partitions on external SD cards
repopick 258179 # Add "changepw" command to vdc.

# vendor/codeaurora/telephony
repopick 257215 # Revert "IMS-VT: Low battery handling for Video calls"
