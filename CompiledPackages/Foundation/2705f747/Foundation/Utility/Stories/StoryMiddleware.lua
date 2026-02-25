local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local FoundationProvider = require(Foundation.Providers.Foundation)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)
local Theme = require(Foundation.Enums.Theme)
type Theme = Theme.Theme
local Device = require(Foundation.Enums.Device)
type Device = Device.Device
local Flags = require(Foundation.Utility.Flags)

local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet

--[[
  We want to use the a space behind the story as the overlay to better test popover interaction with borders.

  Storybook provides focus Instance, which can be used for this purpose. But it misses the styles needed for stories obviously.
  We can portal the styles under focus. However, this is bad for 2 reasons at least,
   1) we may affect storybook styles itself
   2) Since we do this at the story middleware level we have duplicated stylinks (each story creates a stylelink)
  Forcing all stories to have the same Stylelink, doesn't work because of dynamic tags registration.
  The stylelink will point to a stylesheet of the first rendered story, so only it will get all the styles appliad.

  Solution: create a Frame under the focus, add Stylelink there and use it as a overlay. Destroy them when the story is unmounted
]]
local function StyleLinkPortal(props: { overlay: GuiBase2d })
	local styleSheet = useStyleSheet()

	if not styleSheet or not props.overlay then
		return nil
	end

	return ReactRoblox.createPortal(
		if Flags.FoundationDisableStylingPolyfill
			then React.createElement("StyleLink", {
				StyleSheet = styleSheet,
			})
			else nil,
		props.overlay
	)
end

local function useCreateOverlay(props: { focus: LayerCollector }): GuiBase2d?
	local isEmbedded = props.focus.Name == "StorybookEmbed"
	-- Since we need to pass an overlay before the FoundationProvider is created it's easier to create it manually than using React.
	local overlay = React.useRef(Instance.new("Frame"))
	-- Very unlikely that parent would change, but it doesn't hurt to handle
	if overlay.current.Parent ~= props.focus then
		overlay.current.Parent = props.focus
	end

	React.useEffect(function()
		overlay.current.Size = UDim2.fromScale(1, 1)
		overlay.current.BackgroundTransparency = 1

		return function()
			overlay.current:Destroy()
		end
	end, {})

	return if isEmbedded then nil else overlay.current
end

type Preferences = PreferencesProvider.PreferencesProps

type StoryProps = {
	focus: LayerCollector,
	theme: Theme,
	platform: Platform,
	settings: Preferences,
}

local function StoryMiddleware(story)
	-- A component wrapping each story in the StyleProvider
	return function(storyProps: StoryProps)
		local overlay = useCreateOverlay(storyProps)
		local theme = Theme[storyProps.theme]
		return React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
		}, {
			-- Padding makes selection cursors easier to see in storybook
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
			}),
			FoundationContext = React.createElement(FoundationProvider, {
				theme = theme,
				device = Device[storyProps.platform],
				preferences = storyProps.settings,
				scale = storyProps.settings and storyProps.settings.scale,
				overlayGui = overlay,
			}, {
				Child = React.createElement(story, storyProps),
				StyleLink = React.createElement(StyleLinkPortal, if overlay then { overlay = overlay } else nil),
			}),
		})
	end
end

return StoryMiddleware
