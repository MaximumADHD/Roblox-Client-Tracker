local CorePackages = game:GetService("CorePackages")
local AvatarIdentificationModule = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local HttpService = game:GetService("HttpService")

type AvatarIDResults = AvatarIdentificationModule.AvatarIDResults
type AvatarIDStats = AvatarIdentificationModule.AvatarIDStats

type SerializedVector2 = {number}

type IdentifiedAvatar = {
	userId: string,
	distance: number,
	boundingBox: {
		minX: number,
		maxX: number,
		minY: number,
		maxY: number
	},
	hitRate: number,
	convexHull: {SerializedVector2}
}

type ReportExtras = {
	screenshotId: string,
	identifiedAvatars: {IdentifiedAvatar},
	avatarIDStats: AvatarIDStats?
}

local extras: ReportExtras = {
	screenshotId = "",
	identifiedAvatars = {},
	avatarIDStats = nil
}

local transformVectorArray = function(vectorArray: {Vector2})
	local output: {SerializedVector2} = {}
	for _, v in ipairs(vectorArray) do
		output[#output + 1] = {v.X, v.Y}
	end
	return output
end

local transformIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
	local outputArray: {IdentifiedAvatar} = {}

	for userId, identifiedAvatar in pairs(identifiedAvatars) do
		outputArray[#outputArray + 1] = {
			userId = tostring(userId),
			distance = identifiedAvatar.distance,
			boundingBox = {
				minX = identifiedAvatar.boundingBox.min.X,
				minY = identifiedAvatar.boundingBox.min.Y,
				maxX = identifiedAvatar.boundingBox.max.X,
				maxY = identifiedAvatar.boundingBox.max.Y
			},
			hitRate = identifiedAvatar.hitRate,
			convexHull = transformVectorArray(identifiedAvatar.convexHull)
		}
	end

	return outputArray
end

export type ExperienceReportData = {
	localUserId: number,
	placeId: number,
	abuseComment: string,
	abuseReason: string,
	menuEntryPoint: string,
}

local makeExperienceReportRequest = function(reportData: ExperienceReportData)
	local request = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				}
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(reportData.localUserId) },
				}
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = reportData.abuseReason } ,
				}
			},

			PLACE_ID = {
				valueList = {
					{ data = tostring(reportData.placeId) },
				}
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = reportData.abuseComment },
				}
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = "place" },
				}
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = reportData.menuEntryPoint }
				}
			},

			VARIANT = {
				valueList = {
					{ data = "ra/cs" },
				}
			},
		}
	}

	if #extras.identifiedAvatars > 0 then
		request.tags.IDENTIFIED_AVATARS = {
			valueList = {
				{ data = HttpService:JSONEncode(extras.identifiedAvatars) }
			}
		}
	end

	if extras.avatarIDStats then
		request.tags.AVATAR_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(extras.avatarIDStats) }
			}
		}
	end

	if #extras.screenshotId > 0 then
		request.tags.SCREENSHOT_ID = {
			valueList = {
				{ data = extras.screenshotId }
			}
		}
	end

	return HttpService:JSONEncode(request)
end

return {
	setScreenshotId = function(screenshotId: string)
		extras.screenshotId = screenshotId
	end,
	setIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
		extras.identifiedAvatars = transformIdentifiedAvatars(identifiedAvatars)
	end,
	setAvatarIDStats = function(stats: AvatarIDStats)
		extras.avatarIDStats = stats
	end,
	makeExperienceReportRequest = makeExperienceReportRequest,
	clearExtras = function()
		extras = {
			screenshotId = "",
			identifiedAvatars = {},
			avatarIDStats = nil
		}
	end
}
