--[[
	Helper functions for anything that needs to interface with a BaseWrap instance.
]]

local HttpService = game:GetService("HttpService")
local Workspace = game.Workspace

local Util = script.Parent.Parent

local getDescendants = require(Util.getDescendants)

local WrapUtil = {}

function WrapUtil:deformClothing(item, cageVertexData, cageType)
	local wrapLayer = item:FindFirstChildWhichIsA("WrapLayer")
	if not wrapLayer or
	   not cageVertexData or
	   not cageType or
	   not wrapLayer:FindFirstAncestor(Workspace.Name) then
		return
	end

	local _, err = pcall(function()
		wrapLayer:ModifyVertices(cageType, cageVertexData)
	end)
	if err then
		print(err)
	end
end

function WrapUtil:deformBody(avatar, cageVertexData, cageType)
	if not cageVertexData or
	   not cageType then
		return
	end

	local descendants = getDescendants({}, avatar)
	for _, descendant in ipairs(descendants) do
		if descendant:IsA("WrapTarget") and cageVertexData[descendant.Name] then
			local _, err = pcall(function()
				descendant:ModifyVertices(cageType, cageVertexData[descendant.Name])
			end)
			if err then
				print(err)
			end
		end
	end
end

function WrapUtil:makeDeformerNamesUnique(item)
	if not item then
		return
	end

	local descendants = getDescendants({}, item)
	for _, desc in ipairs(descendants) do
		if desc:IsA("BaseWrap") then
			desc.Name = HttpService:GenerateGUID()
		end
	end
end

return WrapUtil