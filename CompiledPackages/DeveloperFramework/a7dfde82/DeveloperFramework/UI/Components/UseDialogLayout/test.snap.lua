--!strict

local snapshots = {}

snapshots.BASIC = [[
<Folder #Folder>
	<ScreenGui #ScreenGui>
		<Frame #Layout .Component-UseDialogLayout .Confirmation LayoutOrder=0>
			<Frame #Content LayoutOrder=2>
				<Frame #Buttons LayoutOrder=6>
					<Frame #RightAnchoredButtons LayoutOrder=0>
						<TextButton #Primary .Primary .Enabled LayoutOrder=8 Text="Primary"/>
						<TextButton #Secondary .Secondary .Disabled LayoutOrder=7 Text="Secondary"/>
					</Frame>
					<TextButton #Tertiary .Tertiary .Enabled LayoutOrder=0 Text="Tertiary"/>
				</Frame>
				<Frame #Text LayoutOrder=3>
					<TextLabel #Body LayoutOrder=5 Text="body"/>
					<TextLabel #Heading LayoutOrder=4 Text="heading"/>
				</Frame>
			</Frame>
			<ImageLabel #Icon LayoutOrder=1/>
		</Frame>
	</ScreenGui>
</Folder>]]

return snapshots
