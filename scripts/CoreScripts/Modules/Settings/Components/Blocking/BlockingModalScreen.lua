--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local BlockingModalContainer = require(script.Parent.BlockingModalContainer)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local BlockingModalScreen = Roact.PureComponent:extend("BlockingModalScreen")

BlockingModalScreen.validateProps = t.interface({
	closeModal = t.callback,
	player = t.interface({
		DisplayName = t.string,
		Name = t.string,
		UserId = t.number,
	}),
	translator = t.optional(t.table),
	source = t.optional(t.string),
})

function BlockingModalScreen:render()
	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	return Roact.createElement(UIBlox.Style.Provider, {
		style = appStyle,
	}, {
		Roact.createElement(Roact.Portal, {
       		target = CoreGui
   		}, {
			BlockingModalScreen = Roact.createElement("ScreenGui", {
				IgnoreGuiInset = true,
				AutoLocalize = false,
				DisplayOrder = 6,
			}, {
				BlockingModalContainer = Roact.createElement(BlockingModalContainer, self.props)
			})
		})
	})
end

return BlockingModalScreen
