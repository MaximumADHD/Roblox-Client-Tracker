local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
local PanelType = VrSpatialUi.Constants.PanelType
local Panel3DInSpatialUI = VrSpatialUi.Panel3DInSpatialUI
local Modules = script.Parent.Parent.Parent
local Unibar = require(Modules.Chrome.ChromeShared.Unibar)
local MenuIcon = require(Modules.TopBar.Components.Presentation.MenuIcon)
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local FFlagDeroduxVRMenuIcon = game:DefineFastFlag("DeroduxVRMenuIcon", false)

type Props = {
	showBadgeOver12: boolean?,
	voiceChatServiceManager: any?,
	voiceEnabled: boolean?,
	voiceState: any?,
}

local function MenuIconWrapper(props: any)
	local keepOutAreasStore 
	if FFlagTopBarSignalizeKeepOutAreas and FFlagDeroduxVRMenuIcon then 
		keepOutAreasStore = CoreGuiCommon.Stores.GetKeepOutAreasStore(false)
	end

	local menuOpen = useSelector(function(state)
		return if state and state.displayOptions then state.displayOptions.menuOpen else false
	end)
	local iconScale = if menuOpen then 1.5 else 1
	return React.createElement(MenuIcon, {
		layout = props.layout,
		iconScale = iconScale,
		showBadgeOver12 = props.showBadgeOver12,
		onAreaChanged = if FFlagTopBarSignalizeKeepOutAreas and FFlagDeroduxVRMenuIcon then keepOutAreasStore.setKeepOutArea else nil,
	})
end

local function VRBottomUnibar(props: Props)
	if not Panel3DInSpatialUI then
		return nil :: React.ReactElement<any, any>?
	end
	return React.createElement(Panel3DInSpatialUI, {
		panelType = PanelType.BottomBar,
		renderFunction = function()
			return React.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				ListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 8),
				}),
				MenuIconFrame = React.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
				}, {
					MenuIcon = React.createElement(MenuIconWrapper, {
						layout = 1,
						showBadgeOver12 = props.showBadgeOver12,
					}),
				}),
				UnibarFrame = React.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.XY,
				}, {
					Unibar = React.createElement(Unibar, {
						layoutOrder = 1,
						onAreaChanged = function() end,
						onMinWidthChanged = function() end,
					}),
				}),
			})
		end,
		requireCanvasGroup = true,
	})
end

return React.memo(VRBottomUnibar)
