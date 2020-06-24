local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local SetIsDead = require(TopBar.Actions.SetIsDead)
local UpdateHealth = require(TopBar.Actions.UpdateHealth)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end

local HealthConnector = Roact.PureComponent:extend("HealthConnector")

HealthConnector.validateProps = t.strictInterface({
	setIsDead = t.callback,
	updateHealth = t.callback,
})

function HealthConnector:init()
	local character = LocalPlayer.Character
	local humanoid = nil
	if character then
		humanoid = character:FindFirstChildOfClass("Humanoid")
	end

	self:setState({
		character = character,
		humanoid = humanoid,
	})
end

function HealthConnector:didMount()
	if self.state.humanoid then
		self.props.updateHealth(self.state.humanoid.Health, self.state.humanoid.MaxHealth)
	end
end

function HealthConnector:render()
	local eventConnections = {}

	if self.state.humanoid then
		eventConnections["HealthChangedConnection"] = Roact.createElement(EventConnection, {
			event = self.state.humanoid.HealthChanged,
			callback = function(health)
				self.props.updateHealth(self.state.humanoid.Health, self.state.humanoid.MaxHealth)
			end,
		})

		eventConnections["HumanoidDiedConnection"] = Roact.createElement(EventConnection, {
			event = self.state.humanoid.Died,
			callback = function()
				self.props.setIsDead(true)
			end,
		})
	elseif self.state.character then
		eventConnections["ChildAddedConnection"] = Roact.createElement(EventConnection, {
			event = self.state.character.ChildAdded,
			callback = function(child)
				if child:IsA("Humanoid") then
					self:setState({
						humanoid = child,
					})
				end
			end,
		})
	end

	eventConnections["CharacterAddedConnection"] = Roact.createElement(EventConnection, {
		event = LocalPlayer.CharacterAdded,
		callback = function(character)
			self:setState({
				humanoid = character:FindFirstChildOfClass("Humanoid"),
				character = character,
			})
			self.props.setIsDead(false)
		end,
	})

	eventConnections["CharacterRemovingConnection"] = Roact.createElement(EventConnection, {
		event = LocalPlayer.CharacterRemoving,
		callback = function()
			self:setState({
				humanoid = Roact.None,
				character = Roact.None,
			})
		end,
	})

	return Roact.createFragment(eventConnections)
end

function HealthConnector:didUpdate(prevProps, prevState)
	if self.state.humanoid == nil then
		self.props.updateHealth(0, 0)
	elseif self.state.humanoid ~= prevState.humanoid then
		self.props.setIsDead(false)
		self.props.updateHealth(self.state.humanoid.Health, self.state.humanoid.MaxHealth)
	end
	if self.state.character and self.state.character ~= prevState.character then
		local humanoid = self.state.character:FindFirstChildWhichIsA("Humanoid")
		if humanoid then
			self:setState({
				humanoid = Roact.None,
				character = Roact.None,
			})
		end
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setIsDead = function(isDead)
			return dispatch(SetIsDead(isDead))
		end,

		updateHealth = function(health, maxHealth)
			return dispatch(UpdateHealth(health, maxHealth))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(HealthConnector)
