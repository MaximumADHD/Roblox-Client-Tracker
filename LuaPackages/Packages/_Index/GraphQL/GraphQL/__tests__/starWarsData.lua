--!strict
--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1611bbb08a88f734e9490b14cfe6afea11a838e0/src/__tests__/starWarsData.js
local rootWorkspace = script.Parent.Parent
local Packages = rootWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = require(Packages.LuauPolyfill).Array
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

--[[*
 * These are types which correspond to the schema.
 * They represent the shape of the data visited during field resolution.
 ]]
export type Character = {
	id: string,
	name: string,
	friends: Array<string>,
	appearsIn: Array<number>,
	-- ROBLOX TODO: this file will not typecheck until Luau can allow for derived type relationships
	-- ...
}

export type Human = {
	type: string, -- ROBLOX TODO: 'Human',
	id: string,
	name: string,
	friends: Array<string>,
	appearsIn: Array<number>,
	homePlanet: string?,
}

export type Droid = {
	type: string, -- ROBLOX TODO: 'Droid',
	id: string,
	name: string,
	friends: Array<string>,
	appearsIn: Array<number>,
	primaryFunction: string,
}

--[[*
 * This defines a basic set of data for our Star Wars Schema.
 *
 * This data is hard coded for the sake of the demo, but you could imagine
 * fetching this data from a backend service rather than from hardcoded
 * JSON objects in a more complex demo.
 ]]

local luke: Human = {
	type = "Human",
	id = "1000",
	name = "Luke Skywalker",
	friends = { "1002", "1003", "2000", "2001" },
	appearsIn = { 4, 5, 6 },
	homePlanet = "Tatooine",
}

local vader: Human = {
	type = "Human",
	id = "1001",
	name = "Darth Vader",
	friends = { "1004" },
	appearsIn = { 4, 5, 6 },
	homePlanet = "Tatooine",
}

local han: Human = {
	type = "Human",
	id = "1002",
	name = "Han Solo",
	friends = { "1000", "1003", "2001" },
	appearsIn = { 4, 5, 6 },
}

local leia: Human = {
	type = "Human",
	id = "1003",
	name = "Leia Organa",
	friends = { "1000", "1002", "2000", "2001" },
	appearsIn = { 4, 5, 6 },
	homePlanet = "Alderaan",
}

local tarkin: Human = {
	type = "Human",
	id = "1004",
	name = "Wilhuff Tarkin",
	friends = { "1001" },
	appearsIn = { 4 },
}

local humanData: { [string]: Human } = {
	[luke.id] = luke,
	[vader.id] = vader,
	[han.id] = han,
	[leia.id] = leia,
	[tarkin.id] = tarkin,
}

local threepio: Droid = {
	type = "Droid",
	id = "2000",
	name = "C-3PO",
	friends = { "1000", "1002", "1003", "2001" },
	appearsIn = { 4, 5, 6 },
	primaryFunction = "Protocol",
}

local artoo: Droid = {
	type = "Droid",
	id = "2001",
	name = "R2-D2",
	friends = { "1000", "1002", "1003" },
	appearsIn = { 4, 5, 6 },
	primaryFunction = "Astromech",
}

local droidData: { [string]: Droid } = {
	[threepio.id] = threepio,
	[artoo.id] = artoo,
}

--[[*
 * Helper function to get a character by ID.
 ]]
local function getCharacter(id: string): Promise<Character | nil>
	-- Returning a promise just to illustrate that GraphQL-Lua supports it.
	return Promise.resolve(humanData[id] or droidData[id])
end

--[[*
 * Allows us to query for a character's friends.
 ]]
local function getFriends(character: Character): Array<Promise<Character | nil>>
	-- Notice that GraphQL accepts Arrays of Promises.
	return Array.map(character.friends, function(id)
		return getCharacter(id)
	end)
end

--[[*
 * Allows us to fetch the undisputed hero of the Star Wars trilogy, R2-D2.
 ]]
local function getHero(episode: number): Character
	if episode == 5 then
		-- Luke is the hero of Episode V.
		return luke
	end
	-- Artoo is the hero otherwise.
	return artoo
end

--[[*
 * Allows us to query for the human with the given id.
 ]]
local function getHuman(id: string): Human | nil
	return humanData[id]
end

--[[*
 * Allows us to query for the droid with the given id.
 ]]
local function getDroid(id: string): Droid | nil
	return droidData[id]
end

return {
	getHuman = getHuman,
	getCharacter = getCharacter,
	getDroid = getDroid,
	getFriends = getFriends,
	getHero = getHero,
}
