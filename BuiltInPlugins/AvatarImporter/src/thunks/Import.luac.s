PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["ImportFbxRig"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R4 K1 ["LOADING"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R1 K4 [pcall]
       16 CALL                             R1 1 2
       17 JUMPIFNOT                        R1 ; [+11]
       18 GETUPVAL                         R3 4
       19 MOVE                             R4 R2
       20 GETUPVAL                         R5 5
       21 CALL                             R3 2 0
       22 GETUPVAL                         R5 6
       23 LOADB                            R6 1
       24 CALL                             R5 1 -1
       25 NAMECALL                         R3 R0 K2 ["dispatch"]
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K5 ["ERROR_NO_FILE"]
       32 JUMPIFNOTEQ                      R2 R3 ; [+12]
       34 GETUPVAL                         R5 0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K0 ["SCREENS"]
       38 GETTABLEKS                       R6 R6 K6 ["AVATAR"]
       40 CALL                             R5 1 -1
       41 NAMECALL                         R3 R0 K2 ["dispatch"]
       43 CALL                             R3 -1 0
       44 RETURN                           R0 0
       45 LOADK                            R3 K7 ["<filename>"]
       46 MOVE                             R4 R2
       47 GETUPVAL                         R5 7
       48 MOVE                             R6 R2
       49 CALL                             R5 1 1
       50 GETTABLEN                        R6 R5 1
       51 JUMPIFNOTEQKS                    R6 K8 ["FBX Import Error(s):"] ; [+22]
       53 LENGTH                           R6 R5
       54 LOADN                            R7 3
       55 JUMPIFNOTLE                      R7 R6 ; [+18]
       57 GETTABLEN                        R3 R5 2
       58 LOADN                            R8 3
       59 LENGTH                           R6 R5
       60 LOADN                            R7 1
       61 FORNPREP                         R6
       62 LOADK                            R10 K9 ["- "]
       63 GETTABLE                         R11 R5 R8
       64 CONCAT                           R9 R10 R11
       65 SETTABLE                         R9 R5 R8
       66 FORNLOOP                         R6
       67 GETIMPORT                        R6 K12 [table.concat]
       69 MOVE                             R7 R5
       70 LOADK                            R8 K13 ["\n"]
       71 LOADN                            R9 3
       72 CALL                             R6 3 1
       73 MOVE                             R4 R6
       74 GETUPVAL                         R8 8
       75 MOVE                             R9 R3
       76 MOVE                             R10 R4
       77 CALL                             R8 2 -1
       78 NAMECALL                         R6 R0 K2 ["dispatch"]
       80 CALL                             R6 -1 0
       81 GETUPVAL                         R8 0
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K0 ["SCREENS"]
       85 GETTABLEKS                       R9 R9 K14 ["ERROR"]
       87 CALL                             R8 1 -1
       88 NAMECALL                         R6 R0 K2 ["dispatch"]
       90 CALL                             R6 -1 0
       91 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AVATAR_TYPE"]
        3 GETTABLEKS                       R2 R2 K1 ["CUSTOM"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R2 K6 ["Globals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["src"]
       20 GETTABLEKS                       R3 R3 K7 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["src"]
       27 GETTABLEKS                       R4 R4 K8 ["actions"]
       29 GETTABLEKS                       R4 R4 K9 ["SetScreen"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["src"]
       36 GETTABLEKS                       R5 R5 K8 ["actions"]
       38 GETTABLEKS                       R5 R5 K10 ["SetError"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K5 ["src"]
       45 GETTABLEKS                       R6 R6 K8 ["actions"]
       47 GETTABLEKS                       R6 R6 K11 ["ClosePlugin"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K5 ["src"]
       54 GETTABLEKS                       R7 R7 K12 ["utils"]
       56 GETTABLEKS                       R7 R7 K13 ["getLinesFromStr"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K5 ["src"]
       63 GETTABLEKS                       R8 R8 K12 ["utils"]
       65 GETTABLEKS                       R8 R8 K14 ["setupImportedAvatar"]
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
