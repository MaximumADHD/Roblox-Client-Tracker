local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Grid = require(Foundation.Components.Grid).Root
local GridCell = require(Foundation.Components.Grid).Cell
local Text = require(Foundation.Components.Text)
local getGridMetrics = require(Foundation.Utility.getGridMetrics)
local getGridSizeTag = require(Foundation.Utility.getGridSizeTag)
local Types = require(Foundation.Components.Types)
local GridDebug = require(Foundation.Components.Grid.Debug)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ResponsiveValue<T> = Types.ResponsiveValue<T>

type GridMetrics = getGridMetrics.GridMetrics

type ChildProps = {
	name: string,
	tag: string,
	Size: UDim2?,
	LayoutOrder: number,
	debug: boolean?,
	children: React.ReactNode,
}

-- selene: allow(roblox_internal_custom_color)
local WHITE = Color3.fromRGB(255, 255, 255)

local function Child(props: ChildProps)
	local tokens = useTokens()
	return React.createElement(View, {
		tag = `{props.tag} auto-y clip`,
		Size = props.Size,
		backgroundStyle = {
			Transparency = 0.7,
			Color3 = tokens.Color.ActionEmphasis.Background.Color3,
		},
		BorderSizePixel = if not props.debug then 1 else nil,
		BorderColor3 = if not props.debug then tokens.Color.ActionEmphasis.Background.Color3 else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			tag = "size-full-2000 text-wrap text-label-small position-center-center anchor-center-center",
			Text = `{props.name} {props.tag:gsub("%-col%-", ":")}`,
		}),
	}, props.children)
end

type ChildCellProps = {
	name: string,
	size: ResponsiveValue<number>,
	LayoutOrder: number,
	debug: boolean?,
	children: React.ReactNode,
}

local function ChildCell(props: ChildCellProps)
	return React.createElement(GridCell, {
		tag = "auto-y clip",
		size = props.size,
		backgroundStyle = {
			Transparency = 0.15,
		},
		BorderSizePixel = if not props.debug then 1 else nil,
		BorderColor3 = if not props.debug then WHITE else nil,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			tag = "size-full-2000 text-wrap text-label-small position-center-center anchor-center-center",
			Text = `{props.name} {getGridSizeTag(props.size):gsub("%-col%-", ":")}`,
		}),
	}, props.children)
end

return {
	summary = "Grid",
	stories = {
		{
			name = "Base",
			story = function(props)
				local grid = React.createElement(Grid, {
					align = props.controls.align,
					Wraps = props.controls.wraps,
				}, {
					Child1 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-4 md-col-6 lg-col-8 xl-col-8",
						name = "C1",
						debug = props.controls.debug,
						LayoutOrder = 1,
					}),
					Child2 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-4 md-col-6 lg-col-4 xl-col-4",
						name = "C2",
						debug = props.controls.debug,
						LayoutOrder = 2,
					}),
					Child3 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-5 md-col-7 lg-col-10 xl-col-10",
						name = "C3",
						debug = props.controls.debug,
						LayoutOrder = 3,
					}),
					Child4 = React.createElement(Child, {
						tag = "xs-col-3 sm-col-1 md-col-5 lg-col-2 xl-col-2",
						name = "C4",
						debug = props.controls.debug,
						LayoutOrder = 4,
					}),
					Child5 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-4 md-col-1 lg-col-3 xl-col-3",
						name = "C5",
						debug = props.controls.debug,
						LayoutOrder = 5,
					}),
					Child6 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-3 md-col-11 lg-col-9 xl-col-9",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 6,
					}),
				})
				return if props.controls.debug
					then React.createElement(GridDebug, { align = props.controls.align }, grid)
					else grid
			end,
		},
		{
			name = "Base w/ GridCell",
			story = function(props)
				local grid = React.createElement(Grid, {
					align = props.controls.align,
					Wraps = props.controls.wraps,
				}, {
					Child1 = React.createElement(ChildCell, {
						name = "C1",
						size = {
							xs = 1,
							sm = 4,
							md = 8,
							lg = 8,
							xl = 8,
						},
						debug = props.controls.debug,
						LayoutOrder = 1,
					}),
					Child2 = React.createElement(ChildCell, {
						name = "C2",
						size = {
							xs = 1,
							sm = 2,
							md = 4,
							lg = 4,
							xl = 4,
							xxl = 4,
						},
						debug = props.controls.debug,
						LayoutOrder = 2,
					}),
					Child3 = React.createElement(ChildCell, {
						name = "C3",
						size = {
							xs = 1,
							sm = 5,
							md = 7,
							lg = 10,
							xl = 10,
						},
						debug = props.controls.debug,
						LayoutOrder = 3,
					}),
					Child4 = React.createElement(ChildCell, {
						name = "C4",
						size = {
							xs = 3,
							sm = 1,
							md = 5,
							lg = 2,
							xl = 2,
						},
						debug = props.controls.debug,
						LayoutOrder = 4,
					}),
					Child5 = React.createElement(ChildCell, {
						name = "C5",
						size = {
							xs = 1,
							sm = 4,
							md = 1,
							lg = 3,
							xl = 3,
						},
						debug = props.controls.debug,
						LayoutOrder = 5,
					}),
					Child6 = React.createElement(ChildCell, {
						name = "C6",
						size = {
							xs = 1,
							sm = 3,
							md = 11,
							lg = 9,
							xl = 9,
						},
						debug = props.controls.debug,
						LayoutOrder = 6,
					}),
				})
				return if props.controls.debug
					then React.createElement(GridDebug, { align = props.controls.align }, grid)
					else grid
			end,
		},
		{
			name = "Grid",
			story = function(props)
				local n = 12

				local cells = React.useMemo(function()
					local items = {}

					for i = 1, n do
						table.insert(
							items,
							React.createElement(View, {
								tag = `xs-col-1 sm-col-2 md-col-3 lg-col-4 xl-col-6 size-full-full aspect-2-1  margin-bottom-large`,
								LayoutOrder = props.LayoutOrder,
							}, {
								Frame = React.createElement(View, {
									tag = "size-full-full bg-action-emphasis",
								}, {
									Label = React.createElement(Text, {
										tag = "size-full-full text-wrap text-label-small position-center-center anchor-center-center",
										Text = `{i}`,
									}),
								}),
							})
						)
					end

					return items
				end, { n })

				local grid = React.createElement(Grid, {
					align = props.controls.align,
					Wraps = props.controls.wraps,
				}, cells :: { any })
				return if props.controls.debug
					then React.createElement(GridDebug, { align = props.controls.align }, grid)
					else grid
			end,
		},
		{
			name = "Fluid",
			story = function(props)
				local grid = React.createElement(Grid, {
					align = props.controls.align,
					Wraps = props.controls.wraps,
				}, {
					Child1 = React.createElement(Child, {
						tag = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12",
						name = "C1",
						debug = props.controls.debug,
						LayoutOrder = 1,
					}),

					Child2 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6",
						name = "C3",
						debug = props.controls.debug,
						LayoutOrder = 3,
					}),
					Child3 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6",
						name = "C3",
						debug = props.controls.debug,
						LayoutOrder = 3,
					}),

					Child4 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4",
						name = "C4",
						debug = props.controls.debug,
						LayoutOrder = 4,
					}),
					Child5 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4",
						name = "C5",
						debug = props.controls.debug,
						LayoutOrder = 5,
					}),
					Child6 = React.createElement(Child, {
						tag = "xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 6,
					}),

					Child7 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3",
						name = "C3",
						debug = props.controls.debug,
						LayoutOrder = 7,
					}),
					Child8 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3",
						name = "C4",
						debug = props.controls.debug,
						LayoutOrder = 8,
					}),
					Child9 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3",
						name = "C5",
						debug = props.controls.debug,
						LayoutOrder = 9,
					}),
					Child10 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 10,
					}),

					Child11 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C3",
						debug = props.controls.debug,
						LayoutOrder = 11,
					}),
					Child12 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C4",
						debug = props.controls.debug,
						LayoutOrder = 12,
					}),
					Child13 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C5",
						debug = props.controls.debug,
						LayoutOrder = 13,
					}),
					Child14 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 14,
					}),
					Child15 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 15,
					}),
					Child16 = React.createElement(Child, {
						tag = "xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2",
						name = "C6",
						debug = props.controls.debug,
						LayoutOrder = 16,
					}),
				})
				return if props.controls.debug
					then React.createElement(GridDebug, { align = props.controls.align }, grid)
					else grid
			end,
		},
		{
			name = "Template",
			story = function(props)
				return React.createElement(View, {
					tag = "size-full-3000 row auto-y",
				}, {
					Left = React.createElement(View, {
						tag = "col flex-y-fill items-stretch auto-y",
						Size = UDim2.fromScale(0.666, 1),
					}, {
						ChildL1 = (function()
							local grid = React.createElement(Grid, {
								align = props.controls.align,
								Wraps = props.controls.wraps,
								LayoutOrder = 1,
							}, {
								SubChildL1 = React.createElement(Child, {
									tag = "xs-col-2 sm-col-3 md-col-6 lg-col-8 xl-col-8",
									name = "SC1",
									Size = UDim2.fromOffset(0, 250),
									debug = props.controls.debug,
									LayoutOrder = 1,
								}),
								SubChildL2 = React.createElement(Child, {
									tag = "xs-col-1 sm-col-3 md-col-6 lg-col-4 xl-col-4",
									name = "SC1",
									Size = UDim2.fromOffset(0, 250),
									debug = props.controls.debug,
									LayoutOrder = 1,
								}),
							})
							return if props.controls.debug
								then React.createElement(GridDebug, { align = props.controls.align }, grid)
								else grid
						end)(),
					}),
					Right = React.createElement(View, {
						tag = "col flex-y-fill auto-y",
						Size = UDim2.fromScale(0.333, 1),
					}, {
						ChildR1 = (function()
							local grid = React.createElement(Grid, {
								align = props.controls.align,
								Wraps = props.controls.wraps,
								LayoutOrder = 1,
							}, {
								SubChildR1 = React.createElement(Child, {
									tag = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12",
									name = "SC1",
									Size = UDim2.fromOffset(0, 125),
									debug = props.controls.debug,
									LayoutOrder = 1,
								}),
							})
							return if props.controls.debug
								then React.createElement(GridDebug, { align = props.controls.align }, grid)
								else grid
						end)(),
						ChildR2 = (function()
							local grid = React.createElement(Grid, {
								align = props.controls.align,
								Wraps = props.controls.wraps,
								LayoutOrder = 1,
							}, {
								SubChildR2 = React.createElement(Child, {
									tag = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12",
									name = "SC2",
									Size = UDim2.fromOffset(0, 125),
									debug = props.controls.debug,
									LayoutOrder = 1,
								}),
							})
							return if props.controls.debug
								then React.createElement(GridDebug, { align = props.controls.align }, grid)
								else grid
						end)(),
					}),
				})
			end,
		},
	} :: { any },
	controls = {
		align = {
			Enum.ItemLineAlignment.Center,
			Enum.ItemLineAlignment.Start,
			Enum.ItemLineAlignment.End,
		},
		wraps = true,
		debug = false,
	},
}
