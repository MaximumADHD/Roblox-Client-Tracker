-- based on src/internal/LuaApp/Modules/LuaApp/Components/Home/FreezableUserCarousel.lua

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local t = dependencies.t

local UserCarousel = require(script.Parent.UserCarousel)

local FreezableUserCarousel = Roact.PureComponent:extend("FreezableUserCarousel")

FreezableUserCarousel.defaultProps = {
	isFrozen = false,
	analytics = {},
}

FreezableUserCarousel.validateProps = t.interface({
	isFrozen = t.optional(t.boolean),
})

function FreezableUserCarousel:init()
	self.isMounted = false
	self.state = {
		peopleListFrozen = self.props.isFrozen or false,
	}

	self.setPeopleListFrozen = function(frozen)
		if self.isMounted then
			self:setState({
				peopleListFrozen = frozen,
			})
		end
	end
end

function FreezableUserCarousel:render()
	return Roact.createElement(
		UserCarousel,
		llama.Dictionary.join(self.props, {
			peopleListFrozen = self.state.peopleListFrozen,
			setPeopleListFrozen = self.setPeopleListFrozen,
		})
	)
end

function FreezableUserCarousel:didMount()
	self.isMounted = true
end

function FreezableUserCarousel:willUnmount()
	self.isMounted = false
end

return FreezableUserCarousel
