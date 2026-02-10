local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local SettingReactView = require(CorePackages.Workspace.Packages.SettingReactView)
local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)

local Settings = script.Parent.Parent
local InExperienceMenuReact = require(Settings.InExperienceMenuReact)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local useLocalization = Localization.Hooks.useLocalization
local HeaderText = SettingReactView.HeaderText
local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

export type HeaderProps = {
	headerText: string,
	layoutOrder: number,
	parent: Instance,
}

local function HeaderTextContainer(props: SettingReactView.HeaderTextProps): React.ReactNode
	local localized = useLocalization({
		headerText = props.text,
	})
	local tokens = useTokens()
	return React.createElement(View, {
		tag = "auto-xy",
		padding = {
			left = UDim.new(0, 10), -- same padding as setting row labels
			bottom = UDim.new(0, tokens.Padding.Small),
		}
	}, {
		Text = React.createElement(HeaderText, {
			text = localized.headerText,
		}),
	})
end

local function renderSettingsHeader(props: HeaderProps)
	local headerWrapper = Create "Frame" {
		Name = "HeaderWrapper",
		Size = UDim2.fromScale(1, 0),
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.layoutOrder,
		Parent = props.parent,
	}

	local HeaderRoot: any
	SettingsShowSignal:connect(function(isOpen)
		if not isOpen then
			if HeaderRoot then
				HeaderRoot:unmount()
				HeaderRoot = nil
				headerWrapper.Parent = nil
			end
			return
		end

		headerWrapper.Parent = props.parent
		HeaderRoot = ReactRoblox.createRoot(headerWrapper)
		HeaderRoot:render(React.createElement(InExperienceMenuReact, nil, {
			HeaderTextContainer = React.createElement(HeaderTextContainer, {
				text = props.headerText,
			}),
		}))
	end)

	return headerWrapper
end

return renderSettingsHeader
