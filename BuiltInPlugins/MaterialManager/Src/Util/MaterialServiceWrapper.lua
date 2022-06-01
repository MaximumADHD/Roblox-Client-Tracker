-- Remove with FFlagDevFrameworkMockWrapper

local MaterialServiceWrapper = {}
MaterialServiceWrapper.__index = MaterialServiceWrapper

function MaterialServiceWrapper.new(MockMaterialService : any)
	local self = {
		_mock = MockMaterialService,
		_instance = if MockMaterialService then Instance.new("Folder") else game:GetService("MaterialService"),
		_materialService = if MockMaterialService then MockMaterialService else game:GetService("MaterialService"),
	}

	return setmetatable(self, MaterialServiceWrapper)
end

function MaterialServiceWrapper:destroy()
	if self._mock then
		self._instance:Destroy()
	end
end

function MaterialServiceWrapper:asInstance()
	return self._instance
end

function MaterialServiceWrapper:asMaterialService()
	return self._materialService
end

return MaterialServiceWrapper
