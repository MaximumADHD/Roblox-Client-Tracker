local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Otter = InGameMenuDependencies.Otter
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local BasicPage = require(script.BasicPage)
local AdvancedPage = require(script.AdvancedPage)

local GameSettingsPage = Roact.PureComponent:extend("GameSettingsPage")
GameSettingsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
})

function GameSettingsPage:init()
	self:setState({
		onAdvancedPage = false,
	})

	-- 0 is fully hidden, 1 is fully shown
	local position, setPosition = Roact.createBinding(0)
	self.basicPosition = UDim2.new(0, 0, 0, 0)

	self.advancedPosition = position:map(function(value)
		return UDim2.new(value - 1, 0, 0, 0)
	end)

	self.backTransparency = position:map(function(value)
		return 1 - value
	end)

	self.positionMotor = Otter.createSingleMotor(0)
	self.positionMotor:onStep(setPosition)
end

function GameSettingsPage:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		BasicPage = Roact.createElement(BasicPage, {
			position = self.basicPosition,
			pageTitle = self.props.pageTitle,
			switchToAdvancedPage = function()
				self:setState({
					onAdvancedPage = true,
				})
			end
		}),
		AdvancedPage = Roact.createElement(AdvancedPage, {
			position = self.advancedPosition,
			pageTitle = self.props.pageTitle,
			switchToBasicPage = function()
				self:setState({
					onAdvancedPage = false,
				})
			end,
		}),
	})
end

function GameSettingsPage:didUpdate()
	local newPosition = self.state.onAdvancedPage and 1 or 0
	self.positionMotor:setGoal(Otter.spring(newPosition, {
		frequency = 5,
	}))
end

function GameSettingsPage:willUnmount()
	self.positionMotor:destroy()
end

return GameSettingsPage
