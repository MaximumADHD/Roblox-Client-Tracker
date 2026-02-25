PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["filterRowsBySearchTerm"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R5 2
        6 GETTABLE                         R4 R0 R5
        7 GETTABLEKS                       R3 R4 K1 ["Texture"]
        9 NAMECALL                         R1 R1 K2 ["CopyToClipboard"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Set"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"editingCell"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["editingCell"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R5 0 0
        2 DUPTABLE                         R6 K3 [{"Text", "Icon", "OnItemClicked"}]
        3 LOADK                            R9 K4 ["ContextMenu"]
        4 LOADK                            R10 K5 ["Copy"]
        5 NAMECALL                         R7 R2 K6 ["getText"]
        7 CALL                             R7 3 1
        8 SETTABLEKS                       R7 R6 K0 ["Text"]
       10 LOADK                            R7 K7 ["rbxasset://textures/TextureViewer/copy.png"]
       11 SETTABLEKS                       R7 R6 K1 ["Icon"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R3
       17 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       19 SETTABLEKS                       R6 R5 K5 ["Copy"]
       21 DUPTABLE                         R6 K3 [{"Text", "Icon", "OnItemClicked"}]
       22 LOADK                            R9 K4 ["ContextMenu"]
       23 LOADK                            R10 K8 ["Select"]
       24 NAMECALL                         R7 R2 K6 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K0 ["Text"]
       29 LOADK                            R7 K9 ["rbxasset://textures/TextureViewer/select.png"]
       30 SETTABLEKS                       R7 R6 K1 ["Icon"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       37 SETTABLEKS                       R6 R5 K8 ["Select"]
       39 DUPTABLE                         R6 K3 [{"Text", "Icon", "OnItemClicked"}]
       40 LOADK                            R9 K4 ["ContextMenu"]
       41 LOADK                            R10 K10 ["Replace"]
       42 NAMECALL                         R7 R2 K6 ["getText"]
       44 CALL                             R7 3 1
       45 SETTABLEKS                       R7 R6 K0 ["Text"]
       47 LOADK                            R7 K11 ["rbxasset://textures/TextureViewer/replace.png"]
       48 SETTABLEKS                       R7 R6 K1 ["Icon"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       55 SETTABLEKS                       R6 R5 K10 ["Replace"]
       57 NEWTABLE                         R6 0 3
       59 LOADK                            R7 K5 ["Copy"]
       60 LOADK                            R8 K8 ["Select"]
       61 LOADK                            R9 K10 ["Replace"]
       62 SETLIST                          R6 R7 3 [1]
       64 GETUPVAL                         R7 2
       65 MOVE                             R8 R1
       66 MOVE                             R9 R5
       67 MOVE                             R10 R6
       68 CALL                             R7 3 0
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["StudioService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["Selection"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R6 K6 [script]
       17 GETTABLEKS                       R5 R6 K7 ["Parent"]
       19 GETTABLEKS                       R4 R5 K7 ["Parent"]
       21 GETTABLEKS                       R3 R4 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R6 R3 K10 ["Packages"]
       27 GETTABLEKS                       R5 R6 K11 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R4 K12 ["UI"]
       32 GETTABLEKS                       R5 R6 K13 ["showContextMenu"]
       34 DUPCLOSURE                       R6 K14 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R6 R0 K15 ["showRightClickMenu"]
       40 RETURN                           R0 1
