local ServerStorage = game:GetService('ServerStorage')
local StarterGui = game:GetService('StarterGui')

local RobloxGui = game:GetService("CoreGui").RobloxGui
local Create = require(RobloxGui.Modules.Mobile.Create)

return function(position, size)
	local AppGui = {}

	AppGui.ScreenGui = ServerStorage:WaitForChild('ScreenGuiV2'):Clone()
	AppGui.ScreenGui.Name = 'ScreenGui'
	AppGui.ScreenGui.DisplayOrder = 2

	AppGui.RootGui = Create"Frame"
	{
		Position = position;
		Size = size;
		BackgroundTransparency = 1;
		Name = "RootGui";
	}

	for _,child in pairs(AppGui.ScreenGui:GetChildren()) do
		child.Parent = AppGui.RootGui
	end
	AppGui.RootGui.Parent = AppGui.ScreenGui

	function AppGui:setDimensions(position, size)
		self.RootGui.Position = position
		self.RootGui.Size = size
	end

	return AppGui;
end

