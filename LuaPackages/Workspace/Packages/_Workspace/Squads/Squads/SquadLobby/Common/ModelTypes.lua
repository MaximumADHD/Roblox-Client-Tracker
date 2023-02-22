export type User = {
	-- Id of user
	id: number,
	-- Display name of user
	name: string,
}

export type UserCardProps = {
	-- user model
	user: User,
	-- If the user is blocked by active user
	isBlocked: boolean?,
	-- Name of experience user is in
	experienceName: string?,
	-- Show loading state
	isLoading: boolean?,
	-- Layout order of User card
	layoutOrder: number?,
}

export type PeekViewProps = {
	mountAsFullView: boolean?,
	mountAnimation: boolean?,
	onPeekViewGoBack: () -> (),
}

return nil
