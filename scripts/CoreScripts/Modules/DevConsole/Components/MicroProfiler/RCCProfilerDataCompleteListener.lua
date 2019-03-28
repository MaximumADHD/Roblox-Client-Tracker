local CorePackages = game:GetService("CorePackages")
local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Actions = script.Parent.Parent.Parent.Actions
local SetRCCProfilerState = require(Actions.SetRCCProfilerState)

local RCCProfilerDataCompleteListener = Roact.Component:extend("RCCProfilerDataCompleteListener")

function RCCProfilerDataCompleteListener:didMount()
	local clientReplicator = getClientReplicator()
	if clientReplicator then
		self.completeSignal = clientReplicator.RCCProfilerDataComplete:connect(function(success, message)
			if self.props.waitingForRecording then
				if not success then
					warn(message)
					self.props.dispatchSetRCCProfilerState(false)
				else
					self.props.dispatchSetRCCProfilerState(false, message)
				end
			end
		end)
	end
end

function RCCProfilerDataCompleteListener:willUnmount()
	if self.completeSignal then
		self.completeSignal:Disconnect()
		self.completeSignal = nil
	end
end

function RCCProfilerDataCompleteListener:render()
	return nil
end


local function mapStateToProps(state, props)
	return {
		waitingForRecording = state.MicroProfiler.waitingForRecording,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetRCCProfilerState = function(waitingForRecording, fileLocation)
			dispatch(SetRCCProfilerState(waitingForRecording, fileLocation))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(RCCProfilerDataCompleteListener)
