PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R6 3
        6 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        8 GETTABLEKS                       R4 R5 K1 ["REDIRECT_RIG"]
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 JUMPIFNOT                        R1 ; [+13]
       17 JUMPIF                           R0 ; [+12]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
       23 GETTABLEKS                       R4 R5 K1 ["REDIRECT_RIG"]
       25 CALL                             R3 1 -1
       26 NAMECALL                         R1 R1 K2 ["dispatch"]
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R3 4
       32 GETUPVAL                         R4 5
       33 CALL                             R3 1 -1
       34 NAMECALL                         R1 R1 K2 ["dispatch"]
       36 CALL                             R1 -1 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarImportService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K4 ["LoadRigAndDetectType"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R5 K1 ["LOADING"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R0 K2 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K3 ["AVATAR_TYPE"]
       20 GETTABLEKS                       R3 R4 K4 ["CUSTOM"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U3
       33 GETIMPORT                        R3 K6 [pcall]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R2
       37 CALL                             R3 1 2
       38 JUMPIFNOT                        R4 ; [+46]
       39 LOADK                            R5 K7 ["<filename>"]
       40 MOVE                             R6 R4
       41 GETUPVAL                         R7 5
       42 MOVE                             R8 R4
       43 CALL                             R7 1 1
       44 GETTABLEN                        R8 R7 1
       45 JUMPIFNOTEQKS                    R8 K8 ["FBX Import Error(s):"] ; [+22]
       47 LENGTH                           R8 R7
       48 LOADN                            R9 3
       49 JUMPIFNOTLE                      R9 R8 ; [+18]
       51 GETTABLEN                        R5 R7 2
       52 LOADN                            R10 3
       53 LENGTH                           R8 R7
       54 LOADN                            R9 1
       55 FORNPREP                         R8
       56 LOADK                            R12 K9 ["- "]
       57 GETTABLE                         R13 R7 R10
       58 CONCAT                           R11 R12 R13
       59 SETTABLE                         R11 R7 R10
       60 FORNLOOP                         R8
       61 GETIMPORT                        R8 K12 [table.concat]
       63 MOVE                             R9 R7
       64 LOADK                            R10 K13 ["\n"]
       65 LOADN                            R11 3
       66 CALL                             R8 3 1
       67 MOVE                             R6 R8
       68 GETUPVAL                         R10 6
       69 MOVE                             R11 R5
       70 MOVE                             R12 R6
       71 CALL                             R10 2 -1
       72 NAMECALL                         R8 R0 K2 ["dispatch"]
       74 CALL                             R8 -1 0
       75 GETUPVAL                         R10 0
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K0 ["SCREENS"]
       79 GETTABLEKS                       R11 R12 K14 ["ERROR"]
       81 CALL                             R10 1 -1
       82 NAMECALL                         R8 R0 K2 ["dispatch"]
       84 CALL                             R8 -1 0
       85 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["src"]
       13 GETTABLEKS                       R3 R4 K6 ["thunks"]
       15 GETTABLEKS                       R2 R3 K7 ["ImportWithoutSceneLoad"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["src"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["src"]
       29 GETTABLEKS                       R5 R6 K9 ["utils"]
       31 GETTABLEKS                       R4 R5 K10 ["getLinesFromStr"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K5 ["src"]
       38 GETTABLEKS                       R6 R7 K11 ["actions"]
       40 GETTABLEKS                       R5 R6 K12 ["SetScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R8 R0 K5 ["src"]
       47 GETTABLEKS                       R7 R8 K11 ["actions"]
       49 GETTABLEKS                       R6 R7 K13 ["SetError"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K5 ["src"]
       56 GETTABLEKS                       R8 R9 K11 ["actions"]
       58 GETTABLEKS                       R7 R8 K14 ["SetOriginalAvatarType"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K15 [PROTO_3]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 RETURN                           R7 1
