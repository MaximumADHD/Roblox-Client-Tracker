PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Select"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Setting"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["SettingValue"]
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["CloseMenus"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 LOADNIL                          R3
        7 GETTABLEKS                       R5 R2 K2 ["Setting"]
        9 JUMPIFNOT                        R5 ; [+12]
       10 GETTABLEKS                       R5 R0 K3 ["Items"]
       12 GETTABLEKS                       R5 R5 K4 ["Settings"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["toString"]
       17 GETTABLEKS                       R7 R2 K2 ["Setting"]
       19 CALL                             R6 1 1
       20 GETTABLE                         R4 R5 R6
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOT                        R4 ; [+8]
       24 GETTABLEKS                       R5 R4 K6 ["Visible"]
       26 JUMPIFEQKNIL                     R5 ; [+4]
       28 GETTABLEKS                       R3 R4 K6 ["Visible"]
       30 JUMP                             ; [+1]
       31 LOADB                            R3 1
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K17 [{"OnSelect", "Disabled", "Selected", "Visible", "Id", "Icon", "LayoutOrder", "MenuView", "Size", "Text", "WidgetUri"}]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R8 R7 K7 ["OnSelect"]
       40 GETTABLEKS                       R8 R2 K8 ["Disabled"]
       42 SETTABLEKS                       R8 R7 K8 ["Disabled"]
       44 GETTABLEKS                       R8 R2 K9 ["Selected"]
       46 SETTABLEKS                       R8 R7 K9 ["Selected"]
       48 SETTABLEKS                       R3 R7 K6 ["Visible"]
       50 GETTABLEKS                       R8 R2 K10 ["Id"]
       52 SETTABLEKS                       R8 R7 K10 ["Id"]
       54 GETTABLEKS                       R8 R2 K11 ["Icon"]
       56 SETTABLEKS                       R8 R7 K11 ["Icon"]
       58 GETTABLEKS                       R8 R0 K12 ["LayoutOrder"]
       60 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       62 GETTABLEKS                       R8 R0 K13 ["MenuView"]
       64 SETTABLEKS                       R8 R7 K13 ["MenuView"]
       66 GETTABLEKS                       R8 R2 K14 ["Size"]
       68 SETTABLEKS                       R8 R7 K14 ["Size"]
       70 GETUPVAL                         R8 4
       71 MOVE                             R9 R1
       72 LOADK                            R10 K15 ["Text"]
       73 MOVE                             R11 R2
       74 CALL                             R8 3 1
       75 SETTABLEKS                       R8 R7 K15 ["Text"]
       77 GETTABLEKS                       R8 R0 K16 ["WidgetUri"]
       79 SETTABLEKS                       R8 R7 K16 ["WidgetUri"]
       81 CALL                             R5 2 -1
       82 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Components"]
       22 GETTABLEKS                       R4 R4 K11 ["MenuItem"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K12 ["ControlsView"]
       33 GETTABLEKS                       R5 R5 K13 ["getLocalizedField"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K16 ["Localization"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Packages"]
       51 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K18 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K9 ["Src"]
       62 GETTABLEKS                       R11 R11 K10 ["Components"]
       64 GETTABLEKS                       R11 R11 K12 ["ControlsView"]
       66 GETTABLEKS                       R11 R11 K20 ["ControlProps"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K9 ["Src"]
       73 GETTABLEKS                       R12 R12 K21 ["Types"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K22 [PROTO_1]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 RETURN                           R12 1
