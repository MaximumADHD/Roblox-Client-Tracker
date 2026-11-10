PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["IsDisabled"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["IconButton"]
       12 DUPTABLE                         R5 K10 [{"LayoutOrder", "icon", "size", "onActivated", "isDisabled", "testId"}]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       20 GETTABLEKS                       R6 R0 K11 ["Icon"]
       22 SETTABLEKS                       R6 R5 K5 ["icon"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K12 ["Enums"]
       27 GETTABLEKS                       R6 R6 K13 ["IconSize"]
       29 GETTABLEKS                       R6 R6 K14 ["XSmall"]
       31 SETTABLEKS                       R6 R5 K6 ["size"]
       33 GETTABLEKS                       R6 R0 K7 ["onActivated"]
       35 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       37 SETTABLEKS                       R2 R5 K8 ["isDisabled"]
       39 GETTABLEKS                       R6 R0 K15 ["TestId"]
       41 SETTABLEKS                       R6 R5 K9 ["testId"]
       43 CALL                             R3 2 1
       44 JUMPIFNOT                        R2 ; [+1]
       45 RETURN                           R3 1
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K2 ["createElement"]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K16 ["Tooltip"]
       52 DUPTABLE                         R6 K19 [{"LayoutOrder", "title", "side", "testId"}]
       53 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       55 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       57 LOADK                            R9 K20 ["Navigation"]
       58 GETTABLEKS                       R10 R0 K21 ["TitleKey"]
       60 NAMECALL                         R7 R1 K22 ["getText"]
       62 CALL                             R7 3 1
       63 SETTABLEKS                       R7 R6 K17 ["title"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K12 ["Enums"]
       68 GETTABLEKS                       R7 R7 K23 ["PopoverSide"]
       70 GETTABLEKS                       R7 R7 K24 ["Bottom"]
       72 SETTABLEKS                       R7 R6 K18 ["side"]
       74 GETTABLEKS                       R7 R0 K25 ["TooltipTestId"]
       76 SETTABLEKS                       R7 R6 K9 ["testId"]
       78 MOVE                             R7 R3
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendNavigationButtonClickedEvent"]
        3 DUPTABLE                         R2 K2 [{"direction"}]
        4 SETTABLEKS                       R0 R2 K1 ["direction"]
        6 DUPTABLE                         R3 K7 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K3 ["ExplorerController"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K4 ["LayoutController"]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K5 ["ItemsController"]
       16 GETUPVAL                         R4 4
       17 SETTABLEKS                       R4 R3 K6 ["SearchController"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Back"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["backHistory"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Forward"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["forwardHistory"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 2
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R9 0 0
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R8 R8 K2 ["createElement"]
       33 GETUPVAL                         R9 7
       34 GETTABLEKS                       R9 R9 K3 ["View"]
       36 DUPTABLE                         R10 K7 [{["LayoutOrder"], ["tag"] = "row auto-xy"}]
       37 GETTABLEKS                       R11 R0 K4 ["LayoutOrder"]
       39 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       41 DUPTABLE                         R11 K10 [{"BackButton", "ForwardButton"}]
       42 GETUPVAL                         R12 5
       43 GETTABLEKS                       R12 R12 K2 ["createElement"]
       45 GETUPVAL                         R13 8
       46 DUPTABLE                         R14 K21 [{["LayoutOrder"] = 1, ["IsDisabled"], ["TitleKey"] = "GoBack", ["Icon"], ["TestId"] = "back-button", ["TooltipTestId"] = "back-button-tooltip", ["onActivated"]}]
       47 SETTABLEKS                       R5 R14 K12 ["IsDisabled"]
       49 GETUPVAL                         R15 7
       50 GETTABLEKS                       R15 R15 K22 ["Enums"]
       52 GETTABLEKS                       R15 R15 K23 ["IconName"]
       54 GETTABLEKS                       R15 R15 K24 ["ChevronLargeLeft"]
       56 SETTABLEKS                       R15 R14 K15 ["Icon"]
       58 NEWCLOSURE                       R15 P1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R15 R14 K20 ["onActivated"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K8 ["BackButton"]
       67 GETTABLEKS                       R13 R0 K25 ["HideForwardButton"]
       69 JUMPIF                           R13 ; [+24]
       70 GETUPVAL                         R12 5
       71 GETTABLEKS                       R12 R12 K2 ["createElement"]
       73 GETUPVAL                         R13 8
       74 DUPTABLE                         R14 K30 [{["LayoutOrder"] = 2, ["IsDisabled"], ["TitleKey"] = "GoForward", ["Icon"], ["TestId"] = "forward-button", ["TooltipTestId"] = "forward-button-tooltip", ["onActivated"]}]
       75 SETTABLEKS                       R6 R14 K12 ["IsDisabled"]
       77 GETUPVAL                         R15 7
       78 GETTABLEKS                       R15 R15 K22 ["Enums"]
       80 GETTABLEKS                       R15 R15 K23 ["IconName"]
       82 GETTABLEKS                       R15 R15 K31 ["ChevronLargeRight"]
       84 SETTABLEKS                       R15 R14 K15 ["Icon"]
       86 NEWCLOSURE                       R15 P2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R15 R14 K20 ["onActivated"]
       92 CALL                             R12 2 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R12
       95 SETTABLEKS                       R12 R11 K9 ["ForwardButton"]
       97 CALL                             R8 3 -1
       98 RETURN                           R8 -1

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
       36 GETTABLEKS                       R7 R7 K13 ["Analytics"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K13 ["Analytics"]
       45 GETTABLEKS                       R8 R8 K14 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ExplorerController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K15 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K17 ["ItemsController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K15 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K18 ["LayoutController"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K15 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K19 ["SearchController"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K21 ["useCurrentScopeHistory"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R7 K22 ["NavigationDirection"]
       95 DUPCLOSURE                       R14 K23 [PROTO_0]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R2
       99 DUPCLOSURE                       R15 K24 [PROTO_4]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R13
      110 RETURN                           R15 1
