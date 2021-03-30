local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

local player = script:FindFirstAncestorWhichIsA("Player")

spawn(function()
	local splash = player.PlayerGui:WaitForChild("StorybookSplash", 10)
	if splash then
		splash:Destroy()
	end
end)

local gui = Instance.new("ScreenGui")
gui.Name = "StorybookEmbed"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player.PlayerGui

local Packages = script.Packages :: any
local EmbeddedStorybook = require(Packages.DeveloperStorybook.Src.Util.EmbeddedStorybook)
EmbeddedStorybook.start(gui, player)

return nil
