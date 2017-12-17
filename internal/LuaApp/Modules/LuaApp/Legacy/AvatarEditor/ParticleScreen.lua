local this = {}

local function getModule(moduleName)
	return script.Parent:FindFirstChild(moduleName)
end

local utilities = require(getModule('Utilities'))

function this.init()
	local particleTransparency1 = NumberSequence.new( {
		NumberSequenceKeypoint.new(0, 1, 0),
		NumberSequenceKeypoint.new(0.195, 0, 0),
		NumberSequenceKeypoint.new(0.783, 0.887, 0),
		NumberSequenceKeypoint.new(1, 1, 0) } )

	local ParticleEmitterContainer = utilities.create'Part'
	{
		Position = Vector3.new(14.197, 2.55, -18.644);
		Reflectance = 0;
		Transparency = 1;
		Name = 'AvatarEditorParticleScreenPart';
		Orientation = Vector3.new(0, 15, 0);
		Size = Vector3.new(4.2, 4.2, 1.8);
		Material = 'Plastic';
		Anchored = true;
		CanCollide = false;

		Parent = game.Workspace;
	}

	local particleEmitter1 = utilities.create'ParticleEmitter'
	{
		Color = ColorSequence.new(Color3.fromRGB(225, 227, 213));
		LightEmission = 0.35;
		LightInfluence = 0;
		Size = NumberSequence.new(2);
		Texture = 'rbxasset://textures/particles/smoke_main.dds';
		Transparency = particleTransparency1;
		Speed = NumberRange.new(4, 8);
		Acceleration = Vector3.new(0,30,0);
		Lifetime = NumberRange.new(0.3, 0.4);
		Rate = 100;
		Enabled = false;

		Parent = ParticleEmitterContainer
	}

	local particleEmitter2 = utilities.create'ParticleEmitter'
	{
		Color = ColorSequence.new(Color3.fromRGB(204, 209, 175));
		LightEmission = 0.35;
		LightInfluence = 0;
		Size = NumberSequence.new(2);
		Texture = 'rbxasset://textures/particles/smoke_main.dds';
		Transparency = particleTransparency1;
		Speed = NumberRange.new(3, 6);
		Acceleration = Vector3.new(0,30,0);
		Lifetime = NumberRange.new(0.3, 0.4);
		Rate = 100;
		Enabled = false;
		ZOffset = 1;

		Parent = ParticleEmitterContainer
	}

	local particleEmittionCount = 0
	function this.runParticleEmitter()
		utilities.fastSpawn(function()
			particleEmitter1.Enabled = true
			particleEmitter2.Enabled = true
			particleEmittionCount = particleEmittionCount + 1
			local thisParticleEmittionCount = particleEmittionCount
			wait(.3)
			if particleEmittionCount == thisParticleEmittionCount then
				particleEmitter1.Enabled = false
				particleEmitter2.Enabled = false
			end
		end)
	end
end

return this
