//
//  LNPopupEnvironment.swift
//  LNPopupUI
//
//  Created by Leo Natan on 8/6/20.
//

import SwiftUI
import LNPopupController

internal struct LNPopupInteractionStyleKey: EnvironmentKey {
	static let defaultValue: LNPopupInteractionStyle? = nil
}

internal struct LNPopupBarStyleKey: EnvironmentKey {
	static let defaultValue: LNPopupBarStyle? = nil
}

internal struct LNPopupCloseButtonStyleKey: EnvironmentKey {
	static let defaultValue: LNPopupCloseButtonStyle? = nil
}

internal struct LNPopupBarProgressViewStyleKey: EnvironmentKey {
	static let defaultValue: LNPopupBarProgressViewStyle? = nil
}

internal struct LNPopupBarMarqueeScrollEnabledKey: EnvironmentKey {
	static let defaultValue: Bool? = nil
}

internal struct LNPopupBarMarqueeRateKey: EnvironmentKey {
	static let defaultValue: CGFloat? = nil
}

internal struct LNPopupBarMarqueeDelayKey: EnvironmentKey {
	static let defaultValue: TimeInterval? = nil
}

internal struct LNPopupBarCoordinateMarqueeAnimationsKey: EnvironmentKey {
	static let defaultValue: Bool? = nil
}

internal struct LNPopupBarShouldExtendPopupBarUnderSafeAreaKey: EnvironmentKey {
	static let defaultValue: Bool? = nil
}

internal struct LNPopupBarInheritsAppearanceFromDockingView: EnvironmentKey {
	static let defaultValue: Bool? = nil
}

internal struct LNPopupBarBackgroundEffectKey: EnvironmentKey {
	static let defaultValue: UIBlurEffect? = nil
}

internal struct LNPopupBarCustomViewKey: EnvironmentKey {
	static let defaultValue: LNPopupBarCustomView? = nil
}

internal struct LNPopupBarContextMenuKey: EnvironmentKey {
	static let defaultValue: AnyView? = nil
}

internal struct LNPopupBarCustomizer: EnvironmentKey {
	static let defaultValue: ((LNPopupBar) -> Void)? = nil
}

internal struct LNPopupContentViewCustomizer: EnvironmentKey {
	static let defaultValue: ((LNPopupContentView) -> Void)? = nil
}

internal extension EnvironmentValues {
	var popupInteractionStyle: LNPopupInteractionStyle? {
		get { self[LNPopupInteractionStyleKey.self] }
		set { self[LNPopupInteractionStyleKey.self] = newValue }
	}
	
	var popupCloseButtonStyle: LNPopupCloseButtonStyle? {
		get { self[LNPopupCloseButtonStyleKey.self] }
		set { self[LNPopupCloseButtonStyleKey.self] = newValue }
	}
	
	var popupBarStyle: LNPopupBarStyle? {
		get { self[LNPopupBarStyleKey.self] }
		set { self[LNPopupBarStyleKey.self] = newValue }
	}
	
	var popupBarProgressViewStyle: LNPopupBarProgressViewStyle? {
		get { self[LNPopupBarProgressViewStyleKey.self] }
		set { self[LNPopupBarProgressViewStyleKey.self] = newValue }
	}
	
	var popupBarMarqueeScrollEnabled: Bool? {
		get { self[LNPopupBarMarqueeScrollEnabledKey.self] }
		set { self[LNPopupBarMarqueeScrollEnabledKey.self] = newValue }
	}
	
	var popupBarMarqueeRate: CGFloat? {
		get { self[LNPopupBarMarqueeRateKey.self] }
		set { self[LNPopupBarMarqueeRateKey.self] = newValue }
	}
	
	var popupBarMarqueeDelay: TimeInterval? {
		get { self[LNPopupBarMarqueeDelayKey.self] }
		set { self[LNPopupBarMarqueeDelayKey.self] = newValue }
	}
	
	var popupBarCoordinateMarqueeAnimations: Bool? {
		get { self[LNPopupBarCoordinateMarqueeAnimationsKey.self] }
		set { self[LNPopupBarCoordinateMarqueeAnimationsKey.self] = newValue }
	}
	
	var popupBarShouldExtendPopupBarUnderSafeArea: Bool? {
		get { self[LNPopupBarShouldExtendPopupBarUnderSafeAreaKey.self] }
		set { self[LNPopupBarShouldExtendPopupBarUnderSafeAreaKey.self] = newValue }
	}
	
	var popupBarInheritsAppearanceFromDockingView: Bool? {
		get { self[LNPopupBarInheritsAppearanceFromDockingView.self] }
		set { self[LNPopupBarInheritsAppearanceFromDockingView.self] = newValue }
	}
	
	var popupBarBackgroundEffect: UIBlurEffect? {
		get { self[LNPopupBarBackgroundEffectKey.self] }
		set { self[LNPopupBarBackgroundEffectKey.self] = newValue }
	}
	
	var popupBarCustomBarView: LNPopupBarCustomView? {
		get { self[LNPopupBarCustomViewKey.self] }
		set { self[LNPopupBarCustomViewKey.self] = newValue }
	}
	
	var popupBarContextMenu: AnyView? {
		get { self[LNPopupBarContextMenuKey.self] }
		set { self[LNPopupBarContextMenuKey.self] = newValue }
	}
	
	var popupBarCustomizer: ((LNPopupBar) -> Void)? {
		get { self[LNPopupBarCustomizer.self] }
		set { self[LNPopupBarCustomizer.self] = newValue }
	}
	
	var popupContentViewCustomizer: ((LNPopupContentView) -> Void)? {
		get { self[LNPopupContentViewCustomizer.self] }
		set { self[LNPopupContentViewCustomizer.self] = newValue }
	}
}

internal func UIImageOrientationToImageOrientation(_ o: UIImage.Orientation) -> Image.Orientation {
	switch o {
	case .up:
		return .up
	case .down:
		return .down
	case .left:
		return .left
	case .right:
		return .right
	case .upMirrored:
		return .upMirrored
	case .downMirrored:
		return .downMirrored
	case .leftMirrored:
		return .leftMirrored
	case .rightMirrored:
		return .rightMirrored
	@unknown default:
		return Image.Orientation(rawValue: UInt8(o.rawValue))!
	}
}
