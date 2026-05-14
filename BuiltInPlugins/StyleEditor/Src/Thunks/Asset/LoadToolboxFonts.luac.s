PROTO_0:
        0 LOADK                            R3 K0 ["rbxassetid://"]
        1 GETTABLEKS                       R4 R1 K1 ["id"]
        3 CONCAT                           R2 R3 R4
        4 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 GETTABLEKS                       R1 R1 K1 ["data"]
        6 JUMPIF                           R1 ; [+7]
        7 NEWTABLE                         R1 0 0
        9 JUMP                             ; [+4]
       10 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       12 GETTABLEKS                       R1 R1 K1 ["data"]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 DUPCLOSURE                       R4 K2 [PROTO_0]
       17 CALL                             R2 2 1
       18 LENGTH                           R3 R2
       19 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R2
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R3 K4 ["dispatch"]
       28 CALL                             R3 -1 0
       29 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       31 GETTABLEKS                       R3 R3 K5 ["nextPageCursor"]
       33 JUMPIFNOT                        R3 ; [+3]
       34 GETUPVAL                         R4 4
       35 GETUPVAL                         R5 5
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LogNetworkErrors"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Failed to load inventory fonts, network error:"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K2 [warn]
       13 LOADK                            R2 K4 ["Failed to load inventory fonts"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETIMPORT                        R4 K3 [Enum.AssetType.FontFamily]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R1 R1 K4 ["andThen"]
       15 CALL                             R1 2 1
       16 DUPCLOSURE                       R3 K5 [PROTO_2]
       17 CAPTURE                          UPVAL U8
       18 NAMECALL                         R1 R1 K6 ["catch"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["Networking"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K1 ["GetUserId"]
        5 CALL                             R3 1 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U5
       16 MOVE                             R5 R4
       17 LOADNIL                          R6
       18 CALL                             R5 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Dash"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K11 ["collectArray"]
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R1 K12 ["Src"]
       30 GETTABLEKS                       R5 R5 K13 ["Reducers"]
       32 GETTABLEKS                       R5 R5 K14 ["RootReducer"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K8 [require]
       37 GETTABLEKS                       R6 R1 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K15 ["Util"]
       41 GETTABLEKS                       R6 R6 K16 ["DebugFlags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K8 [require]
       46 GETTABLEKS                       R7 R1 K12 ["Src"]
       48 GETTABLEKS                       R7 R7 K17 ["Thunks"]
       50 GETTABLEKS                       R7 R7 K18 ["Asset"]
       52 GETTABLEKS                       R7 R7 K19 ["LoadFontFamilyInfo"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K8 [require]
       57 GETTABLEKS                       R8 R1 K12 ["Src"]
       59 GETTABLEKS                       R8 R8 K20 ["API"]
       61 GETTABLEKS                       R8 R8 K21 ["Toolbox"]
       63 GETTABLEKS                       R8 R8 K22 ["getInventoryAssets"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K8 [require]
       68 GETTABLEKS                       R9 R1 K12 ["Src"]
       70 GETTABLEKS                       R9 R9 K23 ["Flags"]
       72 GETTABLEKS                       R9 R9 K24 ["getFFlagStyleEditorFixWarnings"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 GETIMPORT                        R9 K8 [require]
       78 GETTABLEKS                       R10 R1 K12 ["Src"]
       80 GETTABLEKS                       R10 R10 K25 ["Types"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K8 [require]
       85 GETTABLEKS                       R11 R1 K12 ["Src"]
       87 GETTABLEKS                       R11 R11 K17 ["Thunks"]
       89 GETTABLEKS                       R11 R11 K25 ["Types"]
       91 CALL                             R10 1 1
       92 DUPCLOSURE                       R11 K26 [PROTO_5]
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 RETURN                           R11 1
