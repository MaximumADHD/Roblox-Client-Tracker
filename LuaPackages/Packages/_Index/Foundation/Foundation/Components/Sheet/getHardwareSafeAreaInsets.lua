local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Wrappers = require(Foundation.Utility.Wrappers)
local getMainGui = require(Foundation.Utility.getMainGui)

local GuiService = Wrappers.Services.GuiService

type HardwareInsets = { left: number, top: number, right: number, bottom: number }

local function getHardwareSafeAreaInsets(): HardwareInsets
	if Flags.FoundationUseGetInsetArea then
		local deviceInsets = GuiService:GetInsetArea(Enum.ScreenInsets.DeviceSafeInsets)
		local noneInsets = GuiService:GetInsetArea(Enum.ScreenInsets.None)

		return {
			left = deviceInsets.Min.X - noneInsets.Min.X,
			top = deviceInsets.Min.Y - noneInsets.Min.Y,
			right = noneInsets.Max.X - deviceInsets.Max.X,
			bottom = noneInsets.Max.Y - deviceInsets.Max.Y,
		}
	else
		local mainGui = getMainGui()

		local fullscreenGui = Instance.new("ScreenGui")
		fullscreenGui.Name = "_FullscreenTestGui"
		fullscreenGui.Parent = mainGui
		fullscreenGui.ScreenInsets = Enum.ScreenInsets.None

		local deviceGui = Instance.new("ScreenGui")
		deviceGui.Name = "_DeviceTestGui"
		deviceGui.Parent = mainGui
		deviceGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

		local tlInset = deviceGui.AbsolutePosition - fullscreenGui.AbsolutePosition
		local brInset = fullscreenGui.AbsolutePosition
			+ fullscreenGui.AbsoluteSize
			- (deviceGui.AbsolutePosition + deviceGui.AbsoluteSize)
		local result: HardwareInsets = { left = tlInset.X, top = tlInset.Y, right = brInset.X, bottom = brInset.Y }

		fullscreenGui.Parent = nil
		deviceGui.Parent = nil
		fullscreenGui:Destroy()
		deviceGui:Destroy()

		return result
	end
end

return getHardwareSafeAreaInsets
