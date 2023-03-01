-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/bdfbc208c6/modules/graphql/graphql-server-ts/src/graphql/generatedTypes.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Omit<T, K> = T --[[ ROBLOX TODO: TS 'Omit' built-in type is not available in Luau ]]
local exports = {}
export type Maybe<T> = T | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
export type InputMaybe<T> = Maybe<T>
export type Exact<T> = any --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ { [K in keyof T]: T[K] } ]]
-- export type MakeOptional<T, K> = Omit<T, K> & any --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ { [SubKey in K]?: Maybe<T[SubKey]> } ]]
-- export type MakeMaybe<T, K> = Omit<T, K> & any --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ { [SubKey in K]: Maybe<T[SubKey]> } ]]
--[[* All built-in and custom scalars, mapped to their actual values ]]
export type Scalars = {
	ID: string,
	String: string,
	Boolean: boolean,
	Int: number,
	Float: number,
	JSONObject: any,
}
local EventStatus = { Active = "active", Cancelled = "cancelled", Unpublished = "unpublished" }
-- ROBLOX deviation START: convert EventStatus enum to type union
export type EventStatus = "active" | "cancelled" | "unpublished"
-- ROBLOX deviation END
exports.EventStatus = EventStatus
export type EventTime = {
	__typename: "EventTime"?,
	endUtc: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	startUtc: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type Experience = {
	__typename: "Experience"?,
	description: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	name: typeof((({} :: any) :: Scalars).String),
	placeId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	playerCount: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	thumbnails: Maybe<Array<Maybe<Media>>>?,
	totalDownVotes: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	totalUpVotes: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	universeId: typeof((({} :: any) :: Scalars).ID),
}
export type ExperienceCreator = {
	__typename: "ExperienceCreator"?,
	hasVerifiedBadge: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	id: typeof((({} :: any) :: Scalars).ID),
	isRNVAccount: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	name: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	type: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type ExperienceDetails = {
	__typename: "ExperienceDetails"?,
	allowedGearCategories: Maybe<Array<Maybe<typeof((({} :: any) :: Scalars).String)>>>?,
	allowedGearGenres: Maybe<Array<Maybe<typeof((({} :: any) :: Scalars).String)>>>?,
	copyingAllowed: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	createVipServersAllowed: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	created: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	creator: Maybe<ExperienceCreator>?,
	description: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	favoritedCount: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
	genre: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	id: typeof((({} :: any) :: Scalars).ID),
	isAllGenre: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	isFavoritedByUser: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	isGenreEnforced: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	maxPlayers: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	name: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	playing: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
	price: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	rootPlaceId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
	sourceDescription: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	sourceName: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	studioAccessToApisAllowed: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	universeAvatarType: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	updated: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	visits: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
}
export type ExperienceMedia = {
	__typename: "ExperienceMedia"?,
	altText: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	approved: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	assetType: Maybe<MediaAssetType>?,
	assetTypeId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
	imageId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
	videoHash: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	videoTitle: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type Host = {
	__typename: "Host"?,
	hasVerifiedBadge: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	hostId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
	hostName: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	hostType: Maybe<HostType>?,
}
local HostType = { Group = "group", User = "user" }
-- ROBLOX deviation START: convert HostType enum to type union
export type HostType = "group" | "user"
-- ROBLOX deviation END
exports.HostType = HostType
export type Media = { __typename: "Media"?, url: Maybe<typeof((({} :: any) :: Scalars).String)>? }
local MediaAssetType = { Image = "Image", YouTubeVideo = "YouTubeVideo" }
export type MediaAssetType = { [string]: string }
exports.MediaAssetType = MediaAssetType
export type Mutation = { __typename: "Mutation"?, virtualEventRsvp: Maybe<RsvpResponse>? }
export type MutationVirtualEventRsvpArgs = {
	id: typeof((({} :: any) :: Scalars).ID),
	rsvpStatus: RsvpStatus,
}
export type OmniFeed = {
	__typename: "OmniFeed"?,
	isSessionExpired: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	metadata: Maybe<OmniFeedMetadata>?,
	nextPageToken: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	omniSessionId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	pageType: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	recommendationsId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	sorts: Maybe<Array<Maybe<OmniFeedItem>>>?,
	sortsExpirationTime: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
}
export type OmniFeedItem = {
	__typename: "OmniFeedItem"?,
	experiences: Maybe<Array<Maybe<Experience>>>?,
	recommendations: Maybe<Array<Maybe<OmniFeedRecommendation>>>?,
	topic: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	topicId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	treatmentType: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type OmniFeedMetadata = {
	__typename: "OmniFeedMetadata"?,
	CatalogAssetJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	CatalogBundleJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	--[[* @deprecated Fetch game metadata from OmniFeedItem instead. Scheduled for deprecation on 2023-01-30 ]]
	GameJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	RecommendedFriendJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
}
export type OmniFeedRecommendation = {
	__typename: "OmniFeedRecommendation"?,
	contentId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	contentMetadata: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	contentType: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type Player = User & {
	__typename: "Player"?,
	avatarHeadshot: typeof((({} :: any) :: Scalars).String),
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
export type Query = {
	__typename: "Query"?,
	me: User,
	omniFeed: Maybe<OmniFeed>?,
	user: User,
	virtualEvent: Maybe<VirtualEvent>?,
	virtualEventsByUniverseId: Maybe<VirtualEventsPage>?,
}
export type QueryOmniFeedArgs = {
	nextPageToken: InputMaybe<typeof((({} :: any) :: Scalars).String)>?,
	pageType: typeof((({} :: any) :: Scalars).String),
	sessionId: typeof((({} :: any) :: Scalars).String),
	supportedTreatmentTypes: InputMaybe<Array<InputMaybe<typeof((({} :: any) :: Scalars).String)>>>?,
}
export type QueryUserArgs = { id: typeof((({} :: any) :: Scalars).ID) }
export type QueryVirtualEventArgs = { id: typeof((({} :: any) :: Scalars).ID) }
export type QueryVirtualEventsByUniverseIdArgs = {
	options: InputMaybe<VirtualEventsByUniverseIdOptions>?,
	universeId: typeof((({} :: any) :: Scalars).ID),
}
export type Rsvp = {
	__typename: "Rsvp"?,
	rsvpStatus: Maybe<RsvpStatus>?,
	userId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
}
export type RsvpCounters = {
	__typename: "RsvpCounters"?,
	going: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
	maybeGoing: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
	none: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
	notGoing: Maybe<typeof((({} :: any) :: Scalars).Float)>?,
}
export type RsvpResponse = {
	__typename: "RsvpResponse"?,
	isUserFirstRsvp: Maybe<typeof((({} :: any) :: Scalars).Boolean)>?,
	rsvpStatus: Maybe<RsvpStatus>?,
}
local RsvpStatus = { Going = "going", MaybeGoing = "maybeGoing", None = "none", NotGoing = "notGoing" }
-- ROBLOX deviation START: convert RsvpStatus enum to type union
export type RsvpStatus = "going" | "none" | "maybeGoing" | "notGoing"
-- ROBLOX deviation END
exports.RsvpStatus = RsvpStatus
export type User = {
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
export type VirtualEvent = {
	__typename: "VirtualEvent"?,
	createdUtc: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	description: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	eventStatus: Maybe<EventStatus>?,
	eventTime: Maybe<EventTime>?,
	experienceDetails: Maybe<ExperienceDetails>?,
	host: Maybe<Host>?,
	id: typeof((({} :: any) :: Scalars).ID),
	media: Maybe<Array<ExperienceMedia>>?,
	rsvpCounters: Maybe<RsvpCounters>?,
	rsvps: Maybe<Array<Rsvp>>?,
	title: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	universeId: Maybe<typeof((({} :: any) :: Scalars).ID)>?,
	updatedUtc: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	userRsvpStatus: Maybe<RsvpStatus>?,
}
export type VirtualEventsByUniverseIdOptions = {
	cursor: InputMaybe<typeof((({} :: any) :: Scalars).String)>?,
	fromUtc: InputMaybe<typeof((({} :: any) :: Scalars).String)>?,
	limit: InputMaybe<typeof((({} :: any) :: Scalars).Int)>?,
}
export type VirtualEventsPage = {
	__typename: "VirtualEventsPage"?,
	cursor: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	virtualEvents: Maybe<Array<VirtualEvent>>?,
}
return exports
