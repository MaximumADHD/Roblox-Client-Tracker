PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K9 [{"Activate", "OpenMenu", "CloseMenus", "MenuView", "Select", "MenuData", "Items", "Renderers", "Warn"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K10 ["fn"]
        5 CALL                             R3 0 1
        6 SETTABLEKS                       R3 R2 K0 ["Activate"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K10 ["fn"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K1 ["OpenMenu"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K10 ["fn"]
       17 CALL                             R3 0 1
       18 SETTABLEKS                       R3 R2 K2 ["CloseMenus"]
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K3 ["MenuView"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K10 ["fn"]
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K4 ["Select"]
       29 DUPTABLE                         R3 K16 [{["depth"] = 1, ["isOpen"] = False}]
       30 SETTABLEKS                       R3 R2 K5 ["MenuData"]
       32 GETUPVAL                         R3 0
       33 DUPTABLE                         R4 K19 [{"Actions", "Settings"}]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R4 K17 ["Actions"]
       38 NEWTABLE                         R5 0 0
       40 SETTABLEKS                       R5 R4 K18 ["Settings"]
       42 GETTABLEKS                       R5 R0 K6 ["Items"]
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K6 ["Items"]
       47 GETIMPORT                        R3 K21 [require]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K22 ["Src"]
       52 GETTABLEKS                       R4 R4 K23 ["Components"]
       54 GETTABLEKS                       R4 R4 K24 ["ControlsView"]
       56 GETTABLEKS                       R4 R4 K7 ["Renderers"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K7 ["Renderers"]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K10 ["fn"]
       64 CALL                             R3 0 1
       65 SETTABLEKS                       R3 R2 K8 ["Warn"]
       67 MOVE                             R3 R0
       68 CALL                             R1 2 -1
       69 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["join"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["ControlsView"]
       35 GETTABLEKS                       R6 R6 K15 ["ControlProps"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 RETURN                           R6 1
