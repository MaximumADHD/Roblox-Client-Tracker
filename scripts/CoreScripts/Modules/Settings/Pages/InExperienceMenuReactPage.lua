-- Replaces IEM with React page
local CorePackages = game:GetService("CorePackages")

local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Settings = script.Parent.Parent

local EnumReactPage = require(Settings.EnumReactPage)
local PortalWithFoundationStylelink = require(Settings.Components.PortalWithFoundationStylelink)
local ReactPageSignal = require(Settings.ReactPageSignal)
local Traversal = require(Settings.Components.Traversal)

local TraversalHistoryPage = Traversal.TraversalHistoryPage

export type InExperienceMenuReactPageProps = {
	onMount: () -> (),
	onUnmount: () -> (),
	mountTo: GuiObject,
}

local function InExperienceMenuReactPage(props: InExperienceMenuReactPageProps, ref: React.Ref<GuiObject>?): React.React_Node
	local reactPageSignal = ReactPageSignal(false)
	local currentReactPage = SignalsReact.useSignalState(reactPageSignal.currentReactPage)

	local page
	if currentReactPage == EnumReactPage.TraversalHistory then
		page = React.createElement(TraversalHistoryPage)
	end

	React.useEffect(function(): ...() -> ()
		if currentReactPage then
			props.onMount()
			return props.onUnmount
		end
		return
	end, { currentReactPage })

	React.useEffect(function()
		local connection = SettingsShowSignal:connect(function(isOpen)
			if not isOpen then
				props.onUnmount()
			end
		end)
		return function()
			connection:Disconnect()
		end
	end, {})
	
	return React.createElement(PortalWithFoundationStylelink, {
		parent = props.mountTo,
	}, {
		Page = page,
	})
end

return React.memo(React.forwardRef(InExperienceMenuReactPage))
