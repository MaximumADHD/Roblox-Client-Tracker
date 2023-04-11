local CorePackages = game:GetService("CorePackages")
local AvatarIdentificationModule = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local HttpService = game:GetService("HttpService")

local getAvatarsForPoint = AvatarIdentificationModule.AvatarIdentification.getAvatarsForPoint
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

type AbuseReportBuilderState = {
	screenshotId: string,
	identifiedAvatars: AvatarIDResults,
	avatarIDStats: AvatarIDStats?,
	screenshotContentId: string,
	annotationPoints: {Vector2},
	annotationOptionSeen: boolean,
	annotationPageSeen: boolean,
	selectedAbusers: {Player}
}

type TagValue = {
	data: string | boolean
}
type TagValueList = {
	valueList: {TagValue}
}
type AbuseReportRequest = {
	tags: { [string]: TagValueList }
}

type FinalParameters = {
	finalAnnotationOptionSeen: boolean,
	finalAnnotationPageSeen: boolean,
	finalAnnotationCount: number,
}

local builderState: AbuseReportBuilderState = {
	screenshotId = "",
	identifiedAvatars = {},
	avatarIDStats = nil,
	screenshotContentId = "",
	annotationPoints = {},
	annotationOptionSeen = false,
	annotationPageSeen = false,
	selectedAbusers = {}
}

local Constants = {
	Variant = {
		CS = "ra/cs",
		Sampling = "ra/sampling",
		Unknown = "ra/unknown"
	}
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

local addBuilderStateToRequest = function(request: AbuseReportRequest)
	local hasIdentifiedAvatars = false
	-- recommended way to count keys in non-array tables (we bail out early
	-- though)
	for userId, _ in pairs(builderState.identifiedAvatars) do
		hasIdentifiedAvatars = true
		break
	end
	if hasIdentifiedAvatars then
		request.tags.IDENTIFIED_AVATARS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAvatars(builderState.identifiedAvatars)) }
			}
		}
	end

	if builderState.avatarIDStats then
		request.tags.AVATAR_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(builderState.avatarIDStats) }
			}
		}
	end

	if #builderState.screenshotId > 0 then
		request.tags.SCREENSHOT_ID = {
			valueList = {
				{ data = builderState.screenshotId }
			}
		}
	end

	if #builderState.annotationPoints > 0 then
		request.tags.RA_ANNOTATION_POINTS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformVectorArray(builderState.annotationPoints)) }
			}
		}
	end

	request.tags.RA_ANNOTATION_OPTION_SEEN = {
		valueList = {
			{ data = tostring(builderState.annotationOptionSeen) }
		}
	}

	request.tags.RA_ANNOTATION_PAGE_SEEN = {
		valueList = {
			{ data = tostring(builderState.annotationPageSeen) }
		}
	}
end

export type ExperienceReportData = {
	localUserId: number,
	placeId: number,
	abuseComment: string,
	abuseReason: string,
	menuEntryPoint: string,
	variant: string?
}

local buildExperienceReportRequest = function(reportData: ExperienceReportData)
	local request: AbuseReportRequest = {
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
					{ data = reportData.variant or Constants.Variant.CS },
				}
			},
		}
	}
	addBuilderStateToRequest(request)

	return HttpService:JSONEncode(request)
end

export type OtherReportData = {
	localUserId: number,
	abuseComment: string,
	abuseReason: string,
	formSelectedAbuserUserId: number?,
	menuEntryPoint: string,
	variant: string?
}
local buildOtherReportRequest = function(reportData: OtherReportData)
	local request: AbuseReportRequest = {
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

			REPORTER_COMMENT = {
				valueList = {
					{ data = reportData.abuseComment },
				}
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = "other" },
				}
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = reportData.menuEntryPoint }
				}
			},

			VARIANT = {
				valueList = {
					{ data = reportData.variant or Constants.Variant.Unknown },
				}
			},
		}
	}

	addBuilderStateToRequest(request)
	if #builderState.selectedAbusers > 0 then
		local allegedAbuserId = tostring(builderState.selectedAbusers[1].UserId)
		local selectedAbuserIds = {}
		for _, player in ipairs(builderState.selectedAbusers) do
			selectedAbuserIds[#selectedAbuserIds + 1] = tostring(player.UserId)
		end
		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(allegedAbuserId) },
			}
		}
		request.tags.RA_ALL_ANNOTATED_USER_IDS = {
			valueList = {
				{ data = HttpService:JSONEncode(selectedAbuserIds) }
			}
		}
	elseif reportData.formSelectedAbuserUserId then
		-- if the reporter did not go through the annotation flow and instead
		-- chose the abuser from the regular form dropdown.
		-- or: Went through annotation flow but did not have any annotations
		-- that found a user.
		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(reportData.formSelectedAbuserUserId) },
			}
		}
	end

	return HttpService:JSONEncode(request)
end

-- responsible for setting selectedAbusers
local interpretAnnotations = function()
	local addedUserIds: { [number]: boolean } = {} -- "set" type
	-- the same order in which the annotations are selected 
	local orderedResults: {Player} = {}
	for _, annotationPoint in ipairs(builderState.annotationPoints) do
		-- pick closest player out of the players under the point
		local avatarsHit = getAvatarsForPoint(builderState.identifiedAvatars, annotationPoint)

		local minDistance = math.huge
		local closestPlayerId = nil
		for userId, player in pairs(avatarsHit) do
			local distance = builderState.identifiedAvatars[userId].distance
			if distance < minDistance then
				minDistance = distance
				closestPlayerId = userId
			end
		end
		if closestPlayerId ~= nil and not addedUserIds[closestPlayerId] then
			addedUserIds[closestPlayerId] = true
			orderedResults[#orderedResults + 1] = builderState.identifiedAvatars[closestPlayerId].player
		end
	end

	builderState.selectedAbusers = orderedResults
end

return {
	setScreenshotId = function(screenshotId: string)
		builderState.screenshotId = screenshotId
	end,
	setIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
		builderState.identifiedAvatars = identifiedAvatars
	end,
	getIdentifiedAvatars = function()
		return builderState.identifiedAvatars
	end,
	setAvatarIDStats = function(stats: AvatarIDStats)
		builderState.avatarIDStats = stats
	end,
	setScreenshotContentId = function(contentId: string)
		builderState.screenshotContentId = contentId
		-- annotation points are only valid for the screenshot they were
		-- annotated over.
		builderState.annotationPoints = {}
		builderState.selectedAbusers = {}
	end,
	getScreenshotContentId = function()
		return builderState.screenshotContentId
	end,
	setAnnotationPoints = function(annotationPoints: {Vector2})
		builderState.annotationPoints = annotationPoints
		builderState.annotationOptionSeen = true
		builderState.annotationPageSeen = true
		interpretAnnotations()
	end,
	getSelectedAbusers = function()
		return builderState.selectedAbusers
	end,
	clearAnnotationPoints = function()
		builderState.annotationPoints = {}
		builderState.selectedAbusers = {}
		builderState.annotationOptionSeen = false
		builderState.annotationPageSeen = false
	end,
	getAnnotationPoints = function()
		return builderState.annotationPoints
	end,
	setAnnotationOptionSeen = function(seen)
		builderState.annotationOptionSeen = seen
	end,
	getAnnotationOptionSeen = function()
		return builderState.annotationOptionSeen
	end,
	setAnnotationPageSeen = function(seen)
		builderState.annotationPageSeen = seen
	end,
	getAnnotationPageSeen = function()
		return builderState.annotationPageSeen
	end,
	buildExperienceReportRequest = buildExperienceReportRequest,
	buildOtherReportRequest = buildOtherReportRequest,
	clear = function()
		builderState = {
			screenshotId = "",
			identifiedAvatars = {},
			avatarIDStats = nil,
			screenshotContentId = "",
			annotationPoints = {},
			annotationOptionSeen = false,
			annotationPageSeen = false,
			selectedAbusers = {}
		}
	end,
	getAnalyticsParameters = function(): FinalParameters
		return {
			finalAnnotationOptionSeen = builderState.annotationOptionSeen,
			finalAnnotationPageSeen = builderState.annotationPageSeen,
			finalAnnotationCount = #builderState.annotationPoints,
			finalAnnotatedAvatarsCount = #builderState.selectedAbusers
		}
	end,
	Constants = Constants
}
