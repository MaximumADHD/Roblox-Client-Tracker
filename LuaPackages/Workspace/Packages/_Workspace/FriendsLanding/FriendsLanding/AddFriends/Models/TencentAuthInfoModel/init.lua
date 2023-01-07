--!nonstrict
local AddFriends = script:FindFirstAncestor("AddFriends")
local dependencies = require(AddFriends.dependencies)
local t = dependencies.t

local TencentAuthInfoModel = {}

TencentAuthInfoModel.__index = TencentAuthInfoModel

function TencentAuthInfoModel.new(model)
	assert(TencentAuthInfoModel.isValid(model))

	TencentAuthInfoModel.__index = TencentAuthInfoModel

	local self = model

	setmetatable(self, TencentAuthInfoModel)

	return self
end

function TencentAuthInfoModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = TencentAuthInfoModel.new({
		appType = mergeTable.appType or "PlayerMobile",
		type = mergeTable.type or "QQ",
		userAccessToken = mergeTable.userAccessToken or "userAccessTokenStringFromTencentMSDK",
		userOpenId = mergeTable.userOpenId or "userOpenIDStringFromTencentMSDK",
	})

	return self
end

function TencentAuthInfoModel.isValid(model)
	local validateInterface = t.interface({
		appType = t.string,
		type = t.string,
		userAccessToken = t.string,
		userOpenId = t.string,
	})
	return validateInterface(model)
end

return TencentAuthInfoModel
