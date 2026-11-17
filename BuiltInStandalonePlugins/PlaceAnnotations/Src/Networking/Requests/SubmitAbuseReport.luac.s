PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 DUPTABLE                         R3 K9 [{["abuseVector"] = "studio_comment", ["category"], ["comment"], ["custom"], ["targetId"], ["targetType"] = "User"}]
        7 SETTABLEKS                       R1 R3 K3 ["category"]
        9 SETTABLEKS                       R2 R3 K4 ["comment"]
       11 DUPTABLE                         R4 K12 [{"STUDIO_COMMENT_ID", "STUDIO_CHANNEL_ID"}]
       12 NAMECALL                         R5 R0 K13 ["GetStringUniqueId"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K10 ["STUDIO_COMMENT_ID"]
       17 GETTABLEKS                       R5 R0 K14 ["ChannelId"]
       19 SETTABLEKS                       R5 R4 K11 ["STUDIO_CHANNEL_ID"]
       21 SETTABLEKS                       R4 R3 K5 ["custom"]
       23 GETTABLEKS                       R4 R0 K15 ["AuthorId"]
       25 SETTABLEKS                       R4 R3 K6 ["targetId"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K16 ["AbuseReporting"]
       30 GETTABLEKS                       R4 R4 K17 ["postSubmitAbuseReportAsync"]
       32 DUPTABLE                         R5 K19 [{"payload"}]
       33 SETTABLEKS                       R3 R5 K18 ["payload"]
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["OpenApiAbuseReporting"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K12 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
