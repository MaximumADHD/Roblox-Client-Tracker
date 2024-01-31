local Packages = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")
local UIBlox = require(Packages.UIBlox)
local RoduxPresence = require(Packages.RoduxPresence)
local RoduxFriends = require(Packages.RoduxFriends)
local Players = game:GetService("Players")

return {
	Roact = require(Packages.Roact),
	React = require(Packages.React),
	-- TODO add ability to pass in UIBlox config on setup (currently assumes UIBlox is initialized by consuming project)
	UIBlox = UIBlox,
	RoactFitComponents = require(Packages.RoactFitComponents),
	GenericPagination = require(Packages.GenericPagination),
	Cryo = require(Packages.Cryo),
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	Lumberyak = require(Packages.Lumberyak),
	tutils = require(Packages.tutils),
	t = require(Packages.t),
	Promise = require(Packages.Promise),
	Symbol = require(Packages.Symbol),
	LuauPolyfill = require(Packages.LuauPolyfill),
	Otter = require(Packages.Otter),
	llama = require(Packages.llama),
	RoduxPresence = RoduxPresence.config({
		keyPath = "SocialLibraries.Presence",
	}),
	RoduxFriends = RoduxFriends.config({
		keyPath = "SocialLibraries.Friends",
	}),
	enumerate = require(Packages.enumerate),
	Players = Players,

	-- TODO remove this when keyboard covering screen is automatically tracked on android
	UserInputService = UserInputService,

	-- TODO find ways to remove
	Text = require(script.Parent.temp.Text),
	UserModel = require(script.Parent.temp.User),
}
