local DownloadCloudTable = require(script.Parent.DownloadCloudTable)
local FFlagLocalizationToolsFixExampleNotDownloaded = game:GetFastFlag("LocalizationToolsFixExampleNotDownloaded")
local Plugin = script.Parent.Parent.Parent

local Http = require(Plugin.Packages.Framework.Http)

local FAKE_TABLE_ID = 123
local GET_CLOUD_TABLE_FAILED_STRING = "GetCloudTableFailed"

local function makeMockApi(responseBodyData, failureResponseBodyData, failNTimes, failureResponseStatusCode) 
	failureResponseBodyData = failureResponseBodyData or {}
	failureResponseStatusCode = failureResponseStatusCode or Http.StatusCodes.OK
	failNTimes = failNTimes or 0

	local request = {
		numTimesFailed = 0
	}
	function request:makeRequest()
		local mockCaller = {}
		local req = self
		function mockCaller:andThen(fsuccess, ffailure) 
			local data = responseBodyData
			local statusCode = Http.StatusCodes.OK
			if req.numTimesFailed < failNTimes then
				req.numTimesFailed = req.numTimesFailed + 1
				data = failureResponseBodyData
				statusCode = failureResponseStatusCode
			end
			local mockResponse = {
				responseCode = statusCode,
				cursor = nil,
				responseBody = {
					data = data
				},
			}
			fsuccess(mockResponse)
			local mockAwaiter = {}
			function mockAwaiter:await() 
				return
			end
			return mockAwaiter
		end
		return mockCaller
	end
	local Tables = {}
	function Tables.entries(tableid, cursor, gameId) 
		return request
	end
	
	return {
		LocalizationTables = {
			V1 = {
				LocalizationTable = {
					Tables = Tables
				}
			}
		}
	}
end

local function makeMockLocalization()
	local localization = {
		numFailures = 0
	}
	function localization:getText(t1, t2)
		if t2 == GET_CLOUD_TABLE_FAILED_STRING then
			self.numFailures = self.numFailures + 1
		end
		return "mock text"
	end

	return localization
end

local function makeGoodItem(args) 
	args = args or {}
	return {
		identifier = {
			key = args.key or "key",
			source = args.source or "source",
			context = args.context or "context",
		},
		metadata = {
			example = args.example or "example"
		},
		translations = {
			{
				locale = args.locale or "test-locale",
				translationText = args.translationText or "text"
			}	
		}
	}
end


local badResponses = {
	3, --not a table
	{  -- one of items has null identifier
		makeGoodItem(),
 		{
 			identifier = nil
 		}
	},
	{  --locale is not a string
		makeGoodItem({locale = 5}) 
	}
	
}

return function()
	describe("Download", function()
		 it("first time api returns a bad response, should have one failure", function()
			for _, badResponse in ipairs(badResponses)  do
				local goodResponse = {}
				local mockLocalization = makeMockLocalization()
				DownloadCloudTable.Download(makeMockApi(goodResponse, badResponse, 1), mockLocalization, FAKE_TABLE_ID)
				expect(mockLocalization.numFailures).to.equal(1)
			end
		 	
		end)
		
		it("first time returns a non-ok status code, should have one failure", function()
			local goodResponse = {}
			local badResponse = {}
			local failureStatusCode = Http.StatusCodes.INTERNAL_SERVER_ERROR
			local mockLocalization = makeMockLocalization()
			local lt = DownloadCloudTable.Download(makeMockApi(goodResponse, badResponse, 1, failureStatusCode), mockLocalization, FAKE_TABLE_ID)
			expect(mockLocalization.numFailures).to.equal(1)
			local entries = lt:GetEntries()
			expect((next(entries))).to.never.be.ok() --extra parens needed to only take first return of next
		end)
		
		 it("should fill table with key source, context, example, and translations", function()
			local goodItem = makeGoodItem()
			local testData = {
				goodItem
			}
			local mockLocalization = makeMockLocalization()

			local lt = DownloadCloudTable.Download(makeMockApi(testData), mockLocalization, FAKE_TABLE_ID)
			
			expect(mockLocalization.numFailures).to.equal(0)
			local entries = lt:GetEntries()
			expect(#entries).to.equal(1)
			local firstEntry = entries[1]
			
		 	expect(firstEntry.Key).to.equal(goodItem.identifier.key)
		 	expect(firstEntry.Source).to.equal(goodItem.identifier.source)
		 	expect(firstEntry.Context).to.equal(goodItem.identifier.context)
		 	if FFlagLocalizationToolsFixExampleNotDownloaded then
				expect(firstEntry.Example).to.equal(goodItem.metadata.example)
		 	end
		 	local firstExpectedTranslation = goodItem.translations[1]
		 	expect(firstEntry.Values[firstExpectedTranslation.locale]).to.equal(firstExpectedTranslation.translationText)
		 end)
	end)
end
