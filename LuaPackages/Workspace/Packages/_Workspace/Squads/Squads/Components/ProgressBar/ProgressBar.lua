local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local Roact = dependencies.Roact
local RunService = dependencies.RunService
local UIBlox = dependencies.UIBlox
local t = dependencies.t

-- Progress bar that grows in the amount of seconds passed in.
local ProgressBar = Roact.Component:extend("ProgressBar")

type Props = {
	targetElapsedTime: number,
}

ProgressBar.validateProps = t.interface({
	targetElapsedTime = t.number,
})

function ProgressBar:init()
	self.progressBarReference = Roact.createRef()
	self.totalElapsedTime = 0
end

function ProgressBar:didMount()
	self.connection = RunService.RenderStepped:Connect(function(deltaTime)
		self.totalElapsedTime = math.min(self.totalElapsedTime + deltaTime, self.props.targetElapsedTime)
		if self.progressBarReference.current ~= nil then
			self.progressBarReference.current.Size =
				UDim2.new(self.totalElapsedTime / self.props.targetElapsedTime, 0, 0, 4)
		end
	end)
end

function ProgressBar:render()
	return Roact.createElement("Frame", {
		BackgroundColor3 = UIBlox.App.Style.Colors.White,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		[Roact.Ref] = self.progressBarReference,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 2),
		}),
	})
end

function ProgressBar:willUnmount()
	self.connection:Disconnect()
	self.connection = nil
end

return ProgressBar
