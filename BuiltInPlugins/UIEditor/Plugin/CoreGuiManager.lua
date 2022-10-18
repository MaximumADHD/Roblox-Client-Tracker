-----------------------------------
-----------CoreGuiManager----------
-----------------------------------
--[[
	This is a simple module script which creates or returns existing folders
	underneath the main plugin folder under the coreGuiService
--]]

local m_mainFolder = nil

local CoreGui = game:GetService("CoreGui")

local function createFolder(name, parent)
	local folder = Instance.new("Folder")
	folder.Name = name
	folder.Parent = parent
	return folder
end

local function createScreenGui(name, parent)
	local sg = Instance.new("ScreenGui")
	sg.Name = name
	sg.Parent = parent
	return sg
end

local function getMainFolder()
	if not m_mainFolder then
		m_mainFolder = createFolder("RobloxGUIEditor", CoreGui)
	end
	return m_mainFolder
end

local CoreGuiManager = {}

function CoreGuiManager:findOrCreateFolder(name)
	local folder = getMainFolder():FindFirstChild(name)
	if not folder then
		folder = createFolder(name, getMainFolder())
	end
	return folder
end

function CoreGuiManager:findOrCreateScreenGui(name)
	local sg = getMainFolder():FindFirstChild(name)
	if not sg then
		sg = createScreenGui(name, getMainFolder())
	end
	return sg
end

return CoreGuiManager
