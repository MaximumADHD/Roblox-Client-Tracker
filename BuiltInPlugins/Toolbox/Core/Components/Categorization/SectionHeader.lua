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

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local CategorizationFolder = Plugin.Core.Components.Categorization
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local NavigationLink = require(CategorizationFolder.NavigationLink)

export type SectionHeaderProps = {
	OnClickSeeAll : (() -> ()),
	Position : UDim2?,
	SeeAllText : string?,
	Title : string,
	Stylizer : any,
	Localization : any,
}

local SectionHeader = Roact.PureComponent:extend("SectionHeader")

SectionHeader.defaultProps = {
	Title = "",
}

function SectionHeader:init()
	self.hostRef = Roact.createRef()
	self.seeAllRef = Roact.createRef()
end

function SectionHeader:render()
	local props : SectionHeaderProps = self.props

	local onClickSeeAll = props.OnClickSeeAll
	local position = props.Position
	local seeAllText = props.SeeAllText
	local theme = props.Stylizer.sectionHeader
	local title = props.Title

	local titleSize = if (self.seeAllRef.current and self.hostRef.current)
		then UDim2.new(0, self.hostRef.current.AbsoluteSize.X - self.seeAllRef.current.AbsoluteSize.X, 1, 0)
		else UDim2.new(0.6, 0, 1, 0)

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		Position = position,
	}, {
		Title = Roact.createElement("TextLabel", {
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

		SeeAll = Roact.createElement(NavigationLink, {
			OnClickSeeAll = onClickSeeAll,
			Text = seeAllText,
			[Roact.Ref] = self.seeAllRef,
		})
	})
end

SectionHeader = withContext({
	Stylizer = ContextServices.Stylizer,
})(SectionHeader)

return SectionHeader
