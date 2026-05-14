PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R4 K4 [script]
       11 GETTABLEKS                       R4 R4 K5 ["Name"]
       13 LOADK                            R5 K6 [" requires friends to be a table, not "]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K1 [typeof]
       18 CALL                             R6 1 1
       19 CONCAT                           R3 R4 R6
       20 FASTCALL2                        ASSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K8 [assert]
       24 CALL                             R1 2 0
       25 GETIMPORT                        R1 K10 [ipairs]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 3
       29 FORGPREP_INEXT                   R1
       30 FASTCALL1                        TYPEOF R5 ; [+3]
       31 MOVE                             R9 R5
       32 GETIMPORT                        R8 K1 [typeof]
       34 CALL                             R8 1 1
       35 JUMPIFEQKS                       R8 K11 ["number"] ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 GETIMPORT                        R9 K4 [script]
       41 GETTABLEKS                       R9 R9 K5 ["Name"]
       43 LOADK                            R10 K12 [" requires a table of numbers for friends, not "]
       44 FASTCALL1                        TYPEOF R5 ; [+3]
       45 MOVE                             R12 R5
       46 GETIMPORT                        R11 K1 [typeof]
       48 CALL                             R11 1 1
       49 CONCAT                           R8 R9 R11
       50 FASTCALL2                        ASSERT R7 R8 ; [+3]
       52 GETIMPORT                        R6 K8 [assert]
       54 CALL                             R6 2 0
       55 FORGLOOP                         R1 2 [inext] ; [-26]
       57 DUPTABLE                         R1 K14 [{"creatorFriends"}]
       58 SETTABLEKS                       R0 R1 K13 ["creatorFriends"]
       60 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["Action"]
       20 MOVE                             R2 R1
       21 GETIMPORT                        R3 K1 [script]
       23 GETTABLEKS                       R3 R3 K9 ["Name"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
