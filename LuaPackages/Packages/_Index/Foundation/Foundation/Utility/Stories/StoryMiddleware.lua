local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local FoundationProvider = require(Foundation.Providers.Foundation)
local Theme = require(Foundation.Enums.Theme)
local Types = require(Foundation.Utility.Stories.Types)
local getTokenOverridesStore = require(script.Parent.TokenOverridesStore)
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)

type FlipbookStoryProps = Types.FlipbookStoryProps
type DeveloperStorybookStoryProps = Types.DeveloperStorybookStoryProps
type StoryProps = Types.StoryProps

local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet

local function useTokenOverrides()
	local store = getTokenOverridesStore()
	local overrides, setOverrides = React.useState(function()
		return store.getTokenOverrides()
	end)

	React.useEffect(function()
		local unsubscribe = store.subscribe(function(newOverrides)
			setOverrides(newOverrides)
		end)
		return function()
			unsubscribe()
		end
	end, { store })

	return overrides
end

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
		React.createElement("StyleLink", {
			StyleSheet = styleSheet,
		}),
		props.overlay
	)
end

local function useCreateOverlay(props: StoryProps): GuiBase2d?
	local flipbookStoryProps = Types.toFlipbookStoryProps(props)
	local focus = if flipbookStoryProps
		then flipbookStoryProps.widget
		else (props :: DeveloperStorybookStoryProps).focus

	local isEmbedded = focus.Name == "StorybookEmbed"
	-- Since we need to pass an overlay before the FoundationProvider is created it's easier to create it manually than using React.
	local overlay = React.useRef(Instance.new("Frame"))
	-- Very unlikely that parent would change, but it doesn't hurt to handle
	if overlay.current.Parent ~= focus then
		overlay.current.Parent = focus
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

local function StoryMiddleware(story)
	-- A component wrapping each story in the StyleProvider
	return function(storyProps: StoryProps)
		local overlay = useCreateOverlay(storyProps)
		local theme = Theme[storyProps.theme]
		local tokenOverrides = useTokenOverrides()

		local devStorybookStoryProps = Types.toDeveloperStorybookStoryProps(storyProps)

		local device, preferences
		if devStorybookStoryProps then
			device = Device[devStorybookStoryProps.platform]
			preferences = devStorybookStoryProps.settings
		end

		local shouldUsePlugin = Flags.FoundationPopoverPluginSupport
		if Flags.FoundationPopoverPluginSecurityGate then
			shouldUsePlugin = shouldUsePlugin and isPluginSecurity()
		end

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
				device = device,
				preferences = preferences,
				scale = preferences and preferences.scale,
				overlayGui = overlay,
				plugin = if shouldUsePlugin then storyProps.plugin else nil,
				tokenOverrides = tokenOverrides,
			}, {
				Child = React.createElement(story, storyProps),
				StyleLink = React.createElement(StyleLinkPortal, if overlay then { overlay = overlay } else nil),
			}),
		})
	end
end

return StoryMiddleware
