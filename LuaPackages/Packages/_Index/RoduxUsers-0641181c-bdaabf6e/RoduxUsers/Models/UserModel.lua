game:DefineFastFlag("EnableHasVerifiedBadgeUserModelValidation", false)

local MockId = require(script.Parent.MockId)

local UserModel = {}

function UserModel.new(user)
	assert(UserModel.isValid(user))

	UserModel.__index = UserModel

	local self = user

	setmetatable(self, UserModel)

	return self
end

function UserModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = UserModel.new({
		id = mergeTable.id or MockId(),
		username = mergeTable.username or "UN_" .. tostring(math.random(100000, 99999999)),
		displayName = mergeTable.displayName or "DN_" .. tostring(math.random(100000, 99999999)),
		hasVerifiedBadge = mergeTable.hasVerifiedBadge or false,
	})

	return self
end

function UserModel.isValid(user)
	if not user then
		return false, "Expected user information to be given"
	elseif not user.id then
		return false, "Expected user's id to be given"
	elseif not user.username then
		return false, "Expected user's username to be given"
	elseif not user.displayName then
		return false, "Expected user's displayName to be given"
	end

	if game:GetFastFlag("EnableHasVerifiedBadgeUserModelValidation") and user.hasVerifiedBadge == nil then
		return false, "Expected user's hasVerifiedBadge to be given"
	end

	return true, "Valid UserModel"
end

function UserModel.isEqual(user1, user2)
	if game:GetFastFlag("EnableHasVerifiedBadgeUserModelValidation") then
		return user1.id == user2.id and
			user1.username == user2.username and
			user1.displayName == user2.displayName and
			user1.hasVerifiedBadge == user2.hasVerifiedBadge
	else
		return user1.id == user2.id and
			user1.username == user2.username and
			user1.displayName == user2.displayName
	end
end

return UserModel
