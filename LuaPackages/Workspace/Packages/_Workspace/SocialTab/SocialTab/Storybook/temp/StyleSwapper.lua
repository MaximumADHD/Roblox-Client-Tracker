--!nonstrict
--TODO: Remove and use SocialLibraries/StoryMiddleware when RoactNavigation migration is finished and it can be used as a dependency

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local mockLocale = require(script.Parent.mockLocale)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local RadioButtonList = UIBlox.App.InputButton.RadioButtonList

local LightTheme = dependencies.AppStyle.LightTheme
local DarkTheme = dependencies.AppStyle.DarkTheme
local Gotham = dependencies.AppStyle.Gotham
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux

local styleTable = {
	Light = {
		Theme = LightTheme,
		Font = Gotham,
	},
	Dark = {
		Theme = DarkTheme,
		Font = Gotham,
	},
}

local viewPortWithSidebar = function(props)
	local options = {
		"Dark",
		"Light",
	}
	local sideBarButtons = {
		radioButtonList = Roact.createElement(RadioButtonList, {
			radioButtons = options,
			onActivated = function(value)
				props.updateStyle(options[value])
			end,
			selectedValue = table.find(options, props.styleName) or 1,
			elementSize = UDim2.new(1, 0, 0, 40),
		}),
	}
	return UIBlox.Style.withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),
			sideBar = Roact.createElement("Frame", {
				Size = UDim2.new(0, props.width, 1, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				LayoutOrder = 1,
			}, sideBarButtons),
			viewPort = Roact.createElement("Frame", {
				Size = UDim2.new(1, -props.width, 1, 0),
				BackgroundColor3 = Color3.fromRGB(222, 255, 255),
				LayoutOrder = 2,
			}, props[Roact.Children]),
		})
	end)
end

local makeStore = function()
	local defaultState = {
		style = "Light",
	}

	local reducer = function(previousState, action)
		if action.type == "receivedStyle" then
			return {
				style = action.style,
			}
		end

		return previousState
	end

	local store = Rodux.Store.new(reducer, defaultState)
	return store
end

local container = function(props)
	return Roact.createElement(UIBlox.Style.Provider, {
		style = styleTable[props.styleName],
	}, {
		viewportWithSidebar = Roact.createElement(viewPortWithSidebar, {
			width = props.sideBarWidth,
			updateStyle = props.updateStyle,
			styleName = props.styleName,
		}, {
			Story = Roact.createElement(props.story),
		}),
	})
end

container = RoactRodux.connect(function(state)
	return {
		styleName = state.style,
	}
end, function(dispatch)
	return {
		updateStyle = function(styleName)
			return dispatch({
				type = "receivedStyle",
				style = styleName,
			})
		end,
	}
end)(container)

return function()
	return function(story, target)
		local tree = Roact.createElement(RoactRodux.StoreProvider, {
			store = makeStore(),
		}, {
			container = Roact.createElement(container, {
				story = story,
				sideBarWidth = 100,
			}),
		})

		local handle = Roact.mount(mockLocale(tree), target, "StoryRoot")

		return function()
			Roact.unmount(handle)
		end
	end
end
