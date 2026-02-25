PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K9 [{"Activate", "OpenMenu", "CloseMenus", "MenuView", "Select", "MenuData", "Items", "Renderers", "Warn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K10 ["fn"]
        5 CALL                             R3 0 1
        6 SETTABLEKS                       R3 R2 K0 ["Activate"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K10 ["fn"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K1 ["OpenMenu"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K10 ["fn"]
       17 CALL                             R3 0 1
       18 SETTABLEKS                       R3 R2 K2 ["CloseMenus"]
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K3 ["MenuView"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K10 ["fn"]
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K4 ["Select"]
       29 DUPTABLE                         R3 K14 [{"depth", "isOpen"}]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K12 ["depth"]
       33 LOADB                            R4 0
       34 SETTABLEKS                       R4 R3 K13 ["isOpen"]
       36 SETTABLEKS                       R3 R2 K5 ["MenuData"]
       38 GETUPVAL                         R3 0
       39 DUPTABLE                         R4 K17 [{"Actions", "Settings"}]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K15 ["Actions"]
       44 NEWTABLE                         R5 0 0
       46 SETTABLEKS                       R5 R4 K16 ["Settings"]
       48 GETTABLEKS                       R5 R0 K6 ["Items"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K6 ["Items"]
       53 GETIMPORT                        R3 K19 [require]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K20 ["Src"]
       58 GETTABLEKS                       R6 R7 K21 ["Components"]
       60 GETTABLEKS                       R5 R6 K22 ["ControlsView"]
       62 GETTABLEKS                       R4 R5 K7 ["Renderers"]
       64 CALL                             R3 1 1
       65 SETTABLEKS                       R3 R2 K7 ["Renderers"]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R3 R4 K10 ["fn"]
       70 CALL                             R3 0 1
       71 SETTABLEKS                       R3 R2 K8 ["Warn"]
       73 MOVE                             R3 R0
       74 CALL                             R1 2 -1
       75 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["join"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R9 R0 K12 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Components"]
       33 GETTABLEKS                       R7 R8 K14 ["ControlsView"]
       35 GETTABLEKS                       R6 R7 K15 ["ControlProps"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 RETURN                           R6 1
