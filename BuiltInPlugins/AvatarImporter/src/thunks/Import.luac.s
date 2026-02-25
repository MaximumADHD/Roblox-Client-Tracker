PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["ImportFbxRig"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R5 K1 ["LOADING"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K4 [pcall]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 2
       16 JUMPIFNOT                        R1 ; [+11]
       17 GETUPVAL                         R3 4
       18 MOVE                             R4 R2
       19 GETUPVAL                         R5 5
       20 CALL                             R3 2 0
       21 GETUPVAL                         R5 6
       22 LOADB                            R6 1
       23 CALL                             R5 1 -1
       24 NAMECALL                         R3 R0 K2 ["dispatch"]
       26 CALL                             R3 -1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K5 ["ERROR_NO_FILE"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+12]
       33 GETUPVAL                         R5 0
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K0 ["SCREENS"]
       37 GETTABLEKS                       R6 R7 K6 ["AVATAR"]
       39 CALL                             R5 1 -1
       40 NAMECALL                         R3 R0 K2 ["dispatch"]
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 LOADK                            R3 K7 ["<filename>"]
       45 MOVE                             R4 R2
       46 GETUPVAL                         R5 7
       47 MOVE                             R6 R2
       48 CALL                             R5 1 1
       49 GETTABLEN                        R6 R5 1
       50 JUMPIFNOTEQKS                    R6 K8 ["FBX Import Error(s):"] ; [+22]
       52 LENGTH                           R6 R5
       53 LOADN                            R7 3
       54 JUMPIFNOTLE                      R7 R6 ; [+18]
       56 GETTABLEN                        R3 R5 2
       57 LOADN                            R8 3
       58 LENGTH                           R6 R5
       59 LOADN                            R7 1
       60 FORNPREP                         R6
       61 LOADK                            R10 K9 ["- "]
       62 GETTABLE                         R11 R5 R8
       63 CONCAT                           R9 R10 R11
       64 SETTABLE                         R9 R5 R8
       65 FORNLOOP                         R6
       66 GETIMPORT                        R6 K12 [table.concat]
       68 MOVE                             R7 R5
       69 LOADK                            R8 K13 ["\n"]
       70 LOADN                            R9 3
       71 CALL                             R6 3 1
       72 MOVE                             R4 R6
       73 GETUPVAL                         R8 8
       74 MOVE                             R9 R3
       75 MOVE                             R10 R4
       76 CALL                             R8 2 -1
       77 NAMECALL                         R6 R0 K2 ["dispatch"]
       79 CALL                             R6 -1 0
       80 GETUPVAL                         R8 0
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R10 R11 K0 ["SCREENS"]
       84 GETTABLEKS                       R9 R10 K14 ["ERROR"]
       86 CALL                             R8 1 -1
       87 NAMECALL                         R6 R0 K2 ["dispatch"]
       89 CALL                             R6 -1 0
       90 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["AVATAR_TYPE"]
        3 GETTABLEKS                       R2 R3 K1 ["CUSTOM"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R3 K6 ["Globals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["src"]
       20 GETTABLEKS                       R3 R4 K7 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K5 ["src"]
       27 GETTABLEKS                       R5 R6 K8 ["actions"]
       29 GETTABLEKS                       R4 R5 K9 ["SetScreen"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K5 ["src"]
       36 GETTABLEKS                       R6 R7 K8 ["actions"]
       38 GETTABLEKS                       R5 R6 K10 ["SetError"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K5 ["src"]
       45 GETTABLEKS                       R7 R8 K8 ["actions"]
       47 GETTABLEKS                       R6 R7 K11 ["ClosePlugin"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R9 R0 K5 ["src"]
       54 GETTABLEKS                       R8 R9 K12 ["utils"]
       56 GETTABLEKS                       R7 R8 K13 ["getLinesFromStr"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R10 R0 K5 ["src"]
       63 GETTABLEKS                       R9 R10 K12 ["utils"]
       65 GETTABLEKS                       R8 R9 K14 ["setupImportedAvatar"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K15 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 RETURN                           R8 1
