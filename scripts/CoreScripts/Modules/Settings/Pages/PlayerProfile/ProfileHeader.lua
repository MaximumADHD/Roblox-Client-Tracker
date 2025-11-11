local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local Foundation = require(CorePackages.Packages.Foundation)
local View = Foundation.View

local ProfilePlatform = require(CorePackages.Workspace.Packages.ProfilePlatform)
local useProfileJsonComponent = ProfilePlatform.useProfileJsonComponent
local ProfileWrapperContext = ProfilePlatform.ProfileWrapperContext
local AvatarHeadshotComponent = ProfilePlatform.AvatarHeadshotComponent
local SocialChipCountsRow = ProfilePlatform.SocialChipCountsRow

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local useAppPolicy = UniversalAppPolicy.useAppPolicy

local FFlagFriendRequestNicknames = require(CorePackages.Workspace.Packages.SharedFlags).FFlagFriendRequestNicknames

type ProfileWrapperContext = ProfilePlatform.ProfileWrapperContext

local formatPrimaryName = function(
	profileInfoFromJson: any,
	profileWrapperContext: ProfileWrapperContext,
	friendRequestNicknamesEnabled: boolean?
)
	local primaryName = profileInfoFromJson.names.primaryName or ""
	if
		profileWrapperContext.profileUserNickname
		and friendRequestNicknamesEnabled
		and profileWrapperContext.profileUserNickname ~= ""
	then
		return profileWrapperContext.profileUserNickname .. " (" .. primaryName .. ")"
	end

	return primaryName
end

type ProfileHeaderProps = {
	profileId: string,
	layoutOrder: number,
}

local function ProfileHeader(props: ProfileHeaderProps)
	local profileWrapperContext = React.useContext(ProfileWrapperContext)

	local profileInfoFromJson = useProfileJsonComponent(ProfilePlatform.Components.UserProfileHeader)
	local shouldDisplayCounts = profileInfoFromJson.counts ~= nil

	local friendRequestNicknamesEnabled = if FFlagFriendRequestNicknames
		then useAppPolicy(function(appPolicy)
			return appPolicy.getFriendRequestNicknamesEnabled()
		end)
		else false

	return React.createElement(View, {
		tag = "size-full-0 auto-y col gap-large",
		LayoutOrder = props.layoutOrder,
	}, {
		AvatarHeadshotComponent = React.createElement(AvatarHeadshotComponent, {
			userId = props.profileId,
			primaryName = formatPrimaryName(profileInfoFromJson, profileWrapperContext, friendRequestNicknamesEnabled),
			username = profileInfoFromJson.names.username,
			isPremium = profileInfoFromJson.isPremium,
			isVerified = profileInfoFromJson.isVerified,
			layoutOrder = 1,
		}),
		SocialCountsRow = if shouldDisplayCounts
			then React.createElement(SocialChipCountsRow, {
				size = UDim2.fromScale(1, 0),
				layoutOrder = 2,
			})
			else nil,
	})
end

return React.memo(ProfileHeader)
