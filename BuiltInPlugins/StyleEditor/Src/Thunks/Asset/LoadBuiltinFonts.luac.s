PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.Font.Unknown]
        2 JUMPIFNOTEQ                      R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Font.fromEnum]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K3 ["Family"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [Enum.Font]
        3 NAMECALL                         R3 R3 K3 ["GetEnumItems"]
        5 CALL                             R3 1 1
        6 DUPCLOSURE                       R4 K4 [PROTO_0]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 DUPCLOSURE                       R5 K5 [PROTO_1]
       11 CALL                             R3 2 1
       12 FASTCALL2K                       TABLE_INSERT R3 K6 ; [+5]
       14 MOVE                             R5 R3
       15 LOADK                            R6 K6 ["rbxasset://fonts/families/Arimo.json"]
       16 GETIMPORT                        R4 K9 [table.insert]
       18 CALL                             R4 2 0
       19 FASTCALL2K                       TABLE_INSERT R3 K10 ; [+5]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K10 ["rbxasset://fonts/families/BuilderSans.json"]
       23 GETIMPORT                        R4 K9 [table.insert]
       25 CALL                             R4 2 0
       26 FASTCALL2K                       TABLE_INSERT R3 K11 ; [+5]
       28 MOVE                             R5 R3
       29 LOADK                            R6 K11 ["rbxasset://fonts/families/Montserrat.json"]
       30 GETIMPORT                        R4 K9 [table.insert]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R6 2
       34 MOVE                             R7 R3
       35 CALL                             R6 1 -1
       36 NAMECALL                         R4 R0 K12 ["dispatch"]
       38 CALL                             R4 -1 0
       39 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["filter"]
       20 GETTABLEKS                       R3 R1 K8 ["map"]
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Reducers"]
       28 GETTABLEKS                       R5 R6 K11 ["RootReducer"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R9 R0 K9 ["Src"]
       35 GETTABLEKS                       R8 R9 K12 ["Thunks"]
       37 GETTABLEKS                       R7 R8 K13 ["Asset"]
       39 GETTABLEKS                       R6 R7 K14 ["LoadFontFamilyInfo"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Src"]
       46 GETTABLEKS                       R8 R9 K12 ["Thunks"]
       48 GETTABLEKS                       R7 R8 K15 ["Types"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K16 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
