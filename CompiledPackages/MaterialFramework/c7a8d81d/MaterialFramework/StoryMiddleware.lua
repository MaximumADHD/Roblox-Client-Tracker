--[[
	StoryMiddleware - wraps each MaterialFramework story in a FoundationProvider so
	its Foundation styling/tokens resolve. DeveloperFramework-free (unlike the
	StudioFoundation middleware): it only needs Foundation + React.

	It creates a plain overlay Frame under the storybook's focus widget and passes
	it as the provider's overlayGui, mirroring Foundation's own story middleware so
	popovers/overlays have somewhere to render.
]]
local MaterialFramework = script:FindFirstAncestor("MaterialFramework")
local Packages = MaterialFramework.Parent
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local FoundationProvider = Foundation.FoundationProvider
local Theme = Foundation.Enums.Theme
local Device = Foundation.Enums.Device

-- The overlayGui instance must exist at render time (the provider takes it as a
-- prop), so it is built imperatively -- once, lazily, and pre-configured. Parenting
-- and teardown happen in the effect so a story that throws during its initial render
-- (which DeveloperStorybook catches and retries) leaves nothing behind in `focus`.
local function useCreateOverlay(focus: Instance?): GuiBase2d?
	local overlay = React.useRef(nil :: Frame?)
	if overlay.current == nil then
		local frame = Instance.new("Frame")
		frame.Size = UDim2.fromScale(1, 1)
		frame.BackgroundTransparency = 1
		overlay.current = frame
	end

	-- Re-parent on focus change without destroying: the ref is created once, so
	-- destroying here would leave overlay.current pointing at a dead instance and
	-- the next parent assignment would throw.
	React.useEffect(function()
		local frame = overlay.current :: Frame
		frame.Parent = focus
		return function()
			frame.Parent = nil
		end
	end, { focus or false } :: { unknown })

	-- Destroy the single ref'd frame only on unmount.
	React.useEffect(function()
		return function()
			local frame = overlay.current
			if frame then
				frame:Destroy()
			end
		end
	end, {})

	return overlay.current
end

local function StoryMiddleware(story: any)
	return function(storyProps: any)
		local overlay = useCreateOverlay(storyProps.focus)
		return React.createElement(FoundationProvider, {
			theme = Theme[storyProps.theme],
			device = Device[storyProps.platform],
			overlayGui = overlay,
		}, {
			Child = React.createElement(story, storyProps),
		})
	end
end

return StoryMiddleware
