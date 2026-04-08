local Players = game:GetService("Players")

local MomentsCommon = script:FindFirstAncestor("MomentsCommon")

local Signal = require(MomentsCommon.Utils.Signal)

local player = Players.LocalPlayer

export type inset4 = {
	left: number,
	top: number,
	right: number,
	bottom: number,
}

local initialized = false
local changedSignal = Signal.new()
local fullscreenGui: any = nil
local deviceGui: any = nil
local currentInsets: inset4 = {
	left = 0,
	top = 0,
	right = 0,
	bottom = 0,
}

function diffInsets(a, b)
	return a.top ~= b.top or a.bottom ~= b.bottom or a.left ~= b.left or a.right ~= b.right
end

function getHardwareSafeAreaInsets()
	local fullscreenGuiAbsPos = fullscreenGui.AbsolutePosition
	local deviceGuiAbsPos = deviceGui.AbsolutePosition

	-- diffing two screengui's is the current API for fetching DeviceSafeInsets
	local tlInset = deviceGuiAbsPos - fullscreenGuiAbsPos
	local brInset = fullscreenGuiAbsPos + fullscreenGui.AbsoluteSize - (deviceGuiAbsPos + deviceGui.AbsoluteSize)

	return {
		left = math.round(tlInset.X),
		top = math.round(tlInset.Y),
		right = math.round(brInset.X),
		bottom = math.round(brInset.Y),
	}
end

local pendingChangedSignal: thread? = nil
function handleSizeChange()
	local newInset = getHardwareSafeAreaInsets()
	if diffInsets(newInset, currentInsets) then
		currentInsets = newInset
		if pendingChangedSignal then
			task.cancel(pendingChangedSignal)
		end
		pendingChangedSignal = task.defer(function()
			pendingChangedSignal = nil
			changedSignal:fire(newInset)
		end)
	end
end

function init()
	if initialized then
		return
	end

	if not fullscreenGui then
		fullscreenGui = Instance.new("ScreenGui")
		fullscreenGui.Name = "_FullscreenTestGui"
		fullscreenGui.Parent = player.PlayerGui
		fullscreenGui.ScreenInsets = Enum.ScreenInsets.None
		fullscreenGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(handleSizeChange)
		fullscreenGui:GetPropertyChangedSignal("AbsolutePosition"):Connect(handleSizeChange)
	end

	if not deviceGui then
		deviceGui = Instance.new("ScreenGui")
		deviceGui.Name = "_DeviceTestGui"
		deviceGui.Parent = player.PlayerGui
		deviceGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
		deviceGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(handleSizeChange)
		deviceGui:GetPropertyChangedSignal("AbsolutePosition"):Connect(handleSizeChange)
	end

	handleSizeChange()
	initialized = true
end

return {
	connect = function(_, fn)
		init()
		return changedSignal:connect(fn)
	end,
	deviceInsets = function()
		init()
		return currentInsets
	end,
	diffInsets = diffInsets,
	fullscreenGui = function()
		init()
		return fullscreenGui
	end,
}
