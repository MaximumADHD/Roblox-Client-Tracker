local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local EmotesModule = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)

local EnabledNotifier = Roact.PureComponent:extend("CoreGuiCEnabledNotifieronnector")

local FFlagUseRoactPlayerList = settings():GetFFlag("UseRoactPlayerList3")

EnabledNotifier.validateProps = t.strictInterface({
	topBarEnabled = t.boolean,
})

function EnabledNotifier:notifyEnabled()
	if FFlagUseRoactPlayerList then
		-- TODO: Move this to the top of the script when removing FFlagUseRoactPlayerList
		local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
		PlayerListMaster:SetTopBarEnabled(self.props.topBarEnabled)
	else
		local PlayerlistModule = require(RobloxGui.Modules.PlayerlistModule)
		PlayerlistModule.TopbarEnabledChanged(self.props.topBarEnabled)
	end
	ChatSelector:TopbarEnabledChanged(self.props.topBarEnabled)
	BackpackModule:TopbarEnabledChanged(self.props.topBarEnabled)
	EmotesModule:setTopBarEnabled(self.props.topBarEnabled)
end

function EnabledNotifier:didMount()
	self:notifyEnabled()
end

function EnabledNotifier:render()
	return nil
end

function EnabledNotifier:didUpdate(prevProps, prevState)
	if self.props.topBarEnabled ~= prevProps.topBarEnabled then
		self:notifyEnabled()
	end
end

local function mapStateToProps(state)
	return {
		topBarEnabled = state.displayOptions.topbarEnabled,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(EnabledNotifier)