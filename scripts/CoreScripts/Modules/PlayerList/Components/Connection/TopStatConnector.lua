local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

-- TODO: This top stat thing is bad, can just make TenFootInterface fully responsible?
-- Or just move this whole thing into new Roact PlayerList?
local topStat = nil
if TenFootInterface:IsEnabled() then
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

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(TopStatConnector)