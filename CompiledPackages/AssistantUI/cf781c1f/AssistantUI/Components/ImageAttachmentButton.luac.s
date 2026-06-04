PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+54]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K8 [{"icon", "size", "variant", "isCircular", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K9 ["Enums"]
        9 GETTABLEKS                       R4 R4 K10 ["IconName"]
       11 GETTABLEKS                       R4 R4 K11 ["PlusLarge"]
       13 SETTABLEKS                       R4 R3 K0 ["icon"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K9 ["Enums"]
       18 GETTABLEKS                       R4 R4 K12 ["InputSize"]
       20 GETTABLEKS                       R4 R4 K13 ["XSmall"]
       22 SETTABLEKS                       R4 R3 K1 ["size"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K9 ["Enums"]
       27 GETTABLEKS                       R4 R4 K14 ["ButtonVariant"]
       29 GETTABLEKS                       R4 R4 K15 ["Standard"]
       31 SETTABLEKS                       R4 R3 K2 ["variant"]
       33 LOADB                            R4 1
       34 SETTABLEKS                       R4 R3 K3 ["isCircular"]
       36 GETTABLEKS                       R4 R0 K4 ["isDisabled"]
       38 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       40 GETTABLEKS                       R4 R0 K5 ["onActivated"]
       42 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       44 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       46 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R4 R4 K16 ["InputArea"]
       51 GETTABLEKS                       R4 R4 K17 ["AttachImageButton"]
       53 SETTABLEKS                       R4 R3 K7 ["testId"]
       55 CALL                             R1 2 -1
       56 RETURN                           R1 -1
       57 GETUPVAL                         R1 1
       58 GETUPVAL                         R2 5
       59 DUPTABLE                         R3 K21 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
       60 LOADK                            R4 K22 ["icons/common/plus_small"]
       61 SETTABLEKS                       R4 R3 K0 ["icon"]
       63 LOADK                            R4 K23 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
       64 SETTABLEKS                       R4 R3 K18 ["tag"]
       66 LOADK                            R4 K24 ["size-300-300 content-emphasis"]
       67 SETTABLEKS                       R4 R3 K19 ["iconTag"]
       69 GETTABLEKS                       R4 R0 K4 ["isDisabled"]
       71 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       73 GETTABLEKS                       R4 R0 K5 ["onActivated"]
       75 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       77 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       79 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K16 ["InputArea"]
       84 GETTABLEKS                       R4 R4 K17 ["AttachImageButton"]
       86 SETTABLEKS                       R4 R3 K7 ["testId"]
       88 LOADB                            R4 1
       89 SETTABLEKS                       R4 R3 K20 ["skipBackgroundColoringDisabled"]
       91 CALL                             R1 2 -1
       92 RETURN                           R1 -1

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
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Flags"]
       39 GETTABLEKS                       R6 R6 K14 ["FFlagAssistantUseBuilderIcons"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K15 ["IconButton"]
       44 GETTABLEKS                       R7 R3 K16 ["createElement"]
       46 DUPCLOSURE                       R8 K17 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 GETTABLEKS                       R9 R3 K18 ["memo"]
       55 MOVE                             R10 R8
       56 CALL                             R9 1 -1
       57 RETURN                           R9 -1
