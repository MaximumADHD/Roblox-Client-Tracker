local Promise = require(script.Parent.Parent.Promise)
local SourceStrings = require(script.Parent.Parent.SourceStrings)

--[[
	Object for downloading a table page-by-page.  Constructor takes:
		MakeDownloadRequest - function that takes a cursor number and returns a request object
		DecodeResponseBody - takes a string (the resonse.body in a successful request)
			returns an object that HandleTableDataPage expects
		HandleTableDataPage - takes the decoded response body and a list called "accumulator".
			Accumulates the data from the response body into the accumulator
			returns true on success
]]
return function(MakeDownloadRequest, DecodeReponseBody, HandleTableDataPage, additionalErrorCallback)
	local BAD_REQUEST = 400

	local function downloadOnePage(cursor)
		return Promise.new(function(resolve, reject)
			MakeDownloadRequest(cursor):Start(function(success, response)
				if success and response.StatusCode < BAD_REQUEST then
					local responseBodyObject = DecodeReponseBody(response.Body)

					if responseBodyObject == nil then
						reject(SourceStrings.PageDownloader.DecodeFailedMessage)
						return
					end

					resolve(responseBodyObject)
				else
					if additionalErrorCallback then
						additionalErrorCallback(
							SourceStrings.PageDownloader.FormatFailedWithStatusCodeMessage(
								tostring(response.StatusCode), tostring(response.Body)))
					end
					reject(SourceStrings.PageDownloader.DownloadFailedMessage)
				end
			end)
		end)
	end

	local Downloader = {}

	--[[
		download() first calls MakeDownloadRequest to create the first get-request object,
		and given that the first request succeeds, uses DecodeResponseBody to decode the
		response, then passes the result to HandleTableDataPage to accumulcate the
		data.  Provided that all succeeds, it looks at the nextPageCursor field of the response
		and issues a new request or, if nextPageCursor doesn't exist, resolves the promise,
		passing it the accumulator.

		Returns a promise that resolves with the accumulator when the whole download succeeds
	]]
	function Downloader:download()
		return Promise.new(function(resolve, reject)
			--[[
				Promises don't allow yields inside them, but the code below calls :await()
				Wrapping in a coroutine makes that non-yielding again.
			]]
			coroutine.wrap(function()
				local accumulator = {}
				local cursor = ""

				while cursor do
					local success, result = downloadOnePage(cursor):await()
					if success then
						local info = HandleTableDataPage(result, accumulator)

						if info.errorMessage then
							reject(info.errorMessage)
							return
						end

						cursor = result.nextPageCursor
					else
						reject(result)
						return
					end
				end

				resolve(accumulator)
			end)()
		end)
	end

	return Downloader
end
