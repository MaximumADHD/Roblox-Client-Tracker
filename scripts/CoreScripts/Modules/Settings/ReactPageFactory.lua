local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

export type ReactPage = {
	name: string,
	page: React.ComponentType<any>?,
	hubRef: any,
	setPage: (ReactPage, page: React.ComponentType<any>) -> (),
	createPage: (ReactPage, props: any) -> React.ReactNode,
}

export type ReactPageFactory = {
	createNewPage: (ReactPageFactory, name: string) -> ReactPage,
}

local ReactPageFactory: ReactPageFactory = {} :: ReactPageFactory

local function createNewPage(name: string): ReactPage
	local this: ReactPage = {
		name = name,
		page = nil,
		hubRef = nil,
	} :: ReactPage

	function this:setPage(page: React.ComponentType<any>)
		this.page = page
	end

	function this:createPage(props: any): React.ReactNode
		if not this.page then
			return nil
		end
		
		return React.createElement(this.page, props)
	end

	return this
end

function ReactPageFactory:createNewPage(name: string): ReactPage
	return createNewPage(name)
end

return ReactPageFactory