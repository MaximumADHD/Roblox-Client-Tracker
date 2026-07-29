local Framework = script:FindFirstAncestor("TestHelpers").Parent

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy
local findIndex = Dash.findIndex

local TEMPORARY_COLOR_MAPS = {
	"rbxassetid://12789941723",
	"rbxassetid://12789941660",
	"rbxassetid://12789941574",
	"rbxassetid://12789941461",
}

local COLOR_MAPS = {
	"rbxassetid://12786287584",
	"rbxassetid://12786288920",
	"rbxassetid://12786290575",
	"rbxassetid://12786292067",
}

local METALNESS_MAPS = {}

local NORMAL_MAPS = {
	"rbxassetid://12786287591",
	"rbxassetid://12786288913",
	"rbxassetid://12786290514",
	"rbxassetid://12786292068",
}

local ROUGHNESS_MAPS = {
	"rbxassetid://12786287570",
	"rbxassetid://12786288901",
	"rbxassetid://12786290539",
	"rbxassetid://12786292059",
}

local NEW_ACCOUNT_BALANCE = 100

local MockMaterialGenerationSession = {}
MockMaterialGenerationSession.__index = MockMaterialGenerationSession

function MockMaterialGenerationSession.new()
	return setmetatable({}, MockMaterialGenerationSession)
end

--[[
	Returns a color map array, the text prompt, and the new account balance.

	Color maps are pre-generated assets in place of the temporary content ids
	returned by the production service, and have the `rbxassetid` prefix rather
	than `rbxtemp`. The text prompt is simply passed through, where the production
	service returns the filtered text prompt. The new account balance is simply
	a positive value.
]]
function MockMaterialGenerationSession:GenerateImagesAsync(prompt: string, _options: { [string]: any })
	local samples = copy(TEMPORARY_COLOR_MAPS)
	return samples, prompt, NEW_ACCOUNT_BALANCE
end

--[[
	Returns a table of pre-generated material map assets.
]]
function MockMaterialGenerationSession:GenerateMaterialMapsAsync(imageId: string)
	local index = findIndex(TEMPORARY_COLOR_MAPS, function(colorMap)
		return colorMap == imageId
	end)
	assert(index ~= nil, "Invalid index")

	return {
		MetalnessMap = METALNESS_MAPS[index],
		NormalMap = NORMAL_MAPS[index],
		RoughnessMap = ROUGHNESS_MAPS[index],
	}
end

--[[
	Returns a new color map id for the passed in asset id.
]]
function MockMaterialGenerationSession:UploadMaterialAsync(imageId: string)
	local index = findIndex(TEMPORARY_COLOR_MAPS, function(colorMap)
		return colorMap == imageId
	end)
	assert(index ~= nil, "Invalid index")

	return {
		ColorMap = COLOR_MAPS[index],
		MetalnessMap = METALNESS_MAPS[index],
		NormalMap = NORMAL_MAPS[index],
		RoughnessMap = ROUGHNESS_MAPS[index],
	}
end

function MockMaterialGenerationSession:Destroy() end

return MockMaterialGenerationSession
