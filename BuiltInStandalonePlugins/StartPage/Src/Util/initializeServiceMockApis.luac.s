PROTO_0:
        0 LOADK                            R2 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["data"]
        5 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K10 [{["id"] = 1, ["universeId"] = 555, ["name"] = "Backyardigans", ["description"] = "Description1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"eligibilityByCreator"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["userIsEligible"] = True, ["displayText"] = "Eligible"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["eligibilityByCreator"]
        8 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["targetId"] = 100, ["imageUrl"] = "UserCDNImage1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioAgeReverificationRequiredBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"universeEligibilities"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeEligibilities"]
        5 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"universeIds", "releaseTypes"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeIds"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["releaseTypes"]
        9 RETURN                           R0 1

PROTO_15:
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
       62 GETTABLEKS                       R15 R3 K39 ["composeUrl"]
       64 GETUPVAL                         R16 3
       65 GETTABLEKS                       R16 R16 K40 ["EXPERIENCES_SEARCH_URL"]
       67 GETTABLEKS                       R16 R16 K41 ["Prefix"]
       69 GETUPVAL                         R17 3
       70 GETTABLEKS                       R17 R17 K40 ["EXPERIENCES_SEARCH_URL"]
       72 GETTABLEKS                       R17 R17 K42 ["Url"]
       74 CALL                             R17 0 1
       75 DUPTABLE                         R18 K53 [{["search"] = "", ["creatorType"] = "User", ["creatorTargetId"] = "54321", ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"] = 10}]
       76 CALL                             R15 3 1
       77 MOVE                             R13 R15
       78 LOADK                            R15 K54 ["&surface=StudioStartPage&PageIndex=0%*"]
       79 MOVE                             R17 R8
       80 NAMECALL                         R15 R15 K36 ["format"]
       82 CALL                             R15 2 1
       83 MOVE                             R14 R15
       84 CONCAT                           R12 R13 R14
       85 GETTABLEKS                       R13 R3 K39 ["composeUrl"]
       87 GETUPVAL                         R14 3
       88 GETTABLEKS                       R14 R14 K55 ["KNOWLEDGE_FEEDS_URL"]
       90 GETTABLEKS                       R14 R14 K41 ["Prefix"]
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K55 ["KNOWLEDGE_FEEDS_URL"]
       95 GETTABLEKS                       R15 R15 K42 ["Url"]
       97 CALL                             R15 0 -1
       98 CALL                             R13 -1 1
       99 DUPTABLE                         R14 K60 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
      100 GETTABLEKS                       R15 R3 K39 ["composeUrl"]
      102 GETUPVAL                         R16 3
      103 GETTABLEKS                       R16 R16 K61 ["PLACES_SEARCH_URL"]
      105 GETTABLEKS                       R16 R16 K41 ["Prefix"]
      107 GETUPVAL                         R17 3
      108 GETTABLEKS                       R17 R17 K61 ["PLACES_SEARCH_URL"]
      110 GETTABLEKS                       R17 R17 K42 ["Url"]
      112 LOADN                            R18 555
      113 CALL                             R17 1 1
      114 MOVE                             R18 R14
      115 CALL                             R15 3 1
      116 DUPCLOSURE                       R16 K62 [PROTO_0]
      117 GETTABLEKS                       R17 R3 K39 ["composeUrl"]
      119 GETUPVAL                         R18 3
      120 GETTABLEKS                       R18 R18 K63 ["MULTI_CREATOR_ELIGIBILITY"]
      122 GETTABLEKS                       R18 R18 K41 ["Prefix"]
      124 GETUPVAL                         R19 3
      125 GETTABLEKS                       R19 R19 K63 ["MULTI_CREATOR_ELIGIBILITY"]
      127 GETTABLEKS                       R19 R19 K42 ["Url"]
      129 CALL                             R19 0 -1
      130 CALL                             R17 -1 1
      131 GETTABLEKS                       R18 R3 K39 ["composeUrl"]
      133 GETUPVAL                         R19 3
      134 GETTABLEKS                       R19 R19 K64 ["MULTI_AGE_RECOMMENDATION"]
      136 GETTABLEKS                       R19 R19 K41 ["Prefix"]
      138 GETUPVAL                         R20 3
      139 GETTABLEKS                       R20 R20 K64 ["MULTI_AGE_RECOMMENDATION"]
      141 GETTABLEKS                       R20 R20 K42 ["Url"]
      143 CALL                             R20 0 -1
      144 CALL                             R18 -1 1
      145 GETTABLEKS                       R22 R3 K39 ["composeUrl"]
      147 GETUPVAL                         R23 3
      148 GETTABLEKS                       R23 R23 K65 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      150 GETTABLEKS                       R23 R23 K41 ["Prefix"]
      152 GETUPVAL                         R24 3
      153 GETTABLEKS                       R24 R24 K65 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      155 GETTABLEKS                       R24 R24 K42 ["Url"]
      157 CALL                             R24 0 -1
      158 CALL                             R22 -1 1
      159 MOVE                             R20 R22
      160 LOADK                            R21 K66 ["?maxUsers=10&ids=555"]
      161 CONCAT                           R19 R20 R21
      162 DUPTABLE                         R20 K72 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      163 NEWTABLE                         R21 0 1
      165 LOADN                            R22 100
      166 SETLIST                          R21 R22 1 [1]
      168 SETTABLEKS                       R21 R20 K67 ["userIds"]
      170 GETTABLEKS                       R21 R3 K39 ["composeUrl"]
      172 GETUPVAL                         R22 3
      173 GETTABLEKS                       R22 R22 K73 ["AVATAR_ICON_URL"]
      175 GETTABLEKS                       R22 R22 K41 ["Prefix"]
      177 GETUPVAL                         R23 3
      178 GETTABLEKS                       R23 R23 K73 ["AVATAR_ICON_URL"]
      180 GETTABLEKS                       R23 R23 K42 ["Url"]
      182 CALL                             R23 0 1
      183 MOVE                             R24 R20
      184 CALL                             R21 3 1
      185 GETTABLEKS                       R22 R3 K39 ["composeUrl"]
      187 GETUPVAL                         R23 3
      188 GETTABLEKS                       R23 R23 K74 ["PLACE_SAFETY_STATUS_URL"]
      190 GETTABLEKS                       R23 R23 K41 ["Prefix"]
      192 GETUPVAL                         R24 3
      193 GETTABLEKS                       R24 R24 K74 ["PLACE_SAFETY_STATUS_URL"]
      195 GETTABLEKS                       R24 R24 K42 ["Url"]
      197 LOADN                            R25 101
      198 CALL                             R24 1 -1
      199 CALL                             R22 -1 1
      200 GETTABLEKS                       R23 R3 K39 ["composeUrl"]
      202 GETUPVAL                         R24 3
      203 GETTABLEKS                       R24 R24 K75 ["MULTI_TEAM_CREATE_STATUS"]
      205 GETTABLEKS                       R24 R24 K41 ["Prefix"]
      207 GETUPVAL                         R25 3
      208 GETTABLEKS                       R25 R25 K75 ["MULTI_TEAM_CREATE_STATUS"]
      210 GETTABLEKS                       R25 R25 K42 ["Url"]
      212 CALL                             R25 0 -1
      213 CALL                             R23 -1 1
      214 MOVE                             R25 R23
      215 LOADK                            R26 K76 ["?ids=555&"]
      216 CONCAT                           R24 R25 R26
      217 NEWTABLE                         R25 32 0
      219 DUPCLOSURE                       R26 K77 [PROTO_1]
      220 SETTABLE                         R26 R25 R12
      221 DUPCLOSURE                       R26 K78 [PROTO_2]
      222 SETTABLE                         R26 R25 R15
      223 DUPTABLE                         R26 K80 [{"data"}]
      224 NEWTABLE                         R27 0 1
      226 DUPTABLE                         R28 K85 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      227 SETTABLEKS                       R6 R28 K84 ["universe"]
      229 SETLIST                          R27 R28 1 [1]
      231 SETTABLEKS                       R27 R26 K79 ["data"]
      233 SETTABLEKS                       R26 R25 K86 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      235 NEWCLOSURE                       R26 P3
      236 CAPTURE                          REF R6
      237 SETTABLE                         R26 R25 R10
      238 NEWCLOSURE                       R26 P4
      239 CAPTURE                          REF R6
      240 SETTABLE                         R26 R25 R9
      241 DUPTABLE                         R26 K88 [{"groups"}]
      242 NEWTABLE                         R27 0 1
      244 DUPTABLE                         R28 K91 [{["id"] = 999, ["name"] = "Example"}]
      245 SETLIST                          R27 R28 1 [1]
      247 SETTABLEKS                       R27 R26 K87 ["groups"]
      249 SETTABLEKS                       R26 R25 K92 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      251 DUPCLOSURE                       R26 K93 [PROTO_5]
      252 SETTABLE                         R26 R25 R19
      253 LOADK                            R26 K94 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      254 DUPTABLE                         R27 K80 [{"data"}]
      255 NEWTABLE                         R28 0 1
      257 DUPTABLE                         R29 K99 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      258 SETLIST                          R28 R29 1 [1]
      260 SETTABLEKS                       R28 R27 K79 ["data"]
      262 SETTABLE                         R27 R25 R26
      263 LOADK                            R26 K100 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      264 DUPTABLE                         R27 K80 [{"data"}]
      265 NEWTABLE                         R28 0 1
      267 DUPTABLE                         R29 K99 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      268 SETLIST                          R28 R29 1 [1]
      270 SETTABLEKS                       R28 R27 K79 ["data"]
      272 SETTABLE                         R27 R25 R26
      273 DUPCLOSURE                       R26 K101 [PROTO_6]
      274 SETTABLE                         R26 R25 R17
      275 DUPTABLE                         R26 K80 [{"data"}]
      276 DUPTABLE                         R27 K102 [{"universe"}]
      277 SETTABLEKS                       R6 R27 K84 ["universe"]
      279 SETTABLEKS                       R27 R26 K79 ["data"]
      281 SETTABLE                         R26 R25 R11
      282 DUPCLOSURE                       R26 K103 [PROTO_7]
      283 SETTABLE                         R26 R25 R18
      284 DUPCLOSURE                       R26 K104 [PROTO_8]
      285 SETTABLE                         R26 R25 R21
      286 DUPCLOSURE                       R26 K105 [PROTO_9]
      287 SETTABLE                         R26 R25 R13
      288 NEWCLOSURE                       R26 P10
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R26 R25 K106 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      292 NEWCLOSURE                       R26 P11
      293 CAPTURE                          VAL R2
      294 SETTABLEKS                       R26 R25 K107 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      296 NEWCLOSURE                       R26 P12
      297 CAPTURE                          VAL R2
      298 SETTABLEKS                       R26 R25 K108 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      300 GETTABLEKS                       R26 R3 K39 ["composeUrl"]
      302 GETUPVAL                         R27 3
      303 GETTABLEKS                       R27 R27 K109 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      305 GETTABLEKS                       R27 R27 K41 ["Prefix"]
      307 GETUPVAL                         R28 3
      308 GETTABLEKS                       R28 R28 K109 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      310 GETTABLEKS                       R28 R28 K42 ["Url"]
      312 CALL                             R28 0 -1
      313 CALL                             R26 -1 1
      314 DUPCLOSURE                       R27 K110 [PROTO_13]
      315 SETTABLE                         R27 R25 R26
      316 GETTABLEKS                       R26 R3 K39 ["composeUrl"]
      318 GETUPVAL                         R27 3
      319 GETTABLEKS                       R27 R27 K111 ["MULTI_RELEASE_STATUSES"]
      321 GETTABLEKS                       R27 R27 K41 ["Prefix"]
      323 GETUPVAL                         R28 3
      324 GETTABLEKS                       R28 R28 K111 ["MULTI_RELEASE_STATUSES"]
      326 GETTABLEKS                       R28 R28 K42 ["Url"]
      328 CALL                             R28 0 -1
      329 CALL                             R26 -1 1
      330 DUPCLOSURE                       R27 K112 [PROTO_14]
      331 SETTABLE                         R27 R25 R26
      332 DUPTABLE                         R26 K114 [{"placeSafetyStatus"}]
      333 DUPTABLE                         R27 K117 [{["userPlayabilityRestrictions"] = "None"}]
      334 SETTABLEKS                       R27 R26 K113 ["placeSafetyStatus"]
      336 SETTABLE                         R26 R25 R22
      337 DUPTABLE                         R26 K80 [{"data"}]
      338 NEWTABLE                         R27 0 1
      340 DUPTABLE                         R28 K119 [{["id"] = 555, ["isEnabled"] = False}]
      341 SETLIST                          R27 R28 1 [1]
      343 SETTABLEKS                       R27 R26 K79 ["data"]
      345 SETTABLE                         R26 R25 R24
      346 GETUPVAL                         R26 4
      347 GETTABLEKS                       R26 R26 K120 ["mock"]
      349 MOVE                             R27 R25
      350 CALL                             R26 1 0
      351 GETUPVAL                         R26 4
      352 GETTABLEKS                       R26 R26 K121 ["StudioService"]
      354 GETTABLEKS                       R26 R26 K122 ["GetUserId"]
      356 GETTABLEKS                       R27 R26 K123 ["mockReturnValue"]
      358 LOADK                            R28 K124 [54321]
      359 CALL                             R27 1 0
      360 GETUPVAL                         R27 4
      361 GETTABLEKS                       R27 R27 K125 ["StartPageManager"]
      363 GETTABLEKS                       R27 R27 K126 ["getRecentAPIGamesFromRegistry"]
      365 GETUPVAL                         R28 4
      366 GETTABLEKS                       R28 R28 K125 ["StartPageManager"]
      368 GETTABLEKS                       R28 R28 K127 ["getLocalGamesFromRegistry"]
      370 GETTABLEKS                       R29 R27 K123 ["mockReturnValue"]
      372 NEWTABLE                         R30 0 0
      374 CALL                             R29 1 0
      375 GETTABLEKS                       R29 R28 K123 ["mockReturnValue"]
      377 NEWTABLE                         R30 0 1
      379 DUPTABLE                         R31 K139 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      380 SETLIST                          R30 R31 1 [1]
      382 CALL                             R29 1 0
      383 GETUPVAL                         R29 4
      384 GETTABLEKS                       R29 R29 K125 ["StartPageManager"]
      386 GETTABLEKS                       R29 R29 K140 ["getDaysSinceFirstUserLogin"]
      388 GETUPVAL                         R30 4
      389 GETTABLEKS                       R30 R30 K125 ["StartPageManager"]
      391 GETTABLEKS                       R30 R30 K141 ["isTutorialBannerClosed"]
      393 GETTABLEKS                       R31 R29 K123 ["mockReturnValue"]
      395 LOADN                            R32 0
      396 CALL                             R31 1 0
      397 GETTABLEKS                       R31 R30 K123 ["mockReturnValue"]
      399 LOADB                            R32 0
      400 CALL                             R31 1 0
      401 CLOSEUPVALS                      R6
      402 RETURN                           R0 0

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
       45 DUPCLOSURE                       R6 K17 [PROTO_15]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       53 GETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       55 RETURN                           R6 1
