PROTO_0:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        6 GETTABLEKS                       R4 R4 K1 ["REDIRECT_RIG"]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K2 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["AVATAR_TYPE"]
       18 GETTABLEKS                       R4 R4 K4 ["CUSTOM"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R4 K1 ["LOADING"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R2 K4 [pcall]
       20 CALL                             R2 1 2
       21 JUMPIFNOT                        R3 ; [+46]
       22 LOADK                            R4 K5 ["<filename>"]
       23 MOVE                             R5 R3
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R3
       26 CALL                             R6 1 1
       27 GETTABLEN                        R7 R6 1
       28 JUMPIFNOTEQKS                    R7 K6 ["FBX Import Error(s):"] ; [+22]
       30 LENGTH                           R7 R6
       31 LOADN                            R8 3
       32 JUMPIFNOTLE                      R8 R7 ; [+18]
       34 GETTABLEN                        R4 R6 2
       35 LOADN                            R9 3
       36 LENGTH                           R7 R6
       37 LOADN                            R8 1
       38 FORNPREP                         R7
       39 LOADK                            R11 K7 ["- "]
       40 GETTABLE                         R12 R6 R9
       41 CONCAT                           R10 R11 R12
       42 SETTABLE                         R10 R6 R9
       43 FORNLOOP                         R7
       44 GETIMPORT                        R7 K10 [table.concat]
       46 MOVE                             R8 R6
       47 LOADK                            R9 K11 ["\n"]
       48 LOADN                            R10 3
       49 CALL                             R7 3 1
       50 MOVE                             R5 R7
       51 GETUPVAL                         R9 4
       52 MOVE                             R10 R4
       53 MOVE                             R11 R5
       54 CALL                             R9 2 -1
       55 NAMECALL                         R7 R0 K2 ["dispatch"]
       57 CALL                             R7 -1 0
       58 GETUPVAL                         R9 0
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K0 ["SCREENS"]
       62 GETTABLEKS                       R10 R10 K12 ["ERROR"]
       64 CALL                             R9 1 -1
       65 NAMECALL                         R7 R0 K2 ["dispatch"]
       67 CALL                             R7 -1 0
       68 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R2 K6 ["thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["ImportWithoutSceneLoad"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["src"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["src"]
       29 GETTABLEKS                       R4 R4 K9 ["utils"]
       31 GETTABLEKS                       R4 R4 K10 ["getLinesFromStr"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["src"]
       38 GETTABLEKS                       R5 R5 K11 ["actions"]
       40 GETTABLEKS                       R5 R5 K12 ["SetScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["src"]
       47 GETTABLEKS                       R6 R6 K11 ["actions"]
       49 GETTABLEKS                       R6 R6 K13 ["SetError"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K14 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1
