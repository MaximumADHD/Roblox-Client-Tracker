local MockMaterialGenerationSession = require(script.Parent.MockMaterialGenerationSession)

local MockMaterialGenerationService = {}
MockMaterialGenerationService.__index = MockMaterialGenerationService

local INITIAL_ACCOUNT_BALANCE = 100

function MockMaterialGenerationService.new()
	return setmetatable({}, MockMaterialGenerationService)
end

function MockMaterialGenerationService:StartSession()
	return MockMaterialGenerationSession.new()
end

function MockMaterialGenerationService:GetAccountingBalanceAsync()
	return INITIAL_ACCOUNT_BALANCE
end

function MockMaterialGenerationService:RefillAccountingBalanceAsync()
	return INITIAL_ACCOUNT_BALANCE
end

function MockMaterialGenerationService:Destroy() end

return MockMaterialGenerationService
