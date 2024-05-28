local Packages = script.Parent.Parent
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local lazyRequire = require(Packages.LazyRequire).lazyRequire

local UIBlox = require(Packages.UIBlox)
local RoduxPresence = require(Packages.RoduxPresence)
local RoduxFriends = require(Packages.RoduxFriends)

local FFlagLuaSocialLibUseLazyRequire = game:DefineFastFlag("LuaAppSocialLibUseLazyRequire", false)

return if FFlagLuaSocialLibUseLazyRequire
	then {
		Roact = require(Packages.Roact),
		React = require(Packages.React),
		-- TODO add ability to pass in UIBlox config on setup (currently assumes UIBlox is initialized by consuming project)
		UIBlox = UIBlox,
		RoactFitComponents = lazyRequire(Packages.RoactFitComponents) :: typeof(require(Packages.RoactFitComponents)),
		GenericPagination = lazyRequire(Packages.GenericPagination) :: typeof(require(Packages.GenericPagination)),
		Cryo = require(Packages.Cryo),
		RoactNavigation = require(Packages.RoactNavigation),
		Rodux = require(Packages.Rodux),
		Lumberyak = require(Packages.Lumberyak),
		tutils = require(Packages.tutils),
		t = require(Packages.t),
		Promise = lazyRequire(Packages.Promise) :: typeof(require(Packages.Promise)),
		Symbol = lazyRequire(Packages.Symbol) :: typeof(require(Packages.Symbol)),
		LuauPolyfill = lazyRequire(Packages.LuauPolyfill) :: typeof(require(Packages.LuauPolyfill)),
		Otter = lazyRequire(Packages.Otter) :: typeof(require(Packages.Otter)),
		llama = lazyRequire(Packages.llama) :: typeof(require(Packages.llama)),
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
	else {
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
	} :: any
