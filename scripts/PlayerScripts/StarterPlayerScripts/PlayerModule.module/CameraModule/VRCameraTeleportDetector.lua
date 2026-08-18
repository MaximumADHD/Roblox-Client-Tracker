--!strict
--[[
	VRCameraTeleportDetector
	Helper function for VRCamera to detect whether an external teleport of the camera
	subject should trigger a one-shot VR head-origin recenter.

	Why an edge-detect + debounce rather than a plain distance threshold: the VR
	immersion camera's "no input" branch runs every frame, including for custom
	locomotion/flight systems that write HumanoidRootPart.CFrame every frame. A raw
	threshold would fire a recenter (and fade-from-black) every frame for those,
	leaving the screen permanently black. Requiring the PREVIOUS frame to have been
	near-still, plus a minimum interval between fires, restricts recentering to
	actual discrete jumps.
]]

local VRCameraTeleportDetector = {}

-- A single-frame XZ jump larger than this (studs) is treated as a discrete teleport.
VRCameraTeleportDetector.JUMP_STUDS = 4
-- The previous frame must have moved less than this (studs) for the jump to count as
-- discrete (edge detection) — filters out continuous per-frame motion.
VRCameraTeleportDetector.SETTLED_STUDS = 1
-- Minimum seconds between recenters; backstop against retriggering.
VRCameraTeleportDetector.DEBOUNCE_SECONDS = 0.25

-- prevStep / thisStep: flattened (XZ) subject deltas in studs for the previous and
-- current frame. prevStep is nil on the first evaluation.
-- lastRecenterTime / now: seconds (same clock). lastRecenterTime is nil if never fired.
function VRCameraTeleportDetector.shouldRecenter(
	prevStep: number?,
	thisStep: number,
	lastRecenterTime: number?,
	now: number
): boolean
	-- Not a large enough jump this frame.
	if thisStep <= VRCameraTeleportDetector.JUMP_STUDS then
		return false
	end

	-- Already moving last frame → continuous motion, not a discrete teleport.
	if prevStep ~= nil and prevStep >= VRCameraTeleportDetector.SETTLED_STUDS then
		return false
	end

	-- Debounce.
	if lastRecenterTime ~= nil and (now - lastRecenterTime) < VRCameraTeleportDetector.DEBOUNCE_SECONDS then
		return false
	end

	return true
end

return VRCameraTeleportDetector
