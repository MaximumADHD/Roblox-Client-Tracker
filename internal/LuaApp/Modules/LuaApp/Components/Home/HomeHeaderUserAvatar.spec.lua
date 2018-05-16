return function()

	local HomeHeaderUserAvatar = require(script.Parent.HomeHeaderUserAvatar)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local UserModel = require(Modules.LuaApp.Models.User)
	local Constants = require(Modules.LuaApp.Constants)

	local function MockHomeHeaderUserAvatar()
		local localUserModel = UserModel.mock()

		return Roact.createElement(HomeHeaderUserAvatar, {
			localUserModel = localUserModel,
			thumbnailType = Constants.AvatarThumbnailTypes.HeadShot
		})
	end

	it("should create and destroy without errors", function()
		local element = MockHomeHeaderUserAvatar()

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)

end