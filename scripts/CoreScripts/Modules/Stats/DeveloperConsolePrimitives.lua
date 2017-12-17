--[[
  Filename: DeveloperConsolePrimitives.lua
  Written by: dbanks
  Description: Refactoring code from DeveloperConsoleModule.
--]]


--[[ Services ]]--
local CoreGui = game:GetService('CoreGui')

--[[ Modules ]]--
local Style = require(CoreGui.RobloxGui.Modules.Stats.DeveloperConsoleStyle)


local Primitives = {}; 
do
	local function new(className, parent, name)
		local n = Instance.new(className, parent)
		n.ZIndex = 0
		if name then
			n.Name = name
		end
		return n
	end
	local unitSize = UDim2.new(1, 0, 1, 0)
	
	local function setupFrame(n)
		n.BackgroundColor3 = Style.FrameColor
		n.BackgroundTransparency = Style.FrameTransparency
		n.BorderSizePixel = 0
	end
	local function setupText(n, text)
		n.Font = Style.Font
		n.TextColor3 = Style.TextColor
		n.Text = text or n.Text
	end
	
	function Primitives.Frame(parent, name)
		local n = new('Frame', parent, name)
		setupFrame(n)
		return n
	end
	function Primitives.TextLabel(parent, name, text)
		local n = new('TextLabel', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.TextBox(parent, name, text)
		local n = new('TextBox', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.TextButton(parent, name, text)
		local n = new('TextButton', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.Button(parent, name)
		local n = new('TextButton', parent, name)
		setupFrame(n)
		n.Text = ""
		return n
	end
	function Primitives.ImageButton(parent, name, image)
		local n = new('ImageButton', parent, name)
		setupFrame(n)
		n.Image = image or ""
		n.Size = unitSize
		return n
	end
	
	-- An invisible frame of size (1, 0, 1, 0)
	function Primitives.FolderFrame(parent, name) -- Should this be called InvisibleFrame? lol
		local n = new('Frame', parent, name)
		n.BackgroundTransparency = 1
		n.Size = unitSize
		return n
	end
	function Primitives.InvisibleTextLabel(parent, name, text)
		local n = new('TextLabel', parent, name)
		setupText(n, text)
		n.BackgroundTransparency = 1
		return n
	end
	function Primitives.InvisibleButton(parent, name, text)
		local n = new('TextButton', parent, name)
		n.BackgroundTransparency = 1
		n.Text = ""
		return n
	end
	function Primitives.InvisibleImageLabel(parent, name, image)
		local n = new('ImageLabel', parent, name)
		n.BackgroundTransparency = 1
		n.Image = image or ""
		n.Size = unitSize
		return n
	end
end

return Primitives