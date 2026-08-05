PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [table.create]
        6 LENGTH                           R3 R1
        7 CALL                             R2 1 1
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R0
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 LOADB                            R9 1
       15 SETTABLE                         R9 R3 R8
       16 FORGLOOP                         R4 2 ; [-3]
       18 MOVE                             R4 R1
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADK                            R11 K4 ["MaterialVariant"]
       23 NAMECALL                         R9 R8 K5 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+11]
       27 GETTABLEKS                       R10 R8 K6 ["ColorMap"]
       29 GETTABLE                         R9 R3 R10
       30 JUMPIFNOT                        R9 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       33 MOVE                             R10 R2
       34 MOVE                             R11 R8
       35 GETIMPORT                        R9 K8 [table.insert]
       37 CALL                             R9 2 0
       38 FORGLOOP                         R4 2 ; [-17]
       40 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["assetIds"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["studsPerTile"]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 SETTABLEKS                       R3 R8 K2 ["StudsPerTile"]
       12 FORGLOOP                         R4 2 ; [-3]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["assetIds"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R4 R0 K1 ["isOrganic"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETIMPORT                        R3 K5 [Enum.MaterialPattern.Organic]
        9 JUMP                             ; [+2]
       10 GETIMPORT                        R3 K7 [Enum.MaterialPattern.Regular]
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 SETTABLEKS                       R3 R8 K3 ["MaterialPattern"]
       18 FORGLOOP                         R4 2 ; [-3]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 GETTABLEKS                       R4 R0 K0 ["assetId"]
        5 SETLIST                          R3 R4 1 [1]
        7 CALL                             R2 1 1
        8 GETTABLEN                        R3 R2 1
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R1 K1 ["initArgs"]
       13 GETTABLEKS                       R4 R4 K2 ["environment"]
       15 GETTABLEKS                       R5 R4 K3 ["startRecording"]
       17 LOADK                            R6 K4 ["AssistantSetMaterials"]
       18 CALL                             R5 1 0
       19 GETTABLEKS                       R5 R4 K5 ["selection"]
       21 GETTABLEKS                       R5 R5 K6 ["get"]
       23 CALL                             R5 0 1
       24 NEWTABLE                         R6 0 0
       26 MOVE                             R7 R5
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 FORGPREP                         R7
       30 LOADB                            R12 1
       31 SETTABLE                         R12 R6 R11
       32 NAMECALL                         R12 R11 K7 ["GetDescendants"]
       34 CALL                             R12 1 3
       35 FORGPREP                         R12
       36 LOADB                            R17 1
       37 SETTABLE                         R17 R6 R16
       38 FORGLOOP                         R12 2 ; [-3]
       40 FORGLOOP                         R7 2 ; [-11]
       42 NEWTABLE                         R7 0 0
       44 MOVE                             R8 R6
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 FORGPREP                         R8
       48 LOADK                            R15 K8 ["BasePart"]
       49 NAMECALL                         R13 R11 K9 ["IsA"]
       51 CALL                             R13 2 1
       52 JUMPIFNOT                        R13 ; [+7]
       53 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
       55 MOVE                             R14 R7
       56 MOVE                             R15 R11
       57 GETIMPORT                        R13 K12 [table.insert]
       59 CALL                             R13 2 0
       60 FORGLOOP                         R8 2 ; [-13]
       62 LENGTH                           R8 R7
       63 JUMPIFNOTEQKN                    R8 K13 [0] ; [+12]
       65 GETTABLEKS                       R8 R4 K5 ["selection"]
       67 GETTABLEKS                       R8 R8 K14 ["set"]
       69 NEWTABLE                         R9 0 1
       71 MOVE                             R10 R3
       72 SETLIST                          R9 R10 1 [1]
       74 CALL                             R8 1 0
       75 RETURN                           R0 0
       76 MOVE                             R8 R7
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 GETTABLEKS                       R13 R3 K15 ["BaseMaterial"]
       82 SETTABLEKS                       R13 R12 K16 ["Material"]
       84 GETTABLEKS                       R13 R3 K17 ["Name"]
       86 SETTABLEKS                       R13 R12 K18 ["MaterialVariant"]
       88 FORGLOOP                         R8 2 ; [-9]
       90 GETTABLEKS                       R8 R4 K19 ["endRecording"]
       92 LOADK                            R9 K4 ["AssistantSetMaterials"]
       93 CALL                             R8 1 0
       94 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 GETTABLEKS                       R4 R0 K0 ["assetId"]
        5 SETLIST                          R3 R4 1 [1]
        7 CALL                             R2 1 1
        8 GETTABLEN                        R3 R2 1
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R1 K1 ["initArgs"]
       13 GETTABLEKS                       R4 R4 K2 ["environment"]
       15 GETTABLEKS                       R5 R4 K3 ["selection"]
       17 GETTABLEKS                       R5 R5 K4 ["set"]
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R3
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R5 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["assetIds"]
        3 CALL                             R2 1 1
        4 GETTABLEN                        R3 R2 1
        5 JUMPIFNOT                        R3 ; [+16]
        6 DUPTABLE                         R4 K3 [{"studsPerTile", "isOrganic"}]
        7 GETTABLEKS                       R5 R3 K4 ["StudsPerTile"]
        9 SETTABLEKS                       R5 R4 K1 ["studsPerTile"]
       11 GETTABLEKS                       R6 R3 K5 ["MaterialPattern"]
       13 GETIMPORT                        R7 K8 [Enum.MaterialPattern.Organic]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K2 ["isOrganic"]
       21 RETURN                           R4 1
       22 LOADNIL                          R4
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["MaterialService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       17 GETTABLEKS                       R3 R3 K11 ["createMaterialGenBridge"]
       19 GETTABLEKS                       R3 R3 K12 ["MaterialGenBridgeTypes"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R4 K14 [PROTO_1]
       25 CAPTURE                          VAL R3
       26 DUPCLOSURE                       R5 K15 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R6 K16 [PROTO_3]
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R7 K17 [PROTO_4]
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R8 K18 [PROTO_5]
       33 CAPTURE                          VAL R3
       34 DUPTABLE                         R9 K24 [{"setStudsPerTile", "setOrganicPattern", "applyMaterial", "selectMaterial", "getMaterialPropertiesAsync"}]
       35 SETTABLEKS                       R4 R9 K19 ["setStudsPerTile"]
       37 SETTABLEKS                       R5 R9 K20 ["setOrganicPattern"]
       39 SETTABLEKS                       R6 R9 K21 ["applyMaterial"]
       41 SETTABLEKS                       R7 R9 K22 ["selectMaterial"]
       43 SETTABLEKS                       R8 R9 K23 ["getMaterialPropertiesAsync"]
       45 DUPTABLE                         R10 K26 [{"bridge"}]
       46 SETTABLEKS                       R9 R10 K25 ["bridge"]
       48 RETURN                           R10 1
