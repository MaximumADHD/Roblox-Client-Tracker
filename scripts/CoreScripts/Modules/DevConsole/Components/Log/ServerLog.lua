local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local DataConsumer = require(script.Parent.Parent.DataConsumer)

local Constants = require(script.Parent.Parent.Parent.Constants)
local COMMANDLINE_HEIGHT = Constants.LogFormatting.CommandLineHeight
local COMMANDLINE_PADDING = 4

local DevConsoleCommandLine = require(script.Parent.DevConsoleCommandLine)
local LogOutput = require(script.Parent.LogOutput)

local ServerLog = Roact.Component:extend("ServerLog")

function ServerLog:init()
	self.initServerLogData = function()
		return self.props.ServerLogData:getLogData()
	end
end

function ServerLog:render()
	return Roact.createElement("Frame", {
		Size = self.props.size,
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
	}, {
		Scroll = Roact.createElement(LogOutput, {
			size = UDim2.new(1, 0, 1, -(COMMANDLINE_HEIGHT + COMMANDLINE_PADDING)),
			targetSignal = self.props.ServerLogData:Signal(),
			initLogOutput = self.initServerLogData,
		}),

		CommandLine = Roact.createElement(DevConsoleCommandLine, {
			pos = UDim2.new(0, 0, 1, -COMMANDLINE_HEIGHT),
			height = COMMANDLINE_HEIGHT,
		}),
	})
end

return DataConsumer(ServerLog, "ServerLogData")
