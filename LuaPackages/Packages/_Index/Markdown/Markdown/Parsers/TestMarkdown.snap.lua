local markdown = [==[
<TutorialInfo
  title="Creating Laser Beams"
  summary="Create a laser beam special effect that sets the player's health to zero on collision."
  difficulty="Intermediate"
/>

<TutorialHome>

# Creating Laser Beams

![header-image-or-video](rbxassetid://0000000)

This tutorial shows you how to create a laser beam special effect with an optional script to set the player's health to zero on collision.

### Topics

Setting up an invisible collision box that detects when a player collides with the laser beam.

Configuring attachments that represent the reach of the laser beam's emission.

Customizing a beam that emulates the visual characteristics of a futuristic laser beam.

Scripting behavior for the collision box that damages the player's character.

<ActionButton action="select" target="Workspace.LaserBeamBlaster">![explore-icon](rbxassetid://00000) Explore the Workspace</ActionButton>

<ActionButton action="playtest">![play-icon](rbxassetid://00000) Playtest the demo</ActionButton>

</TutorialHome>

<TutorialSection
  title="Add the Model from the Project Files"
>
## Add the Model from the Project Files

![header-image](rbxassetid://0000000)

Let's get the laser blaster model we'll be using today into our Workspace to get started.

### Steps

<Step
  type="instanceSelect"
  instance="ReplicatedStorage.TutorialFiles.LaserBeamBlaster"
>
Find the <ActionButton action="highlight" target="ReplicatedStorage.TutorialFiles.LaserBeamBlaster">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> in your <ActionButton action="highlight" target="ReplicatedStorage.TutorialFiles">![folder-icon](rbxassetid://00000) project files</ActionButton>.
</Step>

<Step
  type="insertInstance"
  prefab="ReplicatedStorage.TutorialFiles.LaserBeamBlaster"
  target-parent="Workspace"
>
Drag the <ActionButton action="highlight" target="ReplicatedStorage.TutorialFiles.LaserBeamBlaster">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> into <ActionButton action="highlight" target="Workspace">![worldmodel-icon](rbxassetid://00000) Workspace</ActionButton>.
</Step>


[Read more on Docs](create.roblox.com)
</TutorialSection>

<TutorialSection
  title="Create a Script inside the Laser Beam Blaster"
>

## Create a Script inside the Laser Beam Blaster

![header-image](rbxassetid://0000000)

We're going to need a Script in order to make this laser actually work.

### Steps

<Step
  type="insertInstance"
  class-name="Script"
  target-parent="Workspace.LaserBeamBlaster"
>
Create a new Script instance as a child of the <ActionButton action="highlight" target="Workspace.LaserBeamBlaster">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> in Workspace.
</Step>

</TutorialSection>
]==]

local ast = {
	children = {
		{
			attributes = {
				difficulty = "Intermediate",
				summary = "Create a laser beam special effect that sets the player's health to zero on collision.",
				title = "Creating Laser Beams",
			},
			name = "TAG",
			offset = 1,
			text = "TutorialInfo",
		},
		{
			children = {
				{
					attributes = {
						depth = 1,
					},
					children = {
						{
							name = "TEXT",
							offset = 188,
							text = "Creating Laser Beams",
						},
					},
					name = "HEADING",
					offset = 186,
				},
				{
					children = {
						{
							name = "IMAGE",
							offset = 211,
							text = "header-image-or-video",
							attributes = {
								url = "rbxassetid://0000000",
							},
						},
					},
					name = "PARAGRAPH",
					offset = 210,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 258,
							text = "This tutorial shows you how to create a laser beam special effect with an optional script to set the player's health to zero on collision.",
						},
					},
					name = "PARAGRAPH",
					offset = 258,
				},
				{
					attributes = {
						depth = 3,
					},
					children = {
						{
							name = "TEXT",
							offset = 402,
							text = "Topics",
						},
					},
					name = "HEADING",
					offset = 398,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 410,
							text = "Setting up an invisible collision box that detects when a player collides with the laser beam.",
						},
					},
					name = "PARAGRAPH",
					offset = 410,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 506,
							text = "Configuring attachments that represent the reach of the laser beam's emission.",
						},
					},
					name = "PARAGRAPH",
					offset = 506,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 586,
							text = "Customizing a beam that emulates the visual characteristics of a futuristic laser beam.",
						},
					},
					name = "PARAGRAPH",
					offset = 586,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 675,
							text = "Scripting behavior for the collision box that damages the player's character.",
						},
					},
					name = "PARAGRAPH",
					offset = 675,
				},
				{
					attributes = {
						action = "select",
						target = "Workspace.LaserBeamBlaster",
					},
					children = {
						{
							children = {
								{
									name = "IMAGE",
									offset = 821,
									text = "explore-icon",
									attributes = {
										url = "rbxassetid://00000",
									},
								},
								{
									name = "TEXT",
									offset = 856,
									text = " Explore the Workspace",
								},
							},
							name = "PARAGRAPH",
							offset = 821,
						},
					},
					name = "TAG",
					offset = 755,
					text = "ActionButton",
				},
				{
					attributes = {
						action = "playtest",
					},
					children = {
						{
							children = {
								{
									name = "IMAGE",
									offset = 927,
									text = "play-icon",
									attributes = {
										url = "rbxassetid://00000",
									},
								},
								{
									name = "TEXT",
									offset = 959,
									text = " Playtest the demo",
								},
							},
							name = "PARAGRAPH",
							offset = 927,
						},
					},
					name = "TAG",
					offset = 895,
					text = "ActionButton",
				},
			},
			name = "TAG",
			offset = 171,
			text = "TutorialHome",
		},
		{
			attributes = {
				title = "Add the Model from the Project Files",
			},
			children = {
				{
					attributes = {
						depth = 2,
					},
					children = {
						{
							name = "TEXT",
							offset = 1077,
							text = "Add the Model from the Project Files",
						},
					},
					name = "HEADING",
					offset = 1074,
				},
				{
					children = {
						{
							name = "IMAGE",
							offset = 1116,
							text = "header-image",
							attributes = {
								url = "rbxassetid://0000000",
							},
						},
					},
					name = "PARAGRAPH",
					offset = 1115,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 1154,
							text = "Let's get the laser blaster model we'll be using today into our Workspace to get started.",
						},
					},
					name = "PARAGRAPH",
					offset = 1154,
				},
				{
					attributes = {
						depth = 3,
					},
					children = {
						{
							name = "TEXT",
							offset = 1249,
							text = "Steps",
						},
					},
					name = "HEADING",
					offset = 1245,
				},
				{
					attributes = {
						instance = "ReplicatedStorage.TutorialFiles.LaserBeamBlaster",
						type = "instanceSelect",
					},
					children = {
						{
							children = {
								{
									name = "TEXT",
									offset = 1346,
									text = "Find the ",
								},
							},
							name = "PARAGRAPH",
							offset = 1346,
						},
						{
							attributes = {
								action = "highlight",
								target = "ReplicatedStorage.TutorialFiles.LaserBeamBlaster",
							},
							children = {
								{
									children = {
										{
											name = "IMAGE",
											offset = 1447,
											text = "model-icon",
											attributes = {
												url = "rbxassetid://00000",
											},
										},
										{
											name = "TEXT",
											offset = 1480,
											text = " Laser Beam Blaster",
										},
									},
									name = "PARAGRAPH",
									offset = 1447,
								},
							},
							name = "TAG",
							offset = 1356,
							text = "ActionButton",
						},
						{
							children = {
								{
									name = "TEXT",
									offset = 1514,
									text = " in your ",
								},
							},
							name = "PARAGRAPH",
							offset = 1514,
						},
						{
							attributes = {
								action = "highlight",
								target = "ReplicatedStorage.TutorialFiles",
							},
							children = {
								{
									children = {
										{
											name = "IMAGE",
											offset = 1597,
											text = "folder-icon",
											attributes = {
												url = "rbxassetid://00000",
											},
										},
										{
											name = "TEXT",
											offset = 1631,
											text = " project files",
										},
									},
									name = "PARAGRAPH",
									offset = 1597,
								},
							},
							name = "TAG",
							offset = 1523,
							text = "ActionButton",
						},
						{
							children = {
								{
									name = "TEXT",
									offset = 1660,
									text = ".",
								},
							},
							name = "PARAGRAPH",
							offset = 1660,
						},
					},
					name = "TAG",
					offset = 1257,
					text = "Step",
				},
				{
					attributes = {
						prefab = "ReplicatedStorage.TutorialFiles.LaserBeamBlaster",
						["target-parent"] = "Workspace",
						type = "insertInstance",
					},
					children = {
						{
							children = {
								{
									name = "TEXT",
									offset = 1784,
									text = "Drag the ",
								},
							},
							name = "PARAGRAPH",
							offset = 1784,
						},
						{
							attributes = {
								action = "highlight",
								target = "ReplicatedStorage.TutorialFiles.LaserBeamBlaster",
							},
							children = {
								{
									children = {
										{
											name = "IMAGE",
											offset = 1885,
											text = "model-icon",
											attributes = {
												url = "rbxassetid://00000",
											},
										},
										{
											name = "TEXT",
											offset = 1918,
											text = " Laser Beam Blaster",
										},
									},
									name = "PARAGRAPH",
									offset = 1885,
								},
							},
							name = "TAG",
							offset = 1794,
							text = "ActionButton",
						},
						{
							children = {
								{
									name = "TEXT",
									offset = 1952,
									text = " into ",
								},
							},
							name = "PARAGRAPH",
							offset = 1952,
						},
						{
							attributes = {
								action = "highlight",
								target = "Workspace",
							},
							children = {
								{
									children = {
										{
											name = "IMAGE",
											offset = 2010,
											text = "worldmodel-icon",
											attributes = {
												url = "rbxassetid://00000",
											},
										},
										{
											name = "TEXT",
											offset = 2048,
											text = " Workspace",
										},
									},
									name = "PARAGRAPH",
									offset = 2010,
								},
							},
							name = "TAG",
							offset = 1958,
							text = "ActionButton",
						},
						{
							children = {
								{
									name = "TEXT",
									offset = 2073,
									text = ".",
								},
							},
							name = "PARAGRAPH",
							offset = 2073,
						},
					},
					name = "TAG",
					offset = 1671,
					text = "Step",
				},
				{
					children = {
						{
							name = "LINK",
							offset = 2085,
							text = "Read more on Docs",
							attributes = {
								url = "create.roblox.com",
							},
						},
					},
					name = "PARAGRAPH",
					offset = 2084,
				},
			},
			name = "TAG",
			offset = 1011,
			text = "TutorialSection",
		},
		{
			attributes = {
				title = "Create a Script inside the Laser Beam Blaster",
			},
			children = {
				{
					attributes = {
						depth = 2,
					},
					children = {
						{
							name = "TEXT",
							offset = 2220,
							text = "Create a Script inside the Laser Beam Blaster",
						},
					},
					name = "HEADING",
					offset = 2217,
				},
				{
					children = {
						{
							name = "IMAGE",
							offset = 2268,
							text = "header-image",
							attributes = {
								url = "rbxassetid://0000000",
							},
						},
					},
					name = "PARAGRAPH",
					offset = 2267,
				},
				{
					children = {
						{
							name = "TEXT",
							offset = 2306,
							text = "We're going to need a Script in order to make this laser actually work.",
						},
					},
					name = "PARAGRAPH",
					offset = 2306,
				},
				{
					attributes = {
						depth = 3,
					},
					children = {
						{
							name = "TEXT",
							offset = 2383,
							text = "Steps",
						},
					},
					name = "HEADING",
					offset = 2379,
				},
				{
					attributes = {
						["class-name"] = "Script",
						["target-parent"] = "Workspace.LaserBeamBlaster",
						type = "insertInstance",
					},
					children = {
						{
							children = {
								{
									name = "TEXT",
									offset = 2483,
									text = "Create a new Script instance as a child of the ",
								},
							},
							name = "PARAGRAPH",
							offset = 2483,
						},
						{
							attributes = {
								action = "highlight",
								target = "Workspace.LaserBeamBlaster",
							},
							children = {
								{
									children = {
										{
											name = "IMAGE",
											offset = 2600,
											text = "model-icon",
											attributes = {
												url = "rbxassetid://00000",
											},
										},
										{
											name = "TEXT",
											offset = 2633,
											text = " Laser Beam Blaster",
										},
									},
									name = "PARAGRAPH",
									offset = 2600,
								},
							},
							name = "TAG",
							offset = 2531,
							text = "ActionButton",
						},
						{
							children = {
								{
									name = "TEXT",
									offset = 2667,
									text = " in Workspace.",
								},
							},
							name = "PARAGRAPH",
							offset = 2667,
						},
					},
					name = "TAG",
					offset = 2391,
					text = "Step",
				},
			},
			name = "TAG",
			offset = 2144,
			text = "TutorialSection",
		},
	},
	name = "ROOT",
	offset = 1,
}

return {
	markdown = markdown,
	ast = ast,
}
