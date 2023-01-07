local Squads = script:FindFirstAncestor("Squads")

local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact

local devDependencies = require(Squads.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local FacePile = require(script.Parent.FacePile)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(FacePile, {
		props = {
			users = {},
			avatarSize = 36,
			overlapOffset = 8,
			borderWidth = 2,
			borderColor = Color3.fromRGB(255, 255, 255),
		},
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD match face UI with given props.", function()
	local mockUsers = {
		"1111111111",
		"2222222222",
	}
	local facePileComponent = function(props)
		return Roact.createElement("Frame", {
			Size = UDim2.fromOffset(500, 500),
		}, {
			FacePile = Roact.createElement(FacePile, {
				users = mockUsers,
				avatarSize = 36,
				overlapOffset = 8,
				borderWidth = 2,
				borderColor = Color3.fromRGB(255, 255, 255),
			}),
		})
	end
	local element = createTreeWithProviders(facePileComponent, {})
	runWhileMounted(element, function(parent)
		local avatarCell1 = RhodiumHelpers.findFirstInstance(parent, { Name = "AvatarCell1" })
		expect(avatarCell1).never.toBeNil()
		expect(avatarCell1.AbsoluteSize).toBe(Vector2.new(36, 36))
		expect(avatarCell1.BackgroundColor3).toBe(Color3.fromRGB(255, 255, 255))
		expect(avatarCell1.AbsolutePosition.X).toBe(0)
		local avatar1 = RhodiumHelpers.findFirstInstance(avatarCell1, { Name = "UserAvatar" })
		expect(avatar1).never.toBeNil()
		expect(avatar1.AbsoluteSize).toBe(Vector2.new(36 - 2 * 2, 36 - 2 * 2))

		local avatarCell2 = RhodiumHelpers.findFirstInstance(parent, { Name = "AvatarCell2" })
		expect(avatarCell2.AbsolutePosition - avatarCell1.AbsolutePosition).toBe(Vector2.new(36 - 8, 0))
	end)
end)

describe("layout for face pile", function()
	it("SHOULD match width if assigned face pile width", function()
		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(500, 500),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = {},
					avatarSize = 36,
					overlapOffset = 8,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
					facePileWidth = UDim.new(0, 100),
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local facePile = RhodiumHelpers.findFirstInstance(parent, { Name = "FacePile" })
			expect(facePile).never.toBeNil()
			expect(facePile.AbsoluteSize.X).toBe(100)
		end)
	end)

	it("SHOULD right aligned if assigned property.", function()
		local mockUsers = {
			"1111111111",
		}
		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(50, 50),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = mockUsers,
					avatarSize = 36,
					overlapOffset = 8,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
					horizontalAlignment = Enum.HorizontalAlignment.Right,
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local avatarCell1 = RhodiumHelpers.findFirstInstance(parent, { Name = "AvatarCell1" })
			expect(avatarCell1).never.toBeNil()
			expect(avatarCell1.AbsolutePosition.X).toBe(50 - 36)
		end)
	end)

	it("SHOULD match users number to faces number if under parent width.", function()
		local mockUsers = {
			"1111111111",
			"2222222222",
			"3333333333",
		}
		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(500, 500),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = mockUsers,
					avatarSize = 36,
					overlapOffset = 8,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local layout = RhodiumHelpers.findFirstInstance(parent, { ClassName = "UIListLayout" })
			expect(layout).never.toBeNil()
			-- Avatars are sibling of the layout
			local layoutObjs = layout.Parent:GetChildren()
			expect(#layoutObjs - 1).toBe(#mockUsers)
			-- Check if remaining user count exist
			local pileText = RhodiumHelpers.findFirstInstance(parent, { ClassName = "TextLabel" })
			expect(pileText).toBeNil()
		end)
	end)

	it("SHOULD show remaining users count if exceeding parent width.", function()
		-- Check three avatars of size 50 without overlap fit into the width of 100
		local mockUsers = {
			"1111111111",
			"2222222222",
			"3333333333",
		}
		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(100, 100),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = mockUsers,
					avatarSize = 50,
					overlapOffset = 0,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local layout = RhodiumHelpers.findFirstInstance(parent, { ClassName = "UIListLayout" })
			expect(layout).never.toBeNil()
			-- Avatars are sibling of the layout
			local layoutObjs = layout.Parent:GetChildren()
			expect(#layoutObjs - 1).toBe(2)
			-- Check if remaining user count exist
			local pileText = RhodiumHelpers.findFirstInstance(parent, { ClassName = "TextLabel" })
			expect(pileText).never.toBeNil()
			expect(pileText.Text).toBe("+2")
		end)
	end)

	it("SHOULD throw error if faceCount is less than users count.", function()
		local mockUsers = {
			"1111111111",
			"2222222222",
		}

		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(150, 150),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = mockUsers,
					avatarSize = 50,
					overlapOffset = 0,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
					faceCount = 1,
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local facePile = RhodiumHelpers.findFirstInstance(parent, { ClassName = "FacePile" })
			expect(facePile).toBeNil()
		end)
	end)

	it("SHOULD show reserved avatar if faceCount exceed users count.", function()
		-- Check two avatars of size 50 without overlap fit into
		-- faceCount of 4
		local mockUsers = {
			"1111111111",
		}
		local facePileComponent = function(props)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(150, 150),
			}, {
				FacePile = Roact.createElement(FacePile, {
					users = mockUsers,
					avatarSize = 50,
					overlapOffset = 0,
					borderWidth = 2,
					borderColor = Color3.fromRGB(255, 255, 255),
					faceCount = 4,
				}),
			})
		end
		local element = createTreeWithProviders(facePileComponent, {})
		runWhileMounted(element, function(parent)
			local layout = RhodiumHelpers.findFirstInstance(parent, { ClassName = "UIListLayout" })
			expect(layout).never.toBeNil()
			-- Check two avatars of size 50 without overlap fit into the
			-- width of 150
			local layoutObjs = layout.Parent:GetChildren()
			expect(#layoutObjs - 1).toBe(3)
			-- Check if second is empty avatar
			local avatarCell2 = RhodiumHelpers.findFirstInstance(parent, { Name = "AvatarCell2" })
			expect(avatarCell2).never.toBeNil()
			local avatar2 = RhodiumHelpers.findFirstInstance(avatarCell2, { Name = "UserAvatar" })
			expect(avatar2).never.toBeNil()
			expect(avatar2.ClassName).toBe("Frame")
			-- Check if remaining user count exist
			local pileText = RhodiumHelpers.findFirstInstance(parent, { ClassName = "TextLabel" })
			expect(pileText).never.toBeNil()
			expect(pileText.Text).toBe("+2")
		end)
	end)
end)
