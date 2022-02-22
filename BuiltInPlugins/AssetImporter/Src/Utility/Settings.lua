local Plugin = script.Parent.Parent.Parent

local strict = require(Plugin.Packages.Framework.Util.strict)

local GroupProps = require(script.GroupProps)
local MeshProps = require(script.MeshProps)
local RootProps = require(script.RootProps)
local TextureProps = require(script.TextureProps)
local MaterialProps = require(script.MaterialProps)
local JointProps = require(script.JointProps)
local BaseProps = require(script.BaseProps)

local Settings = strict({
	GroupProps = GroupProps,
	MeshProps = MeshProps,
	RootProps = RootProps,
	TextureProps = TextureProps,
	MaterialProps = MaterialProps,
	JointProps = JointProps,
	BaseProps = BaseProps,
})

return Settings
