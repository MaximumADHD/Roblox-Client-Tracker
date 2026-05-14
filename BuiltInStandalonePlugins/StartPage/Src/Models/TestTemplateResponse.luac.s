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
       18 GETIMPORT                        R1 K6 [ipairs]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 3
       22 FORGPREP_INEXT                   R1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K7 ["validate"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 JUMPIFNOT                        R6 ; [+8]
       29 LOADK                            R8 K8 ["[%*] > %*"]
       30 MOVE                             R10 R4
       31 MOVE                             R11 R6
       32 NAMECALL                         R8 R8 K4 ["format"]
       34 CALL                             R8 3 1
       35 MOVE                             R7 R8
       36 RETURN                           R7 1
       37 FORGLOOP                         R1 2 [inext] ; [-15]
       39 LOADNIL                          R1
       40 RETURN                           R1 1

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
