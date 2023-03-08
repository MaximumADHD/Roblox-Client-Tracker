local AvatarIdentification = require(script.AvatarIdentification)

export type AvatarIdentification = AvatarIdentification.Type
export type VisiblePlayer = AvatarIdentification.VisiblePlayer
export type AvatarIDStats = AvatarIdentification.AvatarIDStats
export type AvatarIDResults = AvatarIdentification.Results

return {
	AvatarIdentification = AvatarIdentification,
}
