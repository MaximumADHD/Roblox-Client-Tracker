PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getQuotasAsync"]
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

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
