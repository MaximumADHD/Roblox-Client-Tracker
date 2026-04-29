PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R2 R0 K5 ["creatorExperienceBan"]
       20 JUMPIFNOT                        R2 ; [+7]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K6 ["validate"]
       24 GETTABLEKS                       R2 R0 K5 ["creatorExperienceBan"]
       26 CALL                             R1 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R1
       29 JUMPIFNOT                        R1 ; [+7]
       30 LOADK                            R3 K7 ["\"creatorExperienceBan\" > %*"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R3 K4 ["format"]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 RETURN                           R2 1
       37 LOADNIL                          R2
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Models"]
       11 GETTABLEKS                       R2 R3 K7 ["CreatorExperienceBanData"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 GETIMPORT                        R3 K11 [table.freeze]
       18 DUPTABLE                         R4 K13 [{"validate"}]
       19 SETTABLEKS                       R2 R4 K12 ["validate"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
