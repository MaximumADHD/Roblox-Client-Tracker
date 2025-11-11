local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dialog = require(Foundation.Components.Dialog)
local View = require(Foundation.Components.View)
local Button = require(Foundation.Components.Button)
local IconButton = require(Foundation.Components.IconButton)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local Popover = require(Foundation.Components.Popover)
local Text = require(Foundation.Components.Text)
local InputSize = require(Foundation.Enums.InputSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogSize = require(Foundation.Enums.DialogSize)
local Sheet = require(Foundation.Components.Sheet)

type ButtonVariant = ButtonVariant.ButtonVariant
type DialogSize = DialogSize.DialogSize

type StoryProps = {
	controls: {},
}

type PopoverComponentProps = {
	isOpen: boolean,
	toggle: () -> (),
	title: string,
	anchorText: string,
	subtitle: string,
}

local function PopoverComponent(props: PopoverComponentProps)
	return React.createElement(Popover.Root, {
		isOpen = props.isOpen,
	}, {
		Anchor = React.createElement(
			Popover.Anchor,
			{
				LayoutOrder = 2,
			},
			React.createElement(IconButton, {
				icon = "reactions/heart",
				onActivated = props.toggle,
				size = InputSize.Medium,
			})
		),
		Content = React.createElement(
			Popover.Content,
			{
				align = PopoverAlign.Start,
				side = PopoverSide.Top,
			},
			React.createElement(View, {
				tag = "col gap-small padding-medium auto-xy",
			}, {
				Title = React.createElement(Text, {
					Text = props.title,
					tag = "auto-xy text-title-medium content-emphasis",
				}),
				Subtitle = React.createElement(Text, {
					Text = props.subtitle,
					tag = "auto-xy text-body-small",
				}),
			})
		),
	})
end

type ToggleModalAndPopoverProps = {
	modalTriggerText: string,
	popoverTriggerText: string,
	popoverTitle: string,
	popoverSubtitle: string,
	toggleModal: () -> (),
	[any]: nil,
}

return {
	summary = "Elevation",
	stories = {
		{
			name = "Nested Popovers",
			story = function()
				local isPopover1Open, setIsPopover1Open = React.useState(false)
				local isPopover2Open, setIsPopover2Open = React.useState(false)
				local isPopover3Open, setIsPopover3Open = React.useState(false)

				local function togglePopover1()
					setIsPopover1Open(not isPopover1Open)
					-- Close nested popovers when parent closes
					if isPopover1Open then
						setIsPopover2Open(false)
						setIsPopover3Open(false)
					end
				end

				local function togglePopover2()
					setIsPopover2Open(not isPopover2Open)
					-- Close innermost popover when middle one closes
					if isPopover2Open then
						setIsPopover3Open(false)
					end
				end

				local function togglePopover3()
					setIsPopover3Open(not isPopover3Open)
				end

				return React.createElement(View, {
					tag = "col auto-xy gap-medium",
				}, {
					Popover1 = React.createElement(Popover.Root, {
						isOpen = isPopover1Open,
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(Button, {
								text = "Open First Popover",
								onActivated = togglePopover1,
								variant = ButtonVariant.Emphasis,
							})
						),
						Content = React.createElement(
							Popover.Content,
							{
								align = PopoverAlign.Start,
								side = PopoverSide.Right,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "First Popover",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Description = React.createElement(Text, {
									Text = "Click below to open the second popover",
									tag = "auto-xy text-body-small",
								}),
								Popover2 = React.createElement(Popover.Root, {
									isOpen = isPopover2Open,
								}, {
									Anchor = React.createElement(
										Popover.Anchor,
										nil,
										React.createElement(Button, {
											text = "Open Second Popover",
											onActivated = togglePopover2,
											size = InputSize.Small,
										})
									),
									Content = React.createElement(
										Popover.Content,
										{
											align = PopoverAlign.Start,
											side = PopoverSide.Right,
										},
										React.createElement(View, {
											tag = "col gap-small padding-medium auto-xy",
										}, {
											Title = React.createElement(Text, {
												Text = "Second Popover",
												tag = "auto-xy text-title-medium content-emphasis",
											}),
											Description = React.createElement(Text, {
												Text = "One more level to go!",
												tag = "auto-xy text-body-small",
											}),
											Popover3 = React.createElement(Popover.Root, {
												isOpen = isPopover3Open,
											}, {
												Anchor = React.createElement(
													Popover.Anchor,
													nil,
													React.createElement(Button, {
														text = "Open Final Popover",
														onActivated = togglePopover3,
														size = InputSize.Small,
													})
												),
												Content = React.createElement(
													Popover.Content,
													{
														align = PopoverAlign.Start,
														side = PopoverSide.Right,
													},
													React.createElement(View, {
														tag = "col gap-small padding-medium auto-xy",
													}, {
														Title = React.createElement(Text, {
															Text = "Final Popover",
															tag = "auto-xy text-title-medium content-emphasis",
														}),
														Description = React.createElement(Text, {
															Text = "🎉 You've reached the deepest level!",
															tag = "auto-xy text-body-small",
														}),
													})
												),
											}),
										})
									),
								}),
							})
						),
					}),
				})
			end,
		},
		{
			name = "Nested Sheets",
			story = function()
				local isSheet1Open, setIsSheet1Open = React.useState(false)
				local isSheet2Open, setIsSheet2Open = React.useState(false)
				local isSheet3Open, setIsSheet3Open = React.useState(false)

				local isSheet1PopoverOpen, setIsSheet1PopoverOpen = React.useState(false)
				local isSheet2PopoverOpen, setIsSheet2PopoverOpen = React.useState(false)
				local isSheet3PopoverOpen, setIsSheet3PopoverOpen = React.useState(false)

				local function toggleSheet1()
					setIsSheet1Open(not isSheet1Open)

					if isSheet1Open then
						setIsSheet2Open(false)
						setIsSheet3Open(false)
						setIsSheet1PopoverOpen(false)
					end
				end

				local function toggleSheet2()
					setIsSheet2Open(not isSheet2Open)

					if isSheet2Open then
						setIsSheet3Open(false)
						setIsSheet2PopoverOpen(false)
					end
				end

				local function toggleSheet3()
					setIsSheet3Open(not isSheet3Open)

					if isSheet3Open then
						setIsSheet3PopoverOpen(false)
					end
				end

				local function toggleSheet1Popover()
					setIsSheet1PopoverOpen(not isSheet1PopoverOpen)
				end

				local function toggleSheet2Popover()
					setIsSheet2PopoverOpen(not isSheet2PopoverOpen)
				end

				local function toggleSheet3Popover()
					setIsSheet3PopoverOpen(not isSheet3PopoverOpen)
				end

				return React.createElement(React.Fragment, nil, {
					ToggleButton = React.createElement(Button, {
						text = "Open First Sheet",
						onActivated = toggleSheet1,
						variant = ButtonVariant.Emphasis,
					}),
					Sheet1 = if isSheet1Open
						then React.createElement(Sheet.Root, {
							onClose = toggleSheet1,
							snapPoints = { 0.3, 0.6 },
							defaultSnapPointIndex = 2,
							displaySize = Enum.DisplaySize.Small,
						}, {
							Header = React.createElement(Sheet.Header, nil, {
								Title = React.createElement(Text, {
									Text = "Sheet 1",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
							}),
							Content = React.createElement(Sheet.Content, nil, {
								Layout = React.createElement(View, {
									tag = "row auto-xy gap-medium",
								}, {
									Sheet1Popover = React.createElement(PopoverComponent, {
										isOpen = isSheet1PopoverOpen,
										toggle = toggleSheet1Popover,
										anchorText = "Open Popover",
										title = "Popover title",
										subtitle = "Popover subtitle",
									}),
									OpenSheet2Button = React.createElement(Button, {
										text = "Open Second Sheet",
										onActivated = toggleSheet2,
										variant = ButtonVariant.Emphasis,
									}),
								}),
							}),
							Sheet2 = if isSheet2Open
								then React.createElement(Sheet.Root, {
									onClose = toggleSheet2,
									snapPoints = { 0.4, 0.7 },
									defaultSnapPointIndex = 2,
									displaySize = Enum.DisplaySize.Small,
								}, {
									Header = React.createElement(Sheet.Header, nil, {
										Title = React.createElement(Text, {
											Text = "Sheet 2",
											tag = "auto-xy text-title-medium content-emphasis",
										}),
									}),
									Content = React.createElement(Sheet.Content, nil, {
										Layout = React.createElement(View, {
											tag = "row auto-xy gap-medium",
										}, {
											Sheet2Popover = React.createElement(PopoverComponent, {
												isOpen = isSheet2PopoverOpen,
												toggle = toggleSheet2Popover,
												anchorText = "Open Popover",
												title = "Popover title",
												subtitle = "Popover subtitle",
											}),
											OpenSheet3Button = React.createElement(Button, {
												text = "Open Third Sheet",
												onActivated = toggleSheet3,
												variant = ButtonVariant.Emphasis,
											}),
										}),
									}),
									Sheet3 = if isSheet3Open
										then React.createElement(Sheet.Root, {
											onClose = toggleSheet3,
											snapPoints = { 0.5, 0.8 },
											defaultSnapPointIndex = 2,
											preferCenterSheet = true,
										}, {
											Header = React.createElement(Sheet.Header, nil, {
												Title = React.createElement(Text, {
													Text = "Sheet 3",
													tag = "auto-xy text-title-medium content-emphasis",
												}),
											}),
											Content = React.createElement(Sheet.Content, nil, {
												Layout = React.createElement(View, {
													tag = "row auto-xy gap-medium align-y-center",
												}, {
													Sheet3Popover = React.createElement(PopoverComponent, {
														isOpen = isSheet3PopoverOpen,
														toggle = toggleSheet3Popover,
														anchorText = "Open Popover",
														title = "Popover title",
														subtitle = "Popover subtitle",
													}),
													Text = React.createElement(Text, {
														Text = "🎉 You've reached the innermost sheet!",
														tag = "auto-xy text-title-medium content-emphasis",
													}),
												}),
											}),
										})
										else nil,
								})
								else nil,
						})
						else nil,
				})
			end,
		},
		{
			name = "Nested Dialogs",
			story = function()
				local isDialog1Open, setIsDialog1Open = React.useState(false)
				local isDialog2Open, setIsDialog2Open = React.useState(false)
				local isDialog3Open, setIsDialog3Open = React.useState(false)

				local isDialog1PopoverOpen, setIsDialog1PopoverOpen = React.useState(false)
				local isDialog2PopoverOpen, setIsDialog2PopoverOpen = React.useState(false)
				local isDialog3PopoverOpen, setIsDialog3PopoverOpen = React.useState(false)

				local function toggleDialog1()
					setIsDialog1Open(not isDialog1Open)

					if isDialog1Open then
						setIsDialog2Open(false)
						setIsDialog3Open(false)
						setIsDialog1PopoverOpen(false)
					end
				end

				local function toggleDialog2()
					setIsDialog2Open(not isDialog2Open)

					if isDialog2Open then
						setIsDialog3Open(false)
						setIsDialog2PopoverOpen(false)
					end
				end

				local function toggleDialog3()
					setIsDialog3Open(not isDialog3Open)

					if isDialog3Open then
						setIsDialog3PopoverOpen(false)
					end
				end

				local function toggleDialog1Popover()
					setIsDialog1PopoverOpen(not isDialog1PopoverOpen)
				end

				local function toggleDialog2Popover()
					setIsDialog2PopoverOpen(not isDialog2PopoverOpen)
				end

				local function toggleDialog3Popover()
					setIsDialog3PopoverOpen(not isDialog3PopoverOpen)
				end

				return React.createElement(React.Fragment, nil, {
					ToggleButton = React.createElement(Button, {
						text = "Open First Dialog",
						onActivated = toggleDialog1,
						variant = ButtonVariant.Emphasis,
					}),
					Dialog1 = if isDialog1Open
						then React.createElement(Dialog.Root, {
							onClose = toggleDialog1,
							hasBackdrop = true,
							disablePortal = false,
							size = DialogSize.Large,
						}, {
							DialogTitle = React.createElement(Dialog.Title, {
								text = "First Dialog",
							}),
							DialogContent = React.createElement(Dialog.Content, nil, {
								Layout = React.createElement(View, {
									tag = "row auto-xy gap-medium",
								}, {
									Dialog1Popover = React.createElement(PopoverComponent, {
										isOpen = isDialog1PopoverOpen,
										toggle = toggleDialog1Popover,
										anchorText = "Open Popover",
										title = "Popover title",
										subtitle = "Popover subtitle",
									}),
									OpenDialog2Button = React.createElement(Button, {
										text = "Open Second Dialog",
										onActivated = toggleDialog2,
										variant = ButtonVariant.Emphasis,
									}),
								}),
							}),
							Dialog2 = if isDialog2Open
								then React.createElement(Dialog.Root, {
									onClose = toggleDialog2,
									hasBackdrop = true,
									disablePortal = false,
									size = DialogSize.Medium,
								}, {
									DialogTitle = React.createElement(Dialog.Title, {
										text = "Second Dialog",
									}),
									DialogContent = React.createElement(Dialog.Content, nil, {
										Layout = React.createElement(View, {
											tag = "row auto-xy gap-medium",
										}, {
											Dialog2Popover = React.createElement(PopoverComponent, {
												isOpen = isDialog2PopoverOpen,
												toggle = toggleDialog2Popover,
												anchorText = "Open Popover",
												title = "Popover title",
												subtitle = "Popover subtitle",
											}),
											OpenDialog3Button = React.createElement(Button, {
												text = "Open Third Dialog",
												onActivated = toggleDialog3,
												variant = ButtonVariant.Emphasis,
											}),
										}),
									}),
									Dialog3 = if isDialog3Open
										then React.createElement(Dialog.Root, {
											onClose = toggleDialog3,
											hasBackdrop = true,
											disablePortal = false,
											size = DialogSize.Small,
										}, {
											DialogTitle = React.createElement(Dialog.Title, {
												text = "Third Dialog",
											}),
											DialogContent = React.createElement(Dialog.Content, nil, {
												Layout = React.createElement(View, {
													tag = "row auto-xy gap-medium wrap",
												}, {
													Dialog3Popover = React.createElement(PopoverComponent, {
														isOpen = isDialog3PopoverOpen,
														toggle = toggleDialog3Popover,
														anchorText = "Open Popover",
														title = "Popover title",
														subtitle = "Popover subtitle",
													}),
													Text = React.createElement(Text, {
														Text = "🎉 You've reached the innermost dialog!",
														tag = "auto-xy text-title-medium content-emphasis",
													}),
												}),
											}),
										})
										else nil,
								})
								else nil,
						})
						else nil,
				})
			end,
		},
	},
	controls = {},
}
