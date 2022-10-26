local RequestTypes = require(script.RequestTypes)

export type RequestOptions = RequestTypes.RequestOptions
export type Response<T = any> = RequestTypes.Response<T>
export type Request<T = any> = RequestTypes.Request<T>

return {
	ChatSendGameLinkMessage = require(script.ChatSendGameLinkMessage),
	ChatSendMessage = require(script.ChatSendMessage),
	ChatStartOneToOneConversation = require(script.ChatStartOneToOneConversation),
	GamesGetIcons = require(script.GamesGetIcons),
	GamesGetThumbnails = require(script.GamesGetThumbnails),
	GamesMultigetPlaceDetails = require(script.GamesMultigetPlaceDetails),
	GetPlaceInfos = require(script.GetPlaceInfos),
	SendGameLinkNotification = require(script.SendGameLinkNotification),
	ThumbnailsGetAvatar = require(script.ThumbnailsGetAvatar),
	ThumbnailsGetAvatarHeadshot = require(script.ThumbnailsGetAvatarHeadshot),
	UsersGetFriendCount = require(script.UsersGetFriendCount),
	UsersGetFriends = require(script.UsersGetFriends),
	UsersGetPresence = require(script.UsersGetPresence),
	UsersGetThumbnail = require(script.UsersGetThumbnail),
}
