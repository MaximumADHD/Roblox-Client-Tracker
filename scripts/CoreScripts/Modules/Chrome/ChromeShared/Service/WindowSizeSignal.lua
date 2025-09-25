local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local ViewportUtil = require(Root.Service.ViewportUtil)
local Constants = require(Root.Unibar.Constants)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeWindowSignalConstraintsToggle = SharedFlags.FFlagChromeWindowSignalConstraintsToggle

-- returned constrained window size for mobile devices depending on if portrait or landscape
local function getConstrainedWindowSize(width: number, height: number, ignoreConstraints: boolean?): UDim2
	local isMobile = ViewportUtil.mobileDevice:get()
	local screenSize = ViewportUtil.screenSize:get()
	local isPortrait = screenSize.Y > screenSize.X

	local newWidth = width
	local newHeight = height

	-- TODO support constraints on other device types
	if isMobile and (not FFlagChromeWindowSignalConstraintsToggle or not ignoreConstraints) then
		if isPortrait then
			newHeight = math.min(height, Constants.MAX_HEIGHT_PORTRAIT)
			newWidth = math.min(width, Constants.MAX_WIDTH_PORTRAIT)
		elseif not isPortrait then
			newHeight = math.min(height, Constants.MAX_HEIGHT_LANDSCAPE)
			newWidth = math.min(width, Constants.MAX_WIDTH_LANDSCAPE)
		end
	end

	return UDim2.new(0, newWidth, 0, newHeight)
end

export type WindowSizeSignal = {
	new: (number?, number?) -> WindowSizeSignal,
	connect: (WindowSizeSignal, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	requestSize: (WindowSizeSignal, number, number) -> (),
	toggleIsLarge: (WindowSizeSignal) -> (),
	get: (WindowSizeSignal) -> UDim2,
	getIsLarge: (WindowSizeSignal) -> boolean,
	updateConstraints: (WindowSizeSignal) -> (),
}

local WindowSizeSignal = {}
WindowSizeSignal.__index = WindowSizeSignal

function WindowSizeSignal.new(
	initialWidth: number?,
	initialHeight: number?,
	isLarge: boolean?,
	ignoreConstraints: boolean?
): WindowSizeSignal
	local self = {
		_state = if FFlagChromeWindowSignalConstraintsToggle
			then (getConstrainedWindowSize(
				initialWidth or Constants.DEFAULT_WIDTH,
				initialHeight or Constants.DEFAULT_HEIGHT,
				ignoreConstraints or false
			)) :: UDim2
			else (getConstrainedWindowSize(
				initialWidth or Constants.DEFAULT_WIDTH,
				initialHeight or Constants.DEFAULT_HEIGHT
			)) :: UDim2,
		_isLarge = isLarge or false,
		_ignoreConstraints = if FFlagChromeWindowSignalConstraintsToggle then ignoreConstraints or false else nil,
		_changeSignal = Signal.new(),
	}
	return (setmetatable(self, WindowSizeSignal) :: any) :: WindowSizeSignal
end

function WindowSizeSignal:connect(callback)
	return self._changeSignal:connect(callback)
end

-- Request window to be of size newWidth, newHeight up to device max
function WindowSizeSignal:requestSize(newWidth: number, newHeight: number)
	local newState: UDim2 = if FFlagChromeWindowSignalConstraintsToggle
		then getConstrainedWindowSize(newWidth, newHeight, self._ignoreConstraints)
		else getConstrainedWindowSize(newWidth, newHeight)

	if self._state :: UDim2 ~= newState then
		self._state = newState
		self._changeSignal:fire(newState)
	end
end

function WindowSizeSignal:toggleIsLarge()
	local isLarge = not self._isLarge
	self._isLarge = isLarge
	self._changeSignal:fire(isLarge)
end

function WindowSizeSignal:get(): UDim2
	return self._state
end

function WindowSizeSignal:getIsLarge(): boolean
	return self._isLarge
end

-- Re-request size when device constraints updated
function WindowSizeSignal:updateConstraints()
	self:requestSize(self._state.Width.Offset, self._state.Height.Offset)
end

return WindowSizeSignal
