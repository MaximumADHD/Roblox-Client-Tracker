local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local getFFlagDeprecatedSocialLibrariesCells = require(SocialLibraries.Flags.getFFlagDeprecatedSocialLibrariesCells)

local Roact = dependencies.Roact
local PresenceBubbleCellStyled = require(script.Parent.PresenceBubbleCellStyled)

local TestStyle = require(script:FindFirstAncestor("Components").Style.TestStyle)

local UserCell = Roact.PureComponent:extend("UserCell")

UserCell.defaultProps = {
	subTitleText = "subTitleText",
	secondaryTitleText = nil,
	user = {},
	childWidth = 0,
	onActivated = nil,
	onCircleActivated = nil,
	style = TestStyle,

	showDivider = true,
	boldTitle = true,
}

function UserCell:init()
	assert(
		not getFFlagDeprecatedSocialLibrariesCells(),
		"social-libraries Cells are deprecated, please use Cell components from app-chat rotriever package"
	)

	self.onActivated = function()
		if self.props.onActivated then
			self.props.onActivated(self.props.user)
		end
	end
end

function UserCell:render()
	local user = self.props.user

	return Roact.createElement(PresenceBubbleCellStyled, {
		style = self.props.style,
		childWidth = self.props.childWidth,
		onActivated = self.onActivated,
		onCircleActivated = self.props.onCircleActivated,
		subTitleText = self.props.subTitleText,
		showDivider = self.props.showDivider,
		boldTitle = self.props.boldTitle,

		-- user props
		avatarCirclePresenceImage = user.presenceImage,
		titleText = user.displayName,
		secondaryTitleText = user.alias,
		thumbnails = { user.thumbnail },
	}, self.props[Roact.Children])
end

return UserCell
