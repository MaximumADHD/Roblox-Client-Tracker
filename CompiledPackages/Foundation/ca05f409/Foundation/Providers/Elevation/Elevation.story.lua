local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dialog = require(Foundation.Components.Dialog)
local DialogSize = require(Foundation.Enums.DialogSize)
local Flags = require(Foundation.Utility.Flags)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local Menu = require(Foundation.Components.Menu)
local Popover = require(Foundation.Components.Popover)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Sheet = require(Foundation.Components.Sheet)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type ButtonVariant = ButtonVariant.ButtonVariant
type DialogSize = DialogSize.DialogSize
type MenuItem = Menu.MenuItem

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
			name = "Sibling Popovers",
			story = function()
				local isLeftOpen, setIsLeftOpen = React.useState(false)
				local isMiddleOpen, setIsMiddleOpen = React.useState(false)
				local isRightOpen, setIsRightOpen = React.useState(false)

				local function toggleLeft()
					setIsLeftOpen(not isLeftOpen)
				end

				local function toggleMiddle()
					setIsMiddleOpen(not isMiddleOpen)
				end

				local function toggleRight()
					setIsRightOpen(not isRightOpen)
				end

				return React.createElement(View, {
					tag = "row align-y-center gap-large auto-xy",
				}, {
					[1] = React.createElement(Popover.Root, {
						isOpen = isLeftOpen,
						key = "left",
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(Button, {
								text = "Left Popover",
								onActivated = toggleLeft,
								variant = ButtonVariant.Emphasis,
							})
						),
						Content = React.createElement(
							Popover.Content,
							{
								align = PopoverAlign.Start,
								side = PopoverSide.Left,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Left content",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "Sibling popover",
									tag = "auto-xy text-body-small",
								}),
							})
						),
					}),
					[2] = React.createElement(Popover.Root, {
						isOpen = isMiddleOpen,
						key = "middle",
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(Button, {
								text = "Middle Popover",
								onActivated = toggleMiddle,
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
									Text = "Middle content",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "Sibling popover",
									tag = "auto-xy text-body-small",
								}),
							})
						),
					}),
					[3] = React.createElement(Popover.Root, {
						isOpen = isRightOpen,
						key = "right",
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(Button, {
								text = "Right Popover",
								onActivated = toggleRight,
								variant = ButtonVariant.Emphasis,
							})
						),
						Content = React.createElement(
							Popover.Content,
							{
								align = PopoverAlign.Start,
								side = PopoverSide.Left,
							},
							React.createElement(View, {
								tag = "col gap-small padding-medium auto-xy",
							}, {
								Title = React.createElement(Text, {
									Text = "Right content",
									tag = "auto-xy text-title-medium content-emphasis",
								}),
								Subtitle = React.createElement(Text, {
									Text = "Sibling popover",
									tag = "auto-xy text-body-small",
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
		{
			name = "Dialog with Nested Popovers",
			story = function()
				local isDialogOpen, setIsDialogOpen = React.useState(false)
				local isPopover1Open, setIsPopover1Open = React.useState(false)
				local isPopover2Open, setIsPopover2Open = React.useState(false)

				local function toggleDialog()
					setIsDialogOpen(not isDialogOpen)

					if isDialogOpen then
						setIsPopover1Open(false)
						setIsPopover2Open(false)
					end
				end

				local function togglePopover1()
					setIsPopover1Open(not isPopover1Open)

					if isPopover1Open then
						setIsPopover2Open(false)
					end
				end

				local function togglePopover2()
					setIsPopover2Open(not isPopover2Open)
				end

				return React.createElement(React.Fragment, nil, {
					ToggleButton = React.createElement(Button, {
						text = "Open Dialog",
						onActivated = toggleDialog,
						variant = ButtonVariant.Emphasis,
					}),
					Dialog = if isDialogOpen
						then React.createElement(Dialog.Root, {
							onClose = toggleDialog,
							hasBackdrop = true,
							disablePortal = false,
							size = DialogSize.Large,
						}, {
							DialogTitle = React.createElement(Dialog.Title, {
								text = "Dialog with Nested Popovers",
							}),
							DialogContent = React.createElement(Dialog.Content, nil, {
								Layout = React.createElement(View, {
									tag = "col gap-medium auto-xy",
								}, {
									Description = React.createElement(Text, {
										Text = "Open the first popover, then open the second one inside it. Both should render above the dialog.",
										tag = "auto-xy text-body-large text-wrap text-align-x-left",
										LayoutOrder = 1,
									}),
									Popover1 = React.createElement(Popover.Root, {
										isOpen = isPopover1Open,
									}, {
										Anchor = React.createElement(
											Popover.Anchor,
											{ LayoutOrder = 2 },
											React.createElement(Button, {
												text = "Open First Popover",
												onActivated = togglePopover1,
											})
										),
										Content = React.createElement(
											Popover.Content,
											{
												align = PopoverAlign.Start,
												side = PopoverSide.Right,
											},
											React.createElement(View, {
												tag = "col gap-small auto-xy padding-medium",
											}, {
												Title = React.createElement(Text, {
													Text = "First Popover",
													tag = "auto-xy text-title-medium content-emphasis",
													LayoutOrder = 1,
												}),
												Description = React.createElement(Text, {
													Text = "This popover is inside the dialog. Open the next one to verify nested stacking.",
													tag = "auto-xy text-body-small",
													LayoutOrder = 2,
												}),
												Popover2 = React.createElement(Popover.Root, {
													isOpen = isPopover2Open,
												}, {
													Anchor = React.createElement(
														Popover.Anchor,
														{ LayoutOrder = 3 },
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
															tag = "col gap-small auto-xy padding-medium",
														}, {
															Title = React.createElement(Text, {
																Text = "Second Popover",
																tag = "auto-xy text-title-medium content-emphasis",
															}),
															Description = React.createElement(Text, {
																Text = "This nested popover should render above the first popover.",
																tag = "auto-xy text-body-small",
															}),
														})
													),
												}),
											})
										),
									}),
								}),
							}),
						})
						else nil,
				})
			end,
		},
		{
			name = "Dialog with Sibling Popovers",
			story = function()
				local isDialogOpen, setIsDialogOpen = React.useState(false)
				local isLeftOpen, setIsLeftOpen = React.useState(false)
				local isMiddleOpen, setIsMiddleOpen = React.useState(false)
				local isRightOpen, setIsRightOpen = React.useState(false)

				local function toggleDialog()
					setIsDialogOpen(not isDialogOpen)

					if isDialogOpen then
						setIsLeftOpen(false)
						setIsMiddleOpen(false)
						setIsRightOpen(false)
					end
				end

				local function toggleLeft()
					setIsLeftOpen(not isLeftOpen)
				end

				local function toggleMiddle()
					setIsMiddleOpen(not isMiddleOpen)
				end

				local function toggleRight()
					setIsRightOpen(not isRightOpen)
				end

				return React.createElement(React.Fragment, nil, {
					ToggleButton = React.createElement(Button, {
						text = "Open Dialog",
						onActivated = toggleDialog,
						variant = ButtonVariant.Emphasis,
					}),
					Dialog = if isDialogOpen
						then React.createElement(Dialog.Root, {
							onClose = toggleDialog,
							hasBackdrop = true,
							disablePortal = false,
							size = DialogSize.Large,
						}, {
							DialogTitle = React.createElement(Dialog.Title, {
								text = "Dialog with Sibling Popovers",
							}),
							DialogContent = React.createElement(Dialog.Content, nil, {
								Layout = React.createElement(View, {
									tag = "col gap-medium auto-xy",
								}, {
									Description = React.createElement(Text, {
										Text = "Open multiple popovers at the same time. All should render above the dialog at the same elevation.",
										tag = "auto-xy text-body-large",
										LayoutOrder = 1,
									}),
									Buttons = React.createElement(View, {
										tag = "row gap-medium auto-xy",
										LayoutOrder = 2,
									}, {
										[1] = React.createElement(Popover.Root, {
											isOpen = isLeftOpen,
										}, {
											Anchor = React.createElement(
												Popover.Anchor,
												nil,
												React.createElement(Button, {
													text = "Left Popover",
													onActivated = toggleLeft,
												})
											),
											Content = React.createElement(
												Popover.Content,
												{
													align = PopoverAlign.Start,
													side = PopoverSide.Top,
												},
												React.createElement(View, {
													tag = "col gap-small auto-xy padding-medium",
												}, {
													Title = React.createElement(Text, {
														Text = "Left Popover",
														tag = "auto-xy text-title-medium content-emphasis",
													}),
													Subtitle = React.createElement(Text, {
														Text = "Sibling popover inside dialog",
														tag = "auto-xy text-body-small",
													}),
												})
											),
										}),
										[2] = React.createElement(Popover.Root, {
											isOpen = isMiddleOpen,
										}, {
											Anchor = React.createElement(
												Popover.Anchor,
												nil,
												React.createElement(Button, {
													text = "Middle Popover",
													onActivated = toggleMiddle,
												})
											),
											Content = React.createElement(
												Popover.Content,
												{
													align = PopoverAlign.Center,
													side = PopoverSide.Top,
												},
												React.createElement(View, {
													tag = "col gap-small auto-xy padding-medium",
												}, {
													Title = React.createElement(Text, {
														Text = "Middle Popover",
														tag = "auto-xy text-title-medium content-emphasis",
													}),
													Subtitle = React.createElement(Text, {
														Text = "Sibling popover inside dialog",
														tag = "auto-xy text-body-small",
													}),
												})
											),
										}),
										[3] = React.createElement(Popover.Root, {
											isOpen = isRightOpen,
										}, {
											Anchor = React.createElement(
												Popover.Anchor,
												nil,
												React.createElement(Button, {
													text = "Right Popover",
													onActivated = toggleRight,
												})
											),
											Content = React.createElement(
												Popover.Content,
												{
													align = PopoverAlign.End,
													side = PopoverSide.Top,
												},
												React.createElement(View, {
													tag = "col gap-small auto-xy padding-medium",
												}, {
													Title = React.createElement(Text, {
														Text = "Right Popover",
														tag = "auto-xy text-title-medium content-emphasis",
													}),
													Subtitle = React.createElement(Text, {
														Text = "Sibling popover inside dialog",
														tag = "auto-xy text-body-small",
													}),
												})
											),
										}),
									}),
								}),
							}),
						})
						else nil,
				})
			end,
		},
		if Flags.FoundationBaseMenuSubmenuSupport
			then {
				name = "Sheet > Dialog > Nested Menus",
				story = function()
					local isSheetOpen, setIsSheetOpen = React.useState(false)
					local isDialogOpen, setIsDialogOpen = React.useState(false)
					local isMenuOpen, setIsMenuOpen = React.useState(false)

					local function toggleSheet()
						setIsSheetOpen(not isSheetOpen)
						if isSheetOpen then
							setIsDialogOpen(false)
							setIsMenuOpen(false)
						end
					end

					local function toggleDialog()
						setIsDialogOpen(not isDialogOpen)
						if isDialogOpen then
							setIsMenuOpen(false)
						end
					end

					local menuItems: { MenuItem } = {
						{
							id = "file",
							icon = "page",
							text = "File",
							items = {
								{
									id = "open-recent",
									icon = "clock",
									text = "Open Recent",
									items = {
										{ id = "project-alpha", icon = "globe-simplified", text = "Project Alpha" } :: MenuItem,
										{ id = "project-beta", icon = "globe-simplified", text = "Project Beta" } :: MenuItem,
										{ id = "project-gamma", text = "Project Gamma" } :: MenuItem,
									},
								},
								{ id = "save", icon = "floppy-disk", text = "Save" },
								{ id = "save-as", text = "Save As..." },
								{
									id = "export",
									icon = "arrow-large-right",
									text = "Export",
									items = {
										{ id = "export-rbxl", text = "Place File (.rbxl)" } :: MenuItem,
										{ id = "export-rbxm", text = "Model File (.rbxm)" } :: MenuItem,
										{ id = "export-png", icon = "photo-camera", text = "Screenshot (.png)" } :: MenuItem,
									},
								},
							} :: { MenuItem },
						},
						{
							id = "edit",
							icon = "pencil-square",
							text = "Edit",
							items = {
								{ id = "undo", icon = "arrow-large-left", text = "Undo" },
								{ id = "redo", icon = "arrow-large-right", text = "Redo" },
								{ id = "cut", text = "Cut" },
								{ id = "copy", text = "Copy" },
								{ id = "paste", text = "Paste" },
							} :: { MenuItem },
						},
						{ id = "select-all", icon = "check-large", text = "Select All" },
						{ id = "preferences", icon = "gear", text = "Preferences" },
					}

					return React.createElement(React.Fragment, nil, {
						ToggleButton = React.createElement(Button, {
							text = "Open Sheet",
							onActivated = toggleSheet,
							variant = ButtonVariant.Emphasis,
						}),
						Sheet = if isSheetOpen
							then React.createElement(Sheet.Root, {
								onClose = toggleSheet,
								snapPoints = { 0.4, 0.7 },
								defaultSnapPointIndex = 2,
								displaySize = Enum.DisplaySize.Small,
							}, {
								Header = React.createElement(Sheet.Header, nil, {
									Title = React.createElement(Text, {
										Text = "Sheet with Dialog & Menus",
										tag = "auto-xy text-title-medium content-emphasis",
									}),
								}),
								Content = React.createElement(Sheet.Content, nil, {
									Layout = React.createElement(View, {
										tag = "col gap-medium auto-xy",
									}, {
										Description = React.createElement(Text, {
											Text = "Open the dialog below, then try the nested menu inside it.",
											tag = "auto-xy text-body-medium",
											LayoutOrder = 1,
										}),
										OpenDialogButton = React.createElement(Button, {
											text = "Open Dialog",
											onActivated = toggleDialog,
											variant = ButtonVariant.Emphasis,
											LayoutOrder = 2,
										}),
									}),
								}),
							})
							else nil,
						Dialog = if isDialogOpen
							then React.createElement(Dialog.Root, {
								onClose = toggleDialog,
								hasBackdrop = true,
								disablePortal = false,
								size = DialogSize.Large,
							}, {
								DialogTitle = React.createElement(Dialog.Title, {
									text = "Dialog with Nested Menu",
								}),
								DialogContent = React.createElement(Dialog.Content, nil, {
									Layout = React.createElement(View, {
										tag = "col gap-medium auto-xy",
									}, {
										Description = React.createElement(Text, {
											Text = "The menu below has 3 levels of nested submenus. Hover or click to navigate.",
											tag = "auto-xy text-body-medium",
											LayoutOrder = 1,
										}),
										MenuContainer = React.createElement(View, {
											tag = "row auto-xy",
											LayoutOrder = 2,
										}, {
											Menu = React.createElement(Menu, {
												isOpen = isMenuOpen,
												items = menuItems,
												size = InputSize.Medium,
												onPressedOutside = function()
													setIsMenuOpen(false)
												end,
												onActivated = function(id)
													print("Elevation story menu activated:", id)
													setIsMenuOpen(false)
												end,
											}, {
												Button = React.createElement(Button, {
													text = "Open Menu",
													size = InputSize.Medium,
													onActivated = function()
														setIsMenuOpen(not isMenuOpen)
													end,
												}),
											}),
										}),
									}),
								}),
							})
							else nil,
					})
				end,
			}
			else {} :: any,
	},
	controls = {},
}
