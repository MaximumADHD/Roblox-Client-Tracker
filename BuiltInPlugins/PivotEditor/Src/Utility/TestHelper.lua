local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local MockDraggerContext_Pivot = require(Plugin.Src.Utility.MockDraggerContext_Pivot)

local TEMP_INSTANCES_FOLDER_NAME = "TempInstancesFolder"
local TEMP_SCREEN_GUI_NAME = "TempScreenGui"

local function findTempInstancesFolder()
	return workspace:FindFirstChild(TEMP_INSTANCES_FOLDER_NAME)
end

local function findTempScreenGui()
	return game.CoreGui:FindFirstChild(TEMP_SCREEN_GUI_NAME)
end

local TestHelper = {}

function TestHelper.cleanTempInstances()
	local tempInstancesFolder = findTempInstancesFolder()
	if tempInstancesFolder then
		tempInstancesFolder:Destroy()
	end

	local tempScreenGui = findTempScreenGui()
	if tempScreenGui then
		tempScreenGui:Destroy()
	end
end

function TestHelper.getTempInstancesFolder()
	local tempInstancesFolder = findTempInstancesFolder()
	if tempInstancesFolder then
		return tempInstancesFolder
	end
	tempInstancesFolder = Instance.new("Folder")
	tempInstancesFolder.Name = TEMP_INSTANCES_FOLDER_NAME
	tempInstancesFolder.Parent = workspace
	return tempInstancesFolder
end

function TestHelper.getTempScreenGui()
	local tempScreenGui = findTempScreenGui()
	if tempScreenGui then
		return tempScreenGui
	end
	tempScreenGui = Instance.new("ScreenGui", game.CoreGui)
	tempScreenGui.Name = TEMP_SCREEN_GUI_NAME
	tempScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return tempScreenGui
end

function TestHelper.createInstance(name)
	local tempInstancesFolder = TestHelper.getTempInstancesFolder()
	local instance = Instance.new(name)
	instance.Parent = tempInstancesFolder
	return instance
end

function TestHelper.createTestDraggerContext(guiTarget)
	guiTarget = guiTarget or TestHelper.getTempScreenGui()
	return MockDraggerContext_Pivot.new(guiTarget, DraggerSchema.Selection.new())
end

function TestHelper.createTestStore()
	local middlewares = { Rodux.thunkMiddleware }
	return Rodux.Store.new(MainReducer, nil, middlewares)
end

return TestHelper
