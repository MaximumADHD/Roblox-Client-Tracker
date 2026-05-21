--!strict
local Framework = script.Parent.Parent.Parent
local Types = require(Framework.Types)
type StudioUri = Types.StudioUri

local Signal = require(Framework.Util.Signal)

return function()
	local MouseTracker = {}
	function MouseTracker:RegisterMouseTrackingRelativeToWidgetAsync(_uri: StudioUri)
		local frame = Instance.new("Frame")
		frame:SetAttribute("RBX_MousePosition", Vector2.new(50, 50))
		return frame
	end

	local Panels = {}
	function Panels:HideAsync(_uri: StudioUri) end
	function Panels:SetAttachmentAsync(_uri: StudioUri, _target: StudioUri) end
	function Panels:SetSizeAsync(_uri: StudioUri, _size: Vector2) end
	function Panels:ShowIfAttachedAsync(_uri: StudioUri) end

	local PlaceManager = {
		PlaceDocPanelClosed = Signal.new(),
		PlaceDocPanelShown = Signal.new(),
	}

	local Widgets = {}
	function Widgets:RegisterAsync(_widgets: { { Uri: StudioUri, Widget: Instance } }) end

	function Widgets:DeregisterAsync(_uris: { StudioUri }) end

	return {
		MouseTracker = MouseTracker,
		Panels = Panels,
		PlaceManager = PlaceManager,
		Widgets = Widgets,
	}
end
