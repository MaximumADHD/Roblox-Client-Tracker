-- An adapter-owned Frame that only arranges Hosts and paints nothing.
local function transparentFrame(name: string): Frame
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	return frame
end

return transparentFrame
