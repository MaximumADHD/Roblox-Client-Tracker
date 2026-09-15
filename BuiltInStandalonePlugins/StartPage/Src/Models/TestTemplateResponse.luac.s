PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K6 [ipairs]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 3
       21 FORGPREP_INEXT                   R1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K7 ["validate"]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 1
       27 JUMPIFNOT                        R6 ; [+7]
       28 LOADK                            R7 K8 ["[%*] > %*"]
       29 MOVE                             R9 R4
       30 MOVE                             R10 R6
       31 NAMECALL                         R7 R7 K4 ["format"]
       33 CALL                             R7 3 1
       34 RETURN                           R7 1
       35 FORGLOOP                         R1 2 [inext] ; [-14]
       37 LOADNIL                          R1
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["TestTemplateModel"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"validate"}]
       19 SETTABLEKS                       R2 R3 K10 ["validate"]
       21 RETURN                           R3 1
