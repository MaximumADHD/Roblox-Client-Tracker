local ABTestHelper = {}

ABTestHelper.VARIATION_B = 2
ABTestHelper.VARIATION_C = 3
ABTestHelper.VARIATION_D = 4
ABTestHelper.VARIATION_E = 5

local SUBJECT_TYPE_USERID = 1

local PlayersService = game:GetService("Players")
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local HttpService = game:GetService('HttpService')

local BaseUrl = game:GetService('ContentProvider').BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
BaseUrl = string.gsub(BaseUrl, "http:", "https:")
local AbTestEnrollmentsUrl = string.gsub(BaseUrl, 'www', 'abtesting') ..'v1/enrollments'

local LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
  PlayersService.PlayerAdded:wait()
  LocalPlayer = PlayersService.LocalPlayer
end

-- Returns the Variation of the given AB test the LocalPlayer is enrolled in. 
-- Only checks AB tests by UserId, does not support BrowserTrackerId. 
function ABTestHelper.GetTestEnrollmentAsync(abTestName)
  local abTestRequest = {
    {
      ["ExperimentName"] = abTestName,
      ["SubjectType"] = SUBJECT_TYPE_USERID,
      ["SubjectTargetId"] = LocalPlayer.UserId,
    }
  }
  
  local jsonPostBody = HttpService:JSONEncode(abTestRequest)
  local success, abTestEnrollmentsResponse = pcall(function()
    return HttpRbxApiService:PostAsyncFullUrl(AbTestEnrollmentsUrl, jsonPostBody) 
  end)
  if success then
    local abTestEnrollments = HttpService:JSONDecode(abTestEnrollmentsResponse)
    if abTestEnrollments and abTestEnrollments.data then
      local enrollment = abTestEnrollments.data[1]
      return enrollment.Variation
    end
  else
    warn("Error getting ABTestEnrollment: ", abTestEnrollmentsResponse)
  end
  
  return false
end

return ABTestHelper
