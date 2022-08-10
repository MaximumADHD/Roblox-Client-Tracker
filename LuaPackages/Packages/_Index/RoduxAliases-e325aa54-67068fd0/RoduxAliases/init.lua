--!strict

local AliasReducer = script
local Packages = AliasReducer.Parent
local llama = require(Packages.llama) :: any
local RoduxNetworking = require(Packages.RoduxNetworking) :: any
local AliasNetworking = require(Packages.AliasNetworking) :: any

local Aliases = require(AliasReducer.Reducers.AliasesReducer)
local Actions = require(AliasReducer.Actions)
local Selectors = require(AliasReducer.Selectors)

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

return {
	config = function(options: RoduxAliasesTypes.RoduxOptions)
		options = llama.Dictionary.join(options, {
			aliasNetworking = AliasNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Aliases(options)
			end,
			Actions = Actions,
			Selectors = Selectors(options),
		}
	end,
}
