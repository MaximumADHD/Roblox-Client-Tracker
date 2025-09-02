local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)
local ScrollingListTable = UIBlox.App.Table.ScrollingListTable
local CellHeadDetail = UIBlox.App.Table.CellHeadDetail
local Cell = UIBlox.App.Table.Cell
local CellTailDescription = UIBlox.App.Table.CellTailDescription
local ModalWindow = UIBlox.App.Dialog.Modal.ModalWindow
local Dash = require(CorePackages.Packages.Dash)
local Cryo = require(CorePackages.Packages.Cryo)
local useStyle = UIBlox.Core.Style.useStyle
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local OpenTypeSupport = UIBlox.Utility.OpenTypeSupport

local Images = UIBlox.App.ImageSet.Images

local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagModalSelectorCloseButton = require(root.Flags.GetFFlagModalSelectorCloseButton)
local GetFFlagLuaAppEnableOpenTypeSupport = SharedFlags.GetFFlagLuaAppEnableOpenTypeSupport
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local Responsive
local UIManager
local PanelType
if isInExperienceUIVREnabled then
	Responsive = require(CorePackages.Workspace.Packages.Responsive)
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
	PanelType = VrSpatialUi.Constants.PanelType
end

type Props = {
	isShown: boolean,
	cellData: {
		{
			label: string,
			subLabel: string?,
			-- Not used for display.  Used for identifying the cell being selected
			-- without inferring from display fields such as label and subLabel.
			identifier: string?,
		}
	},
	viewportHeight: number,
	viewportWidth: number,
	onSelect: (selectedLabel: string, selectedSublabel: string?, identifier: string?) -> (),
	onClose: () -> (),
}

local TABLE_CELL_HEIGHT = 40
local MODAL_PADDING = 12

local function ModalBaseSelectorDialog(props: Props)
	local style = useStyle()
	local theme = style.Theme

	local HEADER_HEIGHT = style.Tokens.Global.Space_500 -- 40 for desktop, 60 for console
	local listTableHeight
	if isInExperienceUIVREnabled then
		local isSpatial = Responsive.useIsSpatial()
		local viewHeight = props.viewportHeight
		if isSpatial then
			local panelObject = UIManager.getInstance():getPanelObject(PanelType.MoreMenu) :: SurfaceGui
			viewHeight = panelObject.AbsoluteSize.Y
		end
		listTableHeight = math.min(#props.cellData * TABLE_CELL_HEIGHT, viewHeight - 80 - MODAL_PADDING * 2)
	else
		listTableHeight = math.min(#props.cellData * TABLE_CELL_HEIGHT, props.viewportHeight - 80 - MODAL_PADDING * 2)
	end

	local modalContentHeight = listTableHeight + MODAL_PADDING * 2
	local listTablePaddingTop = 0
	local selectorFrameOffset = 0

	local modalContentChildren = {
		Paddings = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, MODAL_PADDING),
			PaddingBottom = UDim.new(0, MODAL_PADDING),
			PaddingLeft = UDim.new(0, MODAL_PADDING),
			PaddingRight = UDim.new(0, MODAL_PADDING),
		}),
	}

	if GetFFlagModalSelectorCloseButton() then
		-- Adding an extra header with a close button for an alternative to close the modal
		modalContentHeight = listTableHeight + MODAL_PADDING * 4 + HEADER_HEIGHT
		listTablePaddingTop = MODAL_PADDING
		selectorFrameOffset = -MODAL_PADDING * 3
		modalContentChildren = Cryo.Dictionary.join(modalContentChildren, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = 0,
			}),
			Header = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
				}),
				CloseButton = React.createElement(IconButton, {
					size = UDim2.fromOffset(0, 0),
					iconSize = IconSize.Medium,
					icon = Images["icons/navigation/close"],
					onActivated = function()
						props.onClose()
					end,
				}),
			}),
			Divider = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = style.Theme.Divider.Transparency,
				BackgroundColor3 = style.Theme.Divider.Color,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}),
		})
	end

	modalContentChildren = Cryo.Dictionary.join(modalContentChildren, {
		SelectorFrame = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, selectorFrameOffset),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			Paddings = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, listTablePaddingTop),
			}),
			ModalSelector = React.createElement(ScrollingListTable, {
				selectable = false, -- prevent gamepad focus from focusing on this component
				size = UDim2.new(1, 0, 1, 0),
				cells = Dash.map(props.cellData, function(data)
					return React.createElement(Cell, {
						head = React.createElement(CellHeadDetail, {
							labelText = data.label,
							subLabelText = data.subLabel,
							openTypeFeatures = if GetFFlagLuaAppEnableOpenTypeSupport()
								then OpenTypeSupport:getUserNameStylisticAlternative()
								else nil,
						}),
						tail = React.createElement(CellTailDescription, {
							text = "",
							showArrow = false,
						}),
						background = React.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
						}),
						size = UDim2.new(1, 0, 0, TABLE_CELL_HEIGHT),
						userInteractionEnabled = true,
						onActivated = function()
							props.onSelect(data.label, data.subLabel, data.identifier)
							props.onClose()
						end,
					})
				end),
			}),
		}),
	})

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		Overlay = if props.isShown
			then React.createElement("TextButton", {
				Selectable = false, -- prevent gamepad focus from focusing on this component
				AutoButtonColor = false,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.Overlay.Color,
				BackgroundTransparency = theme.Overlay.Transparency,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ZIndex = 10,
				Text = "",
				[React.Event.Activated] = function()
					props.onClose()
				end,
			}, {
				Modal = React.createElement(ModalWindow, {
					isFullHeight = false,
					screenSize = Vector2.new(props.viewportWidth, props.viewportHeight),
				}, {
					ModalContent = React.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, modalContentHeight),
						BackgroundTransparency = 0,
						BackgroundColor3 = theme.BackgroundDefault.Color,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 20),
					}, modalContentChildren),
				}),
			})
			else nil,
	})
end

function DialogWrapper(props)
	return React.createElement(CoreScriptsRootProvider, {}, {
		FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
			isIsolated = true,
			isAutoFocusRoot = true,
		}, {
			DialogContainer = React.createElement(ModalBaseSelectorDialog, props),
		}),
	})
end

return DialogWrapper
