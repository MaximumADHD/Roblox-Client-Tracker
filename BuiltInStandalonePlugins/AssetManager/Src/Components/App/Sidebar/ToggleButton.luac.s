PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSidebar"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["IconButton"]
       14 DUPTABLE                         R5 K11 [{["ZIndex"] = 3, ["onActivated"], ["variant"], ["icon"], ["size"], ["testId"] = "toggle-sidebar-button"}]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K12 ["Enums"]
       22 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       24 GETTABLEKS                       R6 R6 K14 ["Utility"]
       26 SETTABLEKS                       R6 R5 K6 ["variant"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K12 ["Enums"]
       31 GETTABLEKS                       R6 R6 K15 ["IconName"]
       33 GETTABLEKS                       R6 R6 K16 ["Sidebar"]
       35 SETTABLEKS                       R6 R5 K7 ["icon"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K12 ["Enums"]
       40 GETTABLEKS                       R6 R6 K17 ["InputSize"]
       42 GETTABLEKS                       R6 R6 K18 ["XSmall"]
       44 SETTABLEKS                       R6 R5 K8 ["size"]
       46 CALL                             R3 2 1
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K1 ["createElement"]
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K19 ["View"]
       53 DUPTABLE                         R6 K23 [{["LayoutOrder"], ["tag"] = "auto-xy align-y-center padding-left-xsmall padding-top-small"}]
       54 GETTABLEKS                       R7 R0 K20 ["LayoutOrder"]
       56 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K1 ["createElement"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K24 ["Tooltip"]
       64 DUPTABLE                         R9 K27 [{"title", "side"}]
       65 LOADK                            R12 K24 ["Tooltip"]
       66 LOADK                            R13 K28 ["ToggleSidebar"]
       67 NAMECALL                         R10 R1 K29 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K25 ["title"]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K12 ["Enums"]
       75 GETTABLEKS                       R10 R10 K30 ["PopoverSide"]
       77 GETTABLEKS                       R10 R10 K31 ["Bottom"]
       79 SETTABLEKS                       R10 R9 K26 ["side"]
       81 MOVE                             R10 R3
       82 CALL                             R7 3 -1
       83 CALL                             R4 -1 -1
       84 RETURN                           R4 -1

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
       38 GETTABLEKS                       R7 R7 K14 ["LayoutController"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 RETURN                           R7 1
