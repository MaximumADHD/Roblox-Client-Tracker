local UserService = game:GetService("UserService")
local MarketplaceService = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local _, InsertService = pcall(function()
	return game:GetService("InsertService")
end)
local _, StudioService = pcall(function()
	return game:GetService("StudioService")
end)

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Players = require(Foundation.Utility.Wrappers).Services.Players
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local Cryo = require(Packages.Cryo)
local Dash = require(Packages.Dash)

local Tile = require(Foundation.Components.Tile)
local MediaType = require(Foundation.Enums.MediaType)
local MediaShape = require(Foundation.Enums.MediaShape)
local Theme = require(Foundation.Enums.Theme)

local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local IconSize = require(Foundation.Enums.IconSize)

local Button = require(Foundation.Components.Button)
local InputSize = require(Foundation.Enums.InputSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)

local ObjectViewport = require(script.Parent.ObjectViewport)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

-- local ObjectViewport = require(script.Parent.ObjectViewport)

local PLACE_TO_UNIVERSE = {
	[2727067538] = 985731078,
	[1537690962] = 601130232,
}

local playerTileSize = UDim2.fromOffset(150, 225)
local itemTileSize = UDim2.fromOffset(150, 240)
local experienceTileSize = UDim2.fromOffset(150, 250)
local wideTileSize = UDim2.fromOffset(300, 280)

local buttons = {
	{
		icon = "icons/actions/friends/friendpending",
		onActivated = function()
			print("Button Pressed")
		end,
		variant = ButtonVariant.SubEmphasis,
	},
}

local function getPlayerCount(tokens)
	return React.createElement(Text, {
		textStyle = tokens.Color.Content.Default,
		fontStyle = tokens.Typography.TitleLarge,
		Text = "82% 👍 92k 👤",
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = false,
		TextTruncate = Enum.TextTruncate.AtEnd,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	})
end

local function getColorValues(color: Color3)
	return { R = color.R, G = color.G, B = color.B }
end

local SPRING_OPTIONS = { frequency = 4 }
local function createColorSpring(color: Color3)
	return {
		R = ReactOtter.spring(color.R, SPRING_OPTIONS),
		G = ReactOtter.spring(color.G, SPRING_OPTIONS),
		B = ReactOtter.spring(color.B, SPRING_OPTIONS),
	}
end

return {
	name = "Tile",
	stories = {
		Configurable = {
			name = "Configurable Tile",
			story = function(props)
				local tokens = useTokens()
				local textSizeOffset = useTextSizeOffset()
				-- tile is highly configurable, so want to compute appropriate offset according to
				-- expected number of text lines; here we have props for numTitleLines, numSubtitleLines, and add a footer
				local footerTextLines = 1
				local tileOffset = (
					(props.controls.numTitleLines or 0)
					+ props.controls.numSubtitleLines
					+ footerTextLines
				) * textSizeOffset

				return React.createElement(Tile.Root, {
					FillDirection = props.controls.fillDirection,
					Size = if props.controls.fillDirection == Enum.FillDirection.Vertical
						then UDim2.fromOffset(150, 275 + tileOffset)
						else UDim2.fromOffset(300, 150 + tileOffset),
					isContained = props.controls.isContained,
				}, {
					TileMedia = React.createElement(Tile.Media, {
						id = props.controls.itemId,
						type = MediaType.Asset,
						shape = props.controls.shape,
						background = {
							style = tokens.Color.Shift.Shift_200,
						},
					}),
					TileContent = React.createElement(Tile.Content, {}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = props.controls.title,
								isLoading = props.controls.title == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = props.controls.numTitleLines,
							},
							subtitle = {
								text = props.controls.subtitle,
								isLoading = props.controls.subtitle == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
								numLines = props.controls.numSubtitleLines,
							},
						}),
						TileFooter = React.createElement(Tile.Footer, {}, {
							getPlayerCount(tokens),
						}),
					}),
				})
			end,
		},
		Fun = {
			name = "Fun Tile",
			story = function(props)
				local tokens = useTokens()
				local itemBG =
					`component_assets/itemBG_{if tokens.Config.ColorMode.Name == Theme.Dark then "dark" else "light"}`

				local item, setItem = React.useState({} :: { Name: string?, PriceText: string? })
				local model, setModel = React.useState(nil :: Model?)
				local itemId = props.controls.itemId
				React.useEffect(function()
					setItem({})
					spawn(function()
						wait(2.0)
						local itemInfo = MarketplaceService:GetProductInfo(itemId)
						if itemInfo.IsPublicDomain then
							itemInfo.PriceInRobux = 0
							itemInfo.PriceText = "Free"
						else
							assert(itemInfo.PriceInRobux ~= nil, "Item price will not be nil")
							itemInfo.PriceText = "\u{E002}" .. tostring(itemInfo.PriceInRobux)
						end

						setItem(itemInfo)
					end)

					local fetchedModel = ReplicatedStorage:FindFirstChild(`{itemId}`)
						or if InsertService then InsertService:LoadAsset(itemId) else nil

					if fetchedModel then
						assert(fetchedModel:IsA("Model"), "Fetched item is a Model")
						setModel(fetchedModel)
					end
				end, { itemId })

				local titleLines = 2
				local subtitleLines = 1
				local textSizeOffset = useTextSizeOffset()
				local tileOffset = (titleLines + subtitleLines) * textSizeOffset

				return React.createElement(Tile.Root, {
					isContained = true,
					-- Add negative size to offset border
					FillDirection = Enum.FillDirection.Horizontal,
					Size = UDim2.fromOffset(300, 150 + tileOffset) - UDim2.fromOffset(2, 2),
				}, {
					TileMedia = React.createElement(Tile.Media, {
						shape = MediaShape.Square,
						background = {
							image = itemBG,
						},
					}, {
						if model
							then React.createElement(ObjectViewport, {
								model = model,
								rotationSpeed = 0.01,
							})
							else nil,
					}),
					TileContent = React.createElement(Tile.Content, {}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = item.Name,
								isLoading = item.Name == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = titleLines,
							},
							subtitle = {
								text = item.PriceText,
								isLoading = item.PriceText == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
								numLines = subtitleLines,
							},
						}),
					}),
				})
			end,
		},
		Experience = {
			name = "Experience Tile",
			story = function(props)
				local tokens = useTokens()

				local isHovering, setIsHovering = React.useState(false)
				local isHoveringWide, setIsHoveringWide = React.useState(false)

				local onTileStateChanged = React.useCallback(function(newState: ControlState)
					setIsHovering(newState == ControlState.Hover)
				end, { setIsHovering })

				local onWideTileStateChanged = React.useCallback(function(newState: ControlState)
					setIsHoveringWide(newState == ControlState.Hover)
				end, { setIsHoveringWide })

				local place, setPlace = React.useState({} :: { Name: string? })
				local placeId = props.controls.placeId
				local universeId = PLACE_TO_UNIVERSE[placeId]
				React.useEffect(function()
					setPlace({})
					spawn(function()
						wait(2.0)
						local placeInfo = MarketplaceService:GetProductInfo(placeId)
						setPlace(placeInfo)
					end)
				end, { placeId })

				local sizeOffsetBinding, setGoal = ReactOtter.useAnimatedBinding(0)

				-- Update the animated value whenever isHoveringWide changes
				React.useEffect(function()
					local target = if isHoveringWide then tokens.Size.Size_200 else 0
					setGoal(ReactOtter.ease(target, { duration = 0.3, easingStyle = { 0.2, 0.0, 0.0, 1.0 } }))
				end, { isHoveringWide })

				local titleLines = 2
				local footerTextLines = 1
				local buttonTextLines = 1 -- generally, buttons will not wrap text
				local textSizeOffset = useTextSizeOffset()
				local tileOffset = (titleLines + footerTextLines + buttonTextLines) * textSizeOffset
				local tileNoButtonOffset = (titleLines + footerTextLines) * textSizeOffset

				return React.createElement(View, {
					tag = "auto-xy gap-large padding-small row",
				}, {
					Tile = React.createElement(Tile.Root, {
						isContained = true,
						onStateChanged = onTileStateChanged,
						FillDirection = Enum.FillDirection.Vertical,
						-- Add negative size to offset border
						Size = experienceTileSize + UDim2.fromOffset(0, tileNoButtonOffset) - UDim2.fromOffset(2, 2),
						LayoutOrder = 1,
					}, {
						TileMedia = React.createElement(Tile.Media, {
							id = if isHovering then placeId else universeId,
							type = if isHovering then MediaType.Asset else MediaType.GameIcon,
							shape = if isHovering then MediaShape.Landscape else MediaShape.Square,
						}),
						TileContent = React.createElement(Tile.Content, {}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = place.Name,
									isLoading = place.Name == nil,
									fontStyle = tokens.Typography.HeadingSmall,
									numLines = titleLines,
								},
							}),
							TileFooter = React.createElement(Tile.Footer, {}, {
								getPlayerCount(tokens),
							}),
							TileActions = React.createElement(Tile.Actions, {
								Visible = isHovering,
							}, {
								Button = React.createElement(Button, {
									text = "Play",
									size = InputSize.Medium,
									variant = ButtonVariant.Emphasis,
									fillBehavior = FillBehavior.Fill,
									onActivated = function()
										print("play pressed!")
									end,
								}),
							}),
						}),
					}),
					WideTileWrapper = React.createElement(View, {
						Size = wideTileSize,
						LayoutOrder = 2,
					}, {
						WideTile = React.createElement(Tile.Root, {
							onStateChanged = onWideTileStateChanged,
							isContained = false,
							FillDirection = Enum.FillDirection.Vertical,
							Size = sizeOffsetBinding:map(function(offset: number)
								return wideTileSize + UDim2.fromOffset(offset * 2, offset * 2 + tileOffset)
							end),
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
						}, {
							TileMedia = React.createElement(Tile.Media, {
								id = universeId,
								type = MediaType.GameIcon,
								shape = MediaShape.Landscape,
							}),
							TileContent = React.createElement(Tile.Content, {}, {
								TileHeader = React.createElement(Tile.Header, {
									title = {
										text = place.Name,
										isLoading = place.Name == nil,
										fontStyle = tokens.Typography.TitleLarge,
										numLines = titleLines,
									},
									subtitle = "82% 👍 92k 👤",
								}),
								TileActions = React.createElement(Tile.Actions, {
									Visible = isHoveringWide,
								}, {
									Button = React.createElement(Button, {
										text = "Play",
										size = InputSize.Medium,
										variant = ButtonVariant.Emphasis,
										fillBehavior = FillBehavior.Fill,
										onActivated = function()
											print("play pressed!")
										end,
									}),
								}),
							}),
						}),
					}),
					WideTileWithPadding = React.createElement(View, {
						Size = wideTileSize,
						LayoutOrder = 3,
					}, {
						WideTile = React.createElement(Tile.Root, {
							isContained = true,
							FillDirection = Enum.FillDirection.Vertical,
							Size = wideTileSize + UDim2.fromOffset(0, tileOffset),
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
						}, {
							TileMedia = React.createElement(Tile.Media, {
								id = universeId,
								type = MediaType.GameIcon,
								shape = MediaShape.Landscape,
							}),
							TileContent = React.createElement(Tile.Content, {
								spacing = tokens.Gap.Small,
							}, {
								TileHeader = React.createElement(Tile.Header, {
									title = {
										text = place.Name,
										isLoading = place.Name == nil,
										fontStyle = tokens.Typography.TitleLarge,
										numLines = titleLines,
									},
									subtitle = "82% 👍 92k 👤",
								}),
								TileActions = React.createElement(Tile.Actions, {}, {
									Button = React.createElement(Button, {
										text = "Play",
										size = InputSize.Medium,
										variant = ButtonVariant.Emphasis,
										fillBehavior = FillBehavior.Fill,
										onActivated = function()
											print("play pressed!")
										end,
									}),
								}),
							}),
						}),
					}),
				})
			end,
		},
		Item = {
			name = "Item Tile",
			story = function(props)
				local tokens = useTokens()
				local itemBG =
					`component_assets/itemBG_{if tokens.Config.ColorMode.Name == Theme.Dark then "dark" else "light"}`

				local item, setItem = React.useState({} :: { Name: string?, PriceText: string? })
				local itemId = props.controls.itemId
				React.useEffect(function()
					setItem({})
					spawn(function()
						wait(2.0)
						local itemInfo = MarketplaceService:GetProductInfo(itemId)
						if itemInfo.IsPublicDomain then
							itemInfo.PriceInRobux = 0
							itemInfo.PriceText = "Free"
						else
							assert(itemInfo.PriceInRobux ~= nil, "Item price will not be nil")
							itemInfo.PriceText = "\u{E002}" .. tostring(itemInfo.PriceInRobux)
						end

						setItem(itemInfo)
					end)
				end, { itemId })

				local titleLines, subtitleLines = 2, 1
				local textSizeOffset = useTextSizeOffset()
				local tileOffset = (titleLines + subtitleLines) * textSizeOffset

				return React.createElement(Tile.Root, {
					isContained = true,
					FillDirection = Enum.FillDirection.Vertical,
					-- Add negative size to offset border
					Size = itemTileSize + UDim2.fromOffset(0, tileOffset) - UDim2.fromOffset(2, 2),
				}, {
					TileMedia = React.createElement(Tile.Media, {
						id = itemId,
						type = MediaType.Asset,
						shape = MediaShape.Square,
						background = {
							image = itemBG,
						},
					}),
					TileContent = React.createElement(Tile.Content, {}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = item.Name,
								isLoading = item.Name == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = titleLines,
							},
							subtitle = {
								text = item.PriceText,
								isLoading = item.PriceText == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
								numLines = subtitleLines,
							},
						}),
					}),
				})
			end,
		},
		Player = {
			name = "Player Tile",
			story = function()
				local tokens = useTokens()
				local avatarBG =
					`component_assets/avatarBG_{if tokens.Config.ColorMode.Name == Theme.Dark then "dark" else "light"}`

				local relevancyInfo = {
					text = "Hueblox",
					icon = "icons/common/play",
					fontStyle = tokens.Typography.CaptionLarge,
					iconTextSpacing = tokens.Gap.XSmall,
					iconPadding = 0,
					iconSize = UDim2.fromOffset(tokens.Size.Size_300, tokens.Size.Size_300),
					textHeight = tokens.Size.Size_700,
					onActivated = function()
						print("Relevancy Info Pressed")
					end,
				}

				local user, setUser = React.useState({} :: { DisplayName: string?, Username: string? })
				-- local model, setModel = React.useState(nil :: Model?)
				local mouseEntered, setMouseEntered = React.useState(false)
				local onStateChanged = React.useCallback(function(newState: ControlState)
					setMouseEntered(newState == ControlState.Hover)
				end, { setMouseEntered })

				local backgroundColor = tokens.Color.Extended.White.White_100.Color3
				local hoverColor = tokens.Color.Extended.Gray.Gray_400.Color3
				local backgroundColorValues, setGoal = ReactOtter.useAnimatedBinding(getColorValues(backgroundColor))
				React.useEffect(function()
					setGoal(if mouseEntered then createColorSpring(hoverColor) else createColorSpring(backgroundColor))
				end, { mouseEntered })

				local userId = if Players.LocalPlayer
					then Players.LocalPlayer.UserId
					else if StudioService then StudioService:GetUserId() else nil
				React.useEffect(function()
					setUser({})
					spawn(function()
						wait(2.0)
						local users = UserService:GetUserInfosByUserIdsAsync({ userId })
						setUser(users[1])
					end)

					-- local fetchedModel = Players:CreateHumanoidModelFromUserId(userId)
					-- assert(fetchedModel:IsA("Model"), "Fetched item is a Model")
					-- fetchedModel.Parent = ReplicatedStorage
					-- setModel(fetchedModel)
				end, { userId })

				local titleLines, footerLines, subtitleLines, textSizeOffset = 1, 1, 1, useTextSizeOffset()
				local tileOffset = (titleLines + footerLines + subtitleLines) * textSizeOffset
				local oldTileOffset = (titleLines + subtitleLines) * textSizeOffset

				local function renderButton(button)
					return React.createElement(Button, {
						onActivated = button.onActivated,
						isDisabled = button.isDisabled,
						variant = button.variant,
						size = InputSize.Medium :: InputSize.InputSize,
						icon = button.icon,
					})
				end

				return React.createElement(View, {
					tag = "auto-xy gap-large row",
				}, {
					PlayerTile = React.createElement(Tile.Root, {
						FillDirection = Enum.FillDirection.Vertical,
						Size = playerTileSize + UDim2.fromOffset(0, tileOffset),
						isContained = true,
					}, {
						TileMedia = React.createElement(Tile.Media, {
							id = userId,
							type = MediaType.Avatar,
							shape = MediaShape.Square,
							background = {
								image = avatarBG,
								style = backgroundColorValues:map(function(values)
									return {
										-- selene: allow(roblox_internal_custom_color)
										Color3 = Color3.new(values.R, values.G, values.B),
									} :: Types.ColorStyleValue
								end),
							},
							onStateChanged = onStateChanged,
						}, {
							PlayerTileButtons = React.createElement(
								View,
								{
									ZIndex = 2,
									tag = "auto-y size-full-0 row gap-small align-x-right align-y-bottom anchor-bottom-right position-bottom-right",
								},
								if Flags.FoundationMigrateCryoToDash
									then Dash.map(buttons, renderButton)
									else Cryo.List.map(buttons, renderButton)
							),
						}),
						TileContent = React.createElement(Tile.Content, {
							spacing = tokens.Gap.XSmall,
						}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = user.DisplayName,
									isLoading = user.DisplayName == nil,
								},
								subtitle = {
									text = if user.Username then "@" .. user.Username else nil,
									isLoading = user.Username == nil,
								},
							}),
							TileFooter = React.createElement(Tile.Footer, {}, {
								RelevancyInfo = React.createElement(View, {
									tag = "row gap-xsmall auto-y size-full-0",
								}, {
									Icon = React.createElement(Icon, {
										name = relevancyInfo.icon,
										size = IconSize.Small,
									}),
									Text = React.createElement(Text, {
										textStyle = tokens.Color.Content.Emphasis,
										fontStyle = relevancyInfo.fontStyle,
										Text = relevancyInfo.text,
										TextXAlignment = Enum.TextXAlignment.Left,
										Size = UDim2.fromScale(1, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
									}),
								}),
							}),
						}),
					}),
					OldPlayerTile = React.createElement(Tile.Root, {
						FillDirection = Enum.FillDirection.Vertical,
						Size = UDim2.fromOffset(90, 115 + oldTileOffset),
					}, {
						TileMedia = React.createElement(Tile.Media, {
							id = userId,
							type = MediaType.AvatarHeadShot,
							shape = MediaShape.Circle,
							background = {
								image = avatarBG,
							},
						}, {
							-- Could be icon but it's a custom size
							React.createElement(Image, {
								tag = "position-bottom-right anchor-center-center size-700-700 bg-system-success stroke-emphasis radius-circle",
								Image = "icons/placeholder/placeholderOff",
							}),
						}),
						TileContent = React.createElement(Tile.Content, {
							spacing = tokens.Gap.XXSmall,
						}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = user.DisplayName,
									isLoading = user.DisplayName == nil,
								},
								subtitle = {
									text = relevancyInfo.text,
									-- Just keeping loading consistent
									isLoading = user.DisplayName == nil,
								},
								TextXAlignment = Enum.TextXAlignment.Center,
							}),
						}),
					}),
				})
			end,
		},
		Marketplace = {
			name = "Marketplace Tile (work in progress)",
			story = function(props)
				local tokens = useTokens()

				return React.createElement(View, {
					tag = "auto-xy gap-large row",
				}, {
					MarketplaceTile = React.createElement(Tile.Root, {
						FillDirection = Enum.FillDirection.Horizontal,
						Size = UDim2.new(0, 300, 0, 150),
					}, {
						TileContent = React.createElement(Tile.Content, {
							spacing = tokens.Gap.XSmall,
							LayoutOrder = 1,
						}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = "Try out studio!",
								},
								subtitle = {
									text = "Do something exciting in studio.",
								},
							}),
							TileFooter = React.createElement(Tile.Footer, {}, {}),
						}),
						TileMedia = React.createElement(Tile.Media, {
							id = props.controls.placeId,
							type = MediaType.Asset,
							shape = MediaShape.Square,
							LayoutOrder = 2,
						}),
					}),
				})
			end,
		},
	},

	controls = {
		fillDirection = { Enum.FillDirection.Vertical, Enum.FillDirection.Horizontal },
		itemId = { 21070012, 125378389, 14825332446, 3360689775 },
		isContained = true,
		shape = { MediaShape.Square :: any, MediaShape.Landscape, MediaShape.Portrait, MediaShape.Circle },
		title = "Build a Boat for Treasure",
		numTitleLines = 2,
		numSubtitleLines = 1,
		subtitle = "By Koi Koi Studios",
		placeId = { 2727067538, 1537690962 },
	},
}
