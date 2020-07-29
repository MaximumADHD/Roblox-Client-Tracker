local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local BackpackModule = require(RobloxGui.Modules.BackpackScript)
local EmotesModule = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local EnabledNotifier = Roact.PureComponent:extend("CoreGuiCEnabledNotifieronnector")

EnabledNotifier.validateProps = t.strictInterface({
	topBarEnabled = t.boolean,
})

function EnabledNotifier:notifyEnabled()
	PlayerListMaster:SetTopBarEnabled(self.props.topBarEnabled)
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