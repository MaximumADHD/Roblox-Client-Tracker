local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local PropertyLock = Roact.PureComponent:extend(script.Name)

function PropertyLock:init()
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
end

function PropertyLock:_render(theme)
	local locked = self.props.Locked or false
	local isHovered = self.state.isHovered

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(1, 0),
		-- TODO: These values would be incorrect for non-English text of different lengths
		Position = UDim2.new(0, -11, 0, 5),
		Size = UDim2.new(0, 18, 0, 34),

		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		AutoButtonColor = false,

		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.Activated] = self.props.Clicked,
	}, {
		-- Show the grey paperclip shape as a grey frame
		-- With more frames the colour of the background drawn on top
		Paperclip = Roact.createElement("Frame", {
			Size = UDim2.new(0, 11, 1, 0),
			BackgroundColor3 = theme.propertyLockTheme.paperclipColor,
			BorderSizePixel = 0,
			ZIndex = 10,
		}),

		PaperclipCover = Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 2),
			Size = UDim2.new(0, 10, 0, 30),
			BackgroundColor3 = theme.backgroundColor,
			BorderSizePixel = 0,
			ZIndex = 11,
		}),

		IconBackgroundPaperclipCover = Roact.createElement("Frame", {
			Position = UDim2.new(0, 5, 0, 9),
			Size = UDim2.new(0, 12, 0, 16),
			BackgroundColor3 = theme.backgroundColor,
			BorderSizePixel = 0,
			ZIndex = 12,
		}, {
			IconBackground = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 2),
				Size = UDim2.new(0, 12, 0, 12),
				BackgroundColor3 = isHovered and theme.propertyLockTheme.iconBackgroundHover or theme.backgroundColor,
				BorderColor3 = theme.propertyLockTheme.iconBorderHover,
				BorderSizePixel = isHovered and 1 or 0,
				BackgroundTransparency = isHovered and theme.propertyLockTheme.iconBackgroundHoverTransparency or 0,
				ZIndex = 13,
			}, {
				Icon = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 2, 0, 1),
					Size = UDim2.new(0, locked and 8 or 10, 0, 9),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Image = locked and theme.propertyLockTheme.lockedIcon or theme.propertyLockTheme.unlockedIcon,
					ZIndex = 14,
				})
			}),
		}),
	})
end

function PropertyLock:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Theme:get())
	else
		return withTheme(function(theme)
			return self:_render(theme)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(PropertyLock, {
		Theme = ContextItems.UILibraryTheme,
	})
end

return PropertyLock
