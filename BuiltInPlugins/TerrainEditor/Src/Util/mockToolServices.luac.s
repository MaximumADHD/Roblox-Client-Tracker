PROTO_0:
        0 DUPTABLE                         R0 K3 [{"SetWaypoint", "OnUndo", "OnRedo"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["fn"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["SetWaypoint"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["new"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["OnUndo"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["new"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["OnRedo"]
       19 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K14 [{[1], ["Clear"], ["CopyRegion"], ["CountCells"], ["FillBall"], ["FillBlock"], ["FillCylinder"], ["FillRegion"], ["ReadVoxels"], ["ReplaceMaterial"], ["SmoothRegion"], ["WriteVoxels"], ["LastUsedModificationMethod"] = }]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K15 ["fn"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R2 R2 K16 ["mockReturnValue"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K0 ["CanSmoothVoxelsBeUpgraded"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K15 ["fn"]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R1 K1 ["Clear"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K15 ["fn"]
       20 CALL                             R2 0 1
       21 SETTABLEKS                       R2 R1 K2 ["CopyRegion"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K15 ["fn"]
       26 CALL                             R2 0 1
       27 GETTABLEKS                       R2 R2 K16 ["mockReturnValue"]
       29 LOADN                            R3 0
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K3 ["CountCells"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K15 ["fn"]
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R1 K4 ["FillBall"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K15 ["fn"]
       42 CALL                             R2 0 1
       43 SETTABLEKS                       R2 R1 K5 ["FillBlock"]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K15 ["fn"]
       48 CALL                             R2 0 1
       49 SETTABLEKS                       R2 R1 K6 ["FillCylinder"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K15 ["fn"]
       54 CALL                             R2 0 1
       55 SETTABLEKS                       R2 R1 K7 ["FillRegion"]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K15 ["fn"]
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R1 K8 ["ReadVoxels"]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K15 ["fn"]
       66 CALL                             R2 0 1
       67 SETTABLEKS                       R2 R1 K9 ["ReplaceMaterial"]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K15 ["fn"]
       72 CALL                             R2 0 1
       73 SETTABLEKS                       R2 R1 K10 ["SmoothRegion"]
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R2 R2 K15 ["fn"]
       78 CALL                             R2 0 1
       79 SETTABLEKS                       R2 R1 K11 ["WriteVoxels"]
       81 JUMPIFNOT                        R0 ; [+7]
       82 MOVE                             R2 R0
       83 LOADNIL                          R3
       84 LOADNIL                          R4
       85 FORGPREP                         R2
       86 SETTABLE                         R6 R1 R5
       87 FORGLOOP                         R2 2 ; [-2]
       89 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Terrain", "ChangeHistoryService"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["createMockTerrain"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["Terrain"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["createMockChangeHistoryService"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K1 ["ChangeHistoryService"]
       14 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["Id"]
        6 JUMPIFNOTEQ                      R8 R1 ; [+13]
        8 GETTABLEKS                       R8 R7 K1 ["Children"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 GETTABLEKS                       R13 R12 K0 ["Id"]
       15 JUMPIFNOTEQ                      R13 R2 ; [+2]
       17 RETURN                           R12 1
       18 FORGLOOP                         R8 2 ; [-6]
       20 FORGLOOP                         R3 2 ; [-17]
       22 LOADNIL                          R3
       23 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["mock"]
        2 GETTABLEKS                       R3 R3 K1 ["calls"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEN                        R8 R7 2
        8 JUMPIFNOTEQ                      R8 R1 ; [+5]
       10 GETTABLEN                        R8 R7 3
       11 JUMPIFNOTEQ                      R8 R2 ; [+2]
       13 RETURN                           R7 1
       14 FORGLOOP                         R3 2 ; [-8]
       16 LOADNIL                          R3
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["JestGlobals"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K10 ["Util"]
       25 GETTABLEKS                       R3 R3 K11 ["Signal"]
       27 GETTABLEKS                       R4 R2 K12 ["jest"]
       29 NEWTABLE                         R5 8 0
       31 DUPCLOSURE                       R6 K13 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R6 R5 K14 ["createMockChangeHistoryService"]
       36 DUPCLOSURE                       R6 K15 [PROTO_1]
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R5 K16 ["createMockTerrain"]
       40 DUPCLOSURE                       R6 K17 [PROTO_2]
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R6 R5 K18 ["createMockServices"]
       44 DUPCLOSURE                       R6 K19 [PROTO_3]
       45 SETTABLEKS                       R6 R5 K20 ["findFormChild"]
       47 DUPCLOSURE                       R6 K21 [PROTO_4]
       48 SETTABLEKS                       R6 R5 K22 ["findAnalyticsCall"]
       50 RETURN                           R5 1
