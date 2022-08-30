--[[
	Provides a wrapper around loading a mannequin model.
]]
local InsertService = game:GetService("InsertService")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local Constants = require(Plugin.Src.Util.Constants)

local MannequinContext = ContextItem:extend("MannequinContext")

local function newInternal(path)
	local self = {}

	setmetatable(self, MannequinContext)

	self.mannequinPath = path

	return self
end

function MannequinContext.new()
	return newInternal(Constants.MANNEQUIN_PATH)
end

function MannequinContext.mock()
	return newInternal(Constants.MANNEQUIN_MOCK_PATH)
end

function MannequinContext:createMannequinModel()
	return InsertService:LoadLocalAsset(self.mannequinPath)
end

return MannequinContext
