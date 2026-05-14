PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetFamilyInfoAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+6]
        7 MOVE                             R4 R1
        8 DUPTABLE                         R5 K3 [{"Error"}]
        9 SETTABLEKS                       R3 R5 K2 ["Error"]
       11 CALL                             R4 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 1
       15 LOADK                            R6 K4 ["rbxasset://"]
       16 CALL                             R4 2 1
       17 DUPTABLE                         R5 K9 [{"AssetId", "Name", "Builtin", "Faces"}]
       18 GETUPVAL                         R6 1
       19 SETTABLEKS                       R6 R5 K5 ["AssetId"]
       21 GETTABLEKS                       R6 R3 K6 ["Name"]
       23 SETTABLEKS                       R6 R5 K6 ["Name"]
       25 SETTABLEKS                       R4 R5 K7 ["Builtin"]
       27 GETTABLEKS                       R6 R3 K8 ["Faces"]
       29 SETTABLEKS                       R6 R5 K8 ["Faces"]
       31 MOVE                             R6 R0
       32 MOVE                             R7 R5
       33 CALL                             R6 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AssetId"]
        3 SETTABLE                         R0 R1 R2
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Failed to load font family info:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTLE                      R1 R0 ; [+8]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R2 1 -1
       11 NAMECALL                         R0 R0 K1 ["dispatch"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 NEWTABLE                         R4 0 0
        5 GETUPVAL                         R5 0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R10 1
       10 GETTABLEKS                       R10 R10 K0 ["new"]
       12 NEWCLOSURE                       R11 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R9
       15 CAPTURE                          UPVAL U3
       16 CALL                             R10 1 1
       17 NEWCLOSURE                       R12 P1
       18 CAPTURE                          VAL R4
       19 NAMECALL                         R10 R10 K1 ["andThen"]
       21 CALL                             R10 2 1
       22 DUPCLOSURE                       R12 K2 [PROTO_3]
       23 NAMECALL                         R10 R10 K3 ["catch"]
       25 CALL                             R10 2 1
       26 NEWCLOSURE                       R12 P3
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R4
       32 NAMECALL                         R10 R10 K1 ["andThen"]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-27]
       37 CLOSEUPVALS                      R2
       38 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Promise"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["startsWith"]
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R1 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K14 ["Reducers"]
       39 GETTABLEKS                       R6 R6 K15 ["RootReducer"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K13 ["Src"]
       44 GETTABLEKS                       R6 R6 K16 ["Actions"]
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R8 R6 K17 ["Asset"]
       50 GETTABLEKS                       R8 R8 K18 ["SaveFontMetadata"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K13 ["Src"]
       57 GETTABLEKS                       R9 R9 K19 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R10 R1 K13 ["Src"]
       64 GETTABLEKS                       R10 R10 K20 ["Thunks"]
       66 GETTABLEKS                       R10 R10 K19 ["Types"]
       68 CALL                             R9 1 1
       69 DUPCLOSURE                       R10 K21 [PROTO_6]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 RETURN                           R10 1
