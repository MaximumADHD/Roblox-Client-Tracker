local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")

local document = Instance.new("Folder")
document.Name = "Document"
document.Parent = ScreenGui
ScreenGui.Parent = CoreGui

return document
