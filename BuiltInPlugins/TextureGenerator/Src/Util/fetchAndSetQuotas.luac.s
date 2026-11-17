PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getQuotasAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R3 K1 [pcall]
        5 CALL                             R3 1 2
        6 JUMPIFNOT                        R3 ; [+7]
        7 FASTCALL1                        TYPEOF R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K3 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFEQKS                       R5 K4 ["table"] ; [+7]
       14 GETIMPORT                        R5 K6 [warn]
       16 LOADK                            R6 K7 ["Error getting quotas:"]
       17 MOVE                             R7 R4
       18 CALL                             R5 2 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R0 K8 ["setQuota"]
       22 GETTABLEKS                       R6 R4 K9 ["generationQuota"]
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R0 K10 ["setTotal"]
       27 GETTABLEKS                       R6 R4 K11 ["generationTotal"]
       29 CALL                             R5 1 0
       30 GETTABLEKS                       R5 R1 K8 ["setQuota"]
       32 GETTABLEKS                       R6 R4 K12 ["previewQuota"]
       34 CALL                             R5 1 0
       35 GETTABLEKS                       R5 R1 K10 ["setTotal"]
       37 GETTABLEKS                       R6 R4 K13 ["previewTotal"]
       39 CALL                             R5 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagTextureGeneratorFixQuotaYield"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 MOVE                             R3 R1
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+3]
       20 DUPCLOSURE                       R3 K10 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
       23 RETURN                           R2 1
