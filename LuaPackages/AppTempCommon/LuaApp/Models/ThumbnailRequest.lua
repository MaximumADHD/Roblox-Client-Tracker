local CorePackages = game:GetService("CorePackages")
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local UserLibConstants = UserLib.Utils.Constants

export type ThumbnailRequestType = {
	thumbnailType: UserLib.RbxAvatarThumbnailTypeFromEnum,
	thumbnailSize: UserLib.RbxThumbnailSize,
}

type ThumbnailRequestStaticType = {
	new: () -> ThumbnailRequestType,
	fromData: (any, any) -> ThumbnailRequestType,
}

local ThumbnailRequest: ThumbnailRequestType & ThumbnailRequestStaticType = {} :: any;

function ThumbnailRequest.new() : ThumbnailRequestType
	local newRequest = {}
	-- Set some dummy value to make type checker happy.
	newRequest.thumbnailType = UserLibConstants.RbxAvatarThumbnailTypesFromEnum.HeadShot :: UserLib.RbxAvatarThumbnailTypeFromEnum
	newRequest.thumbnailSize = UserLibConstants.RbxThumbnailSizes.Size150x150 :: UserLib.RbxThumbnailSize
	return newRequest :: ThumbnailRequestType
end

function ThumbnailRequest.fromData(thumbnailType: UserLib.RbxAvatarThumbnailTypeFromEnum, thumbnailSize: UserLib.RbxThumbnailSize)
	local newRequest = ThumbnailRequest.new()
	newRequest.thumbnailType = thumbnailType
	newRequest.thumbnailSize = thumbnailSize
	return newRequest
end

return ThumbnailRequest