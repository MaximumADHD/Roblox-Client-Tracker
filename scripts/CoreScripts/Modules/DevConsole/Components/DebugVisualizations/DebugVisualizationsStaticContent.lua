-- This table contains the data used to populate the debug visualizations page
-- To add a new entry to the page, add an entry with the appropriate fields below.
-- Note: The key and name for an entry need to be the same as the reflection in PhysicsSettings.cpp

-- This can be replaced if we eventually overhaul the settings API to provide arbitrary metadata.

local FFlagDevConsoleCollisionPerfVisualization = game:DefineFastFlag("DevConsoleCollisionPerfVisualization", false)

return {
	["AreCollisionCostsShown"] = if FFlagDevConsoleCollisionPerfVisualization then {
		name = "AreCollisionCostsShown",
		description="Highlights assemblies in the world with color from green to red based on how costly the collision computation is.",
		tags = {"Performance", "Collision"},
		type = "Box"
	} else nil,
	["AreAnchorsShown"] = {
		name = "AreAnchorsShown",
		description="When set to true, parts that are BasePart.Anchored will show a gray surface outline on the surface of the part’s bounding box that is currently facing the ground.",
		tags = {"Behavior", "Constraints"},
		type = "Adorn"
	},
	["AreUnalignedPartsShown"] = {
		name = "AreUnalignedPartsShown",
		description="When set to true, parts that aren’t aligned on the 1x1x1 grid will be outlined yellow.",
		tags = {"Behavior",},
		type = "Box"
	},
	["AreContactIslandsShown"] = {
		name = "AreContactIslandsShown",
		description="When set to true, each contact island will render SelectionBox adorns on the parts in contact islands, where each contact island is assigned a random color.",
		tags = {"Performance", "Collision"},
		type = "Box"
	},
	["AreOwnersShown"] = {
		name = "AreOwnersShown",
		description="When set to true, each Player’s character is outlined with a unique color, and each part that the player has network ownership over is outlined with the same color.",
		tags = {"Behavior", "Networking"},
		type = "Box"
	},
	["AreRegionsShown"] = {
		name = "AreRegionsShown",
		description="When set to true, a cylinder is drawn around each Player’s character, representing their Player.SimulationRadius.",
		tags = {"Behavior", "Networking"},
		type = "Adorn"
	},
	["AreAwakePartsHighlighted"] = {
		name = "AreAwakePartsHighlighted",
		description="When set to true, parts that are actively being physically simulated will have a red outline.",
		tags = {"Performance", "Forces", "Collison"},
		type = "Box"
	},
	["AreContactPointsShown"] = {
		name = "AreContactPointsShown",
		description="When set to true, sphere adorns will be drawn at the contact points of each part where physics interactions are occurring. Each sphere also has an arrow drawn in 3D, facing the surface that the contact point is detecting.",
		tags = {"Performance", "Contacts"},
		type = "Adorn"
	},
	["AreJointCoordinatesShown"] = {
		name = "AreJointCoordinatesShown",
		description="When set to true, XYZ axes are rendered at the BasePart.CFrame of every part.",
		tags = {"Behavior",},
		type = "Adorn"
	},
	["AreMechanismsShown"] = {
		name = "AreMechanismsShown",
		description="When set to true, every individual mechanism of parts is given a unique color.",
		tags = {"Behavior", "Constraints"},
		type = "Box"
	},
	["AreAssembliesShown"] = {
		name = "AreAssembliesShown",
		description="When set to true, each physics assembly is assigned a unique color and the Part associated with the assembly are outlined with the color. Parts that are attached together by JointInstance will share the same color.",
		tags = {"Behavior", "Constraints"},
		type = "Box"
	},
	["IsTreeShown"] = {
		name = "IsTreeShown",
		description="When set to true, the joint connections of each part, and the states of their underlying primitive components are visualized as a spanning tree.",
		tags = {"Behavior", "Constraints"},
		type = "Adorn"
	},
	["AreTimestepsShown"] = {
		name = "AreTimestepsShown",
		description="When set to true, all non-sleeping parts are outlined with red, yellow, or green corresponding to their simulation timestep of 240hz, 120hz, or 60hz.",
		tags = {"Performance", "Forces"},
		type = "Box"
	},
}
