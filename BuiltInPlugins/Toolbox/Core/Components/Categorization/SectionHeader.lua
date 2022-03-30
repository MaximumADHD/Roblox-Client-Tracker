--!strict
--[[
	A title for a swimlane that has a See All button

	Required Props:
		String Title = the text to display in the header
		function<void>() OnClickSeeAll = a callback for when the "See All" button is activated
	
	Optional Props:
		String SeeAllText = the text to display in the "See All" button
		UDim2 Position = positions the frame that encloses the entire component

	Context Props:
		Localization (required by NavigationLink)
		Stylizer

]]

local FFlagDevFrameworkAddUnobtrusiveLinkTextStyle = game:GetFastFlag("DevFrameworkAddUnobtrusiveLinkTextStyle")

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Layouter = require(Plugin.Core.Util.Layouter)
local Constants = require(Plugin.Core.Util.Constants)
local Framework = require(Packages.Framework)
local LinkText = Framework.UI.LinkText

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

export type SectionHeaderProps = {
	OnClickSeeAll: (() -> ()),
	LayoutOrder: number?,
	Position: UDim2?,
	SeeAllText: string?,
	Title: string,
	Total: number?,
	Stylizer: any,
	Localization: any,
}

local SectionHeader = Roact.PureComponent:extend("SectionHeader")

SectionHeader.defaultProps = {
	Title = "",
}

function SectionHeader:init()
	self.hostRef = Roact.createRef()
	self.seeAllRef = Roact.createRef()
	self.frameRef = Roact.createRef()

	self.state = {
		DisplaySeeAllLink = true,
	}
end

function SectionHeader:render()
	local props: SectionHeaderProps = self.props

	local layoutOrder = props.LayoutOrder
	local onClickSeeAll = props.OnClickSeeAll
	local position = props.Position
	local localization = props.Localization
	local seeAllText = props.SeeAllText or (localization:getText("HomeView", "SeeAll") .. " >")
	local theme = props.Stylizer.sectionHeader
	local title = props.Title

	local displaySeeAllLink = self.state.DisplaySeeAllLink

	local titleSize = if (self.seeAllRef.current and self.hostRef.current)
		then UDim2.new(0, self.hostRef.current.AbsoluteSize.X - self.seeAllRef.current.AbsoluteSize.X, 1, 0)
		else UDim2.new(0.6, 0, 1, 0)

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 0),
		Position = position,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
		[Roact.Ref] = self.frameRef,
	}, {
		Title = Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Font = theme.font,
			Position = UDim2.new(0, 0, 0, 0),
			Size = titleSize,
			Text = title,
			TextColor3 = theme.textColor,
			TextSize = theme.textSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			[Roact.Ref] = self.hostRef,
		}),

		SeeAll = displaySeeAllLink and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Position = UDim2.new(1, 0, 0, 0),
		}, {
			SeeAllButton = Roact.createElement(LinkText, {
				OnClick = onClickSeeAll,
				Style = if FFlagDevFrameworkAddUnobtrusiveLinkTextStyle then "Unobtrusive" else nil,
				Text = seeAllText,
			}),
		}),
	})
end

SectionHeader = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(SectionHeader)

return SectionHeader
