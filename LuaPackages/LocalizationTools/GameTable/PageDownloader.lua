local Promise = require(script.Parent.Parent.Promise)

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

	local function downloadWithCursor(cursor, accumulator)
		return Promise.new(function(resolve, reject)
			MakeDownloadRequest(cursor):Start(function(success, response)
				spawn(function()
					if success and response.StatusCode < BAD_REQUEST then

						local responseBodyObject = DecodeReponseBody(response.Body)

						if responseBodyObject == nil then
							reject("Downloaded table failed to decode")
							return
						end

						local info = HandleTableDataPage(responseBodyObject, accumulator)

						if info.errorMessage then
							reject(info.errorMessage)
							return
						end

						if responseBodyObject.nextPageCursor ~= nil
							and responseBodyObject.nextPageCursor ~= 0
							and responseBodyObject.nextPageCursor ~= ""
						then
							downloadWithCursor(
								responseBodyObject.nextPageCursor,
								accumulator):andThen(resolve, reject)
						else
							resolve(accumulator)
						end
					else
						if additionalErrorCallback then
							additionalErrorCallback(string.format(
								"Uploading table failed with status code: %s, and response: %s",
								tostring(response.StatusCode), tostring(response.Body)))
						end
						reject("Download failed")
					end
				end)
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
		return downloadWithCursor("", {})
	end

	return Downloader
end

