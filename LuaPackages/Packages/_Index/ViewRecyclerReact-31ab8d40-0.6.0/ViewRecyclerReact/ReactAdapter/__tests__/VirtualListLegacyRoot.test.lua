--!nonstrict
-- Kept in its own file: earlier VirtualList tests leave React batching, which
-- would defer the legacy root's synchronous render this file depends on.
local CoreGui = game:GetService("CoreGui")
local LogService = game:GetService("LogService")
local RunService = game:GetService("RunService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecycler = require(Root)

local e = React.createElement

local ROW_LENGTH = 55

local function items(count: number)
	local result = table.create(count)
	for index = 1, count do
		table.insert(result, { id = `item{index}`, text = `Item {index}` })
	end
	return result
end

local function visibleContentTexts(container: Instance): { string }
	local result = {}
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Name == "Content" then
			local current: Instance? = descendant
			local visible = true
			while current ~= nil and current ~= container do
				if current:IsA("GuiObject") and not current.Visible then
					visible = false
					break
				end
				current = current.Parent
			end
			if visible then
				table.insert(result, descendant.Text)
			end
		end
	end
	table.sort(result)
	return result
end

local function ItemRow(props)
	local value = SignalsReact.useSignalState(props.itemSignal)
	return e("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, ROW_LENGTH),
	}, {
		Content = e("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = value.text,
		}),
	})
end

describe("VirtualList under a legacy root", function()
	for _, readiness in { RecyclableViewReadiness.ReadyOnAssignment, RecyclableViewReadiness.ReadyOnCommit } do
		it(`renders {readiness} Items created by a measurement flush outside act`, function()
			local itemType = ViewRecycler.createRecyclableView(ItemRow, {
				readiness = readiness,
				hideWhilePending = readiness == RecyclableViewReadiness.ReadyOnCommit,
			})
			local assignmentErrors = {}
			local logConnection = LogService.MessageOut:Connect(function(message)
				if string.find(message, "before first Assignment", 1, true) then
					table.insert(assignmentErrors, message)
				end
			end)
			local container = Instance.new("ScreenGui")
			container.Parent = CoreGui
			local root = ReactRoblox.createLegacyRoot(container)
			local layout = ViewRecycler.Layout.measured({ estimatedItemLength = 80 })

			ReactRoblox.act(function()
				root:render(e("Frame", {
					Name = "Host",
					Size = UDim2.fromOffset(200, 200),
				}, {
					List = e(ViewRecycler.VirtualList, {
						data = ViewRecycler.DataSource.snapshot(items(30), function(value)
							return value.id
						end),
						layout = layout,
						axis = ViewRecycler.Axis.Y,
						overscan = 0,
						itemType = itemType,
					}),
				}))
			end)
			for _ = 1, 6 do
				RunService.Heartbeat:Wait()
				task.wait()
			end
			logConnection:Disconnect()

			expect(assignmentErrors).toEqual({})
			expect(visibleContentTexts(container)).toEqual({ "Item 1", "Item 2", "Item 3", "Item 4" })

			ReactRoblox.act(function()
				root:unmount()
			end)
			layout.destroy()
			container:Destroy()
		end)
	end
end)
