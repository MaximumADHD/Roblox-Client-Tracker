PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQ                      R4 R0 ; [+2]
        6 RETURN                           R4 1
        7 FORGLOOP                         R1 1 ; [-4]
        9 LOADNIL                          R1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K15 [{"INVALID_INPUT", "QUOTA_EXCEEDED", "MODERATION_BLOCKED", "NODE_BUSY", "TIMEOUT", "STAGE_FAILED", "INTERNAL_ERROR"}]
       15 DUPTABLE                         R3 K20 [{["messageKey"] = "ErrorInvalidInput", ["retryable"] = False}]
       16 SETTABLEKS                       R3 R2 K8 ["INVALID_INPUT"]
       18 DUPTABLE                         R3 K22 [{["messageKey"] = "ErrorQuotaExceeded", ["retryable"] = False}]
       19 SETTABLEKS                       R3 R2 K9 ["QUOTA_EXCEEDED"]
       21 DUPTABLE                         R3 K24 [{["messageKey"] = "ErrorModerationBlocked", ["retryable"] = False}]
       22 SETTABLEKS                       R3 R2 K10 ["MODERATION_BLOCKED"]
       24 DUPTABLE                         R3 K27 [{["messageKey"] = "ErrorNodeBusy", ["retryable"] = True}]
       25 SETTABLEKS                       R3 R2 K11 ["NODE_BUSY"]
       27 DUPTABLE                         R3 K29 [{["messageKey"] = "ErrorTimeout", ["retryable"] = True}]
       28 SETTABLEKS                       R3 R2 K12 ["TIMEOUT"]
       30 DUPTABLE                         R3 K31 [{["messageKey"] = "ErrorStageFailed", ["retryable"] = True}]
       31 SETTABLEKS                       R3 R2 K13 ["STAGE_FAILED"]
       33 DUPTABLE                         R3 K33 [{["messageKey"] = "ErrorGenerationFailed", ["retryable"] = True}]
       34 SETTABLEKS                       R3 R2 K14 ["INTERNAL_ERROR"]
       36 DUPTABLE                         R3 K35 [{"byCode"}]
       37 SETTABLEKS                       R2 R3 K34 ["byCode"]
       39 DUPCLOSURE                       R4 K36 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K37 ["classify"]
       43 RETURN                           R3 1
