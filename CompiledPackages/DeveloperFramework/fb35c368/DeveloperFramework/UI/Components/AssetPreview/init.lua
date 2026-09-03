--[[
	Preview an asset before taking an action with it. Includes name, description, rating etc..
	The parent component handles fetching data. This is currently agnostic with regards to Rodux.

	Required Props:
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		ContextItem Analytics: An Analytics ContextItem, which is provided via withContext.
		table AssetData: The asset to preview.
		string ActionText: The action button text.
		callback OnClickAction: what to do when clicking the action button.
		callback OnClickCreator: what to do when clicking the creator's name.
			OnClickCreator(creatorName: string)
		callback OnClickContext: what to do when clicking the 'triple dot' button.
		UDim2 Size: The size of this component.

	Optional Props:
		string ActionSubText: Text that shows below the action button.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Favorites: props to pass to Favorites. Favorites will be hidden if this is not shown.
		Voting Voting: Table of Voting info. Voting will be hidden if this is not shown.
		boolean IsUninstalledPlugin: Whether or not the asset is an uninstalled plugin. Voting will be hidden if true.
		callback OnClickDescriptionLink: what to do after clicking a link on the Asset Description.
		callback OnVoteUp: called when the upvote button is clicked. Required if Voting is passed.
		callback OnVoteDown: called when the downvote button is clicked. Required if Voting is passed.
		Instance AssetInstance: The Instance of the asset to preview.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		UDim2 Position: The position of this component.
		number ZIndex: The render index of this component.
		boolean ActionEnabled: Whether the action button is enabled.
		boolean ShowRobuxIcon: Whether to show a Robux icon on the action button.
		number LayoutOrder: LayoutOrder of the component.
		table PurchaseFlow: PurchaseFlow dialog to show.
		table SuccessDialog: SuccessDialog dialog to show.
		boolean HideCreatorSearch: Whether to show creator search link
		callback OnClickReport: what to do when clicking the report/flag button.
		callback RenderFooter: Callback to render optional footer element for the preview.
		boolean CanFlagAsset: Whether or not the user can flag/report the asset.
		boolean IsPackage: Whether or not the asset is a package.
		Enum.UsageContext UsageContext: The UsageContext for previewed assets.
		boolean UseImageCarousel: If true, renders an image carousel for AssetRender using the media id's in assetData as well as the asset thumbnail.
		number ImageCarouselAutoAdvanceTimer: Auto-advance timer for the image carousel. Does nothing if UseImageCarousel is false.
		callback OnImageCarouselImageChanged: Function called when image is changed in the carousel. Does nothing if UseImageCarousel is false.
		number ImageCarouselTransparencyThreshold: If provided, will call the OnImageChange callback when the transparency of the image fading in is >= this threshold. Irrelevant if animations are disabled.
		callback OnSetImageCarouselImages: Function called when the image carousel images are set, which can happen either in didMount or didUpdate. Does nothing if UseImageCarousel is false.
		boolean ShouldMuteModelSounds: Whether or not sound object descendants should be muted for AssetRenderModel
		callback RenderSuggestions: callback that returns a component to render the suggestions container.
		string CreatingUniverseName: The name of the universe the asset was created in, accounting for locale
		number CreatingUniverseRootPlaceId: The id of the root place of the universe the asset was created in
		string CodeSummary: An AI-generated summary of the asset's scripts.
		boolean Hide3DPreviewForAssetsWithMeshes: Hides 3D preview for asset types that can have mesh dependencies while keeping TreeView available. Necessary for AssetPrivacy to stop Restricted dependencies from being fetched in AssetPreview.
]]
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")

local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Cryo = require(Framework.Parent.Cryo)
local getTextSize = require(Framework.Util.GetTextSize)
local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)
local StyleModifier = require(Framework.Util.StyleModifier)
local formatLocalDateTime = require(Framework.Util.formatLocalDateTime)
local Url = require(Framework.RobloxAPI.Url)
local withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local AssetRender = require(script.Parent.AssetRender)
local AssetPreviewDetails = require(script.Parent.AssetPreviewDetails)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Container = require(Framework.UI.Components.Container)
local HoverArea = require(Framework.UI.Components.HoverArea)
local Image = require(Framework.UI.Components.Image)
local LinkText = require(Framework.UI.Components.LinkText)
local Pane = require(Framework.UI.Components.Pane)
local TextLabelWithRobloxLinks = require(Framework.UI.Components.TextLabelWithRobloxLinks)
local ScrollingFrame = require(Framework.UI.Components.ScrollingFrame)
local Separator = require(Framework.UI.Components.Separator)
local TextLabel = require(Framework.UI.Components.TextLabel)
local Tooltip = require(Framework.UI.Components.Tooltip)
local TextWithLinks = require(Framework.UI.Components.TextWithLinks)

local getFFlagDFVideoStudioPreviewPermissionFix =
	require(Framework.SharedFlags.getFFlagDFVideoStudioPreviewPermissionFix)
local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()

local COMPONENT_NAME = "AssetPreview"
local ASSET_NAME_PADDING = 5

local AssetPreview = Roact.PureComponent:extend(COMPONENT_NAME)
export type Props = {
	ActionEnabled: boolean?,
	AnchorPoint: Vector2?,
	AssetData: any,
	AssetInstance: any?,
	ActionSubText: string?, -- Text that shows below the action button
	ActionText: string,
	CanFlagAsset: boolean?,
	CreatingUniverseRootPlaceId: number?,
	CreatingUniverseName: string?,
	CodeSummary: string?,
	Favorites: any?,
	HideCreatorSearch: boolean?,
	Hide3DPreviewForAssetsWithMeshes: boolean?,
	ImageCarouselAutoAdvanceTimer: number?,
	ImageCarouselTransparencyThreshold: number,
	IsPackage: boolean?,
	IsUninstalledPlugin: boolean?,
	LayoutOrder: number?,
	OnClickAction: any,
	OnClickCreator: (creatorName: string) -> any,
	OnClickContext: any,
	OnClickDescriptionLink: ((url: string) -> nil)?,
	OnClickReport: (() -> nil)?,
	OnImageCarouselImageChanged: ((newImageIndex: number, imageChangedFromAutoRotation: boolean) -> nil)?,
	OnSetImageCarouselImages: ((indexOfImageShown: number) -> nil)?,
	OnVoteDown: ((assetId: number, voting: any) -> nil)?,
	OnVoteUp: ((assetId: number, voting: any) -> nil)?,
	Position: UDim2?,
	PurchaseFlow: any?,
	RenderFooter: ((foooterProps: any) -> nil)?,
	RenderSuggestions: ((onClickAsset: () -> nil) -> any)?,
	ShouldMuteModelSounds: boolean?,
	ShowRobuxIcon: boolean?,
	Size: UDim2,
	SuccessDialog: any?,
	UseImageCarousel: boolean?,
	UsageContext: Enum.UsageContext?,
	Voting: any?,
	ZIndex: boolean?,
}

type _Props = Props & {
	AbsoluteSize: Vector2?, -- From withAbsoluteSize
	Stylizer: { [string]: any },
	Localization: any,
	Analytics: any,
	WrapperProps: any?, -- From withAbsoluteSize
}

function AssetPreview:init()
	self.containerRef = Roact.createRef()
	self.scrollingRef = Roact.createRef()

	self.state = {
		scrollingEnabled = true,
		absoluteContentSize = Vector2.new(0, 0),
	}

	self.onClickCreatorLink = function()
		return self.props.OnClickCreator(self.props.AssetData.Creator.Name)
	end

	self.onContentResize = function(absoluteContentSize)
		self:setState({
			absoluteContentSize = absoluteContentSize,
		})
	end

	self.onMouseEnterAssetRender = function()
		self:setState({
			scrollingEnabled = false,
		})
	end

	self.onMouseLeaveAssetRender = function()
		self:setState({
			scrollingEnabled = true,
		})
	end

	self.onClickActionButton = function(...)
		if self.props.ActionEnabled ~= false then
			return self.props.OnClickAction(...)
		end

		return
	end

	self.onPlaySound = function()
		self.props.Analytics:report("AssetPreviewPlaySound", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPauseSound = function()
		self.props.Analytics:report("AssetPreviewPauseSound", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPlayVideo = function()
		self.props.Analytics:report("AssetPreviewPlayVideo", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPauseVideo = function()
		self.props.Analytics:report("AssetPreviewPauseVideo", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onVoteUp = function()
		local props = self.props
		local assetId = props.AssetData.Asset.Id
		props.OnVoteUp(assetId, props.Voting)
	end

	self.onVoteDown = function()
		local props = self.props
		local assetId = props.AssetData.Asset.Id
		props.OnVoteDown(assetId, props.Voting)
	end

	self.resetCanvasPosition = function()
		if self.scrollingRef.current then
			self.scrollingRef.current.CanvasPosition = Vector2.new(0, 0)
		end
	end
end

--[[
	Depending on the endpoint used to fetch the asset data, the date may be in various fields
	e.g. CreatedRaw, Created (which itself may be a formatted or ISO8601 string)

	This function determines the best field to use from the asset data to generate a user-friendly
	local date & time string.
]]
function AssetPreview:formatLocalDateTimeForAsset(asset, key)
	assert(typeof(key) == "string", "Key must be a string")

	local localization = self.props.Localization
	local locale = localization:getLocale()

	local rawField = asset[key .. "Raw"]
	local field = asset[key]

	-- TODO DEVTOOLS-3378: Format as a "friendly" duration string
	local DATETIME_FORMAT_STRING = "L LTS"

	if typeof(rawField) == "string" then
		-- Of the form "/Date(1413925184257)/"
		local match = string.match(rawField, "^/Date%((%d+)%)/$")

		if match ~= nil then
			local timestamp = tonumber(match)
			local ok, result = pcall(function()
				return DateTime.fromUnixTimestampMillis(timestamp):FormatLocalTime(DATETIME_FORMAT_STRING, locale)
			end)

			if ok then
				return result
			else
				warn(result)
			end
		end
	end

	if field == nil then
		return ""
	end

	return formatLocalDateTime(field, DATETIME_FORMAT_STRING, locale)
end

--[[
	Store any additional info rows for the current asset to state
]]
function AssetPreview:updateAssetInfoRows()
	local asset = self.props.AssetData.Asset

	if asset.TypeId == Enum.AssetType.Video.Value then
		spawn(function()
			-- We need to create and parent a VideoFrame in order to make the video load
			-- and hence get its resolution.
			local video = Instance.new("VideoFrame")
			video.Visible = false
			if getFFlagDFVideoStudioPreviewPermissionFix() then
				video:SetStudioPreview(true)
			end
			video.Parent = self.containerRef:getValue()

			video.Loaded:Connect(function()
				if not self._isMounted then
					video:Destroy()
					return
				end

				local width = video.Resolution.X
				local height = video.Resolution.Y

				-- Resolution may be 0x0 due to https://jira.rbx.com/browse/CLI-42841 - avoid showing the resolution row if this is the case.
				if width ~= 0 or height ~= 0 then
					local localization = self.props.Localization
					self:setState({
						assetInfoRows = {
							{
								Label = localization:getProjectText(
									LOCALIZATION_PROJECT_NAME,
									COMPONENT_NAME,
									"Resolution"
								),
								Content = string.format("%dx%d", width, height),
							},
						},
					})
				end

				video:Destroy()
			end)

			if getFFlagDFVideoStudioPreviewPermissionFix() then
				video:SetStudioPreview(true)
			end
			video.Video = string.format("rbxassetid://%d", asset.Id)
		end)
	end
end

function AssetPreview:didMount()
	self._isMounted = true
	self:updateAssetInfoRows()
end

function AssetPreview:willUnmount()
	self._isMounted = false
end

function AssetPreview:didUpdate(previousProps)
	if previousProps.AssetData.Asset.Id ~= self.props.AssetData.Asset.Id then
		self:setState({
			assetInfoRows = Roact.None,
		})

		self:updateAssetInfoRows()
	end
end

local createInfoRows = function(layoutOrderIterator, infoRows, infoRowStyle)
	return Cryo.List.map(infoRows, function(item, i)
		local label = item.Label
		local content

		local labelSize = TextService:GetTextSize(
			label,
			infoRowStyle.Text.TextSize,
			infoRowStyle.Text.Font,
			Vector2.new(math.huge, math.huge)
		)
		if item.LinkAction then
			content = Roact.createElement(LinkText, {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.fromScale(1, 0),
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = item.Content,
				OnClick = item.LinkAction,
			})
		else
			content = Roact.createElement(TextLabel, {
				Size = UDim2.fromScale(1, 1),
				Style = infoRowStyle.RightText,
				Text = item.Content,
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
		end

		return Roact.createFragment({
			["InfoRow_" .. tostring(i)] = Roact.createElement(Container, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, labelSize.Y),
			}, {
				Label = Roact.createElement(TextLabel, {
					Size = UDim2.new(0, labelSize.X, 1, 0),
					Style = infoRowStyle.LeftText,
					Text = label,
				}),
				ContentWrapper = Roact.createElement(Container, {
					Position = UDim2.new(0, labelSize.X, 0, 0),
					Size = UDim2.new(1, -labelSize.X, 1, 0),
				}, {
					Content = content,
				}),
			}),
			["InfoRow_Separator_" .. tostring(i)] = i < #infoRows and Roact.createElement(Separator, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}) or nil,
		})
	end)
end

function AssetPreview:render()
	local props = self.props
	local state = self.state

	local style = self.props.Stylizer

	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local zIndex = props.ZIndex
	local size = props.Size or UDim2.new(1, 0, 1, 0)

	local absSize = state.absoluteContentSize

	local subTextSize
	if props.ActionSubText then
		subTextSize = getTextSize(
			props.ActionSubText,
			style.ButtonArea.ActionSubText.TextSize,
			nil,
			props.AbsoluteSize - Vector2.new(style.ScrollingFrame.ElementPadding * 2, 0)
		)
		subTextSize = Vector2.new(subTextSize.X, subTextSize.Y + style.ScrollingFrame.ElementPadding)
	else
		subTextSize = Vector2.new(0, 0)
	end

	-- Adjust height to avoid whitespace at the bottom of the content
	if size.Y.Offset > 0 and absSize.Y > 0 then
		local maxHeight = absSize.Y + style.ButtonArea.Size.Y.Offset + subTextSize.Y
		if maxHeight < size.Y.Offset then
			size = UDim2.new(size.X, UDim.new(0, maxHeight))
		end
	end

	local assetData = props.AssetData
	local assetGenres = assetData.Asset.AssetGenres
	local assetDescription = assetData.Asset.Description or ""

	local localization = props.Localization

	local infoRowStyle = style.ScrollingFrame.InfoRow

	local creatorLinkAction = self.onClickCreatorLink
	if props.HideCreatorSearch then
		creatorLinkAction = nil
	end

	local infoRows = Cryo.List.join(
		{
			{
				Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Creator"),
				Content = assetData.Creator.Name,
				LinkAction = creatorLinkAction,
			},
			{
				Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Genre"),
				Content = #assetGenres == 0
						and localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "AllGenre")
					or tostring(assetGenres[1]),
			},
		},
		state.assetInfoRows or {},
		{
			{
				Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Created"),
				Content = self:formatLocalDateTimeForAsset(assetData.Asset, "Created"),
			},
			{
				Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "LastUpdated"),
				Content = self:formatLocalDateTimeForAsset(assetData.Asset, "Updated"),
			},
		}
	)

	local layoutOrderIterator = LayoutOrderIterator.new()

	local scrollingFramePadding = style.ScrollingFrame.Padding
	local textMaxWidth = size.X.Offset
		- scrollingFramePadding.PaddingLeft.Offset
		- scrollingFramePadding.PaddingRight.Offset

	local canFlagAsset = props.CanFlagAsset
	local reportButtonWidth = if canFlagAsset then style.ScrollingFrame.FlagAsset.Size.X.Offset else 0
	local assetHeaderSpacing = style.ScrollingFrame.AssetHeader.Spacing

	local shouldShowContentAttribution = props.CreatingUniverseName and props.CreatingUniverseRootPlaceId

	local creatorText = if shouldShowContentAttribution
		then props.Localization:getProjectText(
			LOCALIZATION_PROJECT_NAME,
			COMPONENT_NAME,
			"ByUsernameWithContentAttribution",
			{
				-- link placeholders that will be replaced by the TextWithLinks component
				username = "{username}",
				universeName = "{universeName}",
			}
		)
		else props.Localization:getProjectText(
			LOCALIZATION_PROJECT_NAME,
			COMPONENT_NAME,
			"ByUsernameWithoutContentAttribution",
			{
				username = "{username}",
			}
		)

	return Roact.createElement(
		Pane,
		join({
			Active = true,
			AnchorPoint = anchorPoint,
			OnClick = function() end, -- This allows the container to prevent clicks propagating to elements behind it
			Position = position,
			Size = size,
			Style = "Box",
			ZIndex = zIndex,
			[Roact.Ref] = self.containerRef,
		}, props.WrapperProps),
		{
			CloseButton = Roact.createElement(Image, {
				Style = style.CloseButton,
			}),

			PurchaseFlow = props.PurchaseFlow,
			SuccessDialog = props.SuccessDialog,

			Contents = Roact.createElement(Container, {}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				ScrollingFrame = Roact.createElement(ScrollingFrame, {
					LayoutOrder = 1,
					AutoSizeCanvas = true,
					AutoSizeLayoutOptions = {
						SortOrder = Enum.SortOrder.LayoutOrder,
						-- Do NOT pass a non-zero Scale parameter here. There seems to be an engine bug where this causes AbsoluteContentSize
						-- to balloon, presumably because the concept of auto-resizing based on its own size (which has not yet been computed) is
						-- inherently self-referential.
						Padding = UDim.new(0, style.ScrollingFrame.ElementPadding),
					},
					OnCanvasResize = self.onContentResize,
					Size = UDim2.new(
						UDim.new(1, 0),
						UDim.new(1, 0) - style.ButtonArea.Size.Height - UDim.new(0, subTextSize.Y)
					),
					ScrollingEnabled = state.scrollingEnabled,
					[Roact.Ref] = self.scrollingRef,
				}, {
					Padding = Roact.createElement("UIPadding", scrollingFramePadding),

					AssetNameHeader = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Padding = {
							Bottom = ASSET_NAME_PADDING,
							Left = ASSET_NAME_PADDING,
							Right = 0,
							Top = ASSET_NAME_PADDING,
						},
						Size = UDim2.new(1, 0, 0, 0),
						Spacing = assetHeaderSpacing,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						AssetNameContainer = Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, -reportButtonWidth - assetHeaderSpacing, 0, 0),
							LayoutOrder = 1,
							Layout = Enum.FillDirection.Vertical,
						}, {
							AssetName = Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.Y,
								LayoutOrder = 1,
								Size = UDim2.new(1, 0, 0, 0),
								Style = style.ScrollingFrame.AssetName,
								Text = assetData.Asset.Name,
								TextWrapped = true,
							}),

							CreatorName = Roact.createElement(TextWithLinks, {
								TextProps = {
									Font = Enum.Font.SourceSans,
									TextSize = 18,
									TextXAlignment = Enum.TextXAlignment.Left,
								},
								AutomaticSize = Enum.AutomaticSize.Y,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								Text = creatorText,
								LinkMap = {
									["{username}"] = {
										LinkText = "@" .. assetData.Creator.Name,
										LinkCallback = function()
											GuiService:OpenBrowserWindow(
												Url.composeUrlToUserProfile(
													assetData.Creator.Id,
													assetData.Creator.Type
												)
											)
										end,
									},
									["{universeName}"] = {
										LinkText = props.CreatingUniverseName,
										LinkCallback = function()
											GuiService:OpenBrowserWindow(
												Url.composeUrlToUniverse(props.CreatingUniverseRootPlaceId)
											)
										end,
									},
								},
								LayoutOrder = 2,
								Size = UDim2.new(1, 0, 0, 0),
							}),
						}),

						FlagAsset = canFlagAsset and Roact.createElement("ImageButton", {
							BackgroundTransparency = 1,
							Image = style.ScrollingFrame.FlagAsset.Image,
							ImageColor3 = style.ScrollingFrame.FlagAsset.ImageColor3,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Size = style.ScrollingFrame.FlagAsset.Size,
							[Roact.Event.Activated] = self.props.OnClickReport,
						}, {
							Tooltip = Roact.createElement(Tooltip, {
								Text = self.props.Localization:getProjectText(
									LOCALIZATION_PROJECT_NAME,
									COMPONENT_NAME,
									"Report"
								),
							}),

							HoverArea = Roact.createElement(HoverArea, {
								Cursor = "PointingHand",
							}),
						}),
					}),

					AssetRender = Roact.createElement(AssetRender, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						-- AssetRender needs to be given an explicit width in order to calculate
						-- whether the tree view should layout below or beside the rendering
						Width = size.X.Offset
							- scrollingFramePadding.PaddingLeft.Offset
							- scrollingFramePadding.PaddingRight.Offset,
						-- Apply padding for the scroll bar which may appear on the right - the padding applied
						-- is slightly different to the thickness of the scrollbar to avoid a gap
						Padding = {
							Right = 7,
							Top = 0,
							Bottom = 0,
							Left = 0,
						},
						Margin = style.AssetRenderMargin,
						AssetData = assetData,
						AssetInstance = props.AssetInstance,
						ImageCarouselAutoAdvanceTimer = props.ImageCarouselAutoAdvanceTimer,
						OnImageCarouselImageChanged = props.OnImageCarouselImageChanged,
						ImageCarouselTransparencyThreshold = props.ImageCarouselTransparencyThreshold,
						OnSetImageCarouselImages = props.OnSetImageCarouselImages,
						OnMouseEnter = self.onMouseEnterAssetRender,
						OnMouseLeave = self.onMouseLeaveAssetRender,
						OnPlaySound = self.onPlaySound,
						OnPauseSound = self.onPauseSound,
						OnPlayVideo = self.onPlayVideo,
						OnPauseVideo = self.onPauseVideo,
						UsageContext = props.UsageContext,
						UseImageCarousel = props.UseImageCarousel,
						ShouldMuteModelSounds = props.ShouldMuteModelSounds,
						Hide3DPreviewForAssetsWithMeshes = props.Hide3DPreviewForAssetsWithMeshes,
					}),

					AssetPreviewDetails = if (
							props.Favorites
							or props.IsPackage
							or assetData.Asset.HasScripts
							or props.Voting
						)
						then Roact.createElement(AssetPreviewDetails, {
							Favorites = props.Favorites,
							HasScripts = assetData.Asset.HasScripts,
							IsPackage = props.IsPackage,
							LastUpdatedDate = assetData.Asset.Updated,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Voting = props.Voting,
							OnVoteUp = self.onVoteUp,
							OnVoteDown = self.onVoteDown,
							IsUninstalledPlugin = props.IsUninstalledPlugin,
						})
						else nil,

					AssetDescription = Roact.createElement(TextLabelWithRobloxLinks, {
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						OnClickLink = props.OnClickDescriptionLink,
						Size = UDim2.new(1, 0, 0, 0),
						Style = style.ScrollingFrame.AssetDescription,
						Text = assetDescription,
						TextWrapped = true,
					}),

					CodeSummaryContainer = if props.CodeSummary
						then Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.XY,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							BackgroundColor = infoRowStyle.CodeSummary.BackgroundColor,
							Layout = Enum.FillDirection.Vertical,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Padding = infoRowStyle.CodeSummary.Padding,
							Size = UDim2.fromScale(1, 0),
							Style = "CornerBox",
							Spacing = style.ScrollingFrame.ElementPadding,
						}, {
							ScriptText = Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.XY,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								RichText = true,
								Size = UDim2.fromScale(1, 0),
								Style = infoRowStyle.Text,
								Text = props.CodeSummary,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextWrapped = true,
							}),

							DisclaimerText = Roact.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.XY,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								Style = infoRowStyle.CodeSummary.DisclaimerText,
								Text = localization:getProjectText(
									LOCALIZATION_PROJECT_NAME,
									COMPONENT_NAME,
									"CodeSummaryDisclaimer"
								),
								Size = UDim2.fromScale(1, 0),
								TextWrapped = true,
							}),
						})
						else nil,

					InfoRows = if FFlagDevFrameworkFixMissingKeyErrors
						then Roact.createFragment(
							Cryo.List.foldLeft(
								createInfoRows(layoutOrderIterator, infoRows, infoRowStyle),
								function(acc, value, index)
									acc["InfoRowWrapper_" .. tostring(index)] = value
									return acc
								end,
								{}
							)
						)
						else Roact.createFragment(createInfoRows(layoutOrderIterator, infoRows, infoRowStyle)),

					Suggestions = if props.RenderSuggestions
						then Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Padding = style.ScrollingFrame.SuggestionsSection.Padding,
							Size = UDim2.new(1, 0, 0, 0),
						}, {
							SuggestionsWrapper = props.RenderSuggestions(self.resetCanvasPosition),
						})
						else nil,

					FooterSeparator = props.RenderFooter and Roact.createElement(Separator, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}),
					Footer = props.RenderFooter and Roact.createElement(props.RenderFooter, {
						Size = UDim2.fromOffset(textMaxWidth, 0),
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}),

					-- UIListLayout AbsoluteContentSize does not account for padding, so add a spacer div here.
					BottomSpacer = Roact.createElement(Container, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(
							1,
							0,
							0,
							style.ScrollingFrame.Padding.PaddingTop + style.ScrollingFrame.Padding.PaddingBottom
						),
					}),
				}),

				ButtonArea = Roact.createElement(Container, {
					LayoutOrder = 2,
					Size = style.ButtonArea.Size,
				}, {
					Padding = Roact.createElement(
						"UIPadding",
						if props.ActionSubText
							then join(style.ButtonArea.Padding, {
								PaddingBottom = UDim.new(0, style.ButtonArea.ActionSubText.SpacingTop),
							})
							else style.ButtonArea.Padding
					),

					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = style.ButtonArea.ElementPadding,
					}),

					ContextButton = Roact.createElement(
						Button,
						{
							LayoutOrder = 1,
							OnClick = props.OnClickContext,
							Size = style.ButtonArea.Context.Size,
							Style = style.ButtonArea.Context,
						},
						if FFlagDevFrameworkFixMissingKeyErrors
							then Roact.createElement(HoverArea, { Cursor = "PointingHand" })
							else {
								Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
							}
					),

					ActionButton = Roact.createElement(
						Button,
						{
							LayoutOrder = 2,
							OnClick = self.onClickActionButton,
							Text = props.ActionText,
							StyleModifier = props.ActionEnabled == false and StyleModifier.Disabled or nil,
							Style = props.ShowRobuxIcon and style.ButtonArea.ActionBuy or style.ButtonArea.Action,
							AnchorPoint = Vector2.new(1, 0),
							Position = UDim2.new(1, 0, 0, 0),
							Size = UDim2.new(
								1,
								-style.ButtonArea.Context.Size.X.Offset - style.ButtonArea.ElementPadding.Offset,
								0,
								style.ButtonArea.ActionButtonHeight
							),
						},
						if FFlagDevFrameworkFixMissingKeyErrors
							then Roact.createElement(HoverArea, { Cursor = "PointingHand" })
							else {
								Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
							}
					),
				}),

				ActionSubTextArea = if props.ActionSubText
					then Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 3,
						Padding = {
							Left = style.ScrollingFrame.ElementPadding,
							Right = style.ScrollingFrame.ElementPadding,
							Bottom = style.ScrollingFrame.ElementPadding,
						},
						Size = UDim2.new(1, 0, 0, subTextSize.Y),
					}, {
						ActionSubText = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, 0, 0, 0),
							Text = props.ActionSubText,
							TextColor = style.ButtonArea.ActionSubText.TextColor,
							TextSize = style.ButtonArea.ActionSubText.TextSize,
							TextWrapped = true,
						}),
					})
					else nil,
			}),
		}
	)
end

AssetPreview = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AssetPreview)

return withAbsoluteSize(AssetPreview)
