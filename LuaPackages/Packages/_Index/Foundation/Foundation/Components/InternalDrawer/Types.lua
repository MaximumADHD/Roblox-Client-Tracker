local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local InternalDrawerBackdrop = require(Foundation.Enums.InternalDrawerBackdrop)
local InternalDrawerLayout = require(Foundation.Enums.InternalDrawerLayout)
local InternalDrawerShadow = require(Foundation.Enums.InternalDrawerShadow)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local ScrollBarVisibility = require(Foundation.Enums.ScrollBarVisibility)
local elevation = require(Foundation.Providers.Elevation.elevation)
type InternalDrawerBackdrop = InternalDrawerBackdrop.InternalDrawerBackdrop
type InternalDrawerLayout = InternalDrawerLayout.InternalDrawerLayout
type InternalDrawerShadow = InternalDrawerShadow.InternalDrawerShadow
type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason
type ScrollBarVisibility = ScrollBarVisibility.ScrollBarVisibility
type ElevationToken = elevation.Token

export type InternalDrawerProps = {
	-- Elevation slot from `useElevation`. The drawer uses its `zIndex`, and nested overlays use the slot as their owner.
	elevation: ElevationToken,
	-- `true` mounts the drawer and plays the enter animation. `false` plays the exit animation, then unmounts.
	isOpen: boolean,
	-- Called when the drawer wants to close, with the reason. The drawer stays open until `isOpen` becomes false.
	onRequestClose: (reason: OnCloseCallbackReason) -> (),
	-- Called after the exit animation finishes and the drawer has unmounted.
	onCloseComplete: (() -> ())?,
	-- Called once when the enter animation finishes and the drawer is fully open.
	onOpenComplete: (() -> ())?,
	-- Edge the panel slides in from. `Start` is the leading edge and `End` is the trailing edge. Required.
	side: InternalDrawerSide,
	-- `Static` paints a scrim that absorbs clicks and leaves the drawer open. `Dismissible` calls `onRequestClose` with `BackdropClick`. Required.
	backdrop: InternalDrawerBackdrop,
	-- Content width in pixels. Scale it before passing it in. Clamped so a strip of the backdrop stays visible. `outerBleed` is added outside this width.
	width: number,
	-- Extra pixels the panel extends past the overlay on its outer edge. Content is padded by the same amount, so it stays inside the overlay. Open and closed positions include the extension, so the slide hides the whole panel. Defaults to `0`.
	outerBleed: number?,
	-- `FullBleed` is full height and flush with the overlay edge. `Inset` offsets the panel by `Padding.Medium` on the outer edge, top, and bottom, and uses a large corner radius. Required.
	layout: InternalDrawerLayout,
	-- `None` paints no drop shadow. `Overlay300` paints the overlay shadow behind the panel and follows the slide. Required.
	shadow: InternalDrawerShadow,
	-- Style tag for the panel fill, such as `bg-surface-100`. Required.
	backgroundColor: string,
	-- Pinned to the top of the panel and kept out of the body scroll. Full bleed; apply padding on the header content.
	header: React.ReactNode?,
	-- Pinned to the bottom of the panel and kept out of the body scroll. Full bleed; apply padding on the footer content.
	footer: React.ReactNode?,
	-- Main content between `header` and `footer`. Scrolls on overflow unless `scrolls` is false. Full bleed; apply padding on the content.
	children: React.ReactNode?,
	-- `false` fills the body with no scroll view, for content that scrolls itself. Defaults to `true`.
	scrolls: boolean?,
	-- Scrollbar on the scrolling body. `None` hides it, `Always` keeps it visible, and `Auto` shows it while hovered or scrolling. Defaults to `None`. Has no effect when `scrolls` is false.
	scrollBarVisibility: ScrollBarVisibility?,
	-- Identifier for the drawer root. Defaults to `--foundation-internal-drawer`.
	testId: string?,
}

return {}
