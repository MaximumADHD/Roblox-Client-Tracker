PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getQuotasAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R3 1 2
        5 JUMPIFNOT                        R3 ; [+7]
        6 FASTCALL1                        TYPEOF R4 ; [+3]
        7 MOVE                             R6 R4
        8 GETIMPORT                        R5 K3 [typeof]
       10 CALL                             R5 1 1
       11 JUMPIFEQKS                       R5 K4 ["table"] ; [+7]
       13 GETIMPORT                        R5 K6 [warn]
       15 LOADK                            R6 K7 ["Error getting quotas:"]
       16 MOVE                             R7 R4
       17 CALL                             R5 2 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R0 K8 ["setQuota"]
       21 GETTABLEKS                       R6 R4 K9 ["generationQuota"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R0 K10 ["setTotal"]
       26 GETTABLEKS                       R6 R4 K11 ["generationTotal"]
       28 CALL                             R5 1 0
       29 GETTABLEKS                       R5 R1 K8 ["setQuota"]
       31 GETTABLEKS                       R6 R4 K12 ["previewQuota"]
       33 CALL                             R5 1 0
       34 GETTABLEKS                       R5 R1 K10 ["setTotal"]
       36 GETTABLEKS                       R6 R4 K13 ["previewTotal"]
       38 CALL                             R5 1 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
       20 DUPCLOSURE                       R3 K10 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
       23 RETURN                           R2 1
