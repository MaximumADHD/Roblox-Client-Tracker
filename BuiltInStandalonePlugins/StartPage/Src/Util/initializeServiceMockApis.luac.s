PROTO_0:
  LOADK R2 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  DUPTABLE R0 K1 [{"data"}]
  NEWTABLE R1 0 1
  DUPTABLE R2 K6 [{"id", "universeId", "name", "description"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["id"]
  LOADN R3 43
  SETTABLEKS R3 R2 K3 ["universeId"]
  LOADK R3 K7 ["Backyardigans"]
  SETTABLEKS R3 R2 K4 ["name"]
  LOADK R3 K8 ["Description1"]
  SETTABLEKS R3 R2 K5 ["description"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R0 K1 [{"data"}]
  DUPTABLE R1 K3 [{"universe"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["universe"]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_3:
  DUPTABLE R0 K1 [{"data"}]
  DUPTABLE R1 K3 [{"universe"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["universe"]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_4:
  DUPTABLE R0 K1 [{"data"}]
  NEWTABLE R1 0 1
  DUPTABLE R2 K4 [{"id", "activeUsers"}]
  LOADN R3 123
  SETTABLEKS R3 R2 K2 ["id"]
  NEWTABLE R3 0 1
  DUPTABLE R4 K5 [{"id"}]
  LOADN R5 100
  SETTABLEKS R5 R4 K2 ["id"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K3 ["activeUsers"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_5:
  DUPTABLE R0 K1 [{"eligibilityByCreator"}]
  NEWTABLE R1 0 1
  DUPTABLE R2 K4 [{"userIsEligible", "displayText"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["userIsEligible"]
  LOADK R3 K5 ["Eligible"]
  SETTABLEKS R3 R2 K3 ["displayText"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["eligibilityByCreator"]
  RETURN R0 1

PROTO_6:
  DUPTABLE R1 K1 [{"ageRecommendationDetailsByUniverse"}]
  NEWTABLE R2 0 2
  DUPTABLE R3 K4 [{"ageRecommendationDetails", "universeId"}]
  DUPTABLE R4 K6 [{"ageRecommendationSummary"}]
  DUPTABLE R5 K8 [{"ageRecommendation"}]
  DUPTABLE R6 K10 [{"minimumAge"}]
  LOADN R7 13
  SETTABLEKS R7 R6 K9 ["minimumAge"]
  SETTABLEKS R6 R5 K7 ["ageRecommendation"]
  SETTABLEKS R5 R4 K5 ["ageRecommendationSummary"]
  SETTABLEKS R4 R3 K2 ["ageRecommendationDetails"]
  LOADN R4 200
  SETTABLEKS R4 R3 K3 ["universeId"]
  DUPTABLE R4 K4 [{"ageRecommendationDetails", "universeId"}]
  DUPTABLE R5 K6 [{"ageRecommendationSummary"}]
  DUPTABLE R6 K8 [{"ageRecommendation"}]
  DUPTABLE R7 K10 [{"minimumAge"}]
  LOADN R8 18
  SETTABLEKS R8 R7 K9 ["minimumAge"]
  SETTABLEKS R7 R6 K7 ["ageRecommendation"]
  SETTABLEKS R6 R5 K5 ["ageRecommendationSummary"]
  SETTABLEKS R5 R4 K2 ["ageRecommendationDetails"]
  LOADN R5 21
  SETTABLEKS R5 R4 K3 ["universeId"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
  RETURN R1 1

PROTO_7:
  DUPTABLE R0 K1 [{"data"}]
  NEWTABLE R1 0 1
  DUPTABLE R2 K4 [{"targetId", "imageUrl"}]
  LOADN R3 100
  SETTABLEKS R3 R2 K2 ["targetId"]
  LOADK R3 K5 ["UserCDNImage1"]
  SETTABLEKS R3 R2 K3 ["imageUrl"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_8:
  DUPTABLE R0 K2 [{"feedItems", "meta"}]
  NEWTABLE R1 0 1
  DUPTABLE R2 K9 [{"feedType", "id", "titleKey", "title", "thumbnails", "url"}]
  LOADK R3 K10 ["Article"]
  SETTABLEKS R3 R2 K3 ["feedType"]
  LOADK R3 K11 ["potato beans"]
  SETTABLEKS R3 R2 K4 ["id"]
  LOADK R3 K12 ["MockTemplateName"]
  SETTABLEKS R3 R2 K5 ["titleKey"]
  LOADK R3 K12 ["MockTemplateName"]
  SETTABLEKS R3 R2 K6 ["title"]
  DUPTABLE R3 K14 [{"default"}]
  DUPTABLE R4 K15 [{"url"}]
  LOADK R5 K16 ["/image.png"]
  SETTABLEKS R5 R4 K8 ["url"]
  SETTABLEKS R4 R3 K13 ["default"]
  SETTABLEKS R3 R2 K7 ["thumbnails"]
  LOADK R3 K17 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
  SETTABLEKS R3 R2 K8 ["url"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["feedItems"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["meta"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 0
  DUPTABLE R0 K1 [{"universeIds"}]
  NEWTABLE R1 0 2
  LOADK R2 K2 [123456]
  LOADK R3 K3 [789012]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K0 ["universeIds"]
  RETURN R0 1

PROTO_10:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 0
  DUPTABLE R0 K6 [{"featureName", "access", "recourse", "recourses", "v2Recourses", "shouldPrompt"}]
  LOADK R1 K7 ["ShouldShowStudioBanner"]
  SETTABLEKS R1 R0 K0 ["featureName"]
  LOADK R1 K8 ["Granted"]
  SETTABLEKS R1 R0 K1 ["access"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["recourse"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["recourses"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["v2Recourses"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["shouldPrompt"]
  RETURN R0 1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  LOADB R4 0
  LOADK R5 K1 ["Experiences"]
  DUPTABLE R6 K13 [{"created", "creatorName", "creatorTargetId", "creatorType", "id", "isActive", "isArchived", "name", "privacyType", "rootPlaceId", "updated"}]
  LOADK R7 K14 ["2013-11-01T08:47:14.07Z"]
  SETTABLEKS R7 R6 K2 ["created"]
  LOADK R7 K15 ["Ben"]
  SETTABLEKS R7 R6 K3 ["creatorName"]
  LOADK R7 K16 [998796]
  SETTABLEKS R7 R6 K4 ["creatorTargetId"]
  LOADK R7 K17 ["Group"]
  SETTABLEKS R7 R6 K5 ["creatorType"]
  LOADN R7 43
  SETTABLEKS R7 R6 K6 ["id"]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["isActive"]
  LOADB R7 0
  SETTABLEKS R7 R6 K8 ["isArchived"]
  LOADK R7 K18 ["Backyardigans"]
  SETTABLEKS R7 R6 K9 ["name"]
  LOADK R7 K19 ["Public"]
  SETTABLEKS R7 R6 K10 ["privacyType"]
  LOADN R7 101
  SETTABLEKS R7 R6 K11 ["rootPlaceId"]
  LOADK R7 K20 ["2023-05-02T22:03:01.107Z"]
  SETTABLEKS R7 R6 K12 ["updated"]
  JUMPIFNOTEQKS R0 K21 ["ArchivePage"] [+3]
  LOADK R5 K22 ["Archive"]
  LOADB R4 1
  JUMPIFNOT R1 [+2]
  NEWTABLE R6 0 0
  LOADK R8 K23 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R10 R4
  MOVE R11 R5
  NAMECALL R8 R8 K24 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  LOADK R9 K25 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R11 R4
  MOVE R12 R5
  NAMECALL R9 R9 K24 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  LOADK R10 K26 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R12 R4
  MOVE R13 R5
  NAMECALL R10 R10 K24 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  GETTABLEKS R10 R3 K27 ["composeUrl"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K28 ["KNOWLEDGE_FEEDS_URL"]
  GETTABLEKS R11 R12 K29 ["Prefix"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K28 ["KNOWLEDGE_FEEDS_URL"]
  GETTABLEKS R12 R13 K30 ["Url"]
  CALL R12 0 -1
  CALL R10 -1 1
  DUPTABLE R11 K33 [{"limit", "SortOrder"}]
  LOADN R12 50
  SETTABLEKS R12 R11 K31 ["limit"]
  LOADK R12 K34 ["Asc"]
  SETTABLEKS R12 R11 K32 ["SortOrder"]
  GETTABLEKS R12 R3 K27 ["composeUrl"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K35 ["PLACES_SEARCH_URL"]
  GETTABLEKS R13 R14 K29 ["Prefix"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K35 ["PLACES_SEARCH_URL"]
  GETTABLEKS R14 R15 K30 ["Url"]
  LOADN R15 43
  CALL R14 1 1
  MOVE R15 R11
  CALL R12 3 1
  DUPCLOSURE R13 K36 [PROTO_0]
  GETTABLEKS R14 R3 K27 ["composeUrl"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K37 ["MULTI_CREATOR_ELIGIBILITY"]
  GETTABLEKS R15 R16 K29 ["Prefix"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K37 ["MULTI_CREATOR_ELIGIBILITY"]
  GETTABLEKS R16 R17 K30 ["Url"]
  CALL R16 0 -1
  CALL R14 -1 1
  GETTABLEKS R15 R3 K27 ["composeUrl"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K38 ["MULTI_AGE_RECOMMENDATION"]
  GETTABLEKS R16 R17 K29 ["Prefix"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K38 ["MULTI_AGE_RECOMMENDATION"]
  GETTABLEKS R17 R18 K30 ["Url"]
  CALL R17 0 -1
  CALL R15 -1 1
  GETTABLEKS R19 R3 K27 ["composeUrl"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K39 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
  GETTABLEKS R20 R21 K29 ["Prefix"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K39 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
  GETTABLEKS R21 R22 K30 ["Url"]
  CALL R21 0 -1
  CALL R19 -1 1
  MOVE R17 R19
  LOADK R18 K40 ["?maxUsers=10&ids=555"]
  CONCAT R16 R17 R18
  DUPTABLE R17 K44 [{"userIds", "size", "format", "isCircular"}]
  NEWTABLE R18 0 1
  LOADN R19 100
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K41 ["userIds"]
  LOADK R18 K45 ["48x48"]
  SETTABLEKS R18 R17 K42 ["size"]
  LOADK R18 K46 ["png"]
  SETTABLEKS R18 R17 K24 ["format"]
  LOADB R18 1
  SETTABLEKS R18 R17 K43 ["isCircular"]
  GETTABLEKS R18 R3 K27 ["composeUrl"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K47 ["AVATAR_ICON_URL"]
  GETTABLEKS R19 R20 K29 ["Prefix"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K47 ["AVATAR_ICON_URL"]
  GETTABLEKS R20 R21 K30 ["Url"]
  CALL R20 0 1
  MOVE R21 R17
  CALL R18 3 1
  NEWTABLE R19 16 0
  DUPCLOSURE R20 K48 [PROTO_1]
  SETTABLE R20 R19 R12
  DUPTABLE R20 K50 [{"data"}]
  NEWTABLE R21 0 1
  DUPTABLE R22 K54 [{"gameTemplateType", "hasTutorials", "universe"}]
  LOADK R23 K55 ["All"]
  SETTABLEKS R23 R22 K51 ["gameTemplateType"]
  LOADB R23 0
  SETTABLEKS R23 R22 K52 ["hasTutorials"]
  SETTABLEKS R6 R22 K53 ["universe"]
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K49 ["data"]
  SETTABLEKS R20 R19 K56 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
  NEWCLOSURE R20 P2
  CAPTURE REF R6
  SETTABLE R20 R19 R8
  NEWCLOSURE R20 P3
  CAPTURE REF R6
  SETTABLE R20 R19 R7
  DUPTABLE R20 K58 [{"groups"}]
  NEWTABLE R21 0 1
  DUPTABLE R22 K59 [{"id", "name"}]
  LOADN R23 231
  SETTABLEKS R23 R22 K6 ["id"]
  LOADK R23 K60 ["Example"]
  SETTABLEKS R23 R22 K9 ["name"]
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K57 ["groups"]
  SETTABLEKS R20 R19 K61 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
  DUPCLOSURE R20 K62 [PROTO_4]
  SETTABLE R20 R19 R16
  LOADK R20 K63 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
  DUPTABLE R21 K50 [{"data"}]
  NEWTABLE R22 0 1
  DUPTABLE R23 K66 [{"targetId", "imageUrl"}]
  LOADN R24 123
  SETTABLEKS R24 R23 K64 ["targetId"]
  LOADK R24 K67 ["http://example.com/image/123"]
  SETTABLEKS R24 R23 K65 ["imageUrl"]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K49 ["data"]
  SETTABLE R21 R19 R20
  LOADK R20 K68 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
  DUPTABLE R21 K50 [{"data"}]
  NEWTABLE R22 0 1
  DUPTABLE R23 K66 [{"targetId", "imageUrl"}]
  LOADN R24 123
  SETTABLEKS R24 R23 K64 ["targetId"]
  LOADK R24 K67 ["http://example.com/image/123"]
  SETTABLEKS R24 R23 K65 ["imageUrl"]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K49 ["data"]
  SETTABLE R21 R19 R20
  DUPCLOSURE R20 K69 [PROTO_5]
  SETTABLE R20 R19 R14
  DUPTABLE R20 K50 [{"data"}]
  DUPTABLE R21 K70 [{"universe"}]
  SETTABLEKS R6 R21 K53 ["universe"]
  SETTABLEKS R21 R20 K49 ["data"]
  SETTABLE R20 R19 R9
  DUPCLOSURE R20 K71 [PROTO_6]
  SETTABLE R20 R19 R15
  DUPCLOSURE R20 K72 [PROTO_7]
  SETTABLE R20 R19 R18
  DUPCLOSURE R20 K73 [PROTO_8]
  SETTABLE R20 R19 R10
  NEWCLOSURE R20 P9
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K74 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
  NEWCLOSURE R20 P10
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K75 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K76 ["mock"]
  MOVE R21 R19
  CALL R20 1 0
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K77 ["StudioService"]
  GETTABLEKS R20 R21 K78 ["GetUserId"]
  GETTABLEKS R21 R20 K79 ["mockReturnValue"]
  LOADK R22 K80 [54321]
  CALL R21 1 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K81 ["StartPageManager"]
  GETTABLEKS R21 R22 K82 ["getRecentAPIGamesFromRegistry"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K81 ["StartPageManager"]
  GETTABLEKS R22 R23 K83 ["getLocalGamesFromRegistry"]
  GETTABLEKS R23 R21 K79 ["mockReturnValue"]
  NEWTABLE R24 0 0
  CALL R23 1 0
  GETTABLEKS R23 R22 K79 ["mockReturnValue"]
  NEWTABLE R24 0 1
  DUPTABLE R25 K90 [{"FilePath", "Name", "Updated", "PrivacyType", "NoLoadableImage", "LastViewed"}]
  LOADK R26 K91 ["Documents/TestPlace3.rbxl"]
  SETTABLEKS R26 R25 K84 ["FilePath"]
  LOADK R26 K92 ["TestPlace3.rbxl"]
  SETTABLEKS R26 R25 K85 ["Name"]
  LOADK R26 K93 ["UpdatedTime3"]
  SETTABLEKS R26 R25 K86 ["Updated"]
  LOADK R26 K94 ["Private"]
  SETTABLEKS R26 R25 K87 ["PrivacyType"]
  LOADB R26 1
  SETTABLEKS R26 R25 K88 ["NoLoadableImage"]
  LOADK R26 K95 ["ViewedTime3"]
  SETTABLEKS R26 R25 K89 ["LastViewed"]
  SETLIST R24 R25 1 [1]
  CALL R23 1 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K81 ["StartPageManager"]
  GETTABLEKS R23 R24 K96 ["getDaysSinceFirstUserLogin"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K81 ["StartPageManager"]
  GETTABLEKS R24 R25 K97 ["isTutorialBannerClosed"]
  GETTABLEKS R25 R23 K79 ["mockReturnValue"]
  LOADN R26 0
  CALL R25 1 0
  GETTABLEKS R25 R24 K79 ["mockReturnValue"]
  LOADB R26 0
  CALL R25 1 0
  CLOSEUPVALS R6
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Network"]
  GETTABLEKS R3 R4 K10 ["Urls"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Services"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["RobloxAPI"]
  GETTABLEKS R4 R5 K14 ["Url"]
  DUPCLOSURE R5 K15 [PROTO_11]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETGLOBAL R5 K16 ["initializeServiceMockApis"]
  GETGLOBAL R5 K16 ["initializeServiceMockApis"]
  RETURN R5 1
