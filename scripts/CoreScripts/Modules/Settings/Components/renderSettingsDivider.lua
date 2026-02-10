local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)

local Settings = script.Parent.Parent
local InExperienceMenuReact = require(Settings.InExperienceMenuReact)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal
local View = Foundation.View
local Divider = Foundation.Divider
local DividerOrientation = Foundation.Enums.DividerOrientation
local useTokens = Foundation.Hooks.useTokens

export type DividerProps = {
	layoutOrder: number,
	parent: Instance,
}

local function DividerContainer(): React.ReactNode
	local tokens = useTokens()
	return React.createElement(View, {
		tag = "auto-xy",
		padding = {
			left = UDim.new(0, 10), -- same padding as setting row labels
			top = UDim.new(0, tokens.Padding.XSmall),
			bottom = UDim.new(0, tokens.Padding.Large),
		}
	}, {
		Divider = React.createElement(Divider, {
			orientation = DividerOrientation.Horizontal,
		}),
	})
end

local function renderSettingsDivider(props: DividerProps)
	local dividerWrapper = Create "Frame" {
		Name = "DividerWrapper",
		Size = UDim2.fromScale(1, 0),
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.layoutOrder,
		Parent = props.parent,
	}

	local DividerRoot: any
	SettingsShowSignal:connect(function(isOpen)
		if not isOpen then
			if DividerRoot then
				DividerRoot:unmount()
				DividerRoot = nil
				dividerWrapper.Parent = nil
			end
			return
		end

		dividerWrapper.Parent = props.parent
		DividerRoot = ReactRoblox.createRoot(dividerWrapper)
		DividerRoot:render(React.createElement(InExperienceMenuReact, nil, {
			DividerContainer = React.createElement(DividerContainer),
		}))
	end)

	return dividerWrapper
end

return renderSettingsDivider
