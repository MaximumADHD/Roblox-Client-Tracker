PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["filterRowsBySearchTerm"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R4 2
        6 GETTABLE                         R3 R0 R4
        7 GETTABLEKS                       R3 R3 K1 ["Texture"]
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
        2 DUPTABLE                         R6 K4 [{[1], ["Icon"] = "rbxasset://textures/TextureViewer/copy.png", ["OnItemClicked"]}]
        3 LOADK                            R9 K5 ["ContextMenu"]
        4 LOADK                            R10 K6 ["Copy"]
        5 NAMECALL                         R7 R2 K7 ["getText"]
        7 CALL                             R7 3 1
        8 SETTABLEKS                       R7 R6 K0 ["Text"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R3
       14 SETTABLEKS                       R7 R6 K3 ["OnItemClicked"]
       16 SETTABLEKS                       R6 R5 K6 ["Copy"]
       18 DUPTABLE                         R6 K9 [{[1], ["Icon"] = "rbxasset://textures/TextureViewer/select.png", ["OnItemClicked"]}]
       19 LOADK                            R9 K5 ["ContextMenu"]
       20 LOADK                            R10 K10 ["Select"]
       21 NAMECALL                         R7 R2 K7 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K0 ["Text"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R7 R6 K3 ["OnItemClicked"]
       31 SETTABLEKS                       R6 R5 K10 ["Select"]
       33 DUPTABLE                         R6 K12 [{[1], ["Icon"] = "rbxasset://textures/TextureViewer/replace.png", ["OnItemClicked"]}]
       34 LOADK                            R9 K5 ["ContextMenu"]
       35 LOADK                            R10 K13 ["Replace"]
       36 NAMECALL                         R7 R2 K7 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K0 ["Text"]
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R7 R6 K3 ["OnItemClicked"]
       46 SETTABLEKS                       R6 R5 K13 ["Replace"]
       48 NEWTABLE                         R6 0 3
       50 LOADK                            R7 K6 ["Copy"]
       51 LOADK                            R8 K10 ["Select"]
       52 LOADK                            R9 K13 ["Replace"]
       53 SETLIST                          R6 R7 3 [1]
       55 GETUPVAL                         R7 2
       56 MOVE                             R8 R1
       57 MOVE                             R9 R5
       58 MOVE                             R10 R6
       59 CALL                             R7 3 0
       60 RETURN                           R0 0

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
       15 GETIMPORT                        R3 K6 [script]
       17 GETTABLEKS                       R3 R3 K7 ["Parent"]
       19 GETTABLEKS                       R3 R3 K7 ["Parent"]
       21 GETTABLEKS                       R3 R3 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R5 R3 K10 ["Packages"]
       27 GETTABLEKS                       R5 R5 K11 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K12 ["UI"]
       32 GETTABLEKS                       R5 R5 K13 ["showContextMenu"]
       34 DUPCLOSURE                       R6 K14 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R6 R0 K15 ["showRightClickMenu"]
       40 RETURN                           R0 1
