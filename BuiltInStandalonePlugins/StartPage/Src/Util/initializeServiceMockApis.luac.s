PROTO_0:
        0 LOADK                            R2 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K10 [{["id"] = 1, ["universeId"] = 555, ["name"] = "Backyardigans", ["description"] = "Description1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K5 [{["id"] = 123, ["activeUsers"]}]
        4 NEWTABLE                         R3 0 1
        6 DUPTABLE                         R4 K7 [{["id"] = 100}]
        7 SETLIST                          R3 R4 1 [1]
        9 SETTABLEKS                       R3 R2 K4 ["activeUsers"]
       11 SETLIST                          R1 R2 1 [1]
       13 SETTABLEKS                       R1 R0 K0 ["data"]
       15 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"eligibilityByCreator"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["userIsEligible"] = True, ["displayText"] = "Eligible"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["eligibilityByCreator"]
        8 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"ageRecommendationDetailsByUniverse"}]
        1 NEWTABLE                         R2 0 2
        3 DUPTABLE                         R3 K5 [{["ageRecommendationDetails"], ["universeId"] = 456}]
        4 DUPTABLE                         R4 K7 [{"ageRecommendationSummary"}]
        5 DUPTABLE                         R5 K9 [{"ageRecommendation"}]
        6 DUPTABLE                         R6 K12 [{["minimumAge"] = 13}]
        7 SETTABLEKS                       R6 R5 K8 ["ageRecommendation"]
        9 SETTABLEKS                       R5 R4 K6 ["ageRecommendationSummary"]
       11 SETTABLEKS                       R4 R3 K2 ["ageRecommendationDetails"]
       13 DUPTABLE                         R4 K14 [{["ageRecommendationDetails"], ["universeId"] = 789}]
       14 DUPTABLE                         R5 K7 [{"ageRecommendationSummary"}]
       15 DUPTABLE                         R6 K9 [{"ageRecommendation"}]
       16 DUPTABLE                         R7 K16 [{["minimumAge"] = 18}]
       17 SETTABLEKS                       R7 R6 K8 ["ageRecommendation"]
       19 SETTABLEKS                       R6 R5 K6 ["ageRecommendationSummary"]
       21 SETTABLEKS                       R5 R4 K2 ["ageRecommendationDetails"]
       23 SETLIST                          R2 R3 2 [1]
       25 SETTABLEKS                       R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
       27 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["targetId"] = 100, ["imageUrl"] = "UserCDNImage1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{"feedItems", "meta"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K13 [{["feedType"] = "Article", ["id"] = "potato beans", ["titleKey"] = "MockTemplateName", ["title"] = "MockTemplateName", ["thumbnails"], ["url"] = "https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"}]
        4 DUPTABLE                         R3 K15 [{"default"}]
        5 DUPTABLE                         R4 K17 [{["url"] = "/image.png"}]
        6 SETTABLEKS                       R4 R3 K14 ["default"]
        8 SETTABLEKS                       R3 R2 K10 ["thumbnails"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["feedItems"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K1 ["meta"]
       18 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K1 [{"universeIds"}]
        5 NEWTABLE                         R1 0 2
        7 LOADK                            R2 K2 [123456]
        8 LOADK                            R3 K3 [789012]
        9 SETLIST                          R1 R2 2 [1]
       11 SETTABLEKS                       R1 R0 K0 ["universeIds"]
       13 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioAgeReverificationRequiredBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"universeEligibilities"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeEligibilities"]
        5 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K2 [{"universeIds", "releaseTypes"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeIds"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["releaseTypes"]
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 LOADB                            R4 0
        5 LOADK                            R5 K1 ["Experiences"]
        6 DUPTABLE                         R6 K25 [{["created"] = "2013-11-01T08:47:14.07Z", ["creatorName"] = "Ben", ["creatorTargetId"] = 998796, ["creatorType"] = "Group", ["id"] = 555, ["isActive"] = True, ["isArchived"] = False, ["name"] = "Backyardigans", ["privacyType"] = "Public", ["audiences"], ["rootPlaceId"] = 101, ["updated"] = "2023-05-02T22:03:01.107Z"}]
        7 NEWTABLE                         R7 0 1
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K19 ["Public"]
       12 SETLIST                          R7 R8 1 [1]
       14 SETTABLEKS                       R7 R6 K20 ["audiences"]
       16 JUMPIFNOTEQKS                    R0 K26 ["ArchivePage"] ; [+3]
       18 LOADK                            R5 K27 ["Archive"]
       19 LOADB                            R4 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 NEWTABLE                         R6 0 0
       23 GETIMPORT                        R7 K29 [require]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K30 ["Src"]
       28 GETTABLEKS                       R8 R8 K31 ["SharedFlags"]
       30 GETTABLEKS                       R8 R8 K32 ["getFFlagLuaStartPageCoreContentStatus"]
       32 CALL                             R7 1 1
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+2]
       35 LOADK                            R8 K33 ["&needsAssetOptions=true"]
       36 JUMP                             ; [+1]
       37 LOADK                            R8 K34 [""]
       38 LOADK                            R10 K35 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       39 MOVE                             R12 R4
       40 MOVE                             R13 R5
       41 MOVE                             R14 R8
       42 NAMECALL                         R10 R10 K36 ["format"]
       44 CALL                             R10 4 1
       45 MOVE                             R9 R10
       46 LOADK                            R11 K37 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       47 MOVE                             R13 R4
       48 MOVE                             R14 R5
       49 MOVE                             R15 R8
       50 NAMECALL                         R11 R11 K36 ["format"]
       52 CALL                             R11 4 1
       53 MOVE                             R10 R11
       54 LOADK                            R12 K38 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       55 MOVE                             R14 R4
       56 MOVE                             R15 R5
       57 MOVE                             R16 R8
       58 NAMECALL                         R12 R12 K36 ["format"]
       60 CALL                             R12 4 1
       61 MOVE                             R11 R12
       62 GETTABLEKS                       R12 R3 K39 ["composeUrl"]
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R13 R13 K40 ["KNOWLEDGE_FEEDS_URL"]
       67 GETTABLEKS                       R13 R13 K41 ["Prefix"]
       69 GETUPVAL                         R14 3
       70 GETTABLEKS                       R14 R14 K40 ["KNOWLEDGE_FEEDS_URL"]
       72 GETTABLEKS                       R14 R14 K42 ["Url"]
       74 CALL                             R14 0 -1
       75 CALL                             R12 -1 1
       76 DUPTABLE                         R13 K47 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
       77 GETTABLEKS                       R14 R3 K39 ["composeUrl"]
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K48 ["PLACES_SEARCH_URL"]
       82 GETTABLEKS                       R15 R15 K41 ["Prefix"]
       84 GETUPVAL                         R16 3
       85 GETTABLEKS                       R16 R16 K48 ["PLACES_SEARCH_URL"]
       87 GETTABLEKS                       R16 R16 K42 ["Url"]
       89 LOADN                            R17 555
       90 CALL                             R16 1 1
       91 MOVE                             R17 R13
       92 CALL                             R14 3 1
       93 DUPCLOSURE                       R15 K49 [PROTO_0]
       94 GETTABLEKS                       R16 R3 K39 ["composeUrl"]
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R17 R17 K50 ["MULTI_CREATOR_ELIGIBILITY"]
       99 GETTABLEKS                       R17 R17 K41 ["Prefix"]
      101 GETUPVAL                         R18 3
      102 GETTABLEKS                       R18 R18 K50 ["MULTI_CREATOR_ELIGIBILITY"]
      104 GETTABLEKS                       R18 R18 K42 ["Url"]
      106 CALL                             R18 0 -1
      107 CALL                             R16 -1 1
      108 GETTABLEKS                       R17 R3 K39 ["composeUrl"]
      110 GETUPVAL                         R18 3
      111 GETTABLEKS                       R18 R18 K51 ["MULTI_AGE_RECOMMENDATION"]
      113 GETTABLEKS                       R18 R18 K41 ["Prefix"]
      115 GETUPVAL                         R19 3
      116 GETTABLEKS                       R19 R19 K51 ["MULTI_AGE_RECOMMENDATION"]
      118 GETTABLEKS                       R19 R19 K42 ["Url"]
      120 CALL                             R19 0 -1
      121 CALL                             R17 -1 1
      122 GETTABLEKS                       R21 R3 K39 ["composeUrl"]
      124 GETUPVAL                         R22 3
      125 GETTABLEKS                       R22 R22 K52 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      127 GETTABLEKS                       R22 R22 K41 ["Prefix"]
      129 GETUPVAL                         R23 3
      130 GETTABLEKS                       R23 R23 K52 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      132 GETTABLEKS                       R23 R23 K42 ["Url"]
      134 CALL                             R23 0 -1
      135 CALL                             R21 -1 1
      136 MOVE                             R19 R21
      137 LOADK                            R20 K53 ["?maxUsers=10&ids=555"]
      138 CONCAT                           R18 R19 R20
      139 DUPTABLE                         R19 K59 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      140 NEWTABLE                         R20 0 1
      142 LOADN                            R21 100
      143 SETLIST                          R20 R21 1 [1]
      145 SETTABLEKS                       R20 R19 K54 ["userIds"]
      147 GETTABLEKS                       R20 R3 K39 ["composeUrl"]
      149 GETUPVAL                         R21 3
      150 GETTABLEKS                       R21 R21 K60 ["AVATAR_ICON_URL"]
      152 GETTABLEKS                       R21 R21 K41 ["Prefix"]
      154 GETUPVAL                         R22 3
      155 GETTABLEKS                       R22 R22 K60 ["AVATAR_ICON_URL"]
      157 GETTABLEKS                       R22 R22 K42 ["Url"]
      159 CALL                             R22 0 1
      160 MOVE                             R23 R19
      161 CALL                             R20 3 1
      162 GETTABLEKS                       R21 R3 K39 ["composeUrl"]
      164 GETUPVAL                         R22 3
      165 GETTABLEKS                       R22 R22 K61 ["PLACE_SAFETY_STATUS_URL"]
      167 GETTABLEKS                       R22 R22 K41 ["Prefix"]
      169 GETUPVAL                         R23 3
      170 GETTABLEKS                       R23 R23 K61 ["PLACE_SAFETY_STATUS_URL"]
      172 GETTABLEKS                       R23 R23 K42 ["Url"]
      174 LOADN                            R24 101
      175 CALL                             R23 1 -1
      176 CALL                             R21 -1 1
      177 GETTABLEKS                       R22 R3 K39 ["composeUrl"]
      179 GETUPVAL                         R23 3
      180 GETTABLEKS                       R23 R23 K62 ["MULTI_TEAM_CREATE_STATUS"]
      182 GETTABLEKS                       R23 R23 K41 ["Prefix"]
      184 GETUPVAL                         R24 3
      185 GETTABLEKS                       R24 R24 K62 ["MULTI_TEAM_CREATE_STATUS"]
      187 GETTABLEKS                       R24 R24 K42 ["Url"]
      189 CALL                             R24 0 -1
      190 CALL                             R22 -1 1
      191 MOVE                             R24 R22
      192 LOADK                            R25 K63 ["?ids=555&"]
      193 CONCAT                           R23 R24 R25
      194 NEWTABLE                         R24 32 0
      196 DUPCLOSURE                       R25 K64 [PROTO_1]
      197 SETTABLE                         R25 R24 R14
      198 DUPTABLE                         R25 K66 [{"data"}]
      199 NEWTABLE                         R26 0 1
      201 DUPTABLE                         R27 K71 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      202 SETTABLEKS                       R6 R27 K70 ["universe"]
      204 SETLIST                          R26 R27 1 [1]
      206 SETTABLEKS                       R26 R25 K65 ["data"]
      208 SETTABLEKS                       R25 R24 K72 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      210 NEWCLOSURE                       R25 P2
      211 CAPTURE                          REF R6
      212 SETTABLE                         R25 R24 R10
      213 NEWCLOSURE                       R25 P3
      214 CAPTURE                          REF R6
      215 SETTABLE                         R25 R24 R9
      216 DUPTABLE                         R25 K74 [{"groups"}]
      217 NEWTABLE                         R26 0 1
      219 DUPTABLE                         R27 K77 [{["id"] = 999, ["name"] = "Example"}]
      220 SETLIST                          R26 R27 1 [1]
      222 SETTABLEKS                       R26 R25 K73 ["groups"]
      224 SETTABLEKS                       R25 R24 K78 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      226 DUPCLOSURE                       R25 K79 [PROTO_4]
      227 SETTABLE                         R25 R24 R18
      228 LOADK                            R25 K80 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      229 DUPTABLE                         R26 K66 [{"data"}]
      230 NEWTABLE                         R27 0 1
      232 DUPTABLE                         R28 K85 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      233 SETLIST                          R27 R28 1 [1]
      235 SETTABLEKS                       R27 R26 K65 ["data"]
      237 SETTABLE                         R26 R24 R25
      238 LOADK                            R25 K86 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      239 DUPTABLE                         R26 K66 [{"data"}]
      240 NEWTABLE                         R27 0 1
      242 DUPTABLE                         R28 K85 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      243 SETLIST                          R27 R28 1 [1]
      245 SETTABLEKS                       R27 R26 K65 ["data"]
      247 SETTABLE                         R26 R24 R25
      248 DUPCLOSURE                       R25 K87 [PROTO_5]
      249 SETTABLE                         R25 R24 R16
      250 DUPTABLE                         R25 K66 [{"data"}]
      251 DUPTABLE                         R26 K88 [{"universe"}]
      252 SETTABLEKS                       R6 R26 K70 ["universe"]
      254 SETTABLEKS                       R26 R25 K65 ["data"]
      256 SETTABLE                         R25 R24 R11
      257 DUPCLOSURE                       R25 K89 [PROTO_6]
      258 SETTABLE                         R25 R24 R17
      259 DUPCLOSURE                       R25 K90 [PROTO_7]
      260 SETTABLE                         R25 R24 R20
      261 DUPCLOSURE                       R25 K91 [PROTO_8]
      262 SETTABLE                         R25 R24 R12
      263 NEWCLOSURE                       R25 P9
      264 CAPTURE                          VAL R2
      265 SETTABLEKS                       R25 R24 K92 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      267 NEWCLOSURE                       R25 P10
      268 CAPTURE                          VAL R2
      269 SETTABLEKS                       R25 R24 K93 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      271 NEWCLOSURE                       R25 P11
      272 CAPTURE                          VAL R2
      273 SETTABLEKS                       R25 R24 K94 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      275 GETTABLEKS                       R25 R3 K39 ["composeUrl"]
      277 GETUPVAL                         R26 3
      278 GETTABLEKS                       R26 R26 K95 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      280 GETTABLEKS                       R26 R26 K41 ["Prefix"]
      282 GETUPVAL                         R27 3
      283 GETTABLEKS                       R27 R27 K95 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      285 GETTABLEKS                       R27 R27 K42 ["Url"]
      287 CALL                             R27 0 -1
      288 CALL                             R25 -1 1
      289 DUPCLOSURE                       R26 K96 [PROTO_12]
      290 SETTABLE                         R26 R24 R25
      291 GETTABLEKS                       R25 R3 K39 ["composeUrl"]
      293 GETUPVAL                         R26 3
      294 GETTABLEKS                       R26 R26 K97 ["MULTI_RELEASE_STATUSES"]
      296 GETTABLEKS                       R26 R26 K41 ["Prefix"]
      298 GETUPVAL                         R27 3
      299 GETTABLEKS                       R27 R27 K97 ["MULTI_RELEASE_STATUSES"]
      301 GETTABLEKS                       R27 R27 K42 ["Url"]
      303 CALL                             R27 0 -1
      304 CALL                             R25 -1 1
      305 DUPCLOSURE                       R26 K98 [PROTO_13]
      306 SETTABLE                         R26 R24 R25
      307 DUPTABLE                         R25 K100 [{"placeSafetyStatus"}]
      308 DUPTABLE                         R26 K103 [{["userPlayabilityRestrictions"] = "None"}]
      309 SETTABLEKS                       R26 R25 K99 ["placeSafetyStatus"]
      311 SETTABLE                         R25 R24 R21
      312 DUPTABLE                         R25 K66 [{"data"}]
      313 NEWTABLE                         R26 0 1
      315 DUPTABLE                         R27 K105 [{["id"] = 555, ["isEnabled"] = False}]
      316 SETLIST                          R26 R27 1 [1]
      318 SETTABLEKS                       R26 R25 K65 ["data"]
      320 SETTABLE                         R25 R24 R23
      321 GETUPVAL                         R25 4
      322 GETTABLEKS                       R25 R25 K106 ["mock"]
      324 MOVE                             R26 R24
      325 CALL                             R25 1 0
      326 GETUPVAL                         R25 4
      327 GETTABLEKS                       R25 R25 K107 ["StudioService"]
      329 GETTABLEKS                       R25 R25 K108 ["GetUserId"]
      331 GETTABLEKS                       R26 R25 K109 ["mockReturnValue"]
      333 LOADK                            R27 K110 [54321]
      334 CALL                             R26 1 0
      335 GETUPVAL                         R26 4
      336 GETTABLEKS                       R26 R26 K111 ["StartPageManager"]
      338 GETTABLEKS                       R26 R26 K112 ["getRecentAPIGamesFromRegistry"]
      340 GETUPVAL                         R27 4
      341 GETTABLEKS                       R27 R27 K111 ["StartPageManager"]
      343 GETTABLEKS                       R27 R27 K113 ["getLocalGamesFromRegistry"]
      345 GETTABLEKS                       R28 R26 K109 ["mockReturnValue"]
      347 NEWTABLE                         R29 0 0
      349 CALL                             R28 1 0
      350 GETTABLEKS                       R28 R27 K109 ["mockReturnValue"]
      352 NEWTABLE                         R29 0 1
      354 DUPTABLE                         R30 K125 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      355 SETLIST                          R29 R30 1 [1]
      357 CALL                             R28 1 0
      358 GETUPVAL                         R28 4
      359 GETTABLEKS                       R28 R28 K111 ["StartPageManager"]
      361 GETTABLEKS                       R28 R28 K126 ["getDaysSinceFirstUserLogin"]
      363 GETUPVAL                         R29 4
      364 GETTABLEKS                       R29 R29 K111 ["StartPageManager"]
      366 GETTABLEKS                       R29 R29 K127 ["isTutorialBannerClosed"]
      368 GETTABLEKS                       R30 R28 K109 ["mockReturnValue"]
      370 LOADN                            R31 0
      371 CALL                             R30 1 0
      372 GETTABLEKS                       R30 R29 K109 ["mockReturnValue"]
      374 LOADB                            R31 0
      375 CALL                             R30 1 0
      376 CLOSEUPVALS                      R6
      377 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Network"]
       20 GETTABLEKS                       R3 R3 K10 ["Urls"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Services"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Constants"]
       38 GETTABLEKS                       R5 R5 K14 ["Audience"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K15 ["RobloxAPI"]
       43 GETTABLEKS                       R5 R5 K16 ["Url"]
       45 DUPCLOSURE                       R6 K17 [PROTO_14]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       53 GETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       55 RETURN                           R6 1
