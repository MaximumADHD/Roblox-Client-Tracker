local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local PlayerList = script.Parent.Parent.Parent
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)

local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole

-- TODO: This top stat thing is bad, can just make TenFootInterface fully responsible?
-- Or just move this whole thing into new Roact PlayerList?
local topStat = nil
local shouldSetupTopStat = if FFlagEnableMobilePlayerListOnConsole then GuiService.ViewportDisplaySize == Enum.DisplaySize.Large else TenFootInterface:IsEnabled()
if shouldSetupTopStat then
	topStat = TenFootInterface:SetupTopStat()
end

local TopStatConnector = Roact.PureComponent:extend("TopStatConnector")

function TopStatConnector:render()
	if topStat then
		topStat:SetTopStatEnabled(self.props.displayOptions.playerlistCoreGuiEnabled)
	end
	return nil
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
	}
end

if FFlagPlayerListReduceRerenders then
	return React.memo(RoactRodux.connect(mapStateToProps, nil)(TopStatConnector))
end

return RoactRodux.connect(mapStateToProps, nil)(TopStatConnector)
