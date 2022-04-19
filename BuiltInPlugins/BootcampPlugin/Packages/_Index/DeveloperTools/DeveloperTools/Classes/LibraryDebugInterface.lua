--[[
	The LibraryDebugInterface class is used to attach the DeveloperInspector to a library being
	developed inside Studio in the ReplicatedStorage service.
]]
local Source = script.Parent.Parent

local BindableEventBridge = require(Source.Classes.BindableEventBridge)
local DebugInterface = require(Source.Classes.DebugInterface)
local Services = require(Source.Services)

local LibraryDebuggerInterface = DebugInterface:extend("LibraryDebuggerInterface", function(libraryName: string, guiOptions)
	local folder
	-- Use CoreGui if we have permission to do so
	pcall(function()
		local coreGui = Services.getCoreGui()
		-- Ensure CoreGui is accessible and not stubbed
		if coreGui:IsA("BasePlayerGui") then
			folder = coreGui
		end
	end)
	-- Otherwise fallback to ReplicatedStorage
	pcall(function()
		folder = game:GetService("ReplicatedStorage")
	end)
	-- Fallback to a dummy folder
	if not folder then
		folder = Instance.new("Folder")
	end
	local bridge = BindableEventBridge.new(folder)
	local interface = DebugInterface.new("Library", libraryName, {bridge})
	interface:setGuiOptions(guiOptions or {
		rootInstance = game:GetService("ReplicatedStorage")
	})
	return interface
end)

return LibraryDebuggerInterface
