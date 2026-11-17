PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarImportService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K4 ["ImportFbxRigWithoutSceneLoad"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
        4 GETTABLEKS                       R4 R4 K1 ["LOADING"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["AVATAR_TYPE"]
       14 GETTABLEKS                       R3 R3 K4 ["CUSTOM"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 FASTPCALL                        pcall 1 ; [+2]
       23 GETIMPORT                        R2 K6 [pcall]
       25 CALL                             R2 1 2
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R3
       29 GETUPVAL                         R6 2
       30 CALL                             R4 2 0
       31 GETUPVAL                         R6 4
       32 LOADB                            R7 1
       33 CALL                             R6 1 -1
       34 NAMECALL                         R4 R0 K2 ["dispatch"]
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K7 ["ERROR_NO_FILE"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+12]
       43 GETUPVAL                         R6 0
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K0 ["SCREENS"]
       47 GETTABLEKS                       R7 R7 K8 ["AVATAR"]
       49 CALL                             R6 1 -1
       50 NAMECALL                         R4 R0 K2 ["dispatch"]
       52 CALL                             R4 -1 0
       53 RETURN                           R0 0
       54 LOADK                            R4 K9 ["<filename>"]
       55 MOVE                             R5 R3
       56 GETUPVAL                         R6 5
       57 MOVE                             R7 R3
       58 CALL                             R6 1 1
       59 GETTABLEN                        R7 R6 1
       60 JUMPIFNOTEQKS                    R7 K10 ["FBX Import Error(s):"] ; [+22]
       62 LENGTH                           R7 R6
       63 LOADN                            R8 3
       64 JUMPIFNOTLE                      R8 R7 ; [+18]
       66 GETTABLEN                        R4 R6 2
       67 LOADN                            R9 3
       68 LENGTH                           R7 R6
       69 LOADN                            R8 1
       70 FORNPREP                         R7
       71 LOADK                            R11 K11 ["- "]
       72 GETTABLE                         R12 R6 R9
       73 CONCAT                           R10 R11 R12
       74 SETTABLE                         R10 R6 R9
       75 FORNLOOP                         R7
       76 GETIMPORT                        R7 K14 [table.concat]
       78 MOVE                             R8 R6
       79 LOADK                            R9 K15 ["\n"]
       80 LOADN                            R10 3
       81 CALL                             R7 3 1
       82 MOVE                             R5 R7
       83 GETUPVAL                         R9 6
       84 MOVE                             R10 R4
       85 MOVE                             R11 R5
       86 CALL                             R9 2 -1
       87 NAMECALL                         R7 R0 K2 ["dispatch"]
       89 CALL                             R7 -1 0
       90 GETUPVAL                         R9 0
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K0 ["SCREENS"]
       94 GETTABLEKS                       R10 R10 K16 ["ERROR"]
       96 CALL                             R9 1 -1
       97 NAMECALL                         R7 R0 K2 ["dispatch"]
       99 CALL                             R7 -1 0
      100 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R2 K6 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["src"]
       20 GETTABLEKS                       R3 R3 K7 ["actions"]
       22 GETTABLEKS                       R3 R3 K8 ["SetScreen"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["src"]
       29 GETTABLEKS                       R4 R4 K7 ["actions"]
       31 GETTABLEKS                       R4 R4 K9 ["SetError"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["src"]
       38 GETTABLEKS                       R5 R5 K7 ["actions"]
       40 GETTABLEKS                       R5 R5 K10 ["ClosePlugin"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["src"]
       47 GETTABLEKS                       R6 R6 K11 ["utils"]
       49 GETTABLEKS                       R6 R6 K12 ["getLinesFromStr"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K5 ["src"]
       56 GETTABLEKS                       R7 R7 K11 ["utils"]
       58 GETTABLEKS                       R7 R7 K13 ["setupImportedAvatar"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K14 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 RETURN                           R7 1
