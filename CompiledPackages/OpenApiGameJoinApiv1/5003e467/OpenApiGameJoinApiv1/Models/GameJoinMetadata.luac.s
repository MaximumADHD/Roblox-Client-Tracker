MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./GameJoinMetadataJoinSource"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./GameJoinMetadataRequestType"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R1 K6 ["object"]
       17 DUPTABLE                         R5 K12 [{"JoinSource", "RequestType", "MatchmakingDecisionId", "IsPlaceVoiceChatEnabled", "ExperienceContentMaturityReviewStatus"}]
       18 SETTABLEKS                       R2 R5 K7 ["JoinSource"]
       20 SETTABLEKS                       R3 R5 K8 ["RequestType"]
       22 GETTABLEKS                       R6 R1 K13 ["constrain"]
       24 GETTABLEKS                       R7 R1 K14 ["String"]
       26 DUPTABLE                         R8 K17 [{["format"] = "uuid"}]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K9 ["MatchmakingDecisionId"]
       30 GETTABLEKS                       R6 R1 K18 ["Boolean"]
       32 SETTABLEKS                       R6 R5 K10 ["IsPlaceVoiceChatEnabled"]
       34 GETTABLEKS                       R6 R1 K14 ["String"]
       36 SETTABLEKS                       R6 R5 K11 ["ExperienceContentMaturityReviewStatus"]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1
