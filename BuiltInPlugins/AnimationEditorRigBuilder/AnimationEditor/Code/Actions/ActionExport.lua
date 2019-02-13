-- singleton (can't be undone/redone)

local FastFlags = require(script.Parent.Parent.FastFlags)

local Export = {}

function Export:execute(Paths)
	-- Update the model to start positions
	local motorOrig = {}
	for part,elem in pairs(Paths.DataModelRig.partList) do
		if (elem.Motor6D ~= nil) then
			elem.Motor6D.C1 = elem.OriginC1
		end
	end

	local kfsp = game:GetService('KeyframeSequenceProvider')

	local kfs = nil
	if FastFlags:isImportAndExportFixOn() then
		kfs = Paths.DataModelClip:createAnimationFromCurrentData(true, true)
	else
		kfs = Paths.DataModelClip:createAnimationFromCurrentData()
	end

	local animID = kfsp:RegisterKeyframeSequence(kfs)
	local dummy = nil
	if FastFlags:isEnableRigSwitchingOn() then
		dummy = Paths.DataModelRig:getModel()
	else
		dummy = Paths.DataModelRig:getItem().Item.Parent
	end

	local AnimationBlock = dummy:FindFirstChild("AnimSaves")
	if AnimationBlock == nil then
		AnimationBlock = Instance.new('Model')
		AnimationBlock.Name = "AnimSaves"
		AnimationBlock.Parent = dummy
	end

	local Animation = AnimationBlock:FindFirstChild("ExportAnim")
	if Animation == nil then
		Animation = Instance.new('Animation')
		Animation.Name = "ExportAnim"
		Animation.Parent = AnimationBlock
	end
	Animation.AnimationId = animID

	local OldKeyframeSqeuence = Animation:FindFirstChild("Test")
	if OldKeyframeSqeuence ~= nil then
		OldKeyframeSqeuence.Parent = nil
	end

	kfs.Parent = Animation

	local selectionSet = {}
	table.insert(selectionSet, kfs)

	game.Selection:Set(selectionSet)
	wait()
	Paths.Globals.Plugin:SaveSelectedToRoblox()
end

return Export
