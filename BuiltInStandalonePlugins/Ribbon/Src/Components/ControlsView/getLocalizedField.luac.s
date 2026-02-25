PROTO_0:
        0 PREPVARARGS                      2
        1 LOADN                            R4 1
        2 LOADK                            R6 K0 ["#"]
        3 FASTCALL1                        SELECT_VARARG R6 ; [+3]
        4 GETIMPORT                        R5 K2 [select]
        6 GETVARARGS                       R7 -1
        7 CALL                             R5 -1 1
        8 MOVE                             R2 R5
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       12 GETIMPORT                        R5 K2 [select]
       14 MOVE                             R6 R4
       15 GETVARARGS                       R7 -1
       16 CALL                             R5 -1 1
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K4 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+27]
       24 LOADK                            R8 K6 ["%*Key"]
       25 MOVE                             R10 R1
       26 NAMECALL                         R8 R8 K7 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 GETTABLE                         R6 R5 R7
       31 JUMPIFNOT                        R6 ; [+11]
       32 LOADK                            R9 K8 ["^Studio%.Ribbon%.Plugin%."]
       33 LOADK                            R10 K9 [""]
       34 NAMECALL                         R7 R6 K10 ["gsub"]
       36 CALL                             R7 3 1
       37 LOADK                            R10 K11 ["Plugin"]
       38 MOVE                             R11 R7
       39 NAMECALL                         R8 R0 K12 ["getText"]
       41 CALL                             R8 3 -1
       42 RETURN                           R8 -1
       43 GETTABLE                         R7 R5 R1
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETTABLE                         R7 R5 R1
       46 JUMPIFEQKS                       R7 K9 [""] ; [+3]
       48 GETTABLE                         R7 R5 R1
       49 RETURN                           R7 1
       50 FORNLOOP                         R2
       51 LOADK                            R2 K9 [""]
       52 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
