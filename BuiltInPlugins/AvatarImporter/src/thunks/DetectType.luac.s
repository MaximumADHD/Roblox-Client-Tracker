PROTO_0:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
        6 GETTABLEKS                       R4 R5 K1 ["REDIRECT_RIG"]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K2 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K3 ["AVATAR_TYPE"]
       18 GETTABLEKS                       R4 R5 K4 ["CUSTOM"]
       20 CALL                             R3 1 -1
       21 NAMECALL                         R1 R1 K2 ["dispatch"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

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
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 GETIMPORT                        R2 K4 [pcall]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 2
       20 JUMPIFNOT                        R3 ; [+46]
       21 LOADK                            R4 K5 ["<filename>"]
       22 MOVE                             R5 R3
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R3
       25 CALL                             R6 1 1
       26 GETTABLEN                        R7 R6 1
       27 JUMPIFNOTEQKS                    R7 K6 ["FBX Import Error(s):"] ; [+22]
       29 LENGTH                           R7 R6
       30 LOADN                            R8 3
       31 JUMPIFNOTLE                      R8 R7 ; [+18]
       33 GETTABLEN                        R4 R6 2
       34 LOADN                            R9 3
       35 LENGTH                           R7 R6
       36 LOADN                            R8 1
       37 FORNPREP                         R7
       38 LOADK                            R11 K7 ["- "]
       39 GETTABLE                         R12 R6 R9
       40 CONCAT                           R10 R11 R12
       41 SETTABLE                         R10 R6 R9
       42 FORNLOOP                         R7
       43 GETIMPORT                        R7 K10 [table.concat]
       45 MOVE                             R8 R6
       46 LOADK                            R9 K11 ["\n"]
       47 LOADN                            R10 3
       48 CALL                             R7 3 1
       49 MOVE                             R5 R7
       50 GETUPVAL                         R9 4
       51 MOVE                             R10 R4
       52 MOVE                             R11 R5
       53 CALL                             R9 2 -1
       54 NAMECALL                         R7 R0 K2 ["dispatch"]
       56 CALL                             R7 -1 0
       57 GETUPVAL                         R9 0
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R11 R12 K0 ["SCREENS"]
       61 GETTABLEKS                       R10 R11 K12 ["ERROR"]
       63 CALL                             R9 1 -1
       64 NAMECALL                         R7 R0 K2 ["dispatch"]
       66 CALL                             R7 -1 0
       67 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

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
       52 DUPCLOSURE                       R6 K14 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1
