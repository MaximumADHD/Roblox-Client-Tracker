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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["assetIds"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["studsPerTile"]
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 SETTABLEKS                       R2 R7 K2 ["StudsPerTile"]
       12 FORGLOOP                         R3 2 ; [-3]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["assetIds"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["isOrganic"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETIMPORT                        R2 K5 [Enum.MaterialPattern.Organic]
        9 JUMP                             ; [+2]
       10 GETIMPORT                        R2 K7 [Enum.MaterialPattern.Regular]
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 SETTABLEKS                       R2 R7 K3 ["MaterialPattern"]
       18 FORGLOOP                         R3 2 ; [-3]
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
       11 GETTABLEKS                       R4 R1 K1 ["startRecording"]
       13 LOADK                            R5 K2 ["AssistantSetMaterials"]
       14 CALL                             R4 1 0
       15 GETTABLEKS                       R4 R1 K3 ["selection"]
       17 GETTABLEKS                       R4 R4 K4 ["get"]
       19 CALL                             R4 0 1
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R4
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 LOADB                            R11 1
       27 SETTABLE                         R11 R5 R10
       28 NAMECALL                         R11 R10 K5 ["GetDescendants"]
       30 CALL                             R11 1 3
       31 FORGPREP                         R11
       32 LOADB                            R16 1
       33 SETTABLE                         R16 R5 R15
       34 FORGLOOP                         R11 2 ; [-3]
       36 FORGLOOP                         R6 2 ; [-11]
       38 NEWTABLE                         R6 0 0
       40 MOVE                             R7 R5
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 FORGPREP                         R7
       44 LOADK                            R14 K6 ["BasePart"]
       45 NAMECALL                         R12 R10 K7 ["IsA"]
       47 CALL                             R12 2 1
       48 JUMPIFNOT                        R12 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       51 MOVE                             R13 R6
       52 MOVE                             R14 R10
       53 GETIMPORT                        R12 K10 [table.insert]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R7 2 ; [-13]
       58 LENGTH                           R7 R6
       59 JUMPIFNOTEQKN                    R7 K11 [0] ; [+12]
       61 GETTABLEKS                       R7 R1 K3 ["selection"]
       63 GETTABLEKS                       R7 R7 K12 ["set"]
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R3
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R7 1 0
       71 RETURN                           R0 0
       72 MOVE                             R7 R6
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R12 R3 K13 ["BaseMaterial"]
       78 SETTABLEKS                       R12 R11 K14 ["Material"]
       80 GETTABLEKS                       R12 R3 K15 ["Name"]
       82 SETTABLEKS                       R12 R11 K16 ["MaterialVariant"]
       84 FORGLOOP                         R7 2 ; [-9]
       86 GETTABLEKS                       R7 R1 K17 ["endRecording"]
       88 LOADK                            R8 K2 ["AssistantSetMaterials"]
       89 CALL                             R7 1 0
       90 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 GETTABLEKS                       R4 R0 K0 ["assetId"]
        5 SETLIST                          R3 R4 1 [1]
        7 CALL                             R2 1 1
        8 GETTABLEN                        R3 R2 1
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R1 K1 ["selection"]
       13 GETTABLEKS                       R4 R4 K2 ["set"]
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R3
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["assetIds"]
        3 CALL                             R1 1 1
        4 GETTABLEN                        R2 R1 1
        5 JUMPIFNOT                        R2 ; [+16]
        6 DUPTABLE                         R3 K3 [{"studsPerTile", "isOrganic"}]
        7 GETTABLEKS                       R4 R2 K4 ["StudsPerTile"]
        9 SETTABLEKS                       R4 R3 K1 ["studsPerTile"]
       11 GETTABLEKS                       R5 R2 K5 ["MaterialPattern"]
       13 GETIMPORT                        R6 K8 [Enum.MaterialPattern.Organic]
       15 JUMPIFEQ                         R5 R6 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["isOrganic"]
       21 RETURN                           R3 1
       22 LOADNIL                          R3
       23 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["assetIds"]
        3 CALL                             R3 1 1
        4 GETTABLEN                        R4 R3 1
        5 JUMPIFNOT                        R4 ; [+16]
        6 DUPTABLE                         R2 K3 [{"studsPerTile", "isOrganic"}]
        7 GETTABLEKS                       R5 R4 K4 ["StudsPerTile"]
        9 SETTABLEKS                       R5 R2 K1 ["studsPerTile"]
       11 GETTABLEKS                       R6 R4 K5 ["MaterialPattern"]
       13 GETIMPORT                        R7 K8 [Enum.MaterialPattern.Organic]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R2 K2 ["isOrganic"]
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R1 K1 ["studsPerTile"]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 SETTABLEKS                       R3 R8 K2 ["StudsPerTile"]
       12 FORGLOOP                         R4 2 ; [-3]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R4 R1 K1 ["isOrganic"]
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["assetIds"]
        3 CALL                             R3 1 1
        4 GETTABLEN                        R4 R3 1
        5 JUMPIFNOT                        R4 ; [+16]
        6 DUPTABLE                         R2 K3 [{"studsPerTile", "isOrganic"}]
        7 GETTABLEKS                       R5 R4 K4 ["StudsPerTile"]
        9 SETTABLEKS                       R5 R2 K1 ["studsPerTile"]
       11 GETTABLEKS                       R6 R4 K5 ["MaterialPattern"]
       13 GETIMPORT                        R7 K8 [Enum.MaterialPattern.Organic]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R2 K2 ["isOrganic"]
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["setStudsPerTile"]
       11 DUPCLOSURE                       R8 K2 [PROTO_11]
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K4 ["Add"]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R6 R2 K5 ["setOrganicPattern"]
       21 DUPCLOSURE                       R8 K6 [PROTO_12]
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R6 R6 K3 ["Connect"]
       25 CALL                             R6 2 -1
       26 NAMECALL                         R4 R3 K4 ["Add"]
       28 CALL                             R4 -1 0
       29 GETTABLEKS                       R6 R2 K7 ["applyMaterial"]
       31 NEWCLOSURE                       R8 P2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 NAMECALL                         R6 R6 K3 ["Connect"]
       36 CALL                             R6 2 -1
       37 NAMECALL                         R4 R3 K4 ["Add"]
       39 CALL                             R4 -1 0
       40 GETTABLEKS                       R6 R2 K8 ["selectMaterial"]
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R1
       45 NAMECALL                         R6 R6 K3 ["Connect"]
       47 CALL                             R6 2 -1
       48 NAMECALL                         R4 R3 K4 ["Add"]
       50 CALL                             R4 -1 0
       51 GETTABLEKS                       R6 R2 K9 ["getMaterialProperties"]
       53 DUPCLOSURE                       R8 K10 [PROTO_15]
       54 CAPTURE                          UPVAL U2
       55 NAMECALL                         R6 R6 K3 ["Connect"]
       57 CALL                             R6 2 -1
       58 NAMECALL                         R4 R3 K4 ["Add"]
       60 CALL                             R4 -1 0
       61 GETTABLEKS                       R4 R1 K11 ["Destroying"]
       63 NEWCLOSURE                       R6 P5
       64 CAPTURE                          VAL R3
       65 NAMECALL                         R4 R4 K12 ["Once"]
       67 CALL                             R4 2 0
       68 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["Bin"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K10 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Guest"]
       31 GETTABLEKS                       R6 R6 K15 ["Environment"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Bridges"]
       38 GETTABLEKS                       R7 R7 K17 ["createMaterialGenBridge"]
       40 GETTABLEKS                       R7 R7 K18 ["MaterialGenBridgeTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETTABLEKS                       R8 R0 K19 ["Remotes"]
       47 GETTABLEKS                       R8 R8 K20 ["MaterialGenRemotes"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K21 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 DUPCLOSURE                       R9 K22 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 DUPCLOSURE                       R10 K23 [PROTO_2]
       55 CAPTURE                          VAL R8
       56 DUPCLOSURE                       R11 K24 [PROTO_3]
       57 CAPTURE                          VAL R8
       58 DUPCLOSURE                       R12 K25 [PROTO_4]
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R13 K26 [PROTO_5]
       61 CAPTURE                          VAL R8
       62 DUPTABLE                         R14 K32 [{"setStudsPerTile", "setOrganicPattern", "applyMaterial", "selectMaterial", "getMaterialPropertiesAsync"}]
       63 DUPCLOSURE                       R15 K33 [PROTO_6]
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R15 R14 K27 ["setStudsPerTile"]
       67 DUPCLOSURE                       R15 K34 [PROTO_7]
       68 CAPTURE                          VAL R10
       69 SETTABLEKS                       R15 R14 K28 ["setOrganicPattern"]
       71 DUPCLOSURE                       R15 K35 [PROTO_8]
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R15 R14 K29 ["applyMaterial"]
       75 DUPCLOSURE                       R15 K36 [PROTO_9]
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R15 R14 K30 ["selectMaterial"]
       79 DUPCLOSURE                       R15 K37 [PROTO_10]
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R15 R14 K31 ["getMaterialPropertiesAsync"]
       83 DUPCLOSURE                       R15 K38 [PROTO_17]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 DUPTABLE                         R16 K41 [{"bridge", "connectRemotes"}]
       90 SETTABLEKS                       R14 R16 K39 ["bridge"]
       92 SETTABLEKS                       R15 R16 K40 ["connectRemotes"]
       94 RETURN                           R16 1
