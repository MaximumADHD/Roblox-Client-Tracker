PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+10]
        8 LOADB                            R2 0
        9 GETUPVAL                         R3 0
       10 JUMPIFNOTLE                      R3 R0 ; [+6]
       12 GETUPVAL                         R3 1
       13 JUMPIFLE                         R0 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETIMPORT                        R3 K5 [string.format]
       19 GETIMPORT                        R5 K7 [script]
       21 GETTABLEKS                       R5 R5 K8 ["Name"]
       23 LOADK                            R6 K9 [" requires loadState to be a LoadState, not %s"]
       24 CONCAT                           R4 R5 R6
       25 FASTCALL1                        TYPEOF R0 ; [+3]
       26 MOVE                             R6 R0
       27 GETIMPORT                        R5 K1 [typeof]
       29 CALL                             R5 1 1
       30 CALL                             R3 2 -1
       31 FASTCALL                         ASSERT ; [+2]
       32 GETIMPORT                        R1 K11 [assert]
       34 CALL                             R1 -1 0
       35 DUPTABLE                         R1 K13 [{"saveState"}]
       36 SETTABLEKS                       R0 R1 K12 ["saveState"]
       38 RETURN                           R1 1

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
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K9 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K10 ["SaveState"]
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
       55 GETIMPORT                        R6 K1 [script]
       57 GETTABLEKS                       R6 R6 K18 ["Name"]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R4
       62 CALL                             R5 2 -1
       63 CLOSEUPVALS                      R3
       64 RETURN                           R5 -1
