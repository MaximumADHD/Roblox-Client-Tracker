local Foundation = script:FindFirstAncestor("Foundation")

local Wrappers = require(Foundation.Utility.Wrappers)

local GuiService = Wrappers.Services.GuiService

type HardwareInsets = { left: number, top: number, right: number, bottom: number }

local function getHardwareSafeAreaInsets(): HardwareInsets
	local deviceInsets = GuiService:GetInsetArea(Enum.ScreenInsets.DeviceSafeInsets)
	local noneInsets = GuiService:GetInsetArea(Enum.ScreenInsets.None)

	return {
		left = deviceInsets.Min.X - noneInsets.Min.X,
		top = deviceInsets.Min.Y - noneInsets.Min.Y,
		right = noneInsets.Max.X - deviceInsets.Max.X,
		bottom = noneInsets.Max.Y - deviceInsets.Max.Y,
	}
end

return getHardwareSafeAreaInsets
