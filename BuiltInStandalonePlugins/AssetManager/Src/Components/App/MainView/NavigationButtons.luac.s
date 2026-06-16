PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["IsDisabled"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["IconButton"]
       12 DUPTABLE                         R5 K9 [{"LayoutOrder", "icon", "size", "onActivated", "isDisabled"}]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       20 GETTABLEKS                       R6 R0 K10 ["Icon"]
       22 SETTABLEKS                       R6 R5 K5 ["icon"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K11 ["Enums"]
       27 GETTABLEKS                       R6 R6 K12 ["IconSize"]
       29 GETTABLEKS                       R6 R6 K13 ["XSmall"]
       31 SETTABLEKS                       R6 R5 K6 ["size"]
       33 GETTABLEKS                       R6 R0 K7 ["onActivated"]
       35 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       37 SETTABLEKS                       R2 R5 K8 ["isDisabled"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R2 ; [+1]
       41 RETURN                           R3 1
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K2 ["createElement"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K14 ["Tooltip"]
       48 DUPTABLE                         R6 K18 [{"LayoutOrder", "title", "side", "testId"}]
       49 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       51 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       53 LOADK                            R9 K19 ["Navigation"]
       54 GETTABLEKS                       R10 R0 K20 ["TitleKey"]
       56 NAMECALL                         R7 R1 K21 ["getText"]
       58 CALL                             R7 3 1
       59 SETTABLEKS                       R7 R6 K15 ["title"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K11 ["Enums"]
       64 GETTABLEKS                       R7 R7 K22 ["PopoverSide"]
       66 GETTABLEKS                       R7 R7 K23 ["Bottom"]
       68 SETTABLEKS                       R7 R6 K16 ["side"]
       70 GETTABLEKS                       R7 R0 K24 ["TooltipTestId"]
       72 SETTABLEKS                       R7 R6 K17 ["testId"]
       74 MOVE                             R7 R3
       75 CALL                             R4 3 -1
       76 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["backHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["forwardHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 2
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["createElement"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K2 ["View"]
       12 DUPTABLE                         R6 K5 [{"LayoutOrder", "tag"}]
       13 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       17 LOADK                            R7 K6 ["auto-xy row"]
       18 SETTABLEKS                       R7 R6 K4 ["tag"]
       20 DUPTABLE                         R7 K9 [{"BackButton", "ForwardButton"}]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K1 ["createElement"]
       24 GETUPVAL                         R9 4
       25 DUPTABLE                         R10 K15 [{"LayoutOrder", "IsDisabled", "TitleKey", "Icon", "TooltipTestId", "onActivated"}]
       26 LOADN                            R11 1
       27 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       29 SETTABLEKS                       R2 R10 K10 ["IsDisabled"]
       31 LOADK                            R11 K16 ["GoBack"]
       32 SETTABLEKS                       R11 R10 K11 ["TitleKey"]
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R11 R11 K17 ["Enums"]
       37 GETTABLEKS                       R11 R11 K18 ["IconName"]
       39 GETTABLEKS                       R11 R11 K19 ["ChevronLargeLeft"]
       41 SETTABLEKS                       R11 R10 K12 ["Icon"]
       43 LOADK                            R11 K20 ["back-button-tooltip"]
       44 SETTABLEKS                       R11 R10 K13 ["TooltipTestId"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R11 R10 K14 ["onActivated"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K7 ["BackButton"]
       53 GETTABLEKS                       R9 R0 K21 ["HideForwardButton"]
       55 JUMPIF                           R9 ; [+31]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K1 ["createElement"]
       59 GETUPVAL                         R9 4
       60 DUPTABLE                         R10 K15 [{"LayoutOrder", "IsDisabled", "TitleKey", "Icon", "TooltipTestId", "onActivated"}]
       61 LOADN                            R11 2
       62 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       64 SETTABLEKS                       R3 R10 K10 ["IsDisabled"]
       66 LOADK                            R11 K22 ["GoForward"]
       67 SETTABLEKS                       R11 R10 K11 ["TitleKey"]
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K17 ["Enums"]
       72 GETTABLEKS                       R11 R11 K18 ["IconName"]
       74 GETTABLEKS                       R11 R11 K23 ["ChevronLargeRight"]
       76 SETTABLEKS                       R11 R10 K12 ["Icon"]
       78 LOADK                            R11 K24 ["forward-button-tooltip"]
       79 SETTABLEKS                       R11 R10 K13 ["TooltipTestId"]
       81 NEWCLOSURE                       R11 P1
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R11 R10 K14 ["onActivated"]
       85 CALL                             R8 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R8
       88 SETTABLEKS                       R8 R7 K8 ["ForwardButton"]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["ExplorerController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useCurrentScopeHistory"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R9 K18 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R8
       60 RETURN                           R9 1
