PROTO_0:
        0 LOADK                            R1 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

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
       38 LOADK                            R9 K35 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 MOVE                             R13 R8
       42 NAMECALL                         R9 R9 K36 ["format"]
       44 CALL                             R9 4 1
       45 LOADK                            R10 K37 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       46 MOVE                             R12 R4
       47 MOVE                             R13 R5
       48 MOVE                             R14 R8
       49 NAMECALL                         R10 R10 K36 ["format"]
       51 CALL                             R10 4 1
       52 LOADK                            R11 K38 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       53 MOVE                             R13 R4
       54 MOVE                             R14 R5
       55 MOVE                             R15 R8
       56 NAMECALL                         R11 R11 K36 ["format"]
       58 CALL                             R11 4 1
       59 GETTABLEKS                       R15 R3 K39 ["composeUrl"]
       61 GETUPVAL                         R16 3
       62 GETTABLEKS                       R16 R16 K40 ["EXPERIENCES_SEARCH_URL"]
       64 GETTABLEKS                       R16 R16 K41 ["Prefix"]
       66 GETUPVAL                         R17 3
       67 GETTABLEKS                       R17 R17 K40 ["EXPERIENCES_SEARCH_URL"]
       69 GETTABLEKS                       R17 R17 K42 ["Url"]
       71 CALL                             R17 0 1
       72 DUPTABLE                         R18 K53 [{["search"] = "", ["creatorType"] = "User", ["creatorTargetId"] = "54321", ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"] = 10}]
       73 CALL                             R15 3 1
       74 MOVE                             R13 R15
       75 LOADK                            R14 K54 ["&surface=StudioStartPage&PageIndex=0%*"]
       76 MOVE                             R16 R8
       77 NAMECALL                         R14 R14 K36 ["format"]
       79 CALL                             R14 2 1
       80 CONCAT                           R12 R13 R14
       81 GETTABLEKS                       R13 R3 K39 ["composeUrl"]
       83 GETUPVAL                         R14 3
       84 GETTABLEKS                       R14 R14 K55 ["KNOWLEDGE_FEEDS_URL"]
       86 GETTABLEKS                       R14 R14 K41 ["Prefix"]
       88 GETUPVAL                         R15 3
       89 GETTABLEKS                       R15 R15 K55 ["KNOWLEDGE_FEEDS_URL"]
       91 GETTABLEKS                       R15 R15 K42 ["Url"]
       93 CALL                             R15 0 -1
       94 CALL                             R13 -1 1
       95 DUPTABLE                         R14 K60 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
       96 GETTABLEKS                       R15 R3 K39 ["composeUrl"]
       98 GETUPVAL                         R16 3
       99 GETTABLEKS                       R16 R16 K61 ["PLACES_SEARCH_URL"]
      101 GETTABLEKS                       R16 R16 K41 ["Prefix"]
      103 GETUPVAL                         R17 3
      104 GETTABLEKS                       R17 R17 K61 ["PLACES_SEARCH_URL"]
      106 GETTABLEKS                       R17 R17 K42 ["Url"]
      108 LOADN                            R18 555
      109 CALL                             R17 1 1
      110 MOVE                             R18 R14
      111 CALL                             R15 3 1
      112 DUPCLOSURE                       R16 K62 [PROTO_0]
      113 GETTABLEKS                       R17 R3 K39 ["composeUrl"]
      115 GETUPVAL                         R18 3
      116 GETTABLEKS                       R18 R18 K63 ["MULTI_CREATOR_ELIGIBILITY"]
      118 GETTABLEKS                       R18 R18 K41 ["Prefix"]
      120 GETUPVAL                         R19 3
      121 GETTABLEKS                       R19 R19 K63 ["MULTI_CREATOR_ELIGIBILITY"]
      123 GETTABLEKS                       R19 R19 K42 ["Url"]
      125 CALL                             R19 0 -1
      126 CALL                             R17 -1 1
      127 GETTABLEKS                       R18 R3 K39 ["composeUrl"]
      129 GETUPVAL                         R19 3
      130 GETTABLEKS                       R19 R19 K64 ["MULTI_AGE_RECOMMENDATION"]
      132 GETTABLEKS                       R19 R19 K41 ["Prefix"]
      134 GETUPVAL                         R20 3
      135 GETTABLEKS                       R20 R20 K64 ["MULTI_AGE_RECOMMENDATION"]
      137 GETTABLEKS                       R20 R20 K42 ["Url"]
      139 CALL                             R20 0 -1
      140 CALL                             R18 -1 1
      141 GETTABLEKS                       R22 R3 K39 ["composeUrl"]
      143 GETUPVAL                         R23 3
      144 GETTABLEKS                       R23 R23 K65 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      146 GETTABLEKS                       R23 R23 K41 ["Prefix"]
      148 GETUPVAL                         R24 3
      149 GETTABLEKS                       R24 R24 K65 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      151 GETTABLEKS                       R24 R24 K42 ["Url"]
      153 CALL                             R24 0 -1
      154 CALL                             R22 -1 1
      155 MOVE                             R20 R22
      156 LOADK                            R21 K66 ["?maxUsers=10&ids=555"]
      157 CONCAT                           R19 R20 R21
      158 DUPTABLE                         R20 K72 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      159 NEWTABLE                         R21 0 1
      161 LOADN                            R22 100
      162 SETLIST                          R21 R22 1 [1]
      164 SETTABLEKS                       R21 R20 K67 ["userIds"]
      166 GETTABLEKS                       R21 R3 K39 ["composeUrl"]
      168 GETUPVAL                         R22 3
      169 GETTABLEKS                       R22 R22 K73 ["AVATAR_ICON_URL"]
      171 GETTABLEKS                       R22 R22 K41 ["Prefix"]
      173 GETUPVAL                         R23 3
      174 GETTABLEKS                       R23 R23 K73 ["AVATAR_ICON_URL"]
      176 GETTABLEKS                       R23 R23 K42 ["Url"]
      178 CALL                             R23 0 1
      179 MOVE                             R24 R20
      180 CALL                             R21 3 1
      181 GETTABLEKS                       R22 R3 K39 ["composeUrl"]
      183 GETUPVAL                         R23 3
      184 GETTABLEKS                       R23 R23 K74 ["PLACE_SAFETY_STATUS_URL"]
      186 GETTABLEKS                       R23 R23 K41 ["Prefix"]
      188 GETUPVAL                         R24 3
      189 GETTABLEKS                       R24 R24 K74 ["PLACE_SAFETY_STATUS_URL"]
      191 GETTABLEKS                       R24 R24 K42 ["Url"]
      193 LOADN                            R25 101
      194 CALL                             R24 1 -1
      195 CALL                             R22 -1 1
      196 GETTABLEKS                       R23 R3 K39 ["composeUrl"]
      198 GETUPVAL                         R24 3
      199 GETTABLEKS                       R24 R24 K75 ["MULTI_TEAM_CREATE_STATUS"]
      201 GETTABLEKS                       R24 R24 K41 ["Prefix"]
      203 GETUPVAL                         R25 3
      204 GETTABLEKS                       R25 R25 K75 ["MULTI_TEAM_CREATE_STATUS"]
      206 GETTABLEKS                       R25 R25 K42 ["Url"]
      208 CALL                             R25 0 -1
      209 CALL                             R23 -1 1
      210 MOVE                             R25 R23
      211 LOADK                            R26 K76 ["?ids=555&"]
      212 CONCAT                           R24 R25 R26
      213 NEWTABLE                         R25 32 0
      215 DUPCLOSURE                       R26 K77 [PROTO_1]
      216 SETTABLE                         R26 R25 R12
      217 DUPCLOSURE                       R26 K78 [PROTO_2]
      218 SETTABLE                         R26 R25 R15
      219 DUPTABLE                         R26 K80 [{"data"}]
      220 NEWTABLE                         R27 0 1
      222 DUPTABLE                         R28 K85 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      223 SETTABLEKS                       R6 R28 K84 ["universe"]
      225 SETLIST                          R27 R28 1 [1]
      227 SETTABLEKS                       R27 R26 K79 ["data"]
      229 SETTABLEKS                       R26 R25 K86 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      231 NEWCLOSURE                       R26 P3
      232 CAPTURE                          REF R6
      233 SETTABLE                         R26 R25 R10
      234 NEWCLOSURE                       R26 P4
      235 CAPTURE                          REF R6
      236 SETTABLE                         R26 R25 R9
      237 DUPTABLE                         R26 K88 [{"groups"}]
      238 NEWTABLE                         R27 0 1
      240 DUPTABLE                         R28 K91 [{["id"] = 999, ["name"] = "Example"}]
      241 SETLIST                          R27 R28 1 [1]
      243 SETTABLEKS                       R27 R26 K87 ["groups"]
      245 SETTABLEKS                       R26 R25 K92 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      247 DUPCLOSURE                       R26 K93 [PROTO_5]
      248 SETTABLE                         R26 R25 R19
      249 LOADK                            R26 K94 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      250 DUPTABLE                         R27 K80 [{"data"}]
      251 NEWTABLE                         R28 0 1
      253 DUPTABLE                         R29 K99 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      254 SETLIST                          R28 R29 1 [1]
      256 SETTABLEKS                       R28 R27 K79 ["data"]
      258 SETTABLE                         R27 R25 R26
      259 LOADK                            R26 K100 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      260 DUPTABLE                         R27 K80 [{"data"}]
      261 NEWTABLE                         R28 0 1
      263 DUPTABLE                         R29 K99 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      264 SETLIST                          R28 R29 1 [1]
      266 SETTABLEKS                       R28 R27 K79 ["data"]
      268 SETTABLE                         R27 R25 R26
      269 DUPCLOSURE                       R26 K101 [PROTO_6]
      270 SETTABLE                         R26 R25 R17
      271 DUPTABLE                         R26 K80 [{"data"}]
      272 DUPTABLE                         R27 K102 [{"universe"}]
      273 SETTABLEKS                       R6 R27 K84 ["universe"]
      275 SETTABLEKS                       R27 R26 K79 ["data"]
      277 SETTABLE                         R26 R25 R11
      278 DUPCLOSURE                       R26 K103 [PROTO_7]
      279 SETTABLE                         R26 R25 R18
      280 DUPCLOSURE                       R26 K104 [PROTO_8]
      281 SETTABLE                         R26 R25 R21
      282 DUPCLOSURE                       R26 K105 [PROTO_9]
      283 SETTABLE                         R26 R25 R13
      284 NEWCLOSURE                       R26 P10
      285 CAPTURE                          VAL R2
      286 SETTABLEKS                       R26 R25 K106 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      288 NEWCLOSURE                       R26 P11
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R26 R25 K107 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      292 NEWCLOSURE                       R26 P12
      293 CAPTURE                          VAL R2
      294 SETTABLEKS                       R26 R25 K108 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      296 GETTABLEKS                       R26 R3 K39 ["composeUrl"]
      298 GETUPVAL                         R27 3
      299 GETTABLEKS                       R27 R27 K109 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      301 GETTABLEKS                       R27 R27 K41 ["Prefix"]
      303 GETUPVAL                         R28 3
      304 GETTABLEKS                       R28 R28 K109 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      306 GETTABLEKS                       R28 R28 K42 ["Url"]
      308 CALL                             R28 0 -1
      309 CALL                             R26 -1 1
      310 DUPCLOSURE                       R27 K110 [PROTO_13]
      311 SETTABLE                         R27 R25 R26
      312 GETTABLEKS                       R26 R3 K39 ["composeUrl"]
      314 GETUPVAL                         R27 3
      315 GETTABLEKS                       R27 R27 K111 ["MULTI_RELEASE_STATUSES"]
      317 GETTABLEKS                       R27 R27 K41 ["Prefix"]
      319 GETUPVAL                         R28 3
      320 GETTABLEKS                       R28 R28 K111 ["MULTI_RELEASE_STATUSES"]
      322 GETTABLEKS                       R28 R28 K42 ["Url"]
      324 CALL                             R28 0 -1
      325 CALL                             R26 -1 1
      326 DUPCLOSURE                       R27 K112 [PROTO_14]
      327 SETTABLE                         R27 R25 R26
      328 DUPTABLE                         R26 K114 [{"placeSafetyStatus"}]
      329 DUPTABLE                         R27 K117 [{["userPlayabilityRestrictions"] = "None"}]
      330 SETTABLEKS                       R27 R26 K113 ["placeSafetyStatus"]
      332 SETTABLE                         R26 R25 R22
      333 DUPTABLE                         R26 K80 [{"data"}]
      334 NEWTABLE                         R27 0 1
      336 DUPTABLE                         R28 K119 [{["id"] = 555, ["isEnabled"] = False}]
      337 SETLIST                          R27 R28 1 [1]
      339 SETTABLEKS                       R27 R26 K79 ["data"]
      341 SETTABLE                         R26 R25 R24
      342 GETUPVAL                         R26 4
      343 GETTABLEKS                       R26 R26 K120 ["mock"]
      345 MOVE                             R27 R25
      346 CALL                             R26 1 0
      347 GETUPVAL                         R26 4
      348 GETTABLEKS                       R26 R26 K121 ["StudioService"]
      350 GETTABLEKS                       R26 R26 K122 ["GetUserId"]
      352 GETTABLEKS                       R27 R26 K123 ["mockReturnValue"]
      354 LOADK                            R28 K124 [54321]
      355 CALL                             R27 1 0
      356 GETUPVAL                         R27 4
      357 GETTABLEKS                       R27 R27 K125 ["StartPageManager"]
      359 GETTABLEKS                       R27 R27 K126 ["getRecentAPIGamesFromRegistry"]
      361 GETUPVAL                         R28 4
      362 GETTABLEKS                       R28 R28 K125 ["StartPageManager"]
      364 GETTABLEKS                       R28 R28 K127 ["getLocalGamesFromRegistry"]
      366 GETTABLEKS                       R29 R27 K123 ["mockReturnValue"]
      368 NEWTABLE                         R30 0 0
      370 CALL                             R29 1 0
      371 GETTABLEKS                       R29 R28 K123 ["mockReturnValue"]
      373 NEWTABLE                         R30 0 1
      375 DUPTABLE                         R31 K139 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      376 SETLIST                          R30 R31 1 [1]
      378 CALL                             R29 1 0
      379 GETUPVAL                         R29 4
      380 GETTABLEKS                       R29 R29 K125 ["StartPageManager"]
      382 GETTABLEKS                       R29 R29 K140 ["getDaysSinceFirstUserLogin"]
      384 GETUPVAL                         R30 4
      385 GETTABLEKS                       R30 R30 K125 ["StartPageManager"]
      387 GETTABLEKS                       R30 R30 K141 ["isTutorialBannerClosed"]
      389 GETTABLEKS                       R31 R29 K123 ["mockReturnValue"]
      391 LOADN                            R32 0
      392 CALL                             R31 1 0
      393 GETTABLEKS                       R31 R30 K123 ["mockReturnValue"]
      395 LOADB                            R32 0
      396 CALL                             R31 1 0
      397 CLOSEUPVALS                      R6
      398 RETURN                           R0 0

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
