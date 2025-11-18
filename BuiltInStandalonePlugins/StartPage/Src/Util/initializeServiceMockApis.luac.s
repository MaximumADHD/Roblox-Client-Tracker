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
  DUPTABLE R1 K3 [{"universe"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["universe"]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_5:
  DUPTABLE R0 K1 [{"data"}]
  DUPTABLE R1 K3 [{"universe"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["universe"]
  SETTABLEKS R1 R0 K0 ["data"]
  RETURN R0 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
  LOADK R8 K23 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&PageIndex=0"]
  MOVE R10 R4
  MOVE R11 R5
  NAMECALL R8 R8 K24 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  LOADK R9 K25 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&PageIndex=0"]
  MOVE R11 R4
  MOVE R12 R5
  NAMECALL R9 R9 K24 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  LOADK R10 K26 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&PageIndex=0"]
  MOVE R12 R4
  MOVE R13 R5
  NAMECALL R10 R10 K24 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  LOADK R11 K27 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R13 R4
  MOVE R14 R5
  NAMECALL R11 R11 K24 ["format"]
  CALL R11 3 1
  MOVE R10 R11
  LOADK R12 K28 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R14 R4
  MOVE R15 R5
  NAMECALL R12 R12 K24 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  LOADK R13 K29 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
  MOVE R15 R4
  MOVE R16 R5
  NAMECALL R13 R13 K24 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  GETTABLEKS R13 R3 K30 ["composeUrl"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K31 ["KNOWLEDGE_FEEDS_URL"]
  GETTABLEKS R14 R15 K32 ["Prefix"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K31 ["KNOWLEDGE_FEEDS_URL"]
  GETTABLEKS R15 R16 K33 ["Url"]
  CALL R15 0 -1
  CALL R13 -1 1
  DUPTABLE R14 K36 [{"limit", "SortOrder"}]
  LOADN R15 50
  SETTABLEKS R15 R14 K34 ["limit"]
  LOADK R15 K37 ["Asc"]
  SETTABLEKS R15 R14 K35 ["SortOrder"]
  GETTABLEKS R15 R3 K30 ["composeUrl"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K38 ["PLACES_SEARCH_URL"]
  GETTABLEKS R16 R17 K32 ["Prefix"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K38 ["PLACES_SEARCH_URL"]
  GETTABLEKS R17 R18 K33 ["Url"]
  LOADN R18 43
  CALL R17 1 1
  MOVE R18 R14
  CALL R15 3 1
  DUPCLOSURE R16 K39 [PROTO_0]
  GETTABLEKS R17 R3 K30 ["composeUrl"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K40 ["MULTI_CREATOR_ELIGIBILITY"]
  GETTABLEKS R18 R19 K32 ["Prefix"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K40 ["MULTI_CREATOR_ELIGIBILITY"]
  GETTABLEKS R19 R20 K33 ["Url"]
  CALL R19 0 -1
  CALL R17 -1 1
  GETTABLEKS R18 R3 K30 ["composeUrl"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K41 ["MULTI_AGE_RECOMMENDATION"]
  GETTABLEKS R19 R20 K32 ["Prefix"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K41 ["MULTI_AGE_RECOMMENDATION"]
  GETTABLEKS R20 R21 K33 ["Url"]
  CALL R20 0 -1
  CALL R18 -1 1
  GETTABLEKS R22 R3 K30 ["composeUrl"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K42 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
  GETTABLEKS R23 R24 K32 ["Prefix"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K42 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
  GETTABLEKS R24 R25 K33 ["Url"]
  CALL R24 0 -1
  CALL R22 -1 1
  MOVE R20 R22
  LOADK R21 K43 ["?maxUsers=10&ids=555"]
  CONCAT R19 R20 R21
  DUPTABLE R20 K47 [{"userIds", "size", "format", "isCircular"}]
  NEWTABLE R21 0 1
  LOADN R22 100
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K44 ["userIds"]
  LOADK R21 K48 ["48x48"]
  SETTABLEKS R21 R20 K45 ["size"]
  LOADK R21 K49 ["png"]
  SETTABLEKS R21 R20 K24 ["format"]
  LOADB R21 1
  SETTABLEKS R21 R20 K46 ["isCircular"]
  GETTABLEKS R21 R3 K30 ["composeUrl"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K50 ["AVATAR_ICON_URL"]
  GETTABLEKS R22 R23 K32 ["Prefix"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K50 ["AVATAR_ICON_URL"]
  GETTABLEKS R23 R24 K33 ["Url"]
  CALL R23 0 1
  MOVE R24 R20
  CALL R21 3 1
  NEWTABLE R22 32 0
  DUPCLOSURE R23 K51 [PROTO_1]
  SETTABLE R23 R22 R15
  DUPTABLE R23 K53 [{"data"}]
  NEWTABLE R24 0 1
  DUPTABLE R25 K57 [{"gameTemplateType", "hasTutorials", "universe"}]
  LOADK R26 K58 ["All"]
  SETTABLEKS R26 R25 K54 ["gameTemplateType"]
  LOADB R26 0
  SETTABLEKS R26 R25 K55 ["hasTutorials"]
  SETTABLEKS R6 R25 K56 ["universe"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K52 ["data"]
  SETTABLEKS R23 R22 K59 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
  NEWCLOSURE R23 P2
  CAPTURE REF R6
  SETTABLE R23 R22 R8
  NEWCLOSURE R23 P3
  CAPTURE REF R6
  SETTABLE R23 R22 R11
  NEWCLOSURE R23 P4
  CAPTURE REF R6
  SETTABLE R23 R22 R7
  NEWCLOSURE R23 P5
  CAPTURE REF R6
  SETTABLE R23 R22 R10
  DUPTABLE R23 K53 [{"data"}]
  NEWTABLE R24 0 1
  DUPTABLE R25 K62 [{"id", "name", "universeId", "description"}]
  LOADN R26 231
  SETTABLEKS R26 R25 K6 ["id"]
  LOADK R26 K63 ["Example"]
  SETTABLEKS R26 R25 K9 ["name"]
  LOADN R26 77
  SETTABLEKS R26 R25 K60 ["universeId"]
  LOADK R26 K64 ["Example description"]
  SETTABLEKS R26 R25 K61 ["description"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K52 ["data"]
  SETTABLEKS R23 R22 K65 ["https://develop.roblox.com/v1/user/groups/canmanage"]
  DUPTABLE R23 K67 [{"groups"}]
  NEWTABLE R24 0 1
  DUPTABLE R25 K68 [{"id", "name"}]
  LOADN R26 231
  SETTABLEKS R26 R25 K6 ["id"]
  LOADK R26 K63 ["Example"]
  SETTABLEKS R26 R25 K9 ["name"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K66 ["groups"]
  SETTABLEKS R23 R22 K69 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
  DUPCLOSURE R23 K70 [PROTO_6]
  SETTABLE R23 R22 R19
  LOADK R24 K71 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
  LOADK R26 K72 ["Autogenerated"]
  NAMECALL R24 R24 K24 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  DUPTABLE R24 K53 [{"data"}]
  NEWTABLE R25 0 1
  DUPTABLE R26 K75 [{"targetId", "imageUrl"}]
  LOADN R27 123
  SETTABLEKS R27 R26 K73 ["targetId"]
  LOADK R27 K76 ["http://example.com/image/123"]
  SETTABLEKS R27 R26 K74 ["imageUrl"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K52 ["data"]
  SETTABLE R24 R22 R23
  LOADK R24 K71 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
  LOADK R26 K77 ["Placeholder"]
  NAMECALL R24 R24 K24 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  DUPTABLE R24 K53 [{"data"}]
  NEWTABLE R25 0 1
  DUPTABLE R26 K75 [{"targetId", "imageUrl"}]
  LOADN R27 123
  SETTABLEKS R27 R26 K73 ["targetId"]
  LOADK R27 K76 ["http://example.com/image/123"]
  SETTABLEKS R27 R26 K74 ["imageUrl"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K52 ["data"]
  SETTABLE R24 R22 R23
  DUPCLOSURE R23 K78 [PROTO_7]
  SETTABLE R23 R22 R17
  DUPTABLE R23 K53 [{"data"}]
  DUPTABLE R24 K79 [{"universe"}]
  SETTABLEKS R6 R24 K56 ["universe"]
  SETTABLEKS R24 R23 K52 ["data"]
  SETTABLE R23 R22 R9
  DUPTABLE R23 K53 [{"data"}]
  DUPTABLE R24 K79 [{"universe"}]
  SETTABLEKS R6 R24 K56 ["universe"]
  SETTABLEKS R24 R23 K52 ["data"]
  SETTABLE R23 R22 R12
  DUPCLOSURE R23 K80 [PROTO_8]
  SETTABLE R23 R22 R18
  DUPCLOSURE R23 K81 [PROTO_9]
  SETTABLE R23 R22 R21
  DUPCLOSURE R23 K82 [PROTO_10]
  SETTABLE R23 R22 R13
  NEWCLOSURE R23 P11
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K83 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K84 ["mock"]
  MOVE R24 R22
  CALL R23 1 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K85 ["StudioService"]
  GETTABLEKS R23 R24 K86 ["GetUserId"]
  GETTABLEKS R24 R23 K87 ["mockReturnValue"]
  LOADK R25 K88 [54321]
  CALL R24 1 0
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K89 ["StartPageManager"]
  GETTABLEKS R24 R25 K90 ["getRecentAPIGamesFromRegistry"]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K89 ["StartPageManager"]
  GETTABLEKS R25 R26 K91 ["getLocalGamesFromRegistry"]
  GETTABLEKS R26 R24 K87 ["mockReturnValue"]
  NEWTABLE R27 0 0
  CALL R26 1 0
  GETTABLEKS R26 R25 K87 ["mockReturnValue"]
  NEWTABLE R27 0 1
  DUPTABLE R28 K98 [{"FilePath", "Name", "Updated", "PrivacyType", "NoLoadableImage", "LastViewed"}]
  LOADK R29 K99 ["Documents/TestPlace3.rbxl"]
  SETTABLEKS R29 R28 K92 ["FilePath"]
  LOADK R29 K100 ["TestPlace3.rbxl"]
  SETTABLEKS R29 R28 K93 ["Name"]
  LOADK R29 K101 ["UpdatedTime3"]
  SETTABLEKS R29 R28 K94 ["Updated"]
  LOADK R29 K102 ["Private"]
  SETTABLEKS R29 R28 K95 ["PrivacyType"]
  LOADB R29 1
  SETTABLEKS R29 R28 K96 ["NoLoadableImage"]
  LOADK R29 K103 ["ViewedTime3"]
  SETTABLEKS R29 R28 K97 ["LastViewed"]
  SETLIST R27 R28 1 [1]
  CALL R26 1 0
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K89 ["StartPageManager"]
  GETTABLEKS R26 R27 K104 ["getDaysSinceFirstUserLogin"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K89 ["StartPageManager"]
  GETTABLEKS R27 R28 K105 ["isTutorialBannerClosed"]
  GETTABLEKS R28 R26 K87 ["mockReturnValue"]
  LOADN R29 0
  CALL R28 1 0
  GETTABLEKS R28 R27 K87 ["mockReturnValue"]
  LOADB R29 0
  CALL R28 1 0
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
  DUPCLOSURE R5 K15 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETGLOBAL R5 K16 ["initializeServiceMockApis"]
  GETGLOBAL R5 K16 ["initializeServiceMockApis"]
  RETURN R5 1
