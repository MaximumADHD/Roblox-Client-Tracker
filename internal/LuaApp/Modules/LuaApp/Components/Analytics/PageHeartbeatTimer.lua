local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local PAGE_HEARTBEAT_TIMERS = {2, 10}

local PageHeartbeatTimer = Roact.PureComponent:extend("PageHeartbeatTimer")

local RoactServices = require(Modules.LuaApp.RoactServices)
local RoactAnalyticsAppRouter = require(Modules.LuaApp.Services.RoactAnalyticsAppRouter)

function PageHeartbeatTimer:ConnectSignals(newProps, oldProps)
	local analytics = newProps.analytics
	local currentPageGoal = self.props.currentPageGoal

	if currentPageGoal ~= oldProps.currentPageGoal then
		self:setState({
			currentPage = currentPageGoal,
			currentBeat = 1,
			lastPageTick = tick()
		})
	end

	local heartBeatSignal = newProps.heartBeatSignal
	local sendHeartbeatSignal = newProps.sendHeartbeatSignal

	if heartBeatSignal ~= oldProps.heartBeatSignal then
		if self.connectionOnHeartbeat then
			self.connectionOnHeartbeat:Disconnect()
		end
		self.connectionOnHeartbeat = newProps.heartBeatSignal:Connect(function()
			if self.state.currentPage then
				local targetTime = PAGE_HEARTBEAT_TIMERS[self.state.currentBeat]
				if targetTime then
					if tick() - self.state.lastPageTick > targetTime then
						sendHeartbeatSignal:Fire()
					end
				end
			end
		end)
	end

	if sendHeartbeatSignal ~= oldProps.sendHeartbeatSignal then
		if self.connectionSendPageHeartbeat then
			self.connectionSendPageHeartbeat:Disconnect()
		end
		self.connectionSendPageHeartbeat = sendHeartbeatSignal:Connect(function()
			analytics.reportPageHeartbeat(self.state.currentBeat, self.state.currentPage)

			self:setState({
				currentBeat = self.state.currentBeat + 1,
			})
		end)
	end
end

function PageHeartbeatTimer:init()
	self.state = {
		currentPage = nil,
		currentBeat = 1,
		lastPageTick = tick()
	}
	self.connectionSendPageHeartbeat = nil
	self.connectionOnHeartbeat = nil
end

function PageHeartbeatTimer:render()
end

function PageHeartbeatTimer:didUpdate(oldProps, oldState)
	self:ConnectSignals(self.props, oldProps)
end

function PageHeartbeatTimer:didMount()
	self:ConnectSignals(self.props, {})
end

function PageHeartbeatTimer:willUnmount()
	if self.connectionSendPageHeartbeat then
		self.connectionSendPageHeartbeat:Disconnect()
	end
	if self.connectionOnHeartbeat then
		self.connectionOnHeartbeat:Disconnect()
	end
end

return RoactServices.connect({
	analytics = RoactAnalyticsAppRouter,
})(PageHeartbeatTimer)