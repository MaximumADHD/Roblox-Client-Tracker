local UserService = game:GetService("UserService")
local MarketplaceService = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local _, InsertService = pcall(function()
	return game:GetService("InsertService")
end)
local _, StudioService = pcall(function()
	return game:GetService("StudioService")
end)

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Otter = require(Packages.Otter)

local Tile = require(Foundation.Components.Tile)
local MediaType = require(Foundation.Enums.MediaType)
local Radius = require(Foundation.Enums.Radius)
local Theme = require(Foundation.Enums.Theme)

local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local IconSize = require(Foundation.Enums.IconSize)
local IconButton = require(Foundation.Components.IconButton)

local Button = require(Foundation.Components.Button)
local ButtonSize = require(Foundation.Enums.ButtonSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local ObjectViewport = require(script.Parent.ObjectViewport)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

-- local ObjectViewport = require(script.Parent.ObjectViewport)

local PLACE_TO_UNIVERSE = {
	[2727067538] = 985731078,
	[1537690962] = 601130232,
}

local playerTileSize = UDim2.fromOffset(150, 225)
local itemTileSize = UDim2.fromOffset(150, 230)
local experienceTileSize = UDim2.fromOffset(150, 250)
local wideTileSize = UDim2.fromOffset(300, 280)

local buttons = {
	{
		icon = "icons/actions/friends/friendpending",
		onActivated = function()
			print("Button Pressed")
		end,
		isSecondary = true,
	},
}

local function thumbnailOverlayComponents(props, tokens, mouseEntered, setMouseEntered)
	local outerButtonPadding = tokens.Padding.Small :: number
	local iconSize = IconSize.Medium
	local buttonHeight = tokens.Semantic.Icon.Size[iconSize] :: number -- TODO(tokens): Use non-semantic

	local onInputStateChanged = React.useCallback(function(newState: ControlState)
		setMouseEntered(newState == ControlState.Hover)
	end, { setMouseEntered })

	return React.createElement(Image, {
		onStateChanged = onInputStateChanged,
		Image = "component_assets/vignette_246",
		imageStyle = {
			Color3 = tokens.Color.ActionSubEmphasis.Foreground.Color3,
			Transparency = mouseEntered and 0.6 or 1,
		},
		stateLayer = { affordance = StateLayerAffordance.None },
		tag = "size-full radius-medium",
	}, {
		ButtonBackgroundGradient = not Cryo.isEmpty(buttons) and React.createElement(View, {
			backgroundStyle = {
				Transparency = 0,
			},
			Size = UDim2.new(1, 0, 0, buttonHeight + outerButtonPadding * 2),
			tag = "radius-medium anchor-bottom-left position-bottom-left",
		}, {
			UIGradient = React.createElement("UIGradient", {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, tokens.Color.Shift.Shift_200.Color3),
					ColorSequenceKeypoint.new(1, tokens.Color.Shift.Shift_200.Color3),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(1, tokens.Color.Shift.Shift_200.Transparency),
				}),
			}),
		}),
		ButtonContainer = React.createElement(View, {
			ZIndex = 2,
			tag = "padding-small size-full",
		}, {
			PlayerTileButtons = React.createElement(
				View,
				{
					ZIndex = 2,
					tag = "auto-y size-full-0 row gap-small align-x-right anchor-bottom-right position-bottom-right",
				},
				Cryo.List.map(buttons, function(button)
					return React.createElement(IconButton, {
						onActivated = button.onActivated,
						isDisabled = button.isDisabled,
						size = iconSize :: IconSize.IconSize,
						icon = button.icon,
					})
				end)
			),
		}),
	})
end

local function getPlayerCount(tokens)
	return React.createElement(Text, {
		textStyle = tokens.Color.Content.Default,
		fontStyle = tokens.Typography.TitleLarge,
		Text = "82% 👍 92k 👤",
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	})
end

return {
	name = "Tile",
	stories = {
		Configurable = {
			name = "Configurable Tile",
			story = function(props)
				local tokens = useTokens()

				return React.createElement(Tile.Root, {
					fillDirection = props.controls.fillDirection,
					fillBehavior = props.controls.fillBehavior,
					Size = if props.controls.fillDirection == Enum.FillDirection.Vertical
						then UDim2.fromOffset(150, 275)
						else UDim2.fromOffset(300, 150),
					spacing = tokens.Gap.Small,
					backgroundStyle = tokens.Color.Shift.Shift_200,
				}, {
					Corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, tokens.Radius.Medium),
					}),
					TileMedia = React.createElement(Tile.Media, {
						mediaId = props.controls.itemId,
						mediaType = MediaType.Asset,
						aspectRatio = props.controls.aspectRatio,
						background = tokens.Color.Shift.Shift_200,
						radius = Radius.Medium,
					}),
					TileContent = React.createElement(Tile.Content, {
						spacing = tokens.Gap.XSmall,
						padding = tokens.Padding.Small,
					}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = props.controls.title,
								isLoading = props.controls.title == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = props.controls.numLines,
							},
							subtitle = {
								text = props.controls.subtitle,
								isLoading = props.controls.subtitle == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
							},
							spacing = tokens.Gap.Small,
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

				return React.createElement(Tile.Root, {
					fillDirection = Enum.FillDirection.Horizontal,
					fillBehavior = FillBehavior.Fit,
					spacing = tokens.Gap.Small,
					backgroundStyle = tokens.Color.Shift.Shift_200,
					-- Add negative size to offset border
					Size = UDim2.fromOffset(300, 150) - UDim2.fromOffset(2, 2),
				}, {
					UIStroke = React.createElement("UIStroke", {
						Color = tokens.Color.Stroke.Emphasis.Color3,
						Transparency = tokens.Color.Stroke.Emphasis.Transparency,
						Thickness = 1,
					}),
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, tokens.Radius.Medium),
					}),
					TileMedia = React.createElement(Tile.Media, {
						aspectRatio = 1,
						radius = Radius.Medium,
						background = "component_assets/itemBG_"
							.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
					}, {
						if model
							then React.createElement(ObjectViewport, {
								model = model,
								rotationSpeed = 0.01,
							})
							else nil,
					}),
					TileContent = React.createElement(Tile.Content, {
						spacing = tokens.Gap.XXSmall,
						padding = tokens.Padding.Small,
					}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = item.Name,
								isLoading = item.Name == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = 2,
							},
							subtitle = {
								text = item.PriceText,
								isLoading = item.PriceText == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
							},
							spacing = tokens.Gap.Small,
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

				local size, updateSize = React.useBinding(wideTileSize)

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

				local paddingMotorRef = React.useRef(nil :: Otter.SingleMotor?)
				React.useEffect(function()
					local paddingMotor = Otter.createSingleMotor(0)
					paddingMotorRef.current = paddingMotor
					paddingMotor:start()

					paddingMotor:onStep(function(newValue)
						updateSize(wideTileSize + UDim2.fromOffset(newValue, newValue))
					end)

					return function()
						paddingMotor:destroy()
					end
				end, {})

				React.useEffect(function()
					local newPadding = if isHoveringWide then tokens.Padding.Small else 0
					if paddingMotorRef.current then
						paddingMotorRef.current:setGoal(Otter.spring(newPadding, { frequency = 4 }))
					end
				end, { isHoveringWide })

				return React.createElement(View, {
					tag = "auto-xy gap-large padding-small row",
				}, {
					Tile = React.createElement(Tile.Root, {
						fillDirection = Enum.FillDirection.Vertical,
						fillBehavior = FillBehavior.Fill,
						spacing = tokens.Gap.Small,
						backgroundStyle = tokens.Color.Shift.Shift_200,
						onStateChanged = onTileStateChanged,
						-- Add negative size to offset border
						Size = experienceTileSize - UDim2.fromOffset(2, 2),
						LayoutOrder = 1,
					}, {
						UIStroke = React.createElement("UIStroke", {
							Color = tokens.Color.Stroke.Emphasis.Color3,
							Transparency = tokens.Color.Stroke.Emphasis.Transparency,
							Thickness = 1,
						}),
						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(0, tokens.Radius.Medium),
						}),
						TileMedia = React.createElement(Tile.Media, {
							mediaId = if isHovering then placeId else universeId,
							mediaType = if isHovering then MediaType.Asset else MediaType.GameIcon,
							aspectRatio = if isHovering then 1.7778 else 1,
							radius = Radius.Medium,
							background = "component_assets/avatarBG_"
								.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
						}),
						TileContent = React.createElement(Tile.Content, {
							spacing = tokens.Gap.Small,
							padding = tokens.Padding.Small,
						}, {
							TileHeader = React.createElement(Tile.Header, {
								title = {
									text = place.Name,
									isLoading = place.Name == nil,
									fontStyle = tokens.Typography.HeadingSmall,
									numLines = 2,
								},
								spacing = tokens.Gap.Small,
							}),
							TileFooter = React.createElement(Tile.Footer, {}, {
								getPlayerCount(tokens),
							}),
							TileActions = React.createElement(Tile.Actions, {
								Visible = isHovering,
							}, {
								Button = React.createElement(Button, {
									text = "Play",
									size = ButtonSize.Small,
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
							fillDirection = Enum.FillDirection.Vertical,
							fillBehavior = FillBehavior.Fill,
							spacing = tokens.Gap.Small,
							padding = tokens.Padding.Small,
							backgroundStyle = if isHoveringWide then tokens.Color.Shift.Shift_200 else nil,
							onStateChanged = onWideTileStateChanged,
							Size = size,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
						}, {
							UICorner = React.createElement("UICorner", {
								CornerRadius = UDim.new(0, tokens.Radius.Medium),
							}),
							TileMedia = React.createElement(Tile.Media, {
								mediaId = universeId,
								mediaType = MediaType.GameIcon,
								aspectRatio = 1.7778,
								radius = Radius.Medium,
								background = "component_assets/avatarBG_"
									.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
							}),
							TileContent = React.createElement(Tile.Content, {
								spacing = tokens.Gap.Small,
							}, {
								TileHeader = React.createElement(Tile.Header, {
									title = {
										text = place.Name,
										isLoading = place.Name == nil,
										fontStyle = tokens.Typography.TitleLarge,
										numLines = 2,
									},
									subtitle = "82% 👍 92k 👤",
									spacing = tokens.Gap.Small,
								}),
								TileActions = React.createElement(Tile.Actions, {
									Visible = isHoveringWide,
								}, {
									Button = React.createElement(Button, {
										text = "Play",
										size = ButtonSize.Small,
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
							fillDirection = Enum.FillDirection.Vertical,
							fillBehavior = FillBehavior.Fill,
							spacing = tokens.Gap.Small,
							padding = tokens.Padding.Small,
							backgroundStyle = tokens.Color.Shift.Shift_200,
							Size = wideTileSize,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
						}, {
							UICorner = React.createElement("UICorner", {
								CornerRadius = UDim.new(0, tokens.Radius.Medium),
							}),
							TileMedia = React.createElement(Tile.Media, {
								mediaId = universeId,
								mediaType = MediaType.GameIcon,
								aspectRatio = 1.7778,
								radius = Radius.Medium,
								background = "component_assets/avatarBG_"
									.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
							}),
							TileContent = React.createElement(Tile.Content, {
								spacing = tokens.Gap.Small,
							}, {
								TileHeader = React.createElement(Tile.Header, {
									title = {
										text = place.Name,
										isLoading = place.Name == nil,
										fontStyle = tokens.Typography.TitleLarge,
										numLines = 2,
									},
									subtitle = "82% 👍 92k 👤",
									spacing = tokens.Gap.Small,
								}),
								TileActions = React.createElement(Tile.Actions, {}, {
									Button = React.createElement(Button, {
										text = "Play",
										size = ButtonSize.Small,
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

				return React.createElement(Tile.Root, {
					fillDirection = Enum.FillDirection.Vertical,
					fillBehavior = FillBehavior.Fit,
					spacing = tokens.Gap.Small,
					backgroundStyle = tokens.Color.Shift.Shift_200,
					-- Add negative size to offset border
					Size = itemTileSize - UDim2.fromOffset(2, 2),
				}, {
					UIStroke = React.createElement("UIStroke", {
						Color = tokens.Color.Stroke.Emphasis.Color3,
						Transparency = tokens.Color.Stroke.Emphasis.Transparency,
						Thickness = 1,
					}),
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, tokens.Radius.Medium),
					}),
					TileMedia = React.createElement(Tile.Media, {
						mediaId = itemId,
						mediaType = MediaType.Asset,
						aspectRatio = 1,
						radius = Radius.Medium,
						background = "component_assets/itemBG_"
							.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
					}),
					TileContent = React.createElement(Tile.Content, {
						spacing = tokens.Gap.XXSmall,
						padding = tokens.Padding.Small,
					}, {
						TileHeader = React.createElement(Tile.Header, {
							title = {
								text = item.Name,
								isLoading = item.Name == nil,
								fontStyle = tokens.Typography.HeadingSmall,
								numLines = 2,
							},
							subtitle = {
								text = item.PriceText,
								isLoading = item.PriceText == nil,
								fontStyle = tokens.Typography.BodyLarge,
								colorStyle = tokens.Color.Content.Muted,
							},
							spacing = tokens.Gap.Small,
						}),
					}),
				})
			end,
		},
		Player = {
			name = "Player Tile",
			story = function(props)
				local tokens = useTokens()

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

				return React.createElement(View, {
					tag = "auto-xy gap-large row",
				}, {
					PlayerTile = React.createElement(Tile.Root, {
						fillDirection = Enum.FillDirection.Vertical,
						fillBehavior = FillBehavior.Fit,
						spacing = tokens.Gap.Small,
						Size = playerTileSize,
					}, {
						TileMedia = React.createElement(Tile.Media, {
							mediaId = userId,
							mediaType = MediaType.Avatar,
							aspectRatio = 1,
							radius = Radius.Medium,
							background = "component_assets/avatarBG_"
								.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
						}, {
							thumbnailOverlayComponents(props, tokens, mouseEntered, setMouseEntered),
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
									tag = "row gap-xsmall auto-y items-y-center size-full-0",
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
						fillDirection = Enum.FillDirection.Vertical,
						fillBehavior = FillBehavior.Fit,
						spacing = tokens.Gap.Small,
						Size = UDim2.fromOffset(90, 115),
					}, {
						TileMedia = React.createElement(Tile.Media, {
							mediaId = userId,
							mediaType = MediaType.AvatarHeadShot,
							aspectRatio = 1,
							radius = Radius.Circle,
							background = "component_assets/avatarBG_"
								.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
						}, {
							-- Could be icon but it's a custom size
							React.createElement(Image, {
								Image = "icons/placeholder/placeholderOff",
								backgroundStyle = tokens.Color.System.Success,
								Size = UDim2.fromOffset(28, 28),
								Position = UDim2.fromScale(1, 1),
								AnchorPoint = Vector2.new(1, 1),
							}, {
								UICorner = React.createElement("UICorner", {
									CornerRadius = UDim.new(0, tokens.Radius.Circle),
								}),
							}),
							UIStroke = React.createElement("UIStroke", {
								Color = tokens.Color.Stroke.Emphasis.Color3,
								Transparency = tokens.Color.Stroke.Emphasis.Transparency,
								Thickness = 2,
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
						fillDirection = Enum.FillDirection.Horizontal,
						fillBehavior = FillBehavior.Fit,
						spacing = tokens.Gap.Small,
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
							mediaId = props.controls.placeId,
							mediaType = MediaType.Asset,
							aspectRatio = 1,
							radius = Radius.Medium,
							background = "component_assets/avatarBG_"
								.. if tokens.Config.Theme.Name == Theme.Dark then "dark" else "light",
							LayoutOrder = 2,
						}),
					}),
				})
			end,
		},
	},

	controls = {
		fillDirection = { Enum.FillDirection.Vertical, Enum.FillDirection.Horizontal },
		fillBehavior = {
			FillBehavior.Fill,
			FillBehavior.Fit,
		} :: { FillBehavior },
		itemId = { 21070012, 125378389, 14825332446, 3360689775 },
		aspectRatio = 1,
		title = "Build a Boat for Treasure",
		numLines = 2,
		subtitle = "By Koi Koi Studios",
		placeId = { 2727067538, 1537690962 },
	},
}
