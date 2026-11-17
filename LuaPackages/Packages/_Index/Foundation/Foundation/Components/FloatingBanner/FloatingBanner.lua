local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Banner = require(Foundation.Components.Banner)
local BannerTypes = require(Foundation.Components.Banner.Banner)
local InternalFloatingElement = require(Foundation.Components.InternalFloatingElement)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local BannerSize = require(Foundation.Enums.BannerSize)
local CardDensity = require(Foundation.Enums.CardDensity)
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
local ScreenRegion = require(Foundation.Providers.ScreenRegion.ScreenRegion)
local ScreenRegionKind = require(Foundation.Providers.ScreenRegion.ScreenRegionKind)

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type BannerProps = Banner.BannerProps
type BannerThumbnail = BannerTypes.BannerThumbnail

-- Floating banners always use the small, compact banner layout.
export type FloatingBannerProps = {
	-- Whether the banner is open. Switching to false plays the exit transition before the banner unmounts. Only one banner shows at the bottom of the screen at a time: the newest open banner shows, and the rest wait and return in turn. Pressing the close button or primary action takes the banner out of the queue; set this to false and back to true to show it again.
	isOpen: boolean,
	-- Called once the banner has closed and its exit transition has finished: closed by its owner or acted on by the user. Not called while it waits behind another banner.
	onCloseComplete: (() -> ())?,
	-- Primary heading of the banner.
	title: string?,
	-- Supporting copy under the title.
	description: string?,
	-- Leading thumbnail.
	thumbnail: BannerThumbnail?,
	-- Optional primary action. Makes the whole banner pressable and shows a trailing chevron.
	actions: {
		-- Primary action. Activates the banner.
		primary: {
			-- Called when the primary action is activated.
			onActivated: () -> (),
		}?,
	}?,
	-- Shows a close button when there is no primary action. Called when the close button is pressed.
	onClose: (() -> ())?,
} & Types.CommonProps

local defaultProps = {
	testId = "--foundation-floating-banner",
}

local function FloatingBanner(floatingBannerProps: FloatingBannerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(floatingBannerProps, defaultProps)

	-- Pressing the banner's close button or primary action takes it out of the screen region's queue, even if the
	-- owner keeps it open. Reopening it after a close puts it back.
	local hasActed, setHasActed = React.useState(false)
	React.useEffect(function()
		if not props.isOpen then
			setHasActed(false)
		end
	end, { props.isOpen })

	local onClose = props.onClose
	local primary = if props.actions then props.actions.primary else nil
	local actions = React.useMemo(function(): { primary: { onActivated: () -> () }? }?
		if primary == nil then
			return nil
		end
		return {
			primary = {
				onActivated = function()
					setHasActed(true)
					primary.onActivated()
				end,
			},
		}
	end, { primary })
	local handleClose = React.useMemo(function(): (() -> ())?
		if onClose == nil then
			return nil
		end
		return function()
			setHasActed(true)
			onClose()
		end
	end, { onClose })

	return React.createElement(
		InternalFloatingElement,
		withCommonProps(props, {
			isOpen = props.isOpen and not hasActed,
			onCloseComplete = props.onCloseComplete,
			layer = ElevationLayer.Floating,
			queue = { region = ScreenRegion.Bottom, kind = ScreenRegionKind.FloatingBanner },
			ref = ref,
		}),
		{
			Fill = React.createElement(View, {
				LayoutOrder = 1,
				-- lute-lint-ignore(mixedTagStrings) UIBLOX-5675
				tag = "shadow-overlay-100 size-full-0 auto-y radius-medium bg-surface-200",
				testId = `{props.testId}--fill`,
			}, {
				Banner = React.createElement(
					Banner,
					{
						size = BannerSize.Small,
						density = CardDensity.Compact,
						title = props.title,
						description = props.description,
						thumbnail = props.thumbnail,
						actions = actions,
						onClose = handleClose,
						testId = `{props.testId}--banner`,
					} :: BannerProps
				),
			}),
		}
	)
end

return React.memo(React.forwardRef(FloatingBanner))
