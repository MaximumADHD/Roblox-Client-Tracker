local Root = script:FindFirstAncestor("ViewRecyclerRoblox")

local SlotGeometry = require(Root.RobloxAdapter.SlotGeometry)
local GuiService = game:GetService("GuiService")

export type Destination = {
	placeholder: Frame,
	automaticSize: Enum.AutomaticSize,
}

local ReparentableHost = {}

function ReparentableHost.clearSelection(host: GuiObject)
	local selectedObject = GuiService.SelectedObject
	if selectedObject ~= nil and (selectedObject == host or selectedObject:IsDescendantOf(host)) then
		GuiService.SelectedObject = nil
	end
end

function ReparentableHost.create(name: string): Frame
	local host = Instance.new("Frame")
	host.Name = name
	host.BackgroundTransparency = 1
	host.BorderSizePixel = 0
	host.Position = UDim2.new()
	host.Size = UDim2.new()
	return host
end

function ReparentableHost.place(host: Frame, destination: Destination)
	host.AutomaticSize = destination.automaticSize
	host.Size = SlotGeometry.getHostSize(destination.automaticSize)
	host.Parent = destination.placeholder
end

function ReparentableHost.detach(host: Frame)
	ReparentableHost.clearSelection(host)
	host.Parent = nil
end

function ReparentableHost.destroy(host: Frame)
	ReparentableHost.detach(host)
	host:Destroy()
end

return ReparentableHost
