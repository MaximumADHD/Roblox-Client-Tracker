--[[
	Container component for all controls that appear in the Workspace Viewport.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Focus = ContextServices.Focus

local UI = Framework.UI
local Pane = UI.Pane

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local CageControls = require(Plugin.Src.Components.Editor.CageControls)
local VisibilityControls = require(Plugin.Src.Components.Editor.VisibilityControls)

local WorkspaceEditorControls = Roact.PureComponent:extend("WorkspaceEditorControls")

function WorkspaceEditorControls:init()
	self.state = {
		narrowLayout = false,
	}

	self.ScreenGui = Instance.new("ScreenGui")
	self.ScreenGui.Parent = game:GetService("CoreGui")
	self.ScreenGui.Name = "WorkspaceEditorControls"
	self.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	self.focus = Focus.new(self.ScreenGui)

	self.onScreenSizeChanged = function(rbx)
		self:setState({
			narrowLayout = rbx.AbsoluteSize.X <= 1000,
		})
	end
end

function WorkspaceEditorControls:render()
	local state = self.state

	local narrowLayout = state.narrowLayout

	local orderIterator = LayoutOrderIterator.new()

	return ContextServices.provide({
		self.focus
	}, {
		Child = Roact.createElement(Roact.Portal, {
			target = self.ScreenGui,
		}, {
			AccessoryFittingToolControls = Roact.createElement("ScreenGui", {
				[Roact.Change.AbsoluteSize] = self.onScreenSizeChanged,
			}, {
				Container = Roact.createElement(Pane, {
					Layout = if narrowLayout then Enum.FillDirection.Vertical else nil,
					HorizontalAlignment = if narrowLayout then Enum.HorizontalAlignment.Left else nil,
					VerticalAlignment = if narrowLayout then Enum.VerticalAlignment.Top else nil,
				}, {
					CageControls = Roact.createElement(CageControls, {
						LayoutOrder = orderIterator:getNextOrder()
					}),
					VisiblityControls = Roact.createElement(VisibilityControls, {
						LayoutOrder = orderIterator:getNextOrder(),
					}),
				})
			})
		})
	})
end

function WorkspaceEditorControls:willUnmount()
	if self.ScreenGui then
		self.ScreenGui:Destroy()
	end
end

return WorkspaceEditorControls
