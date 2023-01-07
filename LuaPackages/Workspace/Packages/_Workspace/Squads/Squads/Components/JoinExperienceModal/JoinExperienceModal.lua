local TextService = game:GetService("TextService")
local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local Roact = dependencies.Roact
local RoactFitComponents = dependencies.RoactFitComponents
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local withLocalization = dependencies.withLocalization

local Constants = require(Squads.Common.Constants)
local FacePile = require(Squads.Components.FacePile)
local ProgressBar = require(Squads.Components.ProgressBar)

local FitFrameVertical = RoactFitComponents.FitFrameVertical

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local LoadableImage = UIBlox.Loading.LoadableImage
local withStyle = UIBlox.Core.Style.withStyle

local JoinExperienceModal = Roact.Component:extend("JoinExperienceModal")
local mapStateToProps = require(script.Parent.joinExperienceMapStateToProps)

local ITEM_BETWEEN_PADDING = 16
local ITEM_BOTTOM_PADDING = 8
local ITEM_HEIGHT = 32

type Props = {
	closeModal: (boolean) -> (),
	users: { string },
}

type InternalProps = Props & mapStateToProps.Props

JoinExperienceModal.defaultProps = {
	closeModal = function() end,
}

JoinExperienceModal.validateProps = t.interface({
	closeModal = t.callback,
	users = t.table,

	-- State
	experienceName = t.string,
	experienceServerSize = t.number,
	screenSize = t.Vector2,
})

function JoinExperienceModal:render()
	local props: InternalProps = self.props

	return withLocalization({
		titleText = "CommonUI.Messages.Label.Alert",
		bodyText = {
			"Feature.Squads.Description.JoinExperiencePrompt",
			experienceName = props.experienceName,
		},
		acceptButtonText = "CommonUI.Controls.Action.Accept",
		declineButtonText = "CommonUI.Controls.Action.Decline",
	})(function(localizedStrings)
		return withStyle(function(style)
			local theme = style.Theme
			local font = style.Font

			-- Measure the text first so we can decide the width for the face pile.
			local text: string = #props.users .. "/" .. (props.experienceServerSize or 0)
			local textFontSize = font.BaseSize :: number * font.Header2.RelativeSize :: number
			local textSize =
				TextService:GetTextSize(text, textFontSize, font.Header2.Font, Vector2.new(math.huge, ITEM_HEIGHT))

			return Roact.createElement(InteractiveAlert, {
				screenSize = props.screenSize,
				title = localizedStrings.titleText,
				bodyText = localizedStrings.bodyText,
				middleContent = function()
					return Roact.createElement(FitFrameVertical, {
						BackgroundColor3 = Color3.fromRGB(17, 17, 17),
						BorderSizePixel = 0,
						FillDirection = Enum.FillDirection.Vertical,
						width = UDim.new(1, 0),
					}, {
						-- Maintains a 16:9 aspect ratio.
						Roact.createElement("Frame", {
							BorderSizePixel = 0,
							Size = UDim2.new(1, 0, 0.5625, 0),
							SizeConstraint = Enum.SizeConstraint.RelativeXX,
						}, {
							ExperienceImage = Roact.createElement(LoadableImage, {
								ZIndex = 1,
								Image = props.experienceImageId,
								Size = UDim2.fromScale(1, 1),
								showFailedStateWhenLoadingFailed = true,
								useShimmerAnimationWhileLoading = true,
							}),

							BottomBar = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Position = UDim2.new(0, 0, 1, -ITEM_HEIGHT - ITEM_BOTTOM_PADDING),
								Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
								ZIndex = 2,
							}, {
								Padding = Roact.createElement("UIPadding", {
									PaddingLeft = UDim.new(0, 12),
									PaddingRight = UDim.new(0, 12),
								}),

								Layout = Roact.createElement("UIListLayout", {
									FillDirection = Enum.FillDirection.Horizontal,
									HorizontalAlignment = Enum.HorizontalAlignment.Left,
									VerticalAlignment = Enum.VerticalAlignment.Bottom,
								}),

								FacePile = Roact.createElement(FacePile, {
									avatarSize = Constants.AVATAR_SIZE,
									borderColor = Color3.fromRGB(11, 11, 11),
									borderWidth = 2,
									faceCount = props.experienceServerSize,
									facePileWidth = UDim.new(1, -textSize.X - ITEM_BETWEEN_PADDING),
									overlapOffset = 4,
									users = props.users,
								}),

								ServerLimitTextContainer = Roact.createElement("Frame", {
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Size = UDim2.new(0, textSize.X + ITEM_BETWEEN_PADDING, 1, 0),
								}, {
									Layout = Roact.createElement("UIListLayout", {
										HorizontalAlignment = Enum.HorizontalAlignment.Right,
										VerticalAlignment = Enum.VerticalAlignment.Center,
									}),

									ServerLimitText = Roact.createElement("TextLabel", {
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Font = font.Header2.Font,
										Text = text,
										TextColor3 = theme.TextDefault.Color,
										TextSize = textFontSize,
										Size = UDim2.new(0, textSize.X, 1, 0),
									}),
								}),
							}),
						}),

						ProgressBar = Roact.createElement(ProgressBar, {
							targetElapsedTime = 15,
						}),
					})
				end,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = nil,
							props = {
								text = localizedStrings.declineButtonText,
								onActivated = function()
									props.closeModal(false)
								end,
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								text = localizedStrings.acceptButtonText,
								onActivated = function()
									props.closeModal(true)
								end,
							},
						},
					},
				},
			})
		end)
	end)
end

return JoinExperienceModal
