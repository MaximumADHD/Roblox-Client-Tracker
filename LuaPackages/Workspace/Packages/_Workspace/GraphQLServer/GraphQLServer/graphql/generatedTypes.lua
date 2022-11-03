-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/generatedTypes.ts
local exports = {}
export type Maybe<T> = T | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
export type InputMaybe<T> = Maybe<T>
export type Exact<T> = any --[[ ROBLOX TODO: Unhandled node for type: TSMappedType ]] --[[ { [K in keyof T]: T[K] } ]]

-- ROBLOX deviation: Do not use MakeOptional or MakeMaybe
-- export type MakeOptional<T, K> = Omit<T, K> & any
-- export type MakeMaybe<T, K> = Omit<T, K> & any
--[[* All built-in and custom scalars, mapped to their actual values ]]
export type Scalars = { ID: string, String: string, Boolean: boolean, Int: number, Float: number }
export type Player = User & {
	__typename: ("Player")?,
	avatarHeadshot: typeof((({} :: any) :: Scalars).String),
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
export type Query = { __typename: ("Query")?, me: User, user: User }
export type QueryUserArgs = { id: typeof((({} :: any) :: Scalars).ID) }
export type User = {
	displayName: typeof((({} :: any) :: Scalars).String),
	id: typeof((({} :: any) :: Scalars).ID),
}
return exports
