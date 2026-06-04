PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["onActivated"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K2 ["onActivated"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder", "ref"}]
       23 LOADK                            R7 K7 ["auto-xy"]
       24 SETTABLEKS                       R7 R6 K3 ["tag"]
       26 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       28 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       30 SETTABLEKS                       R1 R6 K5 ["ref"]
       32 DUPTABLE                         R7 K9 [{"IconButton"}]
       33 GETUPVAL                         R9 4
       34 CALL                             R9 0 1
       35 JUMPIFNOT                        R9 ; [+45]
       36 GETUPVAL                         R8 2
       37 GETUPVAL                         R9 5
       38 DUPTABLE                         R10 K15 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
       39 GETUPVAL                         R11 6
       40 GETTABLEKS                       R11 R11 K16 ["Enums"]
       42 GETTABLEKS                       R11 R11 K17 ["IconName"]
       44 GETTABLEKS                       R11 R11 K18 ["ThreeSlidersHorizontal"]
       46 SETTABLEKS                       R11 R10 K10 ["icon"]
       48 GETUPVAL                         R11 6
       49 GETTABLEKS                       R11 R11 K16 ["Enums"]
       51 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       53 GETTABLEKS                       R11 R11 K20 ["XSmall"]
       55 SETTABLEKS                       R11 R10 K11 ["size"]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R11 R11 K16 ["Enums"]
       60 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       62 GETTABLEKS                       R11 R11 K22 ["Utility"]
       64 SETTABLEKS                       R11 R10 K12 ["variant"]
       66 LOADB                            R11 1
       67 SETTABLEKS                       R11 R10 K13 ["isCircular"]
       69 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       71 MOVE                             R11 R2
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       75 GETTABLEKS                       R11 R0 K14 ["testId"]
       77 SETTABLEKS                       R11 R10 K14 ["testId"]
       79 CALL                             R8 2 1
       80 JUMP                             ; [+23]
       81 GETUPVAL                         R8 2
       82 GETUPVAL                         R9 7
       83 DUPTABLE                         R10 K24 [{"testId", "icon", "tag", "iconTag", "LayoutOrder", "onActivated"}]
       84 GETTABLEKS                       R11 R0 K14 ["testId"]
       86 SETTABLEKS                       R11 R10 K14 ["testId"]
       88 LOADK                            R11 K25 ["icons/actions/adjust"]
       89 SETTABLEKS                       R11 R10 K10 ["icon"]
       91 LOADK                            R11 K26 ["size-600-600 radius-circle align-x-center align-y-center"]
       92 SETTABLEKS                       R11 R10 K3 ["tag"]
       94 LOADK                            R11 K27 ["size-600-600 content-emphasis"]
       95 SETTABLEKS                       R11 R10 K23 ["iconTag"]
       97 MOVE                             R11 R2
       98 CALL                             R11 0 1
       99 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      101 SETTABLEKS                       R3 R10 K2 ["onActivated"]
      103 CALL                             R8 2 1
      104 SETTABLEKS                       R8 R7 K8 ["IconButton"]
      106 CALL                             R4 3 -1
      107 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantUseBuilderIcons"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["IconButton"]
       44 GETTABLEKS                       R7 R2 K15 ["View"]
       46 GETTABLEKS                       R8 R4 K16 ["createNextOrder"]
       48 GETTABLEKS                       R9 R3 K17 ["createElement"]
       50 DUPCLOSURE                       R10 K18 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 GETTABLEKS                       R11 R3 K19 ["memo"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 -1
       63 RETURN                           R11 -1
