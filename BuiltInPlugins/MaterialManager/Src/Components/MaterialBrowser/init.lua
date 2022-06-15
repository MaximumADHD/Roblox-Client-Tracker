local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local join = Framework.Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer
local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local SplitPane = UI.SplitPane

local Components = Plugin.Src.Components

local MaterialGrid = require(Components.MaterialBrowser.MaterialGrid)
local SideBar = require(Components.MaterialBrowser.SideBar)
local TopBar = require(Components.MaterialBrowser.TopBar)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerDetailsOverhaul = require(Flags.getFFlagMaterialManagerDetailsOverhaul)
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local MaterialDetails = if getFFlagMaterialManagerDetailsOverhaul() and getFFlagMaterialManagerGlassNeonForceField() then
	require(Components.MaterialBrowser.MaterialDetails)
	else
	require(Components.MaterialBrowser.DEPRECATED_MaterialDetails)

export type Props = {
	OpenPrompt: (type: _Types.MaterialPromptType) -> ()
}

type _Props = Props & {
	AbsoluteSize: Vector2,
	Material: _Types.Material,
	MaterialTileSize: number,
	Stylizer: any,
	ViewType: string,
	WrapperProps: any,
}

type _Style = {
	BackgroundColor: Color3,
	ChevronLeft: string,
	ChevronRight: string,
	IconColor: Color3,
	IconSize: UDim2,
	MainViewSize: UDim2,
	MaterialDetailsSize: UDim2,
	MaterialDetailsWidth: number,
	MaterialGridSize: UDim2,
	MaterialTileWidth: number,
	MaterialViewSize: UDim2,
	MinListWidth: number,
	MinSideBarWidth: number,
	Padding: number,
	SideBarSize: UDim2,
	TopBarSize: UDim2,
}

local MaterialBrowser = Roact.PureComponent:extend("MaterialBrowser")

function MaterialBrowser:init()
	self.onHideSidebarButtonClicked = function()
		self:setState(function(state)
			return {
				sideBarSize = UDim.new(0, 0),
				lastSideBarSize = state.sideBarSize,
				sideBarVisible = false,
				clickedHide = true,
			}
		end)
	end

	self.onSidebarButtonClicked = function()
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialBrowser
		local state = self.state

		local freeSize = props.AbsoluteSize.X 
		if props.Material then
			freeSize = props.AbsoluteSize.X - style.MaterialDetailsWidth
		end

		local materialTileWidth = if props.ViewType == "Grid" then props.MaterialTileSize + style.Padding * 2 else style.MinListWidth
		local newSideBarSize = state.lastSideBarSize
		if freeSize - state.lastSideBarSize.Offset < materialTileWidth then
			newSideBarSize = UDim.new(0, style.MinSideBarWidth)
		end

		self:setState(function(state)
			return {
				sideBarSize = newSideBarSize,
				lastSideBarSize = newSideBarSize,
				sideBarVisible = true,
				clickedHide = false,
			}
		end)
	end

	self.onDetailsButtonClicked = function()
		self:setState(function(state)
			return {
				detailsVisible = true,
			}
		end)
	end

	self.onHideDetailsButtonClicked = function()
		self:setState(function(state)
			return {
				detailsVisible = false,
			}
		end)
	end

	self.state = {
		detailsVisible = true,
		sideBarSize = UDim.new(0, 200),
		lastSideBarSize = UDim.new(0, 200),
		sideBarVisible = true,
		clickedHide = false,
	}
end

function MaterialBrowser:didUpdate(prevProps, prevState)
	-- Talk to design about whether this is really needed or not, we should not have this much seemingly arbitrary logic in didUpdate
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialBrowser
	local state = self.state

	local detailsVisible = props.Material and state.detailsVisible
	local changeAbsoluteSize = prevProps.AbsoluteSize.X ~= props.AbsoluteSize.X
	local materialViewWidth = (if detailsVisible then style.MaterialDetailsWidth else 0) + (if props.ViewType == "Grid" then props.MaterialTileSize + style.Padding * 2 else style.MinListWidth)
	local materialTileWidth = if props.ViewType == "Grid" then props.MaterialTileSize + style.Padding * 2 else style.MinListWidth

	-- Case 1: when material is just selected or material was already selected and window size shrinks -> 
	-- Check to update the SideBar size or hide it
	if (detailsVisible and changeAbsoluteSize) and prevState.sideBarVisible then
		if (prevProps.AbsoluteSize.X - prevState.sideBarSize.Offset) < materialViewWidth then
			if prevProps.AbsoluteSize.X - materialViewWidth >= style.MinSideBarWidth then
				self:setState(function(state)
					return {
						sideBarSize = UDim.new(0, prevProps.AbsoluteSize.X - materialViewWidth),
						lastSideBarSize = state.sideBarSize,
						sideBarVisible = true,
						clickedHide = false,
					}
				end)
			else -- needHideSideBar
				self:setState(function(state)
					return {
						sideBarSize = UDim.new(0, 0),
						lastSideBarSize = state.sideBarSize,
						sideBarVisible = false,
						clickedHide = false,
					}
				end)
			end
		end
	end

	-- Case 2: when material is selected and window size expands -> 
	-- Check to automatically show SideBar
	if (detailsVisible and changeAbsoluteSize) and not prevState.sideBarVisible and not prevState.clickedHide then
		if (prevProps.AbsoluteSize.X - state.lastSideBarSize.Offset) > materialViewWidth then
			self:setState(function(state)
				return {
					lastSideBarSize = state.lastSideBarSize,
					sideBarSize = state.lastSideBarSize,
					sideBarVisible = true,
					clickedHide = false,
				}
			end)
		end
	end

	-- Case 3: when no material is selected and window size shrinks -> 
	-- Check to automatically resize (decrease) SideBar or hide it
	if not detailsVisible and changeAbsoluteSize and prevState.sideBarVisible then
		if props.AbsoluteSize.X - prevState.sideBarSize.Offset < materialTileWidth then
			if props.AbsoluteSize.X - materialTileWidth >= style.MinSideBarWidth then
				self:setState(function(state)
					return {
						lastSideBarSize = state.sideBarSize,
						sideBarSize = UDim.new(0, props.AbsoluteSize.X - materialTileWidth),
						sideBarVisible = true,
						clickedHide = false,
					}
				end)
			else
				self:setState(function(state)
					return {
						lastSideBarSize = state.sideBarSize,
						sideBarSize = UDim.new(0, 0),
						sideBarVisible = false,
						clickedHide = false,
					}
				end)
			end
		end
	end

	-- Case 4: when material is closed -> 
	-- Check to automatically show SideBar
	if not detailsVisible and not prevState.sideBarVisible and not prevState.clickedHide then
		if (props.AbsoluteSize.X - state.lastSideBarSize.Offset) >= materialTileWidth then
			self:setState(function(state)
				return {
					lastSideBarSize = state.lastSideBarSize,
					sideBarSize = state.lastSideBarSize,
					sideBarVisible = true,
					clickedHide = false,
				}
			end)
		end
	end
end

function MaterialBrowser:render()
	local props: _Props = self.props
	local state = self.state
	local style: _Style = props.Stylizer.MaterialBrowser

	local material: _Types.Material = props.Material

	local sideBarSize = self.state.sideBarSize
	local detailsVisible = state.detailsVisible and material

	local materialViewWidth = (if detailsVisible then style.MaterialDetailsWidth else 0) + (if props.ViewType == "Grid" then props.MaterialTileSize + style.Padding * 2 else style.MinListWidth)
	local materialTileWidth = if props.ViewType == "Grid" then props.MaterialTileSize + style.Padding * 2 else style.MinListWidth
	local sizes = { sideBarSize, UDim.new(0, props.AbsoluteSize.X - sideBarSize.Offset) }

	local showMaterialGrid = props.AbsoluteSize.X - sideBarSize.Offset - (if detailsVisible then style.MaterialDetailsWidth else 0) > materialTileWidth
	local showSideBar = state.sideBarVisible or (detailsVisible and props.AbsoluteSize.X < style.MaterialDetailsWidth + style.MinSideBarWidth)

	local minSizeMaterialGrid = if not material then materialTileWidth else materialViewWidth

	return Roact.createElement(Pane, join({
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor = Color3.new(0, 255, 0),
	}, props.WrapperProps), {

		TopBar = Roact.createElement(TopBar, {
			OpenPrompt = props.OpenPrompt,
			Size = style.TopBarSize,
			BackgroundColor = Color3.new(255, 0, 0),
		}),

		Pane = Roact.createElement(SplitPane, {
			ClampSize = true,
			Sizes = sizes,
			Layout = Enum.FillDirection.Horizontal,
			MinSizes = { UDim.new(0, 90), UDim.new(0, minSizeMaterialGrid) },
			OnSizesChange = function(sizes)
				if state.sideBarVisible then
					self:setState(function(state)
						return {
							lastSideBarSize = state.sideBarSize,
							sideBarSize = sizes[1],
						}
					end)
				end
			end,
			Size = style.MainViewSize,
			BackgroundColor3 = Color3.new(0, 0, 255),		
		}, {
			Roact.createElement(Pane, {
				LayoutOrder = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				SideBar = if state.sideBarVisible then Roact.createElement(SideBar, {
					Size = UDim2.fromScale(1, 1),
				}) else nil,
				HideButton = if state.sideBarVisible then Roact.createElement(Button, {
					AnchorPoint = Vector2.new(1, 1),
					LayoutOrder = 2,
					OnClick = self.onHideSidebarButtonClicked,
					Position = UDim2.new(1, -5, 1, -5),
					Size = style.IconSize,
					Style = "RoundSubtle",
					ZIndex = 2,
				}, {
						Image = Roact.createElement(Image, {
							Style = {
								Image = style.ChevronLeft,
								Color = style.IconColor
							},
							Size = style.IconSize,
						})
					}) else nil,
			}),
			Roact.createElement(Pane, {
				Size = UDim2.fromScale(1, 1),
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 2,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}, {
				MaterialGrid = if showMaterialGrid then
					Roact.createElement(MaterialGrid, {
						DetailsVisible = detailsVisible,
						LayoutOrder = 1,
						OnDetailsButtonClicked = self.onDetailsButtonClicked,
						OnSidebarButtonClicked = self.onSidebarButtonClicked,
						SideBarVisible = showSideBar,
						Size = if detailsVisible then style.MaterialGridSize else UDim2.fromScale(1, 1),
					})
					else nil,
				MaterialDetails = if detailsVisible then Roact.createElement(Pane, {
					LayoutOrder = 2,
					Size = style.MaterialDetailsSize,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
				}, {
						MaterialDetails = Roact.createElement(MaterialDetails, {
							LayoutOrder = 1,
							OpenPrompt = props.OpenPrompt,
							Size = UDim2.fromScale(1, 1),
						}),
						HideButton = if state.detailsVisible then Roact.createElement(Button, {
							LayoutOrder = 2,
							OnClick = self.onHideDetailsButtonClicked,
							Position = UDim2.new(0, 5, 0, 5),
							Size = style.IconSize,
							Style = "RoundSubtle",
							ZIndex = 2,
						}, {
							Image = Roact.createElement(Image, {
								Style = {
									Image = style.ChevronRight,
									Color = style.IconColor,
								},
								Size = style.IconSize,
							})
						}) else nil,
					}) else nil,
			}),
		})
	})
end

MaterialBrowser = withContext({
	Stylizer = Stylizer,
})(MaterialBrowser)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = state.MaterialBrowserReducer.Material,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end
)(withAbsoluteSize(MaterialBrowser))