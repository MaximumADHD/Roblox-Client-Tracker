PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["onActivated"], ["onStateChanged"], ["tag"] = "row align-y-center gap-medium auto-xy padding-medium radius-medium", ["testId"]}]
        8 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K3 ["onActivated"]
       14 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       16 SETTABLEKS                       R1 R4 K4 ["onStateChanged"]
       18 GETTABLEKS                       R6 R0 K9 ["isActive"]
       20 JUMPIFNOT                        R6 ; [+2]
       21 LOADK                            R5 K10 ["--start-page-CollapsibleButton-active"]
       22 JUMP                             ; [+1]
       23 LOADK                            R5 K11 ["--start-page-CollapsibleButton"]
       24 SETTABLEKS                       R5 R4 K7 ["testId"]
       26 DUPTABLE                         R5 K14 [{"Image", "Text"}]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K1 ["createElement"]
       30 GETUPVAL                         R7 3
       31 DUPTABLE                         R8 K16 [{["LayoutOrder"] = 1, ["tag"], ["Image"]}]
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R11 R0 K9 ["isActive"]
       35 JUMPIFNOT                        R11 ; [+2]
       36 LOADK                            R10 K17 ["content-emphasis"]
       37 JUMP                             ; [+1]
       38 LOADK                            R10 K18 ["content-default"]
       39 LOADK                            R11 K19 ["size-600"]
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K5 ["tag"]
       43 GETTABLEKS                       R9 R0 K20 ["icon"]
       45 SETTABLEKS                       R9 R8 K12 ["Image"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K12 ["Image"]
       50 GETTABLEKS                       R7 R0 K21 ["isCollapsed"]
       52 JUMPIFNOT                        R7 ; [+2]
       53 LOADNIL                          R6
       54 JUMP                             ; [+21]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K1 ["createElement"]
       58 GETUPVAL                         R7 5
       59 DUPTABLE                         R8 K23 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
       60 GETTABLEKS                       R9 R0 K24 ["text"]
       62 SETTABLEKS                       R9 R8 K13 ["Text"]
       64 GETUPVAL                         R9 4
       65 LOADK                            R10 K25 ["text-align-x-left auto-xy text-title-medium"]
       66 GETTABLEKS                       R12 R0 K9 ["isActive"]
       68 JUMPIFNOT                        R12 ; [+2]
       69 LOADK                            R11 K17 ["content-emphasis"]
       70 JUMP                             ; [+1]
       71 LOADK                            R11 K18 ["content-default"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K5 ["tag"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K13 ["Text"]
       78 CALL                             R2 3 1
       79 GETTABLEKS                       R3 R0 K21 ["isCollapsed"]
       81 JUMPIFNOT                        R3 ; [+21]
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R3 R3 K1 ["createElement"]
       85 GETUPVAL                         R4 6
       86 DUPTABLE                         R5 K28 [{"title", "align", "LayoutOrder"}]
       87 GETTABLEKS                       R6 R0 K24 ["text"]
       89 SETTABLEKS                       R6 R5 K26 ["title"]
       91 GETUPVAL                         R6 7
       92 GETTABLEKS                       R6 R6 K29 ["Center"]
       94 SETTABLEKS                       R6 R5 K27 ["align"]
       96 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       98 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
      100 MOVE                             R6 R2
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1
      103 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["View"]
       32 GETTABLEKS                       R5 R3 K13 ["Text"]
       34 GETTABLEKS                       R6 R3 K14 ["Image"]
       36 GETTABLEKS                       R7 R3 K15 ["Tooltip"]
       38 GETTABLEKS                       R8 R3 K16 ["Enums"]
       40 GETTABLEKS                       R8 R8 K17 ["PopoverAlign"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K9 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       48 GETTABLEKS                       R10 R10 K19 ["useOnStateChangedCursor"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R2 K20 ["Styling"]
       53 GETTABLEKS                       R10 R10 K21 ["joinTags"]
       55 DUPCLOSURE                       R11 K22 [PROTO_0]
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 RETURN                           R11 1
