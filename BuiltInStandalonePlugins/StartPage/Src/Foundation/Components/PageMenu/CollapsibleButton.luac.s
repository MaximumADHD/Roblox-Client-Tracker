PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K7 [{"LayoutOrder", "onActivated", "onStateChanged", "tag", "testId"}]
        8 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K3 ["onActivated"]
       14 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       16 SETTABLEKS                       R1 R4 K4 ["onStateChanged"]
       18 LOADK                            R5 K8 ["row align-y-center radius-medium padding-medium gap-medium auto-xy"]
       19 SETTABLEKS                       R5 R4 K5 ["tag"]
       21 GETTABLEKS                       R6 R0 K9 ["isActive"]
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADK                            R5 K10 ["--start-page-CollapsibleButton-active"]
       25 JUMP                             ; [+1]
       26 LOADK                            R5 K11 ["--start-page-CollapsibleButton"]
       27 SETTABLEKS                       R5 R4 K6 ["testId"]
       29 DUPTABLE                         R5 K14 [{"Image", "Text"}]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K1 ["createElement"]
       33 GETUPVAL                         R7 3
       34 DUPTABLE                         R8 K15 [{"LayoutOrder", "tag", "Image"}]
       35 LOADN                            R9 1
       36 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R11 R0 K9 ["isActive"]
       41 JUMPIFNOT                        R11 ; [+2]
       42 LOADK                            R10 K16 ["content-emphasis"]
       43 JUMP                             ; [+1]
       44 LOADK                            R10 K17 ["content-default"]
       45 LOADK                            R11 K18 ["size-600"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K5 ["tag"]
       49 GETTABLEKS                       R9 R0 K19 ["icon"]
       51 SETTABLEKS                       R9 R8 K12 ["Image"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K12 ["Image"]
       56 GETTABLEKS                       R7 R0 K20 ["isCollapsed"]
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADNIL                          R6
       60 JUMP                             ; [+24]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K1 ["createElement"]
       64 GETUPVAL                         R7 5
       65 DUPTABLE                         R8 K21 [{"LayoutOrder", "Text", "tag"}]
       66 LOADN                            R9 2
       67 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       69 GETTABLEKS                       R9 R0 K22 ["text"]
       71 SETTABLEKS                       R9 R8 K13 ["Text"]
       73 GETUPVAL                         R9 4
       74 LOADK                            R10 K23 ["text-align-x-left auto-xy text-title-medium"]
       75 GETTABLEKS                       R12 R0 K9 ["isActive"]
       77 JUMPIFNOT                        R12 ; [+2]
       78 LOADK                            R11 K16 ["content-emphasis"]
       79 JUMP                             ; [+1]
       80 LOADK                            R11 K17 ["content-default"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K5 ["tag"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K13 ["Text"]
       87 CALL                             R2 3 1
       88 GETTABLEKS                       R3 R0 K20 ["isCollapsed"]
       90 JUMPIFNOT                        R3 ; [+21]
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K1 ["createElement"]
       94 GETUPVAL                         R4 6
       95 DUPTABLE                         R5 K26 [{"title", "align", "LayoutOrder"}]
       96 GETTABLEKS                       R6 R0 K22 ["text"]
       98 SETTABLEKS                       R6 R5 K24 ["title"]
      100 GETUPVAL                         R6 7
      101 GETTABLEKS                       R6 R6 K27 ["Center"]
      103 SETTABLEKS                       R6 R5 K25 ["align"]
      105 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
      107 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
      109 MOVE                             R6 R2
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1
      112 RETURN                           R2 1

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
