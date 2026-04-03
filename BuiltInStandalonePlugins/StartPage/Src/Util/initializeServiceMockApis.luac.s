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
        3 DUPTABLE                         R2 K6 [{"id", "universeId", "name", "description"}]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 LOADN                            R3 43
        8 SETTABLEKS                       R3 R2 K3 ["universeId"]
       10 LOADK                            R3 K7 ["Backyardigans"]
       11 SETTABLEKS                       R3 R2 K4 ["name"]
       13 LOADK                            R3 K8 ["Description1"]
       14 SETTABLEKS                       R3 R2 K5 ["description"]
       16 SETLIST                          R1 R2 1 [1]
       18 SETTABLEKS                       R1 R0 K0 ["data"]
       20 RETURN                           R0 1

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
        3 DUPTABLE                         R2 K4 [{"id", "activeUsers"}]
        4 LOADN                            R3 123
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 NEWTABLE                         R3 0 1
        9 DUPTABLE                         R4 K5 [{"id"}]
       10 LOADN                            R5 100
       11 SETTABLEKS                       R5 R4 K2 ["id"]
       13 SETLIST                          R3 R4 1 [1]
       15 SETTABLEKS                       R3 R2 K3 ["activeUsers"]
       17 SETLIST                          R1 R2 1 [1]
       19 SETTABLEKS                       R1 R0 K0 ["data"]
       21 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"eligibilityByCreator"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K4 [{"userIsEligible", "displayText"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K2 ["userIsEligible"]
        7 LOADK                            R3 K5 ["Eligible"]
        8 SETTABLEKS                       R3 R2 K3 ["displayText"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["eligibilityByCreator"]
       14 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"ageRecommendationDetailsByUniverse"}]
        1 NEWTABLE                         R2 0 2
        3 DUPTABLE                         R3 K4 [{"ageRecommendationDetails", "universeId"}]
        4 DUPTABLE                         R4 K6 [{"ageRecommendationSummary"}]
        5 DUPTABLE                         R5 K8 [{"ageRecommendation"}]
        6 DUPTABLE                         R6 K10 [{"minimumAge"}]
        7 LOADN                            R7 13
        8 SETTABLEKS                       R7 R6 K9 ["minimumAge"]
       10 SETTABLEKS                       R6 R5 K7 ["ageRecommendation"]
       12 SETTABLEKS                       R5 R4 K5 ["ageRecommendationSummary"]
       14 SETTABLEKS                       R4 R3 K2 ["ageRecommendationDetails"]
       16 LOADN                            R4 200
       17 SETTABLEKS                       R4 R3 K3 ["universeId"]
       19 DUPTABLE                         R4 K4 [{"ageRecommendationDetails", "universeId"}]
       20 DUPTABLE                         R5 K6 [{"ageRecommendationSummary"}]
       21 DUPTABLE                         R6 K8 [{"ageRecommendation"}]
       22 DUPTABLE                         R7 K10 [{"minimumAge"}]
       23 LOADN                            R8 18
       24 SETTABLEKS                       R8 R7 K9 ["minimumAge"]
       26 SETTABLEKS                       R7 R6 K7 ["ageRecommendation"]
       28 SETTABLEKS                       R6 R5 K5 ["ageRecommendationSummary"]
       30 SETTABLEKS                       R5 R4 K2 ["ageRecommendationDetails"]
       32 LOADN                            R5 21
       33 SETTABLEKS                       R5 R4 K3 ["universeId"]
       35 SETLIST                          R2 R3 2 [1]
       37 SETTABLEKS                       R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
       39 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K4 [{"targetId", "imageUrl"}]
        4 LOADN                            R3 100
        5 SETTABLEKS                       R3 R2 K2 ["targetId"]
        7 LOADK                            R3 K5 ["UserCDNImage1"]
        8 SETTABLEKS                       R3 R2 K3 ["imageUrl"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["data"]
       14 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{"feedItems", "meta"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K9 [{"feedType", "id", "titleKey", "title", "thumbnails", "url"}]
        4 LOADK                            R3 K10 ["Article"]
        5 SETTABLEKS                       R3 R2 K3 ["feedType"]
        7 LOADK                            R3 K11 ["potato beans"]
        8 SETTABLEKS                       R3 R2 K4 ["id"]
       10 LOADK                            R3 K12 ["MockTemplateName"]
       11 SETTABLEKS                       R3 R2 K5 ["titleKey"]
       13 LOADK                            R3 K12 ["MockTemplateName"]
       14 SETTABLEKS                       R3 R2 K6 ["title"]
       16 DUPTABLE                         R3 K14 [{"default"}]
       17 DUPTABLE                         R4 K15 [{"url"}]
       18 LOADK                            R5 K16 ["/image.png"]
       19 SETTABLEKS                       R5 R4 K8 ["url"]
       21 SETTABLEKS                       R4 R3 K13 ["default"]
       23 SETTABLEKS                       R3 R2 K7 ["thumbnails"]
       25 LOADK                            R3 K17 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
       26 SETTABLEKS                       R3 R2 K8 ["url"]
       28 SETLIST                          R1 R2 1 [1]
       30 SETTABLEKS                       R1 R0 K0 ["feedItems"]
       32 NEWTABLE                         R1 0 0
       34 SETTABLEKS                       R1 R0 K1 ["meta"]
       36 RETURN                           R0 1

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
        4 DUPTABLE                         R0 K6 [{"featureName", "access", "recourse", "recourses", "v2Recourses", "shouldPrompt"}]
        5 LOADK                            R1 K7 ["ShouldShowStudioBanner"]
        6 SETTABLEKS                       R1 R0 K0 ["featureName"]
        8 LOADK                            R1 K8 ["Granted"]
        9 SETTABLEKS                       R1 R0 K1 ["access"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["recourse"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["recourses"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["v2Recourses"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["shouldPrompt"]
       23 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K6 [{"featureName", "access", "recourse", "recourses", "v2Recourses", "shouldPrompt"}]
        5 LOADK                            R1 K7 ["ShouldShowStudioAgeReverificationRequiredBanner"]
        6 SETTABLEKS                       R1 R0 K0 ["featureName"]
        8 LOADK                            R1 K8 ["Granted"]
        9 SETTABLEKS                       R1 R0 K1 ["access"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["recourse"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["recourses"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["v2Recourses"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["shouldPrompt"]
       23 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 CALL                             R3 0 1
        4 LOADB                            R4 0
        5 LOADK                            R5 K1 ["Experiences"]
        6 DUPTABLE                         R6 K13 [{"created", "creatorName", "creatorTargetId", "creatorType", "id", "isActive", "isArchived", "name", "privacyType", "rootPlaceId", "updated"}]
        7 LOADK                            R7 K14 ["2013-11-01T08:47:14.07Z"]
        8 SETTABLEKS                       R7 R6 K2 ["created"]
       10 LOADK                            R7 K15 ["Ben"]
       11 SETTABLEKS                       R7 R6 K3 ["creatorName"]
       13 LOADK                            R7 K16 [998796]
       14 SETTABLEKS                       R7 R6 K4 ["creatorTargetId"]
       16 LOADK                            R7 K17 ["Group"]
       17 SETTABLEKS                       R7 R6 K5 ["creatorType"]
       19 LOADN                            R7 43
       20 SETTABLEKS                       R7 R6 K6 ["id"]
       22 LOADB                            R7 1
       23 SETTABLEKS                       R7 R6 K7 ["isActive"]
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K8 ["isArchived"]
       28 LOADK                            R7 K18 ["Backyardigans"]
       29 SETTABLEKS                       R7 R6 K9 ["name"]
       31 LOADK                            R7 K19 ["Public"]
       32 SETTABLEKS                       R7 R6 K10 ["privacyType"]
       34 LOADN                            R7 101
       35 SETTABLEKS                       R7 R6 K11 ["rootPlaceId"]
       37 LOADK                            R7 K20 ["2023-05-02T22:03:01.107Z"]
       38 SETTABLEKS                       R7 R6 K12 ["updated"]
       40 JUMPIFNOTEQKS                    R0 K21 ["ArchivePage"] ; [+3]
       42 LOADK                            R5 K22 ["Archive"]
       43 LOADB                            R4 1
       44 JUMPIFNOT                        R1 ; [+2]
       45 NEWTABLE                         R6 0 0
       47 LOADK                            R8 K23 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
       48 MOVE                             R10 R4
       49 MOVE                             R11 R5
       50 NAMECALL                         R8 R8 K24 ["format"]
       52 CALL                             R8 3 1
       53 MOVE                             R7 R8
       54 LOADK                            R9 K25 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
       55 MOVE                             R11 R4
       56 MOVE                             R12 R5
       57 NAMECALL                         R9 R9 K24 ["format"]
       59 CALL                             R9 3 1
       60 MOVE                             R8 R9
       61 LOADK                            R10 K26 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0"]
       62 MOVE                             R12 R4
       63 MOVE                             R13 R5
       64 NAMECALL                         R10 R10 K24 ["format"]
       66 CALL                             R10 3 1
       67 MOVE                             R9 R10
       68 GETTABLEKS                       R10 R3 K27 ["composeUrl"]
       70 GETUPVAL                         R13 1
       71 GETTABLEKS                       R12 R13 K28 ["KNOWLEDGE_FEEDS_URL"]
       73 GETTABLEKS                       R11 R12 K29 ["Prefix"]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R13 R14 K28 ["KNOWLEDGE_FEEDS_URL"]
       78 GETTABLEKS                       R12 R13 K30 ["Url"]
       80 CALL                             R12 0 -1
       81 CALL                             R10 -1 1
       82 DUPTABLE                         R11 K33 [{"limit", "SortOrder"}]
       83 LOADN                            R12 50
       84 SETTABLEKS                       R12 R11 K31 ["limit"]
       86 LOADK                            R12 K34 ["Asc"]
       87 SETTABLEKS                       R12 R11 K32 ["SortOrder"]
       89 GETTABLEKS                       R12 R3 K27 ["composeUrl"]
       91 GETUPVAL                         R15 1
       92 GETTABLEKS                       R14 R15 K35 ["PLACES_SEARCH_URL"]
       94 GETTABLEKS                       R13 R14 K29 ["Prefix"]
       96 GETUPVAL                         R16 1
       97 GETTABLEKS                       R15 R16 K35 ["PLACES_SEARCH_URL"]
       99 GETTABLEKS                       R14 R15 K30 ["Url"]
      101 LOADN                            R15 43
      102 CALL                             R14 1 1
      103 MOVE                             R15 R11
      104 CALL                             R12 3 1
      105 DUPCLOSURE                       R13 K36 [PROTO_0]
      106 GETTABLEKS                       R14 R3 K27 ["composeUrl"]
      108 GETUPVAL                         R17 1
      109 GETTABLEKS                       R16 R17 K37 ["MULTI_CREATOR_ELIGIBILITY"]
      111 GETTABLEKS                       R15 R16 K29 ["Prefix"]
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R17 R18 K37 ["MULTI_CREATOR_ELIGIBILITY"]
      116 GETTABLEKS                       R16 R17 K30 ["Url"]
      118 CALL                             R16 0 -1
      119 CALL                             R14 -1 1
      120 GETTABLEKS                       R15 R3 K27 ["composeUrl"]
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R17 R18 K38 ["MULTI_AGE_RECOMMENDATION"]
      125 GETTABLEKS                       R16 R17 K29 ["Prefix"]
      127 GETUPVAL                         R19 1
      128 GETTABLEKS                       R18 R19 K38 ["MULTI_AGE_RECOMMENDATION"]
      130 GETTABLEKS                       R17 R18 K30 ["Url"]
      132 CALL                             R17 0 -1
      133 CALL                             R15 -1 1
      134 GETTABLEKS                       R19 R3 K27 ["composeUrl"]
      136 GETUPVAL                         R22 1
      137 GETTABLEKS                       R21 R22 K39 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      139 GETTABLEKS                       R20 R21 K29 ["Prefix"]
      141 GETUPVAL                         R23 1
      142 GETTABLEKS                       R22 R23 K39 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      144 GETTABLEKS                       R21 R22 K30 ["Url"]
      146 CALL                             R21 0 -1
      147 CALL                             R19 -1 1
      148 MOVE                             R17 R19
      149 LOADK                            R18 K40 ["?maxUsers=10&ids=555"]
      150 CONCAT                           R16 R17 R18
      151 DUPTABLE                         R17 K44 [{"userIds", "size", "format", "isCircular"}]
      152 NEWTABLE                         R18 0 1
      154 LOADN                            R19 100
      155 SETLIST                          R18 R19 1 [1]
      157 SETTABLEKS                       R18 R17 K41 ["userIds"]
      159 LOADK                            R18 K45 ["48x48"]
      160 SETTABLEKS                       R18 R17 K42 ["size"]
      162 LOADK                            R18 K46 ["png"]
      163 SETTABLEKS                       R18 R17 K24 ["format"]
      165 LOADB                            R18 1
      166 SETTABLEKS                       R18 R17 K43 ["isCircular"]
      168 GETTABLEKS                       R18 R3 K27 ["composeUrl"]
      170 GETUPVAL                         R21 1
      171 GETTABLEKS                       R20 R21 K47 ["AVATAR_ICON_URL"]
      173 GETTABLEKS                       R19 R20 K29 ["Prefix"]
      175 GETUPVAL                         R22 1
      176 GETTABLEKS                       R21 R22 K47 ["AVATAR_ICON_URL"]
      178 GETTABLEKS                       R20 R21 K30 ["Url"]
      180 CALL                             R20 0 1
      181 MOVE                             R21 R17
      182 CALL                             R18 3 1
      183 GETTABLEKS                       R19 R3 K27 ["composeUrl"]
      185 GETUPVAL                         R22 1
      186 GETTABLEKS                       R21 R22 K48 ["PLACE_SAFETY_STATUS_URL"]
      188 GETTABLEKS                       R20 R21 K29 ["Prefix"]
      190 GETUPVAL                         R23 1
      191 GETTABLEKS                       R22 R23 K48 ["PLACE_SAFETY_STATUS_URL"]
      193 GETTABLEKS                       R21 R22 K30 ["Url"]
      195 LOADN                            R22 101
      196 CALL                             R21 1 -1
      197 CALL                             R19 -1 1
      198 GETTABLEKS                       R20 R3 K27 ["composeUrl"]
      200 GETUPVAL                         R23 1
      201 GETTABLEKS                       R22 R23 K49 ["MULTI_TEAM_CREATE_STATUS"]
      203 GETTABLEKS                       R21 R22 K29 ["Prefix"]
      205 GETUPVAL                         R24 1
      206 GETTABLEKS                       R23 R24 K49 ["MULTI_TEAM_CREATE_STATUS"]
      208 GETTABLEKS                       R22 R23 K30 ["Url"]
      210 CALL                             R22 0 -1
      211 CALL                             R20 -1 1
      212 MOVE                             R22 R20
      213 LOADK                            R23 K50 ["?ids=555&"]
      214 CONCAT                           R21 R22 R23
      215 NEWTABLE                         R22 32 0
      217 DUPCLOSURE                       R23 K51 [PROTO_1]
      218 SETTABLE                         R23 R22 R12
      219 DUPTABLE                         R23 K53 [{"data"}]
      220 NEWTABLE                         R24 0 1
      222 DUPTABLE                         R25 K57 [{"gameTemplateType", "hasTutorials", "universe"}]
      223 LOADK                            R26 K58 ["All"]
      224 SETTABLEKS                       R26 R25 K54 ["gameTemplateType"]
      226 LOADB                            R26 0
      227 SETTABLEKS                       R26 R25 K55 ["hasTutorials"]
      229 SETTABLEKS                       R6 R25 K56 ["universe"]
      231 SETLIST                          R24 R25 1 [1]
      233 SETTABLEKS                       R24 R23 K52 ["data"]
      235 SETTABLEKS                       R23 R22 K59 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      237 NEWCLOSURE                       R23 P2
      238 CAPTURE                          REF R6
      239 SETTABLE                         R23 R22 R8
      240 NEWCLOSURE                       R23 P3
      241 CAPTURE                          REF R6
      242 SETTABLE                         R23 R22 R7
      243 DUPTABLE                         R23 K61 [{"groups"}]
      244 NEWTABLE                         R24 0 1
      246 DUPTABLE                         R25 K62 [{"id", "name"}]
      247 LOADN                            R26 231
      248 SETTABLEKS                       R26 R25 K6 ["id"]
      250 LOADK                            R26 K63 ["Example"]
      251 SETTABLEKS                       R26 R25 K9 ["name"]
      253 SETLIST                          R24 R25 1 [1]
      255 SETTABLEKS                       R24 R23 K60 ["groups"]
      257 SETTABLEKS                       R23 R22 K64 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      259 DUPCLOSURE                       R23 K65 [PROTO_4]
      260 SETTABLE                         R23 R22 R16
      261 LOADK                            R23 K66 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      262 DUPTABLE                         R24 K53 [{"data"}]
      263 NEWTABLE                         R25 0 1
      265 DUPTABLE                         R26 K69 [{"targetId", "imageUrl"}]
      266 LOADN                            R27 123
      267 SETTABLEKS                       R27 R26 K67 ["targetId"]
      269 LOADK                            R27 K70 ["http://example.com/image/123"]
      270 SETTABLEKS                       R27 R26 K68 ["imageUrl"]
      272 SETLIST                          R25 R26 1 [1]
      274 SETTABLEKS                       R25 R24 K52 ["data"]
      276 SETTABLE                         R24 R22 R23
      277 LOADK                            R23 K71 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      278 DUPTABLE                         R24 K53 [{"data"}]
      279 NEWTABLE                         R25 0 1
      281 DUPTABLE                         R26 K69 [{"targetId", "imageUrl"}]
      282 LOADN                            R27 123
      283 SETTABLEKS                       R27 R26 K67 ["targetId"]
      285 LOADK                            R27 K70 ["http://example.com/image/123"]
      286 SETTABLEKS                       R27 R26 K68 ["imageUrl"]
      288 SETLIST                          R25 R26 1 [1]
      290 SETTABLEKS                       R25 R24 K52 ["data"]
      292 SETTABLE                         R24 R22 R23
      293 DUPCLOSURE                       R23 K72 [PROTO_5]
      294 SETTABLE                         R23 R22 R14
      295 DUPTABLE                         R23 K53 [{"data"}]
      296 DUPTABLE                         R24 K73 [{"universe"}]
      297 SETTABLEKS                       R6 R24 K56 ["universe"]
      299 SETTABLEKS                       R24 R23 K52 ["data"]
      301 SETTABLE                         R23 R22 R9
      302 DUPCLOSURE                       R23 K74 [PROTO_6]
      303 SETTABLE                         R23 R22 R15
      304 DUPCLOSURE                       R23 K75 [PROTO_7]
      305 SETTABLE                         R23 R22 R18
      306 DUPCLOSURE                       R23 K76 [PROTO_8]
      307 SETTABLE                         R23 R22 R10
      308 NEWCLOSURE                       R23 P9
      309 CAPTURE                          VAL R2
      310 SETTABLEKS                       R23 R22 K77 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      312 NEWCLOSURE                       R23 P10
      313 CAPTURE                          VAL R2
      314 SETTABLEKS                       R23 R22 K78 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      316 NEWCLOSURE                       R23 P11
      317 CAPTURE                          VAL R2
      318 SETTABLEKS                       R23 R22 K79 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      320 DUPTABLE                         R23 K81 [{"placeSafetyStatus"}]
      321 DUPTABLE                         R24 K83 [{"userPlayabilityRestrictions"}]
      322 LOADK                            R25 K84 ["None"]
      323 SETTABLEKS                       R25 R24 K82 ["userPlayabilityRestrictions"]
      325 SETTABLEKS                       R24 R23 K80 ["placeSafetyStatus"]
      327 SETTABLE                         R23 R22 R19
      328 DUPTABLE                         R23 K53 [{"data"}]
      329 NEWTABLE                         R24 0 1
      331 DUPTABLE                         R25 K86 [{"id", "isEnabled"}]
      332 LOADN                            R26 43
      333 SETTABLEKS                       R26 R25 K6 ["id"]
      335 LOADB                            R26 0
      336 SETTABLEKS                       R26 R25 K85 ["isEnabled"]
      338 SETLIST                          R24 R25 1 [1]
      340 SETTABLEKS                       R24 R23 K52 ["data"]
      342 SETTABLE                         R23 R22 R21
      343 GETUPVAL                         R24 2
      344 GETTABLEKS                       R23 R24 K87 ["mock"]
      346 MOVE                             R24 R22
      347 CALL                             R23 1 0
      348 GETUPVAL                         R25 2
      349 GETTABLEKS                       R24 R25 K88 ["StudioService"]
      351 GETTABLEKS                       R23 R24 K89 ["GetUserId"]
      353 GETTABLEKS                       R24 R23 K90 ["mockReturnValue"]
      355 LOADK                            R25 K91 [54321]
      356 CALL                             R24 1 0
      357 GETUPVAL                         R26 2
      358 GETTABLEKS                       R25 R26 K92 ["StartPageManager"]
      360 GETTABLEKS                       R24 R25 K93 ["getRecentAPIGamesFromRegistry"]
      362 GETUPVAL                         R27 2
      363 GETTABLEKS                       R26 R27 K92 ["StartPageManager"]
      365 GETTABLEKS                       R25 R26 K94 ["getLocalGamesFromRegistry"]
      367 GETTABLEKS                       R26 R24 K90 ["mockReturnValue"]
      369 NEWTABLE                         R27 0 0
      371 CALL                             R26 1 0
      372 GETTABLEKS                       R26 R25 K90 ["mockReturnValue"]
      374 NEWTABLE                         R27 0 1
      376 DUPTABLE                         R28 K101 [{"FilePath", "Name", "Updated", "PrivacyType", "NoLoadableImage", "LastViewed"}]
      377 LOADK                            R29 K102 ["Documents/TestPlace3.rbxl"]
      378 SETTABLEKS                       R29 R28 K95 ["FilePath"]
      380 LOADK                            R29 K103 ["TestPlace3.rbxl"]
      381 SETTABLEKS                       R29 R28 K96 ["Name"]
      383 LOADK                            R29 K104 ["UpdatedTime3"]
      384 SETTABLEKS                       R29 R28 K97 ["Updated"]
      386 LOADK                            R29 K105 ["Private"]
      387 SETTABLEKS                       R29 R28 K98 ["PrivacyType"]
      389 LOADB                            R29 1
      390 SETTABLEKS                       R29 R28 K99 ["NoLoadableImage"]
      392 LOADK                            R29 K106 ["ViewedTime3"]
      393 SETTABLEKS                       R29 R28 K100 ["LastViewed"]
      395 SETLIST                          R27 R28 1 [1]
      397 CALL                             R26 1 0
      398 GETUPVAL                         R28 2
      399 GETTABLEKS                       R27 R28 K92 ["StartPageManager"]
      401 GETTABLEKS                       R26 R27 K107 ["getDaysSinceFirstUserLogin"]
      403 GETUPVAL                         R29 2
      404 GETTABLEKS                       R28 R29 K92 ["StartPageManager"]
      406 GETTABLEKS                       R27 R28 K108 ["isTutorialBannerClosed"]
      408 GETTABLEKS                       R28 R26 K90 ["mockReturnValue"]
      410 LOADN                            R29 0
      411 CALL                             R28 1 0
      412 GETTABLEKS                       R28 R27 K90 ["mockReturnValue"]
      414 LOADB                            R29 0
      415 CALL                             R28 1 0
      416 CLOSEUPVALS                      R6
      417 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Network"]
       20 GETTABLEKS                       R3 R4 K10 ["Urls"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["Services"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R1 K13 ["RobloxAPI"]
       34 GETTABLEKS                       R4 R5 K14 ["Url"]
       36 DUPCLOSURE                       R5 K15 [PROTO_12]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 SETGLOBAL                        R5 K16 ["initializeServiceMockApis"]
       42 GETGLOBAL                        R5 K16 ["initializeServiceMockApis"]
       44 RETURN                           R5 1
