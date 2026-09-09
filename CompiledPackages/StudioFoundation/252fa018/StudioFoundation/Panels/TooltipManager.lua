local Main = script:FindFirstAncestor("StudioFoundation")

local StudioUri = require(Main.Util.StudioUri)

local Types = require(Main.Types)
type PanelPosition = Types.PanelPosition

local TooltipManager = {}
TooltipManager.__index = TooltipManager

type TooltipManagerData = {
	_plugin: Plugin,
	_panels: Panels,
	_pluginUri: StudioUri,
	_creating: boolean,
	_currentToken: number,
	_panel: PluginGui?,
	_panelUri: StudioUri?,
	_uriScope: string?,
}
export type TooltipManager = typeof(setmetatable({} :: TooltipManagerData, TooltipManager))

function TooltipManager.new(plugin: Plugin, uriScope: string?): TooltipManager
	local self = setmetatable({}, TooltipManager)
	self._plugin = plugin
	self._panels = plugin:GetPluginComponent("Panels")
	self._pluginUri = StudioUri.wrap(plugin:GetUri())
	self._panel = nil -- Lazily created
	self._panelUri = nil
	self._currentToken = 0
	self._creating = false
	self._uriScope = uriScope
	return self
end

function TooltipManager._createTooltipPanelAsync(self: TooltipManager, id: string): (PluginGui, StudioUri)
	local panel = self._plugin:CreateQWidgetPluginGui(id, {
		Id = id,
		InitialEnabled = false,
		MinSize = Vector2.new(50, 50),
		Modal = false,
		Tooltip = true,
		Resizable = true,
		Size = Vector2.new(220, 224),
		Title = "Tooltip",
		ZIndex = 100,
	})
	panel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return panel, StudioUri.join(self._pluginUri, {
		Category = "Panels",
		ItemId = id,
	})
end

function TooltipManager._ensurePanelExistsAsync(self: TooltipManager): (PluginGui, StudioUri)
	if self._panel and self._panelUri then
		return self._panel :: PluginGui, self._panelUri :: StudioUri
	end

	if self._creating then
		-- simple yield until created
		while self._creating do
			task.wait()
		end
		return self._panel :: PluginGui, self._panelUri :: StudioUri
	end
	self._creating = true
	local uriScopeSegment = if self._uriScope then `/{self._uriScope}` else ""
	-- We shouldn't need a unique ID for the tooltip panel, but we use one to avoid
	-- an issue that occurs where this code appears to throw errors due to a duplicate
	-- ID being used. This is possibly because it is run before the previous plugin
	-- has unloaded and destroyed the previous tooltip panel.
	local tooltipId = `Tooltip_{math.random()}{uriScopeSegment}`
	-- Local variables are used to avoid type casts
	local panel, panelUri = self:_createTooltipPanelAsync(tooltipId)
	self._panel = panel
	self._panelUri = panelUri
	self._creating = false
	return panel, panelUri
end

function TooltipManager.openAsync(
	self: TooltipManager,
	config: PanelPosition & { targetWidgetUri: StudioUri }
): Types.PanelHandler
	local panel, panelUri = self:_ensurePanelExistsAsync()
	self._currentToken += 1
	local token = self._currentToken

	self._panels:SetAttachmentAsync(panelUri, {
		TargetWidgetUri = config.targetWidgetUri,
		TargetAnchorPoint = config.targetAnchorPoint,
		SubjectAnchorPoint = config.subjectAnchorPoint,
		Offset = config.offset,
		AutoHide = true,
	})
	self._panels:ShowIfAttachedAsync(panelUri)

	local function isCurrent()
		return token == self._currentToken
	end

	local handle = {
		container = panel,
		setSizeAsync = function(size: Vector2)
			if not isCurrent() or not self._panelUri then
				return
			end
			self._panels:SetSizeAsync(self._panelUri, size)
		end,
		updateAsync = function(newConfig: PanelPosition & { targetWidgetUri: StudioUri })
			if not isCurrent() or not self._panelUri then
				return
			end
			self._panels:SetAttachmentAsync(self._panelUri, {
				TargetWidgetUri = newConfig.targetWidgetUri,
				TargetAnchorPoint = newConfig.targetAnchorPoint,
				SubjectAnchorPoint = newConfig.subjectAnchorPoint,
				Offset = newConfig.offset,
				AutoHide = true,
			})
		end,
		close = function()
			if not isCurrent() or not self._panel then
				return
			end
			self._panel.Enabled = false
		end,
	}

	return handle
end

function TooltipManager.closeAll(self: TooltipManager)
	self._currentToken += 1
	if self._panel then
		self._panel.Enabled = false
	end
end

function TooltipManager.destroy(self: TooltipManager)
	self:closeAll()
	if self._panel then
		self._panel:Destroy()
	end
end

return TooltipManager
