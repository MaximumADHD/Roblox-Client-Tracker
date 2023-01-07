-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/c44413b75d/generatedTypes.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
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
export type Experience = {
	__typename: ("Experience")?,
	description: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	name: typeof((({} :: any) :: Scalars).String),
	placeId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	playerCount: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	thumbnails: Maybe<Array<Maybe<Media>>>?,
	totalDownVotes: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	totalUpVotes: Maybe<typeof((({} :: any) :: Scalars).Int)>?,
	universeId: typeof((({} :: any) :: Scalars).ID),
}
export type Media = { __typename: ("Media")?, url: Maybe<typeof((({} :: any) :: Scalars).String)>? }
export type OmniFeed = {
	__typename: ("OmniFeed")?,
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
	__typename: ("OmniFeedItem")?,
	experiences: Maybe<Array<Maybe<Experience>>>?,
	recommendations: Maybe<Array<Maybe<OmniFeedRecommendation>>>?,
	topic: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	topicId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	treatmentType: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type OmniFeedMetadata = {
	__typename: ("OmniFeedMetadata")?,
	CatalogAssetJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	CatalogBundleJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	--[[* @deprecated Fetch game metadata from OmniFeedItem instead. Scheduled for deprecation on 2023-01-30 ]]
	GameJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	RecommendedFriendJSON: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
}
export type OmniFeedRecommendation = {
	__typename: ("OmniFeedRecommendation")?,
	contentId: Maybe<typeof((({} :: any) :: Scalars).String)>?,
	contentMetadata: Maybe<typeof((({} :: any) :: Scalars).JSONObject)>?,
	contentType: Maybe<typeof((({} :: any) :: Scalars).String)>?,
}
export type Player = User & {
	__typename: ("Player")?,
	avatarHeadshot: typeof((({} :: any) :: Scalars).String),
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
export type Query = { __typename: ("Query")?, me: User, omniFeed: Maybe<OmniFeed>?, user: User }
export type QueryOmniFeedArgs = {
	nextPageToken: InputMaybe<typeof((({} :: any) :: Scalars).String)>?,
	pageType: typeof((({} :: any) :: Scalars).String),
	sessionId: typeof((({} :: any) :: Scalars).String),
}
export type QueryUserArgs = { id: typeof((({} :: any) :: Scalars).ID) }
export type User = {
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
return exports
