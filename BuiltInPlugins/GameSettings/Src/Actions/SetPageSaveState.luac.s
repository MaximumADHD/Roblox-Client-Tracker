PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K4 [string.format]
       11 GETIMPORT                        R8 K6 [script]
       13 GETTABLEKS                       R6 R8 K7 ["Name"]
       15 LOADK                            R7 K8 [" requires pageId to be a string, not %s"]
       16 CONCAT                           R5 R6 R7
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K1 [typeof]
       21 CALL                             R6 1 1
       22 CALL                             R4 2 -1
       23 FASTCALL                         ASSERT ; [+2]
       24 GETIMPORT                        R2 K10 [assert]
       26 CALL                             R2 -1 0
       27 LOADB                            R3 0
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K1 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K11 ["number"] ; [+10]
       35 LOADB                            R3 0
       36 GETUPVAL                         R4 0
       37 JUMPIFNOTLE                      R4 R1 ; [+6]
       39 GETUPVAL                         R4 1
       40 JUMPIFLE                         R1 R4 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 GETIMPORT                        R4 K4 [string.format]
       46 GETIMPORT                        R8 K6 [script]
       48 GETTABLEKS                       R6 R8 K7 ["Name"]
       50 LOADK                            R7 K12 [" requires loadState to be a LoadState, not %s"]
       51 CONCAT                           R5 R6 R7
       52 FASTCALL1                        TYPEOF R1 ; [+3]
       53 MOVE                             R7 R1
       54 GETIMPORT                        R6 K1 [typeof]
       56 CALL                             R6 1 1
       57 CALL                             R4 2 -1
       58 FASTCALL                         ASSERT ; [+2]
       59 GETIMPORT                        R2 K10 [assert]
       61 CALL                             R2 -1 0
       62 DUPTABLE                         R2 K15 [{"pageId", "saveState"}]
       63 SETTABLEKS                       R0 R2 K13 ["pageId"]
       65 SETTABLEKS                       R1 R2 K14 ["saveState"]
       67 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R1 R2 K8 ["Action"]
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R5 K7 ["Util"]
       26 GETTABLEKS                       R3 R4 K10 ["SaveState"]
       28 CALL                             R2 1 1
       29 LOADN                            R3 0
       30 LOADN                            R4 0
       31 GETIMPORT                        R5 K12 [pairs]
       33 MOVE                             R6 R2
       34 CALL                             R5 1 3
       35 FORGPREP_NEXT                    R5
       36 FASTCALL2                        MATH_MIN R3 R9 ; [+5]
       38 MOVE                             R11 R3
       39 MOVE                             R12 R9
       40 GETIMPORT                        R10 K15 [math.min]
       42 CALL                             R10 2 1
       43 MOVE                             R3 R10
       44 FASTCALL2                        MATH_MAX R4 R9 ; [+5]
       46 MOVE                             R11 R4
       47 MOVE                             R12 R9
       48 GETIMPORT                        R10 K17 [math.max]
       50 CALL                             R10 2 1
       51 MOVE                             R4 R10
       52 FORGLOOP                         R5 2 ; [-17]
       54 MOVE                             R5 R1
       55 GETIMPORT                        R7 K1 [script]
       57 GETTABLEKS                       R6 R7 K18 ["Name"]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R4
       62 CALL                             R5 2 -1
       63 CLOSEUPVALS                      R3
       64 RETURN                           R5 -1
