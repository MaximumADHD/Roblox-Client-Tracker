local PageDownloader = require(script.Parent.Parent.GameTable.PageDownloader)
local AddWebEntriesToRbxEntries = require(script.Parent.Parent.GameTable.AddWebEntriesToRbxEntries)
local RecursiveEquals = require(script.Parent.RecursiveEquals)

local function NeverReaches()
	assert(false, "control should never reach this point")
end

local AppleTableData = {
	{
		identifier = {
			key = "APPLEWORD",
			source = "apple",
			context = "",
		},
		metadata = {
			example = "Jimmy ate an apple.",
		},
		translations = {
			{locale = "es-es", translationText = "manzana"}
		},
	},
}

local AppleTableRbxEntries = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "",
		Example = "Jimmy ate an apple.",
		Values = {
			["es-es"] = "manzana",
		},
	},
}

local FruitTableRbxEntries = {
	{
		Key = "APPLEWORD",
		Source = "apple",
		Context = "",
		Example = "Jimmy ate an apple.",
		Values = {
			["es-es"] = "manzana",
		},
	},
	{
		Key = "BANANAWORD",
		Source = "banana",
		Context = "",
		Example = "Jimmy ate a banana.",
		Values = {
			["es-es"] = "platano",
		},
	},
}

local BananaTableData = {
	{
		identifier = {
			key = "BANANAWORD",
			source = "banana",
			context = "",
		},
		metadata = {
			example = "Jimmy ate a banana.",
		},
		translations = {
			{locale = "es-es", translationText = "platano"}
		},
	},
}

return function()
	it("downloads one page", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			local AppleTableResponse = {
				StatusCode = 200,
				Body = {
					data = AppleTableData,
				},
			}

			function MockRequest:Start(handler)
				handler(true, AppleTableResponse)
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			if responseObject.data == nil then
				return {errorMessage = "Table download format error."}
			end

			local info = AddWebEntriesToRbxEntries(responseObject.data, rbxEntries)

			if info.errorMessage then
				return {errorMessage = info.errorMessage}
			end

			return {success = true}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				assert( RecursiveEquals(receivedRbxEntries, AppleTableRbxEntries) )
			end,
			function(errorMessage)
				NeverReaches()
			end)
	end)

	it("downloads two pages", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				if cursor == "" then
					handler(true, {
						StatusCode = 200,
						Body = {
							nextPageCursor = "1",
							data = AppleTableData,
						},
					})
				elseif cursor == "1" then
					handler(true, {
						StatusCode = 200,
						Body = {
							nextPageCursor = nil,
							data = BananaTableData,
						},
					})
				else
					NeverReaches()
				end
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			if responseObject.data == nil then
				return {errorMessage = "Table download format error."}
			end

			local info = AddWebEntriesToRbxEntries(responseObject.data, rbxEntries)

			if info.errorMessage then
				return {errorMessage = info.errorMessage}
			end

			return {success = true}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				assert(RecursiveEquals(receivedRbxEntries, FruitTableRbxEntries))
			end,
			function(errorMessage)
				NeverReaches()
			end)
	end)

	it("downloads with nontrivial decoder", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				if cursor == "" then
					handler(true, {
						StatusCode = 200,
						Body = {
							nextPageCursor = "1",
							letter = "A",
						}
					})
				elseif cursor == "1" then
					handler(true, {
						StatusCode = 200,
						Body = {
							nextPageCursor = nil,
							letter = "B",
						}
					})
				else
					NeverReaches()
				end
			end

			return MockRequest
		end

		local function DecodeReponseBody(body)
			if body.letter == "A" then
				return {
					nextPageCursor = body.nextPageCursor,
					data = AppleTableData,
				}
			elseif body.letter =="B" then
				return {
					nextPageCursor = body.nextPageCursor,
					data = BananaTableData,
				}
			else
				NeverReaches()
			end
		end

		local function HandleTableDataPage(responseObject, rbxEntries)
			if responseObject.data == nil then
				return {errorMessage = "Table download format error."}
			end

			local info = AddWebEntriesToRbxEntries(responseObject.data, rbxEntries)

			if info.errorMessage then
				return {errorMessage = info.errorMessage}
			end

			return {success = true}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				assert( RecursiveEquals(receivedRbxEntries, FruitTableRbxEntries) )
			end,
			function(errorMessage)
				NeverReaches()
			end)
	end)

	it("withstands a 404", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				handler(true, {
					StatusCode = 404,
					nextPageCursor = 1,
					Body = "A",
				})
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			return {success = true}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				NeverReaches()
			end,
			function(errorMessage)
				expect(errorMessage).to.be.a("string")
			end)
	end)

	it("withstands an http request failure", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				handler(false, {
					StatusCode = 200,
				})
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			return {success = true}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				NeverReaches()
			end,
			function(errorMessage)
				expect(errorMessage).to.be.a("string")
			end)
	end)

	it("errors appropriately when the response body is missing", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				handler(true, {
					StatusCode = 200,
				})
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			NeverReaches()
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				NeverReaches()
			end,
			function(errorMessage)
				expect(errorMessage).to.be.a("string")
			end)
	end)

	it("passes error messages correctly", function()
		local function MakeDownloadRequest(cursor)
			local MockRequest = {}

			function MockRequest:Start(handler)
				handler(true, {
					StatusCode = 200,
					Body = ""
				})
			end

			return MockRequest
		end

		local function DecodeReponseBody(body) return body end

		local function HandleTableDataPage(responseObject, rbxEntries)
			return {errorMessage = "My Error Message"}
		end

		local downloader = PageDownloader(
			MakeDownloadRequest,
			DecodeReponseBody,
			HandleTableDataPage)

		downloader:download():andThen(
			function(receivedRbxEntries)
				NeverReaches()
			end,
			function(errorMessage)
				expect(errorMessage).to.be.a("string")
			end)
	end)
end
