-- Where a Recycling scope's Vacant Hosts wait. A Vacant Host stays hidden in
-- the container it left, where its Content keeps the size it was laid out
-- at. When that container goes away, the Host moves to a hidden Frame in an
-- attached, laid-out tree. A detached tree is laid out only when read and
-- does not measure text, so Content in an unparented Host reports sizes it
-- was never laid out at.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")

local ReparentableHost = require(Root.RobloxAdapter.ReparentableHost)
local transparentFrame = require(Root.RobloxAdapter.transparentFrame)

export type VacantHosts = {
	-- Moves the hidden Frame under `parent`, or unparents it when nil.
	setParent: (parent: Instance?) -> (),
	-- Hides a Host that went Vacant where it is and clears selection inside
	-- it. It stays there until it is reclaimed or evacuated.
	leave: (host: GuiObject) -> (),
	-- Forgets a left Host that is being placed again.
	reclaim: (host: GuiObject) -> (),
	-- Holds every left Host whose parent `isContainer` accepts. Another
	-- Destination may have taken a left Host since; its parent is not one of
	-- the caller's containers.
	evacuate: (isContainer: (parent: Instance) -> boolean) -> (),
	-- Hides and clears selection inside each Host, keeps it at the size it
	-- was laid out at, and parents it to the hidden Frame at the origin. A
	-- laid-out Host stays where it is when no LayerCollector is above the
	-- Frame.
	hold: (hosts: { GuiObject }) -> (),
	-- Destroys the hidden Frame and every Host still in it.
	destroy: () -> (),
}

local VacantHosts = {}

local byScope: { [any]: VacantHosts } = setmetatable({}, { __mode = "k" }) :: any

-- Makes `vacantHosts` hold the Vacant Hosts of every placement bound to
-- `scope`.
function VacantHosts.register(scope: any, vacantHosts: VacantHosts)
	byScope[scope] = vacantHosts
end

function VacantHosts.forScope(scope: any): VacantHosts
	local vacantHosts = byScope[scope]
	assert(
		vacantHosts ~= nil,
		"ViewRecycler: the Recycling scope has no place for Vacant Hosts; create it with RobloxAdapter.createRecyclingScope"
	)
	return vacantHosts
end

-- The UIScale product applied to `instance`: a UIScale scales its parent and
-- everything inside it.
local function scaleOf(instance: Instance?): number
	local scale = 1
	while instance ~= nil do
		local uiScale = instance:FindFirstChildOfClass("UIScale")
		if uiScale ~= nil then
			scale *= uiScale.Scale
		end
		instance = instance.Parent
	end
	return scale
end

local function hide(host: GuiObject)
	ReparentableHost.clearSelection(host)
	if host.Visible then
		host.Visible = false
	end
end

function VacantHosts.new(): VacantHosts
	local frame = transparentFrame("ViewRecyclerVacantHosts")
	frame.Size = UDim2.fromScale(1, 1)
	frame.Visible = false
	-- A Host leaving a list under a different UIScale waits in a child that
	-- reproduces it, so its Content's AbsoluteSize does not change.
	local scaledFrames: { [string]: Frame } = {}
	local left: { [GuiObject]: true } = setmetatable({}, { __mode = "k" }) :: any

	local function frameFor(ratio: number): Frame
		if math.abs(ratio - 1) < 1e-6 then
			return frame
		end
		local key = string.format("%.6f", ratio)
		local scaled = scaledFrames[key]
		if scaled == nil then
			scaled = transparentFrame("Scaled")
			scaled.Size = UDim2.fromScale(1, 1)
			local uiScale = Instance.new("UIScale")
			uiScale.Scale = ratio
			uiScale.Parent = scaled
			scaled.Parent = frame
			scaledFrames[key] = scaled
		end
		return scaled
	end

	local function hold(hosts: { GuiObject })
		local laidOut = frame:FindFirstAncestorWhichIsA("LayerCollector") ~= nil
		local frameScale = scaleOf(frame)
		-- Reading a size after a write lays the tree out again, so every
		-- size is read before any Host moves.
		local layoutSizes: { [number]: Vector2 | false } = table.create(#hosts)
		local ratios = table.create(#hosts)
		for index, host in hosts do
			left[host] = nil
			hide(host)
			if host:FindFirstAncestorWhichIsA("LayerCollector") == nil then
				layoutSizes[index] = false
			elseif laidOut then
				layoutSizes[index] = host.AbsoluteSize / scaleOf(host)
				ratios[index] = scaleOf(host.Parent) / frameScale
			end
		end
		for index, host in hosts do
			local layoutSize = layoutSizes[index]
			if layoutSize == false then
				-- Nothing laid this Host out, so it has no size to keep.
				host.Position = UDim2.new()
				host.Parent = frame
			elseif layoutSize ~= nil then
				host.Position = UDim2.new()
				host.Size = UDim2.fromOffset(layoutSize.X, layoutSize.Y)
				host.Parent = frameFor(ratios[index])
			end
		end
	end

	return {
		setParent = function(parent)
			if frame.Parent ~= parent then
				frame.Parent = parent
			end
		end,
		leave = function(host)
			hide(host)
			left[host] = true
		end,
		reclaim = function(host)
			left[host] = nil
		end,
		evacuate = function(isContainer)
			local hosts = {}
			for host in left do
				local parent = host.Parent
				if parent ~= nil and isContainer(parent) then
					table.insert(hosts, host)
				end
			end
			if #hosts > 0 then
				hold(hosts)
			end
		end,
		hold = hold,
		destroy = function()
			frame:Destroy()
			table.clear(scaledFrames)
			table.clear(left)
		end,
	}
end

return VacantHosts
