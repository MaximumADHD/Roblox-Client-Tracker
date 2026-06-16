PROTO_0:
        0 LOADK                            R0 K0 ["universes/v1/search"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["doc-site/v2/feeds?surfaceType=StudioStart"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["v1/gametemplates"]
        1 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R2 K0 ["v2/universes/%*/places"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R0 K0 ["v1/user/groups/canmanage"]
        1 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R2 K0 ["creator-home-api/v1/groups?surface=%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R0 K0 ["/v1/games/icons"]
        1 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R0 K0 ["teamcreate/v1/MultiGetUniversesActiveSessionMembers"]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R0 K0 ["team-create-service/v1/GetCanCollaborate"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R0 K0 ["team-create-service/v1/MultiUniverseGetCanCollaborate"]
        1 RETURN                           R0 1

PROTO_10:
        0 LOADK                            R0 K0 ["v1/users/avatar-headshot"]
        1 RETURN                           R0 1

PROTO_11:
        0 LOADK                            R0 K0 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
        1 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R0 K0 ["experience-guidelines-service/v1beta1/multi-creator-eligibility"]
        1 RETURN                           R0 1

PROTO_13:
        0 LOADK                            R0 K0 ["v1/universes/multiget/teamcreate"]
        1 RETURN                           R0 1

PROTO_14:
        0 LOADK                            R2 K0 ["v1/universes/%*/activate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R2 K0 ["v1/universes/%*/deactivate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R2 K0 ["v1/universes/%*/configuration"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_17:
        0 LOADK                            R0 K0 ["v1/universes/multiget"]
        1 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R2 K0 ["v1/universes/%*/teamcreate/memberships"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_19:
        0 LOADK                            R0 K0 ["v1/team-create-preemptive"]
        1 RETURN                           R0 1

PROTO_20:
        0 LOADK                            R2 K0 ["v1/universes/%*/teamcreate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_21:
        0 LOADK                            R0 K0 ["v1/games/multiget-place-details"]
        1 RETURN                           R0 1

PROTO_22:
        0 LOADK                            R0 K0 ["studio-test-templates-service/v1/test-templates"]
        1 RETURN                           R0 1

PROTO_23:
        0 LOADK                            R2 K0 ["creator-home-api/v1/users/%*/homepage/banner/experience-unrated"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R3 K0 ["access-management/v1/upsell-feature-access?featureName=%*&nameSpace=%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_25:
        0 LOADK                            R0 K0 ["core-content/v1/universe-eligibility/batch"]
        1 RETURN                           R0 1

PROTO_26:
        0 LOADK                            R0 K0 ["experience-releases/v1beta1/experience_releases_api/multi_release_statuses"]
        1 RETURN                           R0 1

PROTO_27:
        0 LOADK                            R2 K0 ["content-safety/v1/places/%*/safety-status"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_28:
        0 LOADK                            R0 K0 ["team-create-service/v1/AreUniversesImpacted"]
        1 RETURN                           R0 1

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
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
       18 GETTABLEKS                       R3 R2 K10 ["new"]
       20 CALL                             R3 0 1
       21 DUPTABLE                         R4 K40 [{"EXPERIENCES_SEARCH_URL", "KNOWLEDGE_FEEDS_URL", "TEMPLATES_SEARCH_URL", "PLACES_SEARCH_URL", "GROUPS_SEARCH_URL", "CREATOR_GROUPS_SEARCH_URL", "EXPERIENCES_ICON_URL", "TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL", "TEAM_CREATE_CAN_COLLABORATE_URL", "TEAM_CREATE_MULTI_CAN_COLLABORATE_URL", "AVATAR_ICON_URL", "MULTI_AGE_RECOMMENDATION", "MULTI_CREATOR_ELIGIBILITY", "MULTI_TEAM_CREATE_STATUS", "ACTIVATE_UNIVERSE", "DEACTIVATE_UNIVERSE", "UNIVERSE_CONFIGURATION", "UNIVERSE_DATA", "TEAMCREATE_MEMBERSHIPS", "TEAMCREATE_PRELAUNCH", "TEAMCREATE_CHANGE_ENABLED", "MULTIGET_PLACES", "TEST_TEMPLATES", "HOMEPAGE_BANNER_EXPERIENCE_UNRATED_URL", "AMP_FEATURE_ACCESS_URL", "CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY", "MULTI_RELEASE_STATUSES", "PLACE_SAFETY_STATUS_URL", "ARE_UNIVERSES_IMPACTED"}]
       22 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       23 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
       25 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       27 DUPCLOSURE                       R6 K44 [PROTO_0]
       28 SETTABLEKS                       R6 R5 K9 ["Url"]
       30 SETTABLEKS                       R5 R4 K11 ["EXPERIENCES_SEARCH_URL"]
       32 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       33 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
       35 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       37 DUPCLOSURE                       R6 K45 [PROTO_1]
       38 SETTABLEKS                       R6 R5 K9 ["Url"]
       40 SETTABLEKS                       R5 R4 K12 ["KNOWLEDGE_FEEDS_URL"]
       42 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       43 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
       45 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       47 DUPCLOSURE                       R6 K47 [PROTO_2]
       48 SETTABLEKS                       R6 R5 K9 ["Url"]
       50 SETTABLEKS                       R5 R4 K13 ["TEMPLATES_SEARCH_URL"]
       52 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       53 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
       55 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       57 DUPCLOSURE                       R6 K48 [PROTO_3]
       58 SETTABLEKS                       R6 R5 K9 ["Url"]
       60 SETTABLEKS                       R5 R4 K14 ["PLACES_SEARCH_URL"]
       62 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       63 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
       65 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       67 DUPCLOSURE                       R6 K49 [PROTO_4]
       68 SETTABLEKS                       R6 R5 K9 ["Url"]
       70 SETTABLEKS                       R5 R4 K15 ["GROUPS_SEARCH_URL"]
       72 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       73 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
       75 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       77 DUPCLOSURE                       R6 K50 [PROTO_5]
       78 SETTABLEKS                       R6 R5 K9 ["Url"]
       80 SETTABLEKS                       R5 R4 K16 ["CREATOR_GROUPS_SEARCH_URL"]
       82 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       83 GETTABLEKS                       R6 R3 K51 ["THUMBNAILS_URL"]
       85 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       87 DUPCLOSURE                       R6 K52 [PROTO_6]
       88 SETTABLEKS                       R6 R5 K9 ["Url"]
       90 SETTABLEKS                       R5 R4 K17 ["EXPERIENCES_ICON_URL"]
       92 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
       93 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
       95 SETTABLEKS                       R6 R5 K41 ["Prefix"]
       97 DUPCLOSURE                       R6 K53 [PROTO_7]
       98 SETTABLEKS                       R6 R5 K9 ["Url"]
      100 SETTABLEKS                       R5 R4 K18 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      102 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      103 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      105 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      107 DUPCLOSURE                       R6 K54 [PROTO_8]
      108 SETTABLEKS                       R6 R5 K9 ["Url"]
      110 SETTABLEKS                       R5 R4 K19 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
      112 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      113 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      115 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      117 DUPCLOSURE                       R6 K55 [PROTO_9]
      118 SETTABLEKS                       R6 R5 K9 ["Url"]
      120 SETTABLEKS                       R5 R4 K20 ["TEAM_CREATE_MULTI_CAN_COLLABORATE_URL"]
      122 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      123 GETTABLEKS                       R6 R3 K51 ["THUMBNAILS_URL"]
      125 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      127 DUPCLOSURE                       R6 K56 [PROTO_10]
      128 SETTABLEKS                       R6 R5 K9 ["Url"]
      130 SETTABLEKS                       R5 R4 K21 ["AVATAR_ICON_URL"]
      132 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      133 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      135 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      137 DUPCLOSURE                       R6 K57 [PROTO_11]
      138 SETTABLEKS                       R6 R5 K9 ["Url"]
      140 SETTABLEKS                       R5 R4 K22 ["MULTI_AGE_RECOMMENDATION"]
      142 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      143 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      145 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      147 DUPCLOSURE                       R6 K58 [PROTO_12]
      148 SETTABLEKS                       R6 R5 K9 ["Url"]
      150 SETTABLEKS                       R5 R4 K23 ["MULTI_CREATOR_ELIGIBILITY"]
      152 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      153 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      155 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      157 DUPCLOSURE                       R6 K59 [PROTO_13]
      158 SETTABLEKS                       R6 R5 K9 ["Url"]
      160 SETTABLEKS                       R5 R4 K24 ["MULTI_TEAM_CREATE_STATUS"]
      162 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      163 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      165 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      167 DUPCLOSURE                       R6 K60 [PROTO_14]
      168 SETTABLEKS                       R6 R5 K9 ["Url"]
      170 SETTABLEKS                       R5 R4 K25 ["ACTIVATE_UNIVERSE"]
      172 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      173 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      175 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      177 DUPCLOSURE                       R6 K61 [PROTO_15]
      178 SETTABLEKS                       R6 R5 K9 ["Url"]
      180 SETTABLEKS                       R5 R4 K26 ["DEACTIVATE_UNIVERSE"]
      182 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      183 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      185 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      187 DUPCLOSURE                       R6 K62 [PROTO_16]
      188 SETTABLEKS                       R6 R5 K9 ["Url"]
      190 SETTABLEKS                       R5 R4 K27 ["UNIVERSE_CONFIGURATION"]
      192 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      193 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      195 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      197 DUPCLOSURE                       R6 K63 [PROTO_17]
      198 SETTABLEKS                       R6 R5 K9 ["Url"]
      200 SETTABLEKS                       R5 R4 K28 ["UNIVERSE_DATA"]
      202 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      203 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      205 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      207 DUPCLOSURE                       R6 K64 [PROTO_18]
      208 SETTABLEKS                       R6 R5 K9 ["Url"]
      210 SETTABLEKS                       R5 R4 K29 ["TEAMCREATE_MEMBERSHIPS"]
      212 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      213 GETTABLEKS                       R6 R3 K65 ["GAME_JOIN_URL"]
      215 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      217 DUPCLOSURE                       R6 K66 [PROTO_19]
      218 SETTABLEKS                       R6 R5 K9 ["Url"]
      220 SETTABLEKS                       R5 R4 K30 ["TEAMCREATE_PRELAUNCH"]
      222 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      223 GETTABLEKS                       R6 R3 K46 ["DEVELOP_URL"]
      225 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      227 DUPCLOSURE                       R6 K67 [PROTO_20]
      228 SETTABLEKS                       R6 R5 K9 ["Url"]
      230 SETTABLEKS                       R5 R4 K31 ["TEAMCREATE_CHANGE_ENABLED"]
      232 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      233 GETTABLEKS                       R6 R3 K68 ["GAMES_URL"]
      235 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      237 DUPCLOSURE                       R6 K69 [PROTO_21]
      238 SETTABLEKS                       R6 R5 K9 ["Url"]
      240 SETTABLEKS                       R5 R4 K32 ["MULTIGET_PLACES"]
      242 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      243 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      245 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      247 DUPCLOSURE                       R6 K70 [PROTO_22]
      248 SETTABLEKS                       R6 R5 K9 ["Url"]
      250 SETTABLEKS                       R5 R4 K33 ["TEST_TEMPLATES"]
      252 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      253 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      255 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      257 DUPCLOSURE                       R6 K71 [PROTO_23]
      258 SETTABLEKS                       R6 R5 K9 ["Url"]
      260 SETTABLEKS                       R5 R4 K34 ["HOMEPAGE_BANNER_EXPERIENCE_UNRATED_URL"]
      262 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      263 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      265 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      267 DUPCLOSURE                       R6 K72 [PROTO_24]
      268 SETTABLEKS                       R6 R5 K9 ["Url"]
      270 SETTABLEKS                       R5 R4 K35 ["AMP_FEATURE_ACCESS_URL"]
      272 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      273 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      275 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      277 DUPCLOSURE                       R6 K73 [PROTO_25]
      278 SETTABLEKS                       R6 R5 K9 ["Url"]
      280 SETTABLEKS                       R5 R4 K36 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      282 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      283 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      285 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      287 DUPCLOSURE                       R6 K74 [PROTO_26]
      288 SETTABLEKS                       R6 R5 K9 ["Url"]
      290 SETTABLEKS                       R5 R4 K37 ["MULTI_RELEASE_STATUSES"]
      292 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      293 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      295 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      297 DUPCLOSURE                       R6 K75 [PROTO_27]
      298 SETTABLEKS                       R6 R5 K9 ["Url"]
      300 SETTABLEKS                       R5 R4 K38 ["PLACE_SAFETY_STATUS_URL"]
      302 DUPTABLE                         R5 K42 [{"Prefix", "Url"}]
      303 GETTABLEKS                       R6 R3 K43 ["APIS_URL"]
      305 SETTABLEKS                       R6 R5 K41 ["Prefix"]
      307 DUPCLOSURE                       R6 K76 [PROTO_28]
      308 SETTABLEKS                       R6 R5 K9 ["Url"]
      310 SETTABLEKS                       R5 R4 K39 ["ARE_UNIVERSES_IMPACTED"]
      312 RETURN                           R4 1
