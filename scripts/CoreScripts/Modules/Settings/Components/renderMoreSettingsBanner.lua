local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)

local Settings = script.Parent.Parent
local InExperienceMenuReact = require(Settings.InExperienceMenuReact)
local MoreSettingsBanner = require(script.Parent.MoreSettingsBanner)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local defaultIsPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch

local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal

export type MoreSettingsBannerProps = {
	layoutOrder: number,
	parent: Instance,
	isPioneerLaunch: (() -> boolean)?,
}

local function renderMoreSettingsBanner(props: MoreSettingsBannerProps)
	local isPioneer = props.isPioneerLaunch or defaultIsPioneerLaunch
	if not isPioneer() then
		return nil
	end

	local bannerWrapper = Create "Frame" {
		Name = "MoreSettingsBannerWrapper",
		Size = UDim2.fromScale(1, 0),
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.layoutOrder,
		Parent = props.parent,
	}

	local BannerRoot: any
	SettingsShowSignal:connect(function(isOpen)
		if not isOpen then
			if BannerRoot then
				BannerRoot:unmount()
				BannerRoot = nil
				bannerWrapper.Parent = nil
			end
			return
		end

		bannerWrapper.Parent = props.parent
		BannerRoot = ReactRoblox.createRoot(bannerWrapper)
		BannerRoot:render(React.createElement(InExperienceMenuReact, nil, {
			MoreSettingsBanner = React.createElement(MoreSettingsBanner),
		}))
	end)

	return bannerWrapper
end

return renderMoreSettingsBanner
