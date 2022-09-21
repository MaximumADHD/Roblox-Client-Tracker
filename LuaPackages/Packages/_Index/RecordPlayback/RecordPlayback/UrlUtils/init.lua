local NetUrl = require(script.NetUrl)

type Query = { [string]: string }
export type Url = {
	host: string,
	path: string,
	query: Query,
	scheme: string,
	port: number?,
	user: string?,
	password: string?,
	fragment: string?,
}

local function parse(url: string): Url
	local urlObject = NetUrl.normalize(url)

	local query = {}

	for key, value in pairs(urlObject.query) do
		query[key] = value
	end

	return {
		host = urlObject.host,
		path = urlObject.path,
		query = query,
		scheme = urlObject.scheme,
		port = urlObject.port,
		user = urlObject.user,
		password = urlObject.password,
		fragment = urlObject.fragment,
	}
end

local function formatQuery(query: Query): string
	return NetUrl.buildQuery(query)
end

return {
	parse = parse,
	formatQuery = formatQuery,
}
