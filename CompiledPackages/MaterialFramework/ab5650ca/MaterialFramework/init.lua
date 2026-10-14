--[[
	MaterialFramework - a DeveloperFramework-free material preview library. Owns a
	raw ViewportFrame and styles with Foundation. A spiritual drop-in for
	MaterialFramework's preview surface (same role, DevFramework-free). Its
	MaterialPreview is material-agnostic: a base material plus an optional
	MaterialVariant and tint. Callers resolve their own source (e.g. a Terrain
	material slot) down to those values.

	First cut: MaterialPreview + supporting enums/utils/types. Not yet ported:
	MaterialGrid and pan/zoom. Mesh geometries can be added to
	MaterialPreviewGeometryType if a non-primitive preview shape is needed.
]]
return {
	Components = require(script.Components),
	Enums = require(script.Enums),
	Util = require(script.Util),
	Types = require(script.Types),
}
