--!nonstrict
------------------------------------------------------------------------
-- FreeCameraIAS
-- Cinematic free camera for spectating and video production.
--
-- Default keybindings:
-- 
-- WASD / Thumbstick1 to move camera forward, left, backward, right
-- MouseButton2 / Thumbstick2 to rotate camera
-- Q,E / L2,R2 to move camera up, down
-- Z,C / L1,R1 to tilt camera left, right (double-tap to reset tilt)
-- Scroll / ButtonX,ButtonY to zoom FOV
--
-- Mode overlay (Up/DPadUp to show, Down/DPadDown to cycle modes):
--   Axis modes  → hold Left/Right to adjust continuously
--   Toggle modes → tap Left or Right to flip on/off
--   Cycle modes  → tap Left/Right to step through list
--   Action modes → tap Left or Right to fire once
-- Modes: Custom Post Processing [group: Enable, DoF fields, Bloom fields, Blur fields,
--          Color Correction fields, Sun Rays fields, Color Grading fields],
--        Player Lock [group: Enable, Target],
--        UI [group: Screen GUIs, Leaderboard],
--        Movement [group: Speed, Stiffness], 
--        Field of View [group: Speed, Stiffness],
--        Tilt [group: Speed, Stiffness],
--        Pan [group: Speed, Stiffness]
------------------------------------------------------------------------

local pi    = math.pi
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sqrt  = math.sqrt
local tan   = math.tan

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local StarterPlayer = game:GetService("StarterPlayer")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

------------------------------------------------------------------------

local FFlagUserFreecamIASRefactor1
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFreecamIASRefactor1")
	end)
	FFlagUserFreecamIASRefactor1 = success and result
end

local Constants = {
	AttributeName = "FreecamEnabled",

	Thumbstick = {
		Curvature = 2.0,
	},

	DoubleTap = {
		Threshold = 0.25,
		Debounce  = 0.1,
	},

	PlayerLock = {
		DefaultZoom   = 20,
		MinZoom       = 5,
		MaxZoom       = 50,
		DefaultHeight = 0,
		HeightRange   = 10,
	},

	Movement = {
		Gain     = Vector3.new(1, 1, 1) * 64,
		AdjSpeed = 0.75,  MinSpeed = 0.01,  MaxSpeed = 4.0,
		ShiftMul = 0.25,
		Stiffness    = 1.5,
		AdjStiffness = 0.75,  MinStiffness = 0.01,  MaxStiffness = 10.0,
	},

	Pan = {
		Gain         = Vector2.new(0.75, 1) * 8,
		MouseScale    = Vector2.new( pi / (64 * 60),      -(pi / (64 * 60))),
		TrackpadScale = Vector2.new( pi * 14 / (64 * 60), -(pi * 14 / (64 * 60))),
		GamepadScale  = Vector2.new( pi / 8,                pi / 8),
		AdjSpeed = 0.75,  MinSpeed = 0.01,  MaxSpeed = 4.0,
		Stiffness    = 1.0,
		AdjStiffness = 0.75,  MinStiffness = 0.01,  MaxStiffness = 10.0,
	},

	Fov = {
		Gain         = 300,
		WheelScale   = -0.01667,
		PinchScale   = -0.008,
		GamepadScale = 0.25,
		AdjSpeed     = 0.75,  MinSpeed = 0.01,  MaxSpeed = 4.0,
		Stiffness    = 4.0,
		AdjStiffness = 0.75,  MinStiffness = 0.01,  MaxStiffness = 10.0,
	},

	Roll = {
		Gain         = -pi / 2,
		AdjSpeed     = 0.75,  MinSpeed = 0.01,  MaxSpeed = 4.0,
		Stiffness    = 1.0,
		AdjStiffness = 0.75,  MinStiffness = 0.01,  MaxStiffness = 10.0,
	},

	DoF = {
		FarIntensity  = { Adj = 0.1,  Min = 0.0, Max = 1.0   },
		NearIntensity = { Adj = 0.1,  Min = 0.0, Max = 1.0   },
		FocusDistance = { Adj = 20.0, Min = 0.0, Max = 200.0 },
		FocusRadius   = { Adj = 5.0,  Min = 0.0, Max = 50.0  },
	},

	Bloom = {
		Intensity = { Adj = 0.05, Min = 0.0, Max = 1.0  },
		Size      = { Adj = 2.0,  Min = 0.0, Max = 56.0 },
		Threshold = { Adj = 0.05, Min = FFlagUserFreecamIASRefactor1 and 0.8 or 0.0, Max = FFlagUserFreecamIASRefactor1 and 4.0 or 1.0 },
	},

	Blur = {
		Size = { Adj = 2.0, Min = 0.0, Max = 56.0 },
	},

	ColorCorrection = {
		Brightness = { Adj = 0.05, Min = -1.0, Max = 1.0 },
		Contrast   = { Adj = 0.05, Min = -1.0, Max = 1.0 },
		Saturation = { Adj = 0.05, Min = -1.0, Max = 1.0 },
	},

	SunRays = {
		Intensity = { Adj = 0.05, Min = 0.0, Max = 1.0 },
		Spread    = { Adj = 0.05, Min = 0.0, Max = 1.0 },
	},

	Keys = {
		Toggle = {
			Keyboard = Enum.KeyCode.P,
			Modifier = Enum.KeyCode.LeftShift,
		},

		Pan = {
			Mouse    = Enum.KeyCode.MouseDelta,
			Trackpad = Enum.KeyCode.TrackpadPan,
			Gamepad  = Enum.KeyCode.Thumbstick2,
		},

		MovementMove = {
			Keyboard = { Up=Enum.KeyCode.W, Down=Enum.KeyCode.S, Left=Enum.KeyCode.A, Right=Enum.KeyCode.D },
			Gamepad  = Enum.KeyCode.Thumbstick1,
		},

		MovementElevate = {
			Keyboard = { Up=Enum.KeyCode.E,        Down=Enum.KeyCode.Q        },
			Gamepad  = { Up=Enum.KeyCode.ButtonR2,  Down=Enum.KeyCode.ButtonL2  },
		},

		ModeSelect = {
			Toggle = { Keyboard=Enum.KeyCode.Up,    Gamepad=Enum.KeyCode.DPadUp    },
			Next   = { Keyboard=Enum.KeyCode.Down,  Gamepad=Enum.KeyCode.DPadDown  },
			Axis   = {
				Up  = { Keyboard=Enum.KeyCode.Right, Gamepad=Enum.KeyCode.DPadRight },
				Down = { Keyboard=Enum.KeyCode.Left,  Gamepad=Enum.KeyCode.DPadLeft  },
			},
		},

		Fov = {
			Mouse          = Enum.KeyCode.MouseWheel,
			TrackpadPinch  = Enum.KeyCode.TrackpadPinch,
			Gamepad        = { Up=Enum.KeyCode.ButtonX, Down=Enum.KeyCode.ButtonY },
		},

		Tilt = {
			Keyboard = { Up=Enum.KeyCode.C,         Down=Enum.KeyCode.Z         },
			Gamepad  = { Up=Enum.KeyCode.ButtonR1,  Down=Enum.KeyCode.ButtonL1  },
		},

		Shift = {
			KeyboardPrimary   = Enum.KeyCode.LeftShift,
			KeyboardSecondary = Enum.KeyCode.RightShift,
		},

	},
}

Constants.Actions = {
	Toggle = {
		name = "FreecamToggleAction", type = Enum.InputActionType.Bool,
		bindings = {
			{ keyCode = Constants.Keys.Toggle.Keyboard, primaryModifier = Constants.Keys.Toggle.Modifier },
		},
	},
	Pan = {
		name = "PanAction", type = Enum.InputActionType.Direction2D,
		bindings = {
			{ keyCode = Constants.Keys.Pan.Mouse,    vector2Scale = Constants.Pan.MouseScale },
			{ keyCode = Constants.Keys.Pan.Trackpad, vector2Scale = Constants.Pan.TrackpadScale },
			{ keyCode = Constants.Keys.Pan.Gamepad,  responseCurve = Constants.Thumbstick.Curvature, vector2Scale = Constants.Pan.GamepadScale },
		},
	},
	MovementMove = {
		name = "MovementMoveAction", type = Enum.InputActionType.Direction2D,
		bindings = {
			{ up = Constants.Keys.MovementMove.Keyboard.Up,   down  = Constants.Keys.MovementMove.Keyboard.Down,
			  left = Constants.Keys.MovementMove.Keyboard.Left, right = Constants.Keys.MovementMove.Keyboard.Right },
			{ keyCode = Constants.Keys.MovementMove.Gamepad, responseCurve = Constants.Thumbstick.Curvature },
		},
	},
	MovementElevate = {
		name = "MovementElevateAction", type = Enum.InputActionType.Direction1D,
		bindings = {
			{ up = Constants.Keys.MovementElevate.Keyboard.Up, down = Constants.Keys.MovementElevate.Keyboard.Down },
			{ up = Constants.Keys.MovementElevate.Gamepad.Up,  down = Constants.Keys.MovementElevate.Gamepad.Down  },
		},
	},
	Fov = {
		name = "FovAction", type = Enum.InputActionType.Direction1D,
		bindings = {
			{ keyCode = Constants.Keys.Fov.Mouse,         scale = Constants.Fov.WheelScale },
			{ keyCode = Constants.Keys.Fov.TrackpadPinch, scale = Constants.Fov.PinchScale },
			{ up = Constants.Keys.Fov.Gamepad.Up, down = Constants.Keys.Fov.Gamepad.Down, scale = Constants.Fov.GamepadScale },
		},
	},
	Tilt = {
		name = "TiltAction", type = Enum.InputActionType.Direction1D,
		bindings = {
			{ up = Constants.Keys.Tilt.Keyboard.Up, down = Constants.Keys.Tilt.Keyboard.Down },
			{ up = Constants.Keys.Tilt.Gamepad.Up,  down = Constants.Keys.Tilt.Gamepad.Down  },
		},
	},
	Shift = {
		name = "ShiftAction", type = Enum.InputActionType.Bool,
		bindings = {
			{ keyCode = Constants.Keys.Shift.KeyboardPrimary   },
			{ keyCode = Constants.Keys.Shift.KeyboardSecondary },
		},
	},
	ModeToggle = {
		name = "ModeToggleAction", type = Enum.InputActionType.Bool,
		bindings = {
			{ keyCode = Constants.Keys.ModeSelect.Toggle.Keyboard },
			{ keyCode = Constants.Keys.ModeSelect.Toggle.Gamepad  },
		},
	},
	ModeNext = {
		name = "ModeNextAction", type = Enum.InputActionType.Bool,
		bindings = {
			{ keyCode = Constants.Keys.ModeSelect.Next.Keyboard },
			{ keyCode = Constants.Keys.ModeSelect.Next.Gamepad  },
		},
	},
	ModeAxis = {
		name = "ModeAxisAction", type = Enum.InputActionType.Direction1D,
		bindings = {
			{ up = Constants.Keys.ModeSelect.Axis.Up.Keyboard, down = Constants.Keys.ModeSelect.Axis.Down.Keyboard },
			{ up = Constants.Keys.ModeSelect.Axis.Up.Gamepad,  down = Constants.Keys.ModeSelect.Axis.Down.Gamepad  },
		},
	},
}

local FREECAM_TOGGLE_PRIORITY = 3000
local FREECAM_INPUT_PRIORITY  = 2000

------------------------------------------------------------------------

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local freecamGui = nil

local Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local FreecamDepthOfField    = nil
local FreecamBloom           = nil
local FreecamBlur            = nil
local FreecamColorCorrection = nil
local FreecamSunRays         = nil
local FreecamColorGrading    = nil

local savedEffects = {
	DepthOfField    = { Enabled=false, FarIntensity=0.75, NearIntensity=0.75, FocusDistance=0.05, InFocusRadius=10.0 },
	Bloom           = { Enabled=false, Intensity=0.4, Size=24.0, Threshold=0.95 },
	Blur            = { Enabled=false, Size=24.0 },
	ColorCorrection = { Enabled=false, Brightness=0.0, Contrast=0.0, Saturation=0.0, TintColor=Color3.new(1,1,1) },
	SunRays         = { Enabled=false, Intensity=0.25, Spread=1.0 },
	ColorGrading    = { Enabled=false, TonemapperPreset=Enum.TonemapperPreset.Default },
}

local customGui        = nil
local customGuiBubbles = nil
local PlayerState = nil

local FFlagUserShowGuiHideToggles
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserShowGuiHideToggles")
	end)
	FFlagUserShowGuiHideToggles = success and result
end

local FFlagUserPlayerScriptsRefactor4
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserPlayerScriptsRefactor4")
	end)
	FFlagUserPlayerScriptsRefactor4 = success and result
end

local FFlagUserPlayerScriptsRefactor5
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserPlayerScriptsRefactor5")
	end)
	FFlagUserPlayerScriptsRefactor5 = success and result
end

local FFlagUserFreecamIASRefactor2
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFreecamIASRefactor2")
	end)
	FFlagUserFreecamIASRefactor2 = success and result
end

local FFlagUserFreecamIASRefactor3
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFreecamIASRefactor3")
	end)
	FFlagUserFreecamIASRefactor3 = success and result
end

local FFlagUserFreecamIASRefactor4
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFreecamIASRefactor4")
	end)
	FFlagUserFreecamIASRefactor4 = success and result
end


-----------------------------------------------------------------------

local function makeEffectOverride(className, excludeFn)
	local suppressed = {}
	local camConn, lightConn

	local function disable()
		for _, e in ipairs(suppressed) do
			if e.Parent then e.Enabled = true end
		end
		if camConn   then camConn:Disconnect();   camConn   = nil end
		if lightConn then lightConn:Disconnect(); lightConn = nil end
		suppressed = {}
	end

	local function trySuppress(e)
		if e:IsA(className) and e.Enabled and (not excludeFn or not excludeFn(e)) then
			suppressed[#suppressed + 1] = e
			e.Enabled = false
		end
	end

	local function enable()
		suppressed = {}
		for _, e in ipairs(Camera:GetChildren()) do trySuppress(e) end
		for _, e in ipairs(Lighting:GetChildren()) do trySuppress(e) end
		camConn   = Camera.ChildAdded:Connect(function(child) trySuppress(child) end)
		lightConn = Lighting.ChildAdded:Connect(function(child) trySuppress(child) end)
	end

	return enable, disable
end

-- suppress all post-processing effect instances other than ones that begin with "Freecam"
local masterEffectsEnabled = false
local enableMasterEffects, disableMasterEffects = makeEffectOverride("PostEffect", function(e)
	return e.Name:sub(1, 7) == "Freecam"
end)

local effectDefs

local function doToggleMasterEffects()
	masterEffectsEnabled = not masterEffectsEnabled
	if masterEffectsEnabled then
		enableMasterEffects()
	else
		disableMasterEffects()
		for _, def in ipairs(effectDefs) do
			local e = def.get()
			if e then e.Enabled = false end
		end
	end
end

local function doToggleDoF()            if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamDepthOfField;    if e then e.Enabled = not e.Enabled end end
local function doToggleBloom()          if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamBloom;           if e then e.Enabled = not e.Enabled end end
local function doToggleBlur()           if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamBlur;            if e then e.Enabled = not e.Enabled end end
local function doToggleColorCorrection()if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamColorCorrection; if e then e.Enabled = not e.Enabled end end
local function doToggleSunRays()        if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamSunRays;         if e then e.Enabled = not e.Enabled end end
local function doToggleColorGrading()   if FFlagUserPlayerScriptsRefactor4 and not masterEffectsEnabled then return end; local e = FreecamColorGrading;    if e then e.Enabled = not e.Enabled end end

effectDefs = {
	{ key = "DepthOfField",    class = "DepthOfFieldEffect",
	  get = function() return FreecamDepthOfField    end,
	  set = function(v) FreecamDepthOfField    = v end,
	  props = {"FarIntensity","NearIntensity","FocusDistance","InFocusRadius"} },
	{ key = "Bloom",           class = "BloomEffect",
	  get = function() return FreecamBloom           end,
	  set = function(v) FreecamBloom           = v end,
	  props = {"Intensity","Size","Threshold"} },
	{ key = "Blur",            class = "BlurEffect",
	  get = function() return FreecamBlur            end,
	  set = function(v) FreecamBlur            = v end,
	  props = {"Size"} },
	{ key = "ColorCorrection", class = "ColorCorrectionEffect",
	  get = function() return FreecamColorCorrection end,
	  set = function(v) FreecamColorCorrection = v end,
	  props = {"Brightness","Contrast","Saturation","TintColor"} },
	{ key = "SunRays",         class = "SunRaysEffect",
	  get = function() return FreecamSunRays         end,
	  set = function(v) FreecamSunRays         = v end,
	  props = {"Intensity","Spread"} },
	{ key = "ColorGrading",    class = "ColorGradingEffect", parent = FFlagUserPlayerScriptsRefactor5 and Lighting or nil,
	  get = function() return FreecamColorGrading    end,
	  set = function(v) FreecamColorGrading    = v end,
	  props = {"TonemapperPreset"} },
}


local playerGuiConnection = nil
local playerAddedConnection = nil
local playerRemovingConnection = nil

local playerLockEnabled = false
local playerLockZoom    = Constants.PlayerLock.DefaultZoom
local playerLockHeight  = Constants.PlayerLock.DefaultHeight
local playerList = {}
local currentTargetIndex = 1
local rootPart = nil

local screenGuisEnabled = false
local leaderboardEnabled = false

local fovChangedTime  = -math.huge  -- tracks when FOV last changed
local lastMovedTime   = -math.huge  -- tracks when camera last moved/rotated

local stiffness = {
	movement = Constants.Movement.Stiffness,
	pan      = Constants.Pan.Stiffness,
	fov      = Constants.Fov.Stiffness,
	roll     = Constants.Roll.Stiffness,
}

local freecamToggleAction: InputAction

------------------------------------------------------------------------

local Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v
		local offset = goal - p0
		local decay = exp(-f*dt)
		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay
		self.p = p1
		self.v = v1
		return p1
	end

	function Spring:SetFreq(freq) self.f = freq end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

------------------------------------------------------------------------

local cameraPos = Vector3.new()
local cameraRot = Vector3.new()
local cameraFov = 0

local movementSpring = Spring.new(stiffness.movement, Vector3.new())
local panSpring      = Spring.new(stiffness.pan,      Vector2.new())
local fovSpring      = Spring.new(stiffness.fov,      0)
local rollSpring     = Spring.new(stiffness.roll,     0)

------------------------------------------------------------------------

local Input = {} do
	local actions = {}

	local speed = {
		movement = 1,
		pan      = 1,
		fov      = 1,
		roll     = 1,
	}

	local tiltSuppressed = false
	local tiltReset = nil

	local modeActive = false
	local modeIndex  = 1
	local navigationStack = {}
	local leafSelected = false
	local monitorItemSelected = false

	------------------------------------------------------------------------
	local function findPlayerLockRootPart(switchDirection)
		if not playerList or #playerList < 1 then return nil end
		for _ = 1, #playerList do
			currentTargetIndex = ((currentTargetIndex - 1) + switchDirection) % #playerList + 1
			local targetPlayer = playerList[currentTargetIndex]
			local targetCharacter = targetPlayer and targetPlayer.Character
			if targetCharacter then
				local humanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
				if humanoid and humanoid.RootPart then return humanoid.RootPart end
			end
			if switchDirection == 0 then switchDirection = 1 end
		end
		playerLockEnabled = false
		return nil
	end

	local TINT_COLORS = {
		{ name = "Custom",  color = nil },
		{ name = "White",   color = Color3.new(1, 1, 1) },
		{ name = "Warm",    color = Color3.fromRGB(255, 230, 200) },
		{ name = "Cool",    color = Color3.fromRGB(200, 220, 255) },
		{ name = "Red",     color = Color3.new(1, 0, 0) },
		{ name = "Green",   color = Color3.new(0, 1, 0) },
		{ name = "Blue",    color = Color3.new(0, 0, 1) },
		{ name = "Yellow",  color = Color3.new(1, 1, 0) },
		{ name = "Cyan",    color = Color3.new(0, 1, 1) },
		{ name = "Magenta", color = Color3.new(1, 0, 1) },
		{ name = "Orange",  color = Color3.fromRGB(255, 140, 0) },
		{ name = "Purple",  color = Color3.fromRGB(128, 0, 255) },
	}
	local CUSTOM_TINT_INDEX = 1
	local tintColorIndex  = 1
	local customTintColor = Color3.new(1, 1, 1)

	local function doTogglePlayerLock()
		playerLockEnabled = not playerLockEnabled
		if playerLockEnabled then
			playerLockZoom   = Constants.PlayerLock.DefaultZoom
			playerLockHeight = Constants.PlayerLock.DefaultHeight
			rootPart = findPlayerLockRootPart(0)
		end
	end

	local function doToggleScreenGuis()
		screenGuisEnabled = not screenGuisEnabled
		if PlayerState then
			for _, gui in pairs(PlayerState.getScreenGuis()) do
				if gui.Parent and gui ~= freecamGui then
					gui.Enabled = screenGuisEnabled
				end
			end
		end
	end

	local function doToggleLeaderboard()
		leaderboardEnabled = not leaderboardEnabled
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, leaderboardEnabled)
	end

	------------------------------------------------------------------------
	-- mode table: contains every adjustable/toggleable/cycled/fired feature
	-- type = "axis"   -> hold Left/Right to adjust a continuous value
	-- type = "toggle" -> tap Left/Right to toggle a boolean
	-- type = "cycle"  -> tap Left/Right to step through an ordered list
	-- type = "action" -> tap Left/Right to fire an action
	-- type = "group"  -> tap Left/Right to enter the sub-mode list; tap Up to exit back to top level
	local function makeEffectGroup(name, toggleFn, getInstance, axisSpecs, extraModes)
		local groupModes = {
			{ type = "toggle", name = "Enable",
			  toggle = toggleFn,
			  isEnabled = function() local e = getInstance(); return e and e.Enabled end },
		}
		for _, spec in ipairs(axisSpecs or {}) do
			groupModes[#groupModes + 1] = {
				type = "axis", name = spec.name,
				adj = spec.adjCfg.Adj, min = spec.adjCfg.Min, max = spec.adjCfg.Max,
				get = function() local e = getInstance(); return e and e[spec.prop] or 0 end,
				set = function(v) local e = getInstance(); if e then e[spec.prop] = v end end,
			}
		end
		for _, m in ipairs(extraModes or {}) do
			groupModes[#groupModes + 1] = m
		end
		return { type = "group", name = name, modes = groupModes }
	end

	local function makeTintChannel(chan)
		if FFlagUserFreecamIASRefactor2 then
			return { type="axis", name="Tint "..chan, adj=64, min=0.0, max=255.0, format="%.0f",
			  get=function()
				  local c = FreecamColorCorrection and FreecamColorCorrection.TintColor or customTintColor
				  return c[chan] * 255
			  end,
			  set=function(v)
				  local c = FreecamColorCorrection and FreecamColorCorrection.TintColor or customTintColor
				  local r, g, b = c.R, c.G, c.B
				  if chan == "R" then r = v / 255 elseif chan == "G" then g = v / 255 else b = v / 255 end
				  customTintColor = Color3.new(r, g, b)
				  tintColorIndex = CUSTOM_TINT_INDEX
				  if FreecamColorCorrection then FreecamColorCorrection.TintColor = customTintColor end
			  end }
		else
			return { type="axis", name="Tint "..chan, adj=0.02, min=0.0, max=1.0,
			  get=function() return customTintColor[chan] end,
			  set=function(v)
				  local r, g, b = customTintColor.R, customTintColor.G, customTintColor.B
				  if chan == "R" then r = v elseif chan == "G" then g = v else b = v end
				  customTintColor = Color3.new(r, g, b)
				  tintColorIndex = CUSTOM_TINT_INDEX
				  if FreecamColorCorrection then FreecamColorCorrection.TintColor = customTintColor end
			  end }
		end
	end

	local function buildCustomEffectsGroup()
		local group = {
			type = "group", name = "Custom Post Processing",
			modes = {
				{ type = "toggle", name = "Enable",
				  toggle = doToggleMasterEffects,
				  isEnabled = function() return masterEffectsEnabled end },
				makeEffectGroup("Depth of Field", doToggleDoF, function() return FreecamDepthOfField end, {
					{ name = "Far",            adjCfg = Constants.DoF.FarIntensity,  prop = "FarIntensity"  },
					{ name = "Near",           adjCfg = Constants.DoF.NearIntensity, prop = "NearIntensity" },
					{ name = "Focus Distance", adjCfg = Constants.DoF.FocusDistance, prop = "FocusDistance" },
					{ name = "Focus Radius",   adjCfg = Constants.DoF.FocusRadius,   prop = "InFocusRadius" },
				}),
				makeEffectGroup("Bloom", doToggleBloom, function() return FreecamBloom end, {
					{ name = "Intensity", adjCfg = Constants.Bloom.Intensity, prop = "Intensity" },
					{ name = "Size",      adjCfg = Constants.Bloom.Size,      prop = "Size"      },
					{ name = "Threshold", adjCfg = Constants.Bloom.Threshold, prop = "Threshold" },
				}),
				makeEffectGroup("Blur", doToggleBlur, function() return FreecamBlur end, {
					{ name = "Size", adjCfg = Constants.Blur.Size, prop = "Size" },
				}),
				makeEffectGroup("Color Correction", doToggleColorCorrection, function() return FreecamColorCorrection end,
					{
						{ name = "Brightness", adjCfg = Constants.ColorCorrection.Brightness, prop = "Brightness" },
						{ name = "Contrast",   adjCfg = Constants.ColorCorrection.Contrast,   prop = "Contrast"   },
						{ name = "Saturation", adjCfg = Constants.ColorCorrection.Saturation, prop = "Saturation" },
					},
					{
						{ type="cycle", name="Tint",
						  items=function() return TINT_COLORS end,
						  getIndex=function() return tintColorIndex end,
						  setIndex=function(i)
							  tintColorIndex = i
							  if FreecamColorCorrection then
								  if i == CUSTOM_TINT_INDEX then
									  FreecamColorCorrection.TintColor = customTintColor
								  else
									  local col = TINT_COLORS[i].color
									  FreecamColorCorrection.TintColor = col
									  if not FFlagUserFreecamIASRefactor2 then
										  customTintColor = col
									  end
								  end
							  end
						  end,
						  displayItem=function(entry) return entry.name end },
						makeTintChannel("R"),
						makeTintChannel("G"),
						makeTintChannel("B"),
					}
				),
				makeEffectGroup("Sun Rays", doToggleSunRays, function() return FreecamSunRays end, {
					{ name = "Intensity", adjCfg = Constants.SunRays.Intensity, prop = "Intensity" },
					{ name = "Spread",    adjCfg = Constants.SunRays.Spread,    prop = "Spread"    },
				}),
				makeEffectGroup("Color Grading", doToggleColorGrading, function() return FreecamColorGrading end,
					nil,
					{
						{ type="cycle", name="Tonemap",
						  items=function() return { Enum.TonemapperPreset.Default, Enum.TonemapperPreset.Retro } end,
						  getIndex=function()
							  if FreecamColorGrading and FreecamColorGrading.TonemapperPreset == Enum.TonemapperPreset.Retro then
								  return 2
							  end
							  return 1
						  end,
						  setIndex=function(i)
							  if FreecamColorGrading then
								  local presets = { Enum.TonemapperPreset.Default, Enum.TonemapperPreset.Retro }
								  FreecamColorGrading.TonemapperPreset = presets[i]
							  end
						  end,
						  displayItem=function(p) return p.Name end },
					}
				),
			},
		}
		if FFlagUserPlayerScriptsRefactor4 then
			for i = 2, #group.modes do
				group.modes[i].disabled = function() return not masterEffectsEnabled end
			end
		end
		return group
	end

	local function makeSpeedStiffnessGroup(name, constTable, speedKey, stiffKey, spring)
		return { type = "group", name = name, modes = {
			{ type = "axis", name = "Speed",
			  adj = constTable.AdjSpeed,     min = constTable.MinSpeed,     max = constTable.MaxSpeed,
			  get = function() return speed[speedKey] end,
			  set = function(v) speed[speedKey] = v end },
			{ type = "axis", name = "Stiffness",
			  adj = constTable.AdjStiffness, min = constTable.MinStiffness, max = constTable.MaxStiffness,
			  get = function() return stiffness[stiffKey] end,
			  set = function(v) stiffness[stiffKey] = v; spring:SetFreq(v) end },
		}}
	end

	local modes = {
		-- custom post-processing effects group
		buildCustomEffectsGroup(),
		-- player lock group
		{ type="group", name="Player Lock", modes={
			{ type="toggle", name="Enable",
			  toggle=doTogglePlayerLock,
			  isEnabled=function() return playerLockEnabled end },
			{ type="cycle", name="Target",
			  items=function() return playerList end,
			  getIndex=function() return currentTargetIndex end,
			  setIndex=function(i)
				  currentTargetIndex = i
				  local target = playerList[i]
				  local char = target and target.Character
				  if char then
					  local hum = char:FindFirstChildOfClass("Humanoid")
					  rootPart = hum and hum.RootPart or nil
				  else
					  rootPart = nil
				  end
			  end,
			  displayItem=function(p) return p.Name end },
		}},
		-- UI visibility group
		{ type="group", name=(FFlagUserFreecamIASRefactor3 and "UI Visibility" or "UI"), modes={
			{ type="toggle", name="Screen GUIs",
			  toggle=doToggleScreenGuis,
			  isEnabled=function() return screenGuisEnabled end },
			{ type="toggle", name="Leaderboard",
			  toggle=doToggleLeaderboard,
			  isEnabled=function() return leaderboardEnabled end },
		}},
		-- basic speed + stiffness groups
		makeSpeedStiffnessGroup("Movement",      Constants.Movement, "movement", "movement", movementSpring),
		makeSpeedStiffnessGroup("Field of View", Constants.Fov,      "fov",      "fov",      fovSpring),
		makeSpeedStiffnessGroup(FFlagUserFreecamIASRefactor3 and "Roll" or "Tilt",     Constants.Roll, "roll", "roll", rollSpring),
		makeSpeedStiffnessGroup(FFlagUserFreecamIASRefactor3 and "Rotation" or "Pan",  Constants.Pan,  "pan",  "pan",  panSpring),
	}
	if FFlagUserFreecamIASRefactor3 then
		modes = { modes[4], modes[7], modes[6], modes[5], modes[1], modes[2], modes[3] }
	end
	local isDisabled
	local nextEnabledIndex
	if FFlagUserPlayerScriptsRefactor4 then
		function isDisabled(mode)
			return mode.disabled and mode.disabled()
		end

		function nextEnabledIndex(list, current, direction)
			local count = #list
			for _ = 1, count do
				current = ((current - 1) + direction) % count + 1
				if not isDisabled(list[current]) then return current end
			end
			return current
		end
	end

	local function currentMode()
		if #navigationStack > 0 then
			local frame = navigationStack[#navigationStack]
			return frame.modes[frame.index]
		end
		return modes[modeIndex]
	end

	------------------------------------------------------------------------
	-- IAS Instance Helpers

	local function createBinding(parent, cfg)
		local b = Instance.new("InputBinding")
		if cfg.keyCode        then b.KeyCode         = cfg.keyCode        end
		if cfg.up             then b.Up              = cfg.up             end
		if cfg.down           then b.Down            = cfg.down           end
		if cfg.left           then b.Left            = cfg.left           end
		if cfg.right          then b.Right           = cfg.right          end
		if cfg.scale          then b.Scale           = cfg.scale          end
		if cfg.vector2Scale   then b.Vector2Scale    = cfg.vector2Scale   end
		if cfg.responseCurve  then b.ResponseCurve   = cfg.responseCurve  end
		if cfg.primaryModifier then b.PrimaryModifier = cfg.primaryModifier end
		b.Parent = parent
		return b
	end

	local function createAction(context, cfg)
		local action = Instance.new("InputAction")
		action.Name   = cfg.name
		action.Type   = cfg.type
		action.Parent = context
		for _, bindingCfg in ipairs(cfg.bindings) do
			createBinding(action, bindingCfg)
		end
		return action
	end

	------------------------------------------------------------------------
	local function makeDoubleTapHandler(threshold, debounce, callback)
		local lastTime, lastFired = nil, 0
		local function detect(val)
			if math.abs(val) > 0.01 then
				local now = os.clock()
				if lastTime ~= nil and (now - lastTime) <= threshold then
					if (now - lastFired) >= debounce then
						callback()
						lastFired = now
					end
					lastTime = nil
				else
					lastTime = now
				end
			end
		end
		local function reset() lastTime = nil end
		return detect, reset
	end

	local function createIASContexts()
		local cfg = Constants.Actions

		local contextParent
		if FFlagUserFreecamIASRefactor4 then
			local freecamInputFolder = Instance.new("Folder")
			freecamInputFolder.Name = "FreecamInput"
			freecamInputFolder.Parent = StarterPlayer
			script.Destroying:Connect(function()
				freecamInputFolder:Destroy()
			end)
			contextParent = freecamInputFolder
		else
			contextParent = script
		end

		-- high priority toggle context
		local freecamToggleContext = Instance.new("InputContext")
		freecamToggleContext.Name     = "FreecamToggleContext"
		freecamToggleContext.Priority = FREECAM_TOGGLE_PRIORITY
		freecamToggleContext.Sink     = false
		freecamToggleContext.Enabled  = true
		freecamToggleContext.Parent   = contextParent
		freecamToggleAction = createAction(freecamToggleContext, cfg.Toggle)

		-- high priority input context to sink inputs before character / camera movement
		local freecamContext = Instance.new("InputContext")
		freecamContext.Name     = "FreecamInputContext"
		freecamContext.Priority = FREECAM_INPUT_PRIORITY
		freecamContext.Sink     = true
		freecamContext.Enabled  = false
		freecamContext.Parent   = contextParent
		Input._sinkContext = freecamContext

		actions.Pan             = createAction(freecamContext, cfg.Pan)
		actions.MovementMove    = createAction(freecamContext, cfg.MovementMove)
		actions.MovementElevate = createAction(freecamContext, cfg.MovementElevate)
		actions.Fov             = createAction(freecamContext, cfg.Fov)
		actions.Shift           = createAction(freecamContext, cfg.Shift)

		local tiltAction = createAction(freecamContext, cfg.Tilt)
		actions.Tilt = tiltAction
		local tiltDetect
		tiltDetect, tiltReset = makeDoubleTapHandler(
			Constants.DoubleTap.Threshold,
			Constants.DoubleTap.Debounce,
			function()
				cameraRot = Vector3.new(cameraRot.x, cameraRot.y, 0)
				rollSpring:Reset(0)
				tiltSuppressed = true
			end
		)
		tiltAction.StateChanged:Connect(function(val: number)
			if tiltSuppressed then
				if math.abs(val) < 0.01 then tiltSuppressed = false end
				return
			end
			tiltDetect(val)
		end)

		local modeToggleAction = createAction(freecamContext, cfg.ModeToggle)
		modeToggleAction.StateChanged:Connect(function(pressed: boolean)
			if not pressed then return end
			if FFlagUserPlayerScriptsRefactor4 then
				if modeActive then
					if monitorItemSelected then
						monitorItemSelected = false
					elseif #navigationStack > 0 then
						local frame = navigationStack[#navigationStack]
						local prev = nextEnabledIndex(frame.modes, frame.index, -1)
						if prev < frame.index then
							frame.index = prev
						else
							navigationStack[#navigationStack] = nil
						end
					else
						local prev = nextEnabledIndex(modes, modeIndex, -1)
						if prev < modeIndex then
							modeIndex = prev
						else
							modeActive = false
						end
					end
				else
					modeActive = true
				end
			else
				if modeActive then
					if leafSelected then
						leafSelected = false
					elseif #navigationStack > 0 then
						navigationStack[#navigationStack] = nil
					else
						modeActive = false
					end
				else
					modeActive = true
				end
			end
		end)

		local modeNextAction = createAction(freecamContext, cfg.ModeNext)
		modeNextAction.StateChanged:Connect(function(pressed: boolean)
			if not pressed then return end
			if FFlagUserPlayerScriptsRefactor4 then
				if not modeActive then
					modeActive = true
				elseif monitorItemSelected then
					monitorItemSelected = false
				elseif #navigationStack > 0 then
					local frame = navigationStack[#navigationStack]
					frame.index = nextEnabledIndex(frame.modes, frame.index, 1)
				else
					modeIndex = nextEnabledIndex(modes, modeIndex, 1)
				end
			else
				if not modeActive then return end
				if leafSelected then
					-- no-op
				elseif #navigationStack > 0 then
					local frame = navigationStack[#navigationStack]
					frame.index = frame.index % #frame.modes + 1
				else
					local top = modes[modeIndex]
					if top.type == "group" then
						table.insert(navigationStack, {modes = top.modes, index = 1, groupName = top.name})
					elseif top.type == "toggle" then
						top.toggle()
					elseif top.type == "cycle" then
						local items = top.items()
						if #items > 0 then top.setIndex(top.getIndex() % #items + 1) end
					elseif top.type == "action" then
						top.action()
					elseif top.type == "axis" then
						leafSelected = true
					end
				end
			end
		end)

		local modeAxisAction = createAction(freecamContext, cfg.ModeAxis)
		modeAxisAction.StateChanged:Connect(function(val: number)
			if not modeActive or val == 0 then return end
			if FFlagUserPlayerScriptsRefactor4 then
				local mode = currentMode()
				if monitorItemSelected then
					if mode.type == "toggle" then
						mode.toggle()
					elseif mode.type == "cycle" then
						local items = mode.items()
						if #items > 0 then
							if val > 0 then
								mode.setIndex(mode.getIndex() % #items + 1)
							else
								mode.setIndex((mode.getIndex() - 2) % #items + 1)
							end
						end
					elseif mode.type == "action" then
						mode.action()
					elseif mode.type == "axis" then
						-- axis continuous adjustment handled by ModeControl
					end
				elseif val > 0 then
					if isDisabled(mode) then
						-- no-op
					elseif mode.type == "group" then
						table.insert(navigationStack, {modes = mode.modes, index = 1, groupName = mode.name})
					elseif mode.type == "action" then
						mode.action()
					else
						monitorItemSelected = true
					end
				elseif val < 0 then
					monitorItemSelected = false
					if #navigationStack > 0 then
						navigationStack[#navigationStack] = nil
					else
						modeActive = false
					end
				end
			else
				if leafSelected then
					-- no-op
				elseif #navigationStack > 0 then
					local mode = currentMode()
					if mode.type == "group" then
						table.insert(navigationStack, {modes = mode.modes, index = 1, groupName = mode.name})
					elseif mode.type == "toggle" then
						mode.toggle()
					elseif mode.type == "cycle" then
						local items = mode.items()
						if #items == 0 then return end
						if val > 0 then
							mode.setIndex(mode.getIndex() % #items + 1)
						elseif val < 0 then
							mode.setIndex((mode.getIndex() - 2) % #items + 1)
						end
					elseif mode.type == "action" then
						mode.action()
					end
				else
					if val > 0 then
						modeIndex = modeIndex % #modes + 1
					elseif val < 0 then
						modeIndex = (modeIndex - 2) % #modes + 1
					end
				end
			end
		end)
		actions.ModeAxis = modeAxisAction
	end

	createIASContexts()

	------------------------------------------------------------------------

	function Input.Movement()
		local move = actions.MovementMove:GetState()
		return Vector3.new(move.X, actions.MovementElevate:GetState(), move.Y)
			* (speed.movement * (actions.Shift:GetState() and Constants.Movement.ShiftMul or 1))
	end

	function Input.Pan()
		local s = actions.Pan:GetState()
		return Vector2.new(s.Y, -s.X) * speed.pan
	end

	function Input.Fov()
		return actions.Fov:GetState() * speed.fov
	end

	function Input.Roll()
		return (tiltSuppressed and 0 or actions.Tilt:GetState()) * speed.roll
	end

	function Input.ModeControl(dt)
		if not modeActive then return end
		if FFlagUserPlayerScriptsRefactor4 then
			if not monitorItemSelected then return end
		else
			if #navigationStack == 0 and not leafSelected then return end
		end
		local mode = currentMode()
		if mode.type ~= "axis" then return end
		local delta = actions.ModeAxis:GetState() * mode.adj * dt
		if delta ~= 0 then
			mode.set(clamp(mode.get() + delta, mode.min, mode.max))
		end
	end

	function Input.StartCapture()
		Input._sinkContext.Enabled = true
	end

	function Input.StopCapture()
		Input._sinkContext.Enabled = false
		tiltSuppressed = false
		if tiltReset then tiltReset() end
		modeActive = false
		if FFlagUserPlayerScriptsRefactor4 then
			table.clear(navigationStack)
			monitorItemSelected = false
		else
			navigationStack = {}
		end
		leafSelected = false
	end

	function Input.getModeActive() return modeActive end

	function Input.getModeName()
		return currentMode().name
	end

	function Input.getModeBreadcrumb()
		if #navigationStack == 0 then return "" end
		local parts = {}
		for _, frame in ipairs(navigationStack) do
			table.insert(parts, frame.groupName)
		end
		return table.concat(parts, " › ")
	end
	function Input.getModeDisplay()
		local mode = currentMode()
		if mode.type == "group" then
			return ""
		elseif mode.type == "axis" then
			return string.format((FFlagUserFreecamIASRefactor2 and mode.format) or "%.2f", mode.get())
		elseif mode.type == "toggle" then
			return mode.isEnabled() and "ON" or "OFF"
		elseif mode.type == "cycle" then
			local items = mode.items()
			if #items == 0 then return "None" end
			local item = items[mode.getIndex()]
			return item and mode.displayItem(item) or "None"
		elseif mode.type == "action" then
			return "(fire)"
		end
		return ""
	end

	function Input.getModeHint()
		local top = modes[modeIndex]

		local function lrVerb(t)
			if t == "axis"       then return "Hold to adjust"
			elseif t == "toggle" then return "Tap to flip"
			elseif t == "cycle"  then return "Tap to cycle"
			elseif t == "action" then return "Tap to fire"
			elseif t == "group"  then return "Enter"
			end
			return nil
		end

		if #navigationStack > 0 then
			local frame = navigationStack[#navigationStack]
			local nextIndex = frame.index % #frame.modes + 1
			local nextName  = frame.modes[nextIndex].name
			local nav    = "[↑] Back  [↓] " .. nextName
			local verb   = lrVerb(currentMode().type)
			return { nav = nav, action = verb and ("[←][→] " .. verb) or "" }

		elseif leafSelected then
			local verb = lrVerb(top.type)
			return { nav = "[↑] Back", action = verb and ("[←][→] " .. verb) or "" }

		else
			local t = top.type
			local dnVerb
			if t == "group"      then dnVerb = "Enter"
			elseif t == "toggle" then dnVerb = "Flip"
			elseif t == "cycle"  then dnVerb = "Cycle"
			elseif t == "action" then dnVerb = "Fire"
			elseif t == "axis"   then dnVerb = "Adjust"
			else                      dnVerb = "Select" end
			local prev     = modes[(modeIndex - 2) % #modes + 1].name
			local nextName = modes[modeIndex % #modes + 1].name
			return {
				nav    = "[↑] Close  [↓] " .. dnVerb,
				action = "[←] " .. prev .. "  [→] " .. nextName,
			}
		end
	end
	function Input.getTintColorName()
		if tintColorIndex >= 1 and tintColorIndex <= #TINT_COLORS then
			return TINT_COLORS[tintColorIndex].name
		end
		return "Custom"
	end
	function Input.getActiveGroupName()
		if not modeActive or #navigationStack == 0 then return nil end
		return navigationStack[1].groupName
	end

	if FFlagUserPlayerScriptsRefactor4 then
		Input._navigationStack = navigationStack
		Input._modes = modes
		function Input._getModeIndex() return modeIndex end
		function Input._isMonitorItemSelected() return monitorItemSelected end
	end
end

------------------------------------------------------------------------

local effectBubbleDefs = {
	{ get = function() return FreecamBloom           end, key = "bloom",        group = "Custom Post Processing",
	  fmt = function(e) return string.format("Intensity: %.2f  Size: %.1f\nThreshold: %.2f",
	      e.Intensity, e.Size, e.Threshold) end },
	{ get = function() return FreecamBlur            end, key = "blur",         group = "Custom Post Processing",
	  fmt = function(e) return string.format("Size: %.1f", e.Size) end },
	{ get = function() return FreecamColorCorrection end, key = "cc",           group = "Custom Post Processing",
	  fmt = function(e) return string.format("Brightness: %.2f  Contrast: %.2f\nSaturation: %.2f  Tint: %s",
	      e.Brightness, e.Contrast, e.Saturation, Input.getTintColorName()) end },
	{ get = function() return FreecamSunRays         end, key = "sunrays",      group = "Custom Post Processing",
	  fmt = function(e) return string.format("Intensity: %.2f  Spread: %.2f",
	      e.Intensity, e.Spread) end },
	{ get = function() return FreecamColorGrading    end, key = "colorgrading", group = "Custom Post Processing",
	  fmt = function(e) return string.format("Color Grading: %s", e.TonemapperPreset.Name) end },
	{ get = function() return FreecamDepthOfField    end, key = "dof",          group = "Custom Post Processing",
	  fmt = function(e) return string.format("Far: %.2f  Near: %.2f\nDistance: %.1f  Radius: %.1f",
	      e.FarIntensity, e.NearIntensity, e.FocusDistance, e.InFocusRadius) end },
}

local function setBubble(info, text)
	info.bubble.Visible = text ~= ""
	if text ~= "" then info.label.Text = text end
end

local monitorGui, monitorRows, MAX_MONITOR_ROWS, buildMonitorGui, getMonitorModeValue, getMonitorModeValueColor, updateMonitorGui
if FFlagUserPlayerScriptsRefactor4 then
monitorRows = {}
MAX_MONITOR_ROWS = 12

buildMonitorGui = function(parent)
	local panel = Instance.new("Frame")
	panel.Name = "FreecamMonitorPanel"
	panel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	panel.BackgroundTransparency = 0.2
	panel.BorderSizePixel = 0
	panel.Size = UDim2.new(0, 240, 0, 0)
	panel.AutomaticSize = Enum.AutomaticSize.Y
	panel.AnchorPoint = Vector2.new(1, 1)
	panel.Position = UDim2.new(1, -16, 1, -16)
	panel.Visible = false

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 8)
	corner.Parent = panel

	local padding = Instance.new("UIPadding")
	padding.PaddingTop    = UDim.new(0, 8)
	padding.PaddingBottom = UDim.new(0, 8)
	padding.PaddingLeft   = UDim.new(0, 12)
	padding.PaddingRight  = UDim.new(0, 12)
	padding.Parent = panel

	local layout = Instance.new("UIListLayout")
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.FillDirection = Enum.FillDirection.Vertical
	layout.Padding = UDim.new(0, 1)
	layout.Parent = panel

	-- breadcrumb header
	local breadcrumb = Instance.new("TextLabel")
	breadcrumb.Name = "Breadcrumb"
	breadcrumb.BackgroundTransparency = 1
	breadcrumb.TextColor3 = Color3.fromRGB(150, 150, 150)
	breadcrumb.Font = Enum.Font.GothamMedium
	breadcrumb.TextSize = 11
	breadcrumb.TextXAlignment = Enum.TextXAlignment.Left
	breadcrumb.Size = UDim2.new(1, 0, 0, 16)
	breadcrumb.LayoutOrder = 0
	breadcrumb.Visible = false
	breadcrumb.Parent = panel

	-- item rows
	monitorRows = {}
	for i = 1, MAX_MONITOR_ROWS do
		local row = Instance.new("Frame")
		row.Name = "Row" .. i
		row.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		row.BackgroundTransparency = 1
		row.BorderSizePixel = 0
		row.Size = UDim2.new(1, 0, 0, 22)
		row.LayoutOrder = i
		row.Visible = false

		local rowCorner = Instance.new("UICorner")
		rowCorner.CornerRadius = UDim.new(0, 4)
		rowCorner.Parent = row

		local rowPadding = Instance.new("UIPadding")
		rowPadding.PaddingLeft  = UDim.new(0, 6)
		rowPadding.PaddingRight = UDim.new(0, 6)
		rowPadding.Parent = row

		local nameLabel = Instance.new("TextLabel")
		nameLabel.Name = "Name"
		nameLabel.BackgroundTransparency = 1
		nameLabel.TextColor3 = Color3.new(1, 1, 1)
		nameLabel.Font = Enum.Font.GothamMedium
		nameLabel.TextSize = 14
		nameLabel.TextXAlignment = Enum.TextXAlignment.Left
		nameLabel.Size = UDim2.new(0.55, 0, 1, 0)
		nameLabel.Position = UDim2.new(0, 0, 0, 0)
		nameLabel.Parent = row

		local valueLabel = Instance.new("TextLabel")
		valueLabel.Name = "Value"
		valueLabel.BackgroundTransparency = 1
		valueLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
		valueLabel.Font = Enum.Font.GothamMedium
		valueLabel.TextSize = 14
		valueLabel.TextXAlignment = Enum.TextXAlignment.Right
		valueLabel.Size = UDim2.new(0.45, 0, 1, 0)
		valueLabel.Position = UDim2.new(0.55, 0, 0, 0)
		valueLabel.Parent = row

		row.Parent = panel
		monitorRows[i] = { frame = row, nameLabel = nameLabel, valueLabel = valueLabel }
	end

	-- hint footer
	local hint = Instance.new("TextLabel")
	hint.Name = "Hint"
	hint.BackgroundTransparency = 1
	hint.TextColor3 = Color3.fromRGB(120, 120, 120)
	hint.Font = Enum.Font.Gotham
	hint.TextSize = 12
	hint.TextXAlignment = Enum.TextXAlignment.Left
	hint.Size = UDim2.new(1, 0, 0, 20)
	hint.LayoutOrder = MAX_MONITOR_ROWS + 1
	hint.Parent = panel

	panel.Parent = parent
	monitorGui = { panel = panel, breadcrumb = breadcrumb, hint = hint }
end

getMonitorModeValue = function(mode)
	if mode.type == "group" then
		return "\xE2\x80\xBA"  -- ›
	elseif mode.type == "toggle" then
		return mode.isEnabled() and "On" or "Off"
	elseif mode.type == "axis" then
		return string.format((FFlagUserFreecamIASRefactor2 and mode.format) or "%.2f", mode.get())
	elseif mode.type == "cycle" then
		local items = mode.items()
		if #items == 0 then return "--" end
		local item = items[mode.getIndex()]
		return item and mode.displayItem(item) or "--"
	elseif mode.type == "action" then
		return ""
	end
	return ""
end

getMonitorModeValueColor = function(mode, isCursor, isEditing)
	if mode.type == "toggle" then
		if mode.isEnabled() then
			return Color3.fromRGB(0, 176, 111)
		else
			return Color3.fromRGB(150, 150, 150)
		end
	end
	if isCursor and isEditing then
		return Color3.new(1, 1, 1)
	end
	return Color3.fromRGB(180, 180, 180)
end

updateMonitorGui = function()
	if not monitorGui then return end
	local panel = monitorGui.panel
	if not Input.getModeActive() then
		panel.Visible = false
		return
	end
	panel.Visible = true

	-- determine current list and selected index
	local modeList, selectedIndex
	if #Input._navigationStack > 0 then
		local frame = Input._navigationStack[#Input._navigationStack]
		modeList = frame.modes
		selectedIndex = frame.index
	else
		modeList = Input._modes
		selectedIndex = Input._getModeIndex()
	end

	-- breadcrumb
	local bc = Input.getModeBreadcrumb()
	monitorGui.breadcrumb.Text = bc
	monitorGui.breadcrumb.Visible = bc ~= ""

	-- update rows
	local isEditing = Input._isMonitorItemSelected()
	local count = math.min(#modeList, MAX_MONITOR_ROWS)
	for i = 1, MAX_MONITOR_ROWS do
		local row = monitorRows[i]
		if i <= count then
			local mode = modeList[i]
			local isCursor = (i == selectedIndex)
			local dim = mode.disabled and mode.disabled()
			row.frame.Visible = true

			if isCursor and not dim then
				row.nameLabel.Text = "> " .. mode.name
				row.nameLabel.TextColor3 = Color3.new(1, 1, 1)
				row.nameLabel.Font = Enum.Font.GothamMedium
				row.frame.BackgroundTransparency = isEditing and 0.88 or 1
			elseif dim then
				row.nameLabel.Text = "  " .. mode.name
				row.nameLabel.TextColor3 = Color3.fromRGB(80, 80, 80)
				row.nameLabel.Font = Enum.Font.GothamMedium
				row.frame.BackgroundTransparency = 1
			else
				row.nameLabel.Text = "  " .. mode.name
				row.nameLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
				row.nameLabel.Font = Enum.Font.GothamMedium
				row.frame.BackgroundTransparency = 1
			end

			row.valueLabel.Text = getMonitorModeValue(mode)
			row.valueLabel.TextColor3 = dim and Color3.fromRGB(60, 60, 60) or getMonitorModeValueColor(mode, isCursor, isEditing)
		else
			row.frame.Visible = false
		end
	end

	-- hint
	if isEditing then
		if FFlagUserFreecamIASRefactor3 then
			monitorGui.hint.Text = "\xE2\x86\x91\xE2\x86\x93 Exit selection   \xE2\x86\x90\xE2\x86\x92 Adjust"
		else
			monitorGui.hint.Text = "\xE2\x86\x90\xE2\x86\x92 Adjust   \xE2\x86\x91\xE2\x86\x93 Exit selection"
		end
	else
		monitorGui.hint.Text = "\xE2\x86\x91\xE2\x86\x93 Navigate   \xE2\x86\x92 Select   \xE2\x86\x90 Back"
	end
end

end -- FFlagUserPlayerScriptsRefactor4

local function StepFreecam(dt)
	Input.ModeControl(dt)

	local movement  = movementSpring:Update(dt, Input.Movement())
	local pan  = panSpring:Update(dt, Input.Pan())
	local fov  = fovSpring:Update(dt, Input.Fov())
	local roll = rollSpring:Update(dt, Input.Roll())

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	local prevFov = cameraFov
	cameraFov = clamp(cameraFov + fov * Constants.Fov.Gain * (dt/zoomFactor), 1, 120)
	if math.abs(cameraFov - prevFov) > 0.01 then
		fovChangedTime = os.clock()
	end

	if movement.Magnitude > 0.05 or pan.Magnitude > 0.0005
		or math.abs(roll) > 0.0005 or math.abs(fov) > 0.0005 then
		lastMovedTime = os.clock()
	end
	local panVector: Vector2 = pan*Constants.Pan.Gain*(dt/zoomFactor)
	cameraRot = cameraRot + Vector3.new(panVector.X, panVector.Y, roll*Constants.Roll.Gain*(dt/zoomFactor))
	local function wrapAngle(a)
		a = a % (2*pi)
		return a > pi and a - 2*pi or a
	end
	cameraRot = Vector3.new(wrapAngle(cameraRot.x), wrapAngle(cameraRot.y), wrapAngle(cameraRot.z))
	local movementCameraLocal = Vector3.new(movement.X, movement.Y, -movement.Z)
	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, cameraRot.z)*CFrame.new(movementCameraLocal*Constants.Movement.Gain*dt)

	if playerLockEnabled and rootPart and rootPart.Parent then
		local lock = Constants.PlayerLock
		local zoomDelta   = -movement.Z * Constants.Movement.Gain.Z * dt
		local heightDelta = movement.Y * Constants.Movement.Gain.Y * dt
		playerLockZoom   = clamp(playerLockZoom   + zoomDelta,    lock.MinZoom,      lock.MaxZoom)
		playerLockHeight = clamp(playerLockHeight + heightDelta,  -lock.HeightRange,  lock.HeightRange)
		local targetCFrame   = CFrame.new(rootPart.Position + Vector3.new(0, playerLockHeight, 0))
		local rotationCFrame = CFrame.fromOrientation(cameraRot.x, cameraRot.y, cameraRot.z)
		cameraCFrame = targetCFrame * rotationCFrame * CFrame.new(0, 0, playerLockZoom)
	end

	if FFlagUserPlayerScriptsRefactor4 then
		updateMonitorGui()
	elseif customGui and customGui.Parent and customGuiBubbles and freecamGui and freecamGui.Parent then
		local modeInfo = customGuiBubbles.mode
		if Input.getModeActive() then
			-- camera movement / rotation bubble
			if os.clock() - lastMovedTime < 2.0 then
				local statusLines = {}
				statusLines[#statusLines+1] = string.format("X: %.0f  Y: %.0f  Z: %.0f",
					cameraPos.X, cameraPos.Y, cameraPos.Z)
				statusLines[#statusLines+1] = string.format("Pitch: %.1f\xC2\xB0  Yaw: %.1f\xC2\xB0  Roll: %.1f\xC2\xB0",
					math.deg(cameraRot.X), math.deg(cameraRot.Y), math.deg(cameraRot.Z))
				if os.clock() - fovChangedTime < 2.0 then
					statusLines[#statusLines+1] = string.format("Field of View: %.1f", cameraFov)
				end
				if dt > 0 then
					local spd = (cameraCFrame.p - cameraPos).Magnitude / dt
					if spd > 0.5 then
						statusLines[#statusLines+1] = string.format("Speed: %.1f", spd)
					end
				end
				setBubble(customGuiBubbles.status, table.concat(statusLines, "\n"))
			else
				customGuiBubbles.status.bubble.Visible = false
			end

			-- player lock bubble
			if playerLockEnabled and #playerList > 0 and Input.getActiveGroupName() ~= "Player Lock" then
				setBubble(customGuiBubbles.lock, string.format("Lock: %s", playerList[currentTargetIndex].Name))
			else
				customGuiBubbles.lock.bubble.Visible = false
			end

			-- post-processing effect bubble
			local activeGroup = Input.getActiveGroupName()
			for _, bDef in ipairs(effectBubbleDefs) do
				local e = bDef.get()
				if e and e.Enabled and activeGroup ~= bDef.group then
					setBubble(customGuiBubbles[bDef.key], bDef.fmt(e))
				else
					customGuiBubbles[bDef.key].bubble.Visible = false
				end
			end

			-- mode bubble
			modeInfo.bubble.Visible = true
			local breadcrumb = Input.getModeBreadcrumb()
			modeInfo.breadcrumb.Text    = breadcrumb
			modeInfo.breadcrumb.Visible = breadcrumb ~= ""
			local name    = Input.getModeName()
			local display = Input.getModeDisplay()
			modeInfo.title.Text = display ~= "" and (name .. ": " .. display) or name
			local hints = Input.getModeHint()
			modeInfo.nav.Text       = hints.nav
			modeInfo.nav.Visible    = hints.nav ~= ""
			modeInfo.action.Text    = hints.action
			modeInfo.action.Visible = hints.action ~= ""

			customGui.Visible = true
		else
			customGui.Visible = false
		end
	end

	cameraPos = cameraCFrame.p
	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame
	Camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

PlayerState = {}
do
	local mouseBehavior
	local mouseIconEnabled
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	function PlayerState.Push()
		for name in pairs(coreGuis) do
			coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
		end
		for name in pairs(setCores) do
			setCores[name] = StarterGui:GetCore(name)
			StarterGui:SetCore(name, false)
		end
		local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if playergui then
			for _, gui in pairs(playergui:GetChildren()) do
				if gui:IsA("ScreenGui") and gui.Enabled then
					screenGuis[#screenGuis + 1] = gui
					gui.Enabled = false
				end
			end
			playerGuiConnection = playergui.ChildAdded:Connect(function(child)
				if child:IsA("ScreenGui") and child.Enabled then
					screenGuis[#screenGuis + 1] = child
					child.Enabled = screenGuisEnabled
				end
			end)
		end

		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = false

		mouseBehavior = Enum.MouseBehavior.Default
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		for name, isEnabled in pairs(coreGuis) do
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
		end
		for name, isEnabled in pairs(setCores) do
			StarterGui:SetCore(name, isEnabled)
		end
		for _, gui in pairs(screenGuis) do
			if gui.Parent and gui ~= freecamGui then gui.Enabled = true end
		end
		if playerGuiConnection then
			playerGuiConnection:Disconnect()
			playerGuiConnection = nil
		end
		screenGuis = {}

		Camera.FieldOfView = cameraFieldOfView; cameraFieldOfView = nil
		Camera.CameraType = cameraType; cameraType = nil
		Camera.CFrame = cameraCFrame; cameraCFrame = nil
		Camera.Focus = cameraFocus; cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled; mouseIconEnabled = nil
		UserInputService.MouseBehavior = mouseBehavior; mouseBehavior = nil
	end

	function PlayerState.getScreenGuis() return screenGuis end
end

local function removePlayerFromList(player)
	for i, p in ipairs(playerList) do
		if p == player then
			table.remove(playerList, i)
			if currentTargetIndex == i and playerLockEnabled then
				playerLockEnabled = false
				currentTargetIndex = 1
			end
			if currentTargetIndex > i then currentTargetIndex = currentTargetIndex - 1 end
			if currentTargetIndex > #playerList or currentTargetIndex < 1 then currentTargetIndex = 1 end
			break
		end
	end
end

local function initializePlayerList()
	playerList = Players:GetPlayers()
	for i, p in ipairs(playerList) do
		if p == LocalPlayer then currentTargetIndex = i; break end
	end
	playerAddedConnection    = Players.PlayerAdded:Connect(function(player) table.insert(playerList, player) end)
	playerRemovingConnection = Players.PlayerRemoving:Connect(removePlayerFromList)
end

local function StartFreecam()
	initializePlayerList()

	local cf = Camera.CFrame
	cameraRot = Vector3.new(cf:toEulerAnglesYXZ())
	cameraPos = cf.p
	cameraFov = Camera.FieldOfView

	movementSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)
	rollSpring:Reset(0)

	freecamGui = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Freecam")
	if FFlagUserPlayerScriptsRefactor4 then
		if not monitorGui then
			buildMonitorGui(freecamGui)
		end
	elseif not customGui or not customGui.Parent then
		local container = Instance.new("Frame")
		container.Name = "FreecamCustomGui"
		container.BackgroundTransparency = 1
		container.AutomaticSize = Enum.AutomaticSize.XY
		container.AnchorPoint = Vector2.new(1, 1)
		container.Position = UDim2.new(1, -16, 1, -16)
		container.Size = UDim2.new(0, 0, 0, 0)
		container.Visible = false

		local listLayout = Instance.new("UIListLayout")
		listLayout.SortOrder = Enum.SortOrder.LayoutOrder
		listLayout.FillDirection = Enum.FillDirection.Vertical
		listLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		listLayout.Padding = UDim.new(0, 6)
		listLayout.Parent = container

		local function makeBubble(name, order)
			local frame = Instance.new("Frame")
			frame.Name = name
			frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			frame.BackgroundTransparency = 0.4
			frame.BorderSizePixel = 0
			frame.AutomaticSize = Enum.AutomaticSize.XY
			frame.Size = UDim2.new(0, 0, 0, 0)
			frame.LayoutOrder = order
			frame.Visible = false
			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent = frame
			local padding = Instance.new("UIPadding")
			padding.PaddingTop    = UDim.new(0, 8)
			padding.PaddingBottom = UDim.new(0, 8)
			padding.PaddingLeft   = UDim.new(0, 12)
			padding.PaddingRight  = UDim.new(0, 12)
			padding.Parent = frame
			local label = Instance.new("TextLabel")
			label.Name = "Label"
			label.BackgroundTransparency = 1
			label.TextColor3 = Color3.new(1, 1, 1)
			label.Font = Enum.Font.GothamMedium
			label.TextSize = 14
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.AutomaticSize = Enum.AutomaticSize.XY
			label.Size = UDim2.new(0, 0, 0, 0)
			label.Parent = frame
			frame.Parent = container
			return frame, label
		end

		local bloomFrame,        bloomLabel        = makeBubble("BloomBubble",        1)
		local blurFrame,         blurLabel         = makeBubble("BlurBubble",         2)
		local ccFrame,           ccLabel           = makeBubble("CCBubble",           3)
		local sunraysFrame,      sunraysLabel      = makeBubble("SunRaysBubble",      4)
		local colorgradingFrame, colorgradingLabel = makeBubble("ColorGradingBubble", 5)
		local dofFrame,          dofLabel          = makeBubble("DofBubble",          6)
		local lockFrame,   lockLabel   = makeBubble("LockBubble",   7)
		local statusFrame, statusLabel = makeBubble("StatusBubble", 8)

		local modeFrame = Instance.new("Frame")
		modeFrame.Name = "ModeBubble"
		modeFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		modeFrame.BackgroundTransparency = 0.4
		modeFrame.BorderSizePixel = 0
		modeFrame.AutomaticSize = Enum.AutomaticSize.XY
		modeFrame.Size = UDim2.new(0, 0, 0, 0)
		modeFrame.LayoutOrder = 9
		modeFrame.Visible = false
		local modeCorner = Instance.new("UICorner")
		modeCorner.CornerRadius = UDim.new(0, 8)
		modeCorner.Parent = modeFrame
		local modePadding = Instance.new("UIPadding")
		modePadding.PaddingTop    = UDim.new(0, 8)
		modePadding.PaddingBottom = UDim.new(0, 8)
		modePadding.PaddingLeft   = UDim.new(0, 12)
		modePadding.PaddingRight  = UDim.new(0, 12)
		modePadding.Parent = modeFrame
		local modeInnerLayout = Instance.new("UIListLayout")
		modeInnerLayout.SortOrder = Enum.SortOrder.LayoutOrder
		modeInnerLayout.FillDirection = Enum.FillDirection.Vertical
		modeInnerLayout.Padding = UDim.new(0, 2)
		modeInnerLayout.Parent = modeFrame
		local function makeModeLabel(name, order, font, size, color)
			local l = Instance.new("TextLabel")
			l.Name = name
			l.BackgroundTransparency = 1
			l.TextColor3 = color
			l.Font = font
			l.TextSize = size
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.AutomaticSize = Enum.AutomaticSize.XY
			l.Size = UDim2.new(0, 0, 0, 0)
			l.LayoutOrder = order
			l.Parent = modeFrame
			return l
		end
		local modeBreadcrumbLabel = makeModeLabel("Breadcrumb", 1, Enum.Font.Gotham,       11, Color3.fromRGB(100, 100, 100))
		local modeTitleLabel      = makeModeLabel("Title",      2, Enum.Font.GothamBold,   14, Color3.new(1, 1, 1))
		local modeNavLabel        = makeModeLabel("NavHint",    3, Enum.Font.Gotham,       12, Color3.fromRGB(120, 120, 120))
		local modeActionLabel     = makeModeLabel("ActionHint", 4, Enum.Font.GothamMedium, 12, Color3.fromRGB(200, 200, 200))
		modeFrame.Parent = container

		customGui = container
		customGuiBubbles = {
			bloom        = { bubble = bloomFrame,        label = bloomLabel        },
			blur         = { bubble = blurFrame,         label = blurLabel         },
			cc           = { bubble = ccFrame,           label = ccLabel           },
			sunrays      = { bubble = sunraysFrame,      label = sunraysLabel      },
			colorgrading = { bubble = colorgradingFrame, label = colorgradingLabel },
			dof          = { bubble = dofFrame,          label = dofLabel          },
			lock         = { bubble = lockFrame,         label = lockLabel         },
			status       = { bubble = statusFrame,       label = statusLabel       },
			mode         = { bubble = modeFrame, breadcrumb = modeBreadcrumbLabel,
			                 title = modeTitleLabel, nav = modeNavLabel, action = modeActionLabel },
		}
		container.Parent = freecamGui
	end

	PlayerState.Push()
	freecamGui.Enabled = true

	local function makeEffect(className, name)
		local e = Instance.new(className)
		e.Name = name
		e.Parent = Camera
		return e
	end
	for _, def in ipairs(effectDefs) do
		local s = savedEffects[def.key]
		local e = makeEffect(def.class, "Freecam" .. def.key)
		if FFlagUserPlayerScriptsRefactor5 and def.parent then
			e.Parent = def.parent
		end
		for _, p in ipairs(def.props) do e[p] = s[p] end
		e.Enabled = s.Enabled
		def.set(e)
	end

	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	if playerAddedConnection    then playerAddedConnection:Disconnect();    playerAddedConnection    = nil end
	if playerRemovingConnection then playerRemovingConnection:Disconnect(); playerRemovingConnection = nil end
	playerLockEnabled  = false
	currentTargetIndex = 1
	playerList         = {}

	disableMasterEffects()
	masterEffectsEnabled = false
	for _, def in ipairs(effectDefs) do
		local e = def.get()
		if e then
			local s = savedEffects[def.key]
			s.Enabled = e.Enabled
			for _, p in ipairs(def.props) do s[p] = e[p] end
			e:Destroy()
			def.set(nil)
		end
	end

	if FFlagUserPlayerScriptsRefactor4 and monitorGui then monitorGui.panel.Visible = false end
	if freecamGui and freecamGui.Parent then freecamGui.Enabled = false end
	screenGuisEnabled = false
	leaderboardEnabled = false

	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end

------------------------------------------------------------------------

do
	local enabled = false

	local function ToggleFreecam()
		if enabled then StopFreecam() else StartFreecam() end
		enabled = not enabled
		if FFlagUserShowGuiHideToggles then
			script:SetAttribute(Constants.AttributeName, enabled)
		end
	end

	freecamToggleAction.StateChanged:Connect(function(pressed: boolean)
		if pressed then ToggleFreecam() end
	end)

	if FFlagUserShowGuiHideToggles then
		script:SetAttribute(Constants.AttributeName, enabled)
		script:GetAttributeChangedSignal(Constants.AttributeName):Connect(function()
			local attributeValue = script:GetAttribute(Constants.AttributeName)
			if typeof(attributeValue) ~= "boolean" then
				script:SetAttribute(Constants.AttributeName, enabled)
				return
			end
			if attributeValue ~= enabled then
				if attributeValue then StartFreecam(); enabled = true
				else StopFreecam(); enabled = false end
			end
		end)
	end
end

return {}
