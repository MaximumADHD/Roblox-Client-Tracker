PROTO_0:
        0 GETUPVAL                         R3 0
        1 ADDK                             R5 R0 K0 [1]
        2 ADDK                             R6 R0 K0 [1]
        3 NAMECALL                         R3 R3 K1 ["sub"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 1
        7 ADDK                             R6 R1 K0 [1]
        8 ADDK                             R7 R1 K0 [1]
        9 NAMECALL                         R4 R4 K1 ["sub"]
       11 CALL                             R4 3 1
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R3 R1 ; [+18]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K0 ["new"]
        7 GETUPVAL                         R6 3
        8 GETUPVAL                         R7 4
        9 GETUPVAL                         R10 0
       10 ADDK                             R9 R10 K1 [1]
       11 MOVE                             R10 R1
       12 NAMECALL                         R7 R7 K2 ["sub"]
       14 CALL                             R7 3 -1
       15 CALL                             R5 -1 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R3 K5 [table.insert]
       19 CALL                             R3 -1 0
       20 GETUPVAL                         R3 5
       21 JUMPIFEQ                         R3 R2 ; [+18]
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K0 ["new"]
       27 GETUPVAL                         R6 6
       28 GETUPVAL                         R7 7
       29 GETUPVAL                         R10 5
       30 ADDK                             R9 R10 K1 [1]
       31 MOVE                             R10 R2
       32 NAMECALL                         R7 R7 K2 ["sub"]
       34 CALL                             R7 3 -1
       35 CALL                             R5 -1 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R3 K5 [table.insert]
       39 CALL                             R3 -1 0
       40 ADD                              R3 R1 R0
       41 SETUPVAL                         R3 0
       42 ADD                              R3 R2 R0
       43 SETUPVAL                         R3 5
       44 GETUPVAL                         R4 1
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K0 ["new"]
       48 GETUPVAL                         R6 8
       49 GETUPVAL                         R7 7
       50 ADDK                             R9 R2 K1 [1]
       51 GETUPVAL                         R10 5
       52 NAMECALL                         R7 R7 K2 ["sub"]
       54 CALL                             R7 3 -1
       55 CALL                             R5 -1 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R3 K5 [table.insert]
       59 CALL                             R3 -1 0
       60 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 NEWTABLE                         R5 0 0
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R5
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 GETUPVAL                         R7 4
       18 LENGTH                           R8 R0
       19 LENGTH                           R9 R1
       20 MOVE                             R10 R2
       21 MOVE                             R11 R6
       22 CALL                             R7 4 0
       23 LENGTH                           R7 R0
       24 JUMPIFEQ                         R3 R7 ; [+15]
       26 MOVE                             R8 R5
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K0 ["new"]
       30 GETUPVAL                         R10 1
       31 ADDK                             R13 R3 K1 [1]
       32 NAMECALL                         R11 R0 K2 ["sub"]
       34 CALL                             R11 2 -1
       35 CALL                             R9 -1 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R7 K5 [table.insert]
       39 CALL                             R7 -1 0
       40 LENGTH                           R7 R1
       41 JUMPIFEQ                         R4 R7 ; [+15]
       43 MOVE                             R8 R5
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K0 ["new"]
       47 GETUPVAL                         R10 2
       48 ADDK                             R13 R4 K1 [1]
       49 NAMECALL                         R11 R1 K2 ["sub"]
       51 CALL                             R11 2 -1
       52 CALL                             R9 -1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R7 K5 [table.insert]
       56 CALL                             R7 -1 0
       57 CLOSEUPVALS                      R3
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["DiffSequences"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["CleanupSemantic"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R4 K8 ["DIFF_DELETE"]
       24 GETTABLEKS                       R6 R4 K9 ["DIFF_EQUAL"]
       26 GETTABLEKS                       R7 R4 K10 ["DIFF_INSERT"]
       28 GETTABLEKS                       R8 R4 K11 ["Diff"]
       30 DUPCLOSURE                       R9 K12 [PROTO_2]
       31 CAPTURE                          VAL R8
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 RETURN                           R9 1
