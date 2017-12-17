--[[
	Implements the start of an Asteroids clone using Roact and Rodux.

	This is intended to be an advanced example that uses most edge cases of both
	Roact and Rodux.
]]

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local PlayerGui = game.Players.LocalPlayer.PlayerGui

local Common = script.Parent.Parent

local Roact = require(Common.Roact)
local ExternalEventConnection = require(Common.RoactUtilities.ExternalEventConnection)
local Rodux = require(Common.Rodux)
local RoactRodux = require(Common.RoactRodux)
local Immutable = require(Common.Immutable)

local function playerInputReducer(state, action)
	state = state or {
		left = 0,
		right = 0,
		up = 0,
		pause = 0,
	}

	if action.type == "SetPlayerInput" then
		return Immutable.Set(state, action.playerInput, action.value)
	end

	return state
end

local function playerReducer(state, action)
	state = state or {
		position = Vector2.new(0, 0),
		velocity = Vector2.new(0, 0),
		angle = 0,
		turnRate = math.pi / 2,
		throttleRate = 10,
	}

	if action.type == "GameStep" then
		local inputs = action.inputs
		local delta = action.delta
		local direction = Vector2.new(math.sin(state.angle), -math.cos(state.angle))
		local turnImpulse = inputs["right"] - inputs["left"]
		local throttleImpulse = inputs["up"]

		return Immutable.JoinDictionaries(state, {
			position = state.position + (state.velocity * delta),
			velocity = state.velocity + (throttleImpulse * state.throttleRate * delta * direction),
			angle = state.angle + (turnImpulse * state.turnRate * delta),
		})
	elseif action.type == "SetPlayerRotation" then
		return Immutable.Set(state, "angle", action.value)
	end

	return state
end

local function timeReducer(state, action)
	state = state or 0

	if action.type == "GameStep" then
		return state + action.delta
	end

	return state
end

local function asteroidsReducer(state, action)

	local function initAsteroids()
		return {
			{
				position = Vector2.new(-5,-5),
				velocity = Vector2.new(1,0),
				size = 5,
			}, {
				position = Vector2.new(-5,5),
				velocity = Vector2.new(1,0),
				size = 3,
			}, {
				position = Vector2.new(5,5),
				velocity = Vector2.new(0,-1),
				size = 5,
			}, {
				position = Vector2.new(5,-5),
				velocity = Vector2.new(0,1),
				size = 3,
			},
		}
	end

	state = state or initAsteroids()

	if action.type == "GameStep" then
		local delta = action.delta
		local adjustedAsteroids = {}

		for index, asteroid in pairs(state) do
			local posX = asteroid.position.X
			local posY = asteroid.position.Y
			local velX = asteroid.velocity.X
			local velY = asteroid.velocity.Y

			adjustedAsteroids[index] = {
				position = Vector2.new(posX + velX * delta, posY + velY * delta),
				velocity = Vector2.new(velX, velY),
				size = asteroid.size
			}
		end

		return adjustedAsteroids
	end

	return state
end

local function pausePressed(action)
	return action.playerInput == "pause" and action.value == 1
end

local function pauseReducer(state, action)
	state = state or false

	if action.type == "SetPlayerInput" and pausePressed(action) then
		return not state
	end

	return state
end

local function reducer(state, action)
	state = state or {}

	return {
		playerInputs = playerInputReducer(state.playerInputs, action),
		paused = pauseReducer(state.paused, action),
		player = playerReducer(state.player, action),
		time = timeReducer(state.time, action),
		asteroids = asteroidsReducer(state.asteroids, action),
	}
end

-- Defines the current camera declaratively
local Camera = Roact.Component:extend("Camera")

function Camera:init()
	self.cameraRef = function(rbx)
		self.cameraRbx = rbx
	end
end

function Camera:render()
	local focus = self.props.focus

	return Roact.createElement("Camera", {
		CameraType = Enum.CameraType.Scriptable,
		CFrame = CFrame.new(Vector3.new(focus.x, 20, focus.y)) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0),
		FieldOfView = 90,

		[Roact.Ref] = self.cameraRef,
	})
end

function Camera:didMount()
	Workspace.CurrentCamera = self.cameraRbx
end

-- A version of the camera that's tied to the player's position.
local PlayerCamera = RoactRodux.connect(function(store)
	local player = store:GetState().player

	return {
		focus = player.position
	}
end)(Camera)

-- Any asteroid in the game world.
local Asteroid = Roact.Component:extend("Asteroid")

function Asteroid:render()
	local position = self.props.position
	local size = self.props.size

	return Roact.createElement("Part", {
		Anchored = true,
		Shape = Enum.PartType.Ball,
		Size = Vector3.new(size, size, size),
		Color = Color3.fromRGB(170, 170, 170),
		CFrame = CFrame.new(Vector3.new(position.x, 0, position.y)),
		TopSurface = Enum.SurfaceType.Smooth,
	})
end

-- A collection of Asteroids in the world.
local Asteroids = Roact.Component:extend("Asteroids")

function Asteroids:render()
	local asteroids = self.props
	local asteroidComponentTable = {}

	for index, asteroid in pairs(asteroids) do
		asteroidComponentTable[index] = Roact.createElement(Asteroid, {
			position = asteroid.position,
			size = asteroid.size,
		})
	end

	return Roact.createElement("Folder", {
		Name = "Asteroids"
	}, asteroidComponentTable)
end

-- Connect the Asteroids component to state.asteroids
Asteroids = RoactRodux.connect(function(store)
	local state = store:GetState()
	local asteroids = state.asteroids

	return asteroids
end)(Asteroids)

-- Any ship in the game world.
local Ship = Roact.Component:extend("Ship")

function Ship:render()
	local position = self.props.position
	local angle = self.props.angle
	local time = self.props.time

	local color = Color3.fromHSV((time % 5) / 5, 1, 1)

	return Roact.createElement("Part", {
		Anchored = true,
		Size = Vector3.new(2, 2, 6),
		Color = color,
		CFrame = CFrame.new(Vector3.new(position.x, 0, position.y)) * CFrame.fromEulerAnglesXYZ(0, -angle, 0),
		FrontSurface = Enum.SurfaceType.Hinge,
	})
end

-- A version of the ship that's tied to the player's data.
local PlayerShip = RoactRodux.connect(function(store)
	local state = store:GetState()
	local player = state.player

	return {
		position = player.position,
		angle = player.angle,
		time = state.time,
	}
end)(Ship)

-- A static background
local GameBackground = Roact.Component:extend("GameBackground")

function GameBackground:render()
	return Roact.createElement("Part", {
		Anchored = true,
		Size = Vector3.new(512, 10, 512),
		CFrame = CFrame.new(Vector3.new(0, -5, 0)),
		Color = Color3.new(0, 0, 0),
	})
end

-- Text displayed when paused
local PauseText = Roact.Component:extend("PauseText")

function PauseText:render()
	return Roact.createElement("TextLabel", {
			Text = "Paused",
			TextColor3 = Color3.new(255, 255, 255),
			Font = Enum.Font.Arcade,
			TextSize = 70,
			Position = UDim2.new(0.5, 0, 0.5, 0),
		})
end

-- Connects to UserInputService when created, disconnects when removed.
local InputConnector = Roact.Component:extend("InputConnector")

function InputConnector:render()
	local function inputBeganCallback(input)
		if self.props.onInputBegan then
			self.props.onInputBegan(input)
		end
	end

	local function inputChangedCallback(input)
		if self.props.onInputChanged then
			self.props.onInputChanged(input)
		end
	end

	local function inputEndedCallback(input)
		if self.props.onInputEnded then
			self.props.onInputEnded(input)
		end
	end

	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.InputBegan,
		callback = inputBeganCallback,
	}, {
		Roact.createElement(ExternalEventConnection, {
			event = UserInputService.InputChanged,
			callback = inputChangedCallback,
		}, {
			Roact.createElement(ExternalEventConnection, {
				event = UserInputService.InputEnded,
				callback = inputEndedCallback,
			})
		})
	})
end

local KEYBOARD_KEY_MAPPING = {
	[Enum.KeyCode.Left] = "left",
	[Enum.KeyCode.A] = "left",
	[Enum.KeyCode.Right] = "right",
	[Enum.KeyCode.D] = "right",
	[Enum.KeyCode.Up] = "up",
	[Enum.KeyCode.W] = "up",
	[Enum.KeyCode.P] = "pause",
}

local function getPlayerInput(input)
	if input.UserInputType ~= Enum.UserInputType.Keyboard then
		return nil
	end

	return KEYBOARD_KEY_MAPPING[input.KeyCode]
end

local KeyboardInputConnector = RoactRodux.connect(function(store)
	local function onInputBegan(input)
		local playerInput = getPlayerInput(input)

		if playerInput then
			store:Dispatch({
				type = "SetPlayerInput",
				playerInput = playerInput,
				value = 1,
			})
		end
	end

	local function onInputEnded(input)
		local playerInput = getPlayerInput(input)

		if playerInput then
			store:Dispatch({
				type = "SetPlayerInput",
				playerInput = playerInput,
				value = 0,
			})
		end
	end

	return {
		onInputBegan = onInputBegan,
		onInputEnded = onInputEnded,
	}
end)(InputConnector)

local RenderSteppedConnector = Roact.Component:extend("RenderSteppedConnector")

function RenderSteppedConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = RunService.RenderStepped,
		callback = self.props.onStepped,
	})
end

-- Connect RenderSteppedConnector to actions dispatched to the store
RenderSteppedConnector = RoactRodux.connect(function(store)
	return {
		onStepped = function(delta)
			store:Dispatch({
				type = "GameStep",
				delta = delta,
				inputs = store:GetState().playerInputs,
			})
		end
	}
end)(RenderSteppedConnector)

--[[
	Only renders the given component if the given route is the current one.

	The component is passed as a prop so that we don't worry about its
	descendants until they're relevant.
]]
local function PauseRoute(props)
	-- Injected by RoactRodux
	local paused = props.paused

	-- Provided by parent component
	local match = props.match
	local component = props.component

	if paused == match then
		return Roact.createElement(component)
	end
end

PauseRoute = RoactRodux.connect(function(store)
	local state = store:GetState()

	return {
		paused = state.paused
	}
end)(PauseRoute)

-- Package everything up in Workspace.
local App = Roact.Component:extend("App")

function App:render()
	return Roact.createElement("Folder", {}, {
		Player = Roact.createElement(PlayerShip),
		PlayerCamera = Roact.createElement(PlayerCamera),
		GameBackground = Roact.createElement(GameBackground),
		Asteroids = Roact.createElement(Asteroids),
		KeyboardInputConnector = Roact.createElement(KeyboardInputConnector),
		RenderSteppedConnector = Roact.createElement(PauseRoute, {
			match = false,
			component = RenderSteppedConnector,
		}),
	})
end

-- Package everything up in PlayerGui.
local Ui = Roact.Component:extend("Ui")

function Ui:render()
	return Roact.createElement("ScreenGui", nil, {
		PauseText = Roact.createElement(PauseRoute, {
			match = true,
			component = PauseText,
		})
	})
end

local function main()
	RunService.Stepped:Wait()

	local store = Rodux.Store.new(reducer)

	local app = Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, {
		App = Roact.createElement(App)
	})

	local ui = Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, {
		Ui = Roact.createElement(Ui)
	})

	Roact.reify(app, Workspace, "Roact-asteroids")
	Roact.reify(ui, PlayerGui, "Roact-asteroids-ui")
end

return main