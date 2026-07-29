PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseBuilderIcons"]
        3 JUMPIFNOT                        R1 ; [+51]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K10 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K11 ["Enums"]
       10 GETTABLEKS                       R4 R4 K12 ["IconName"]
       12 GETTABLEKS                       R4 R4 K13 ["PlusLarge"]
       14 SETTABLEKS                       R4 R3 K1 ["icon"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K11 ["Enums"]
       19 GETTABLEKS                       R4 R4 K14 ["InputSize"]
       21 GETTABLEKS                       R4 R4 K15 ["XSmall"]
       23 SETTABLEKS                       R4 R3 K2 ["size"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K11 ["Enums"]
       28 GETTABLEKS                       R4 R4 K16 ["ButtonVariant"]
       30 GETTABLEKS                       R4 R4 K17 ["Standard"]
       32 SETTABLEKS                       R4 R3 K3 ["variant"]
       34 GETTABLEKS                       R4 R0 K6 ["isDisabled"]
       36 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       38 GETTABLEKS                       R4 R0 K7 ["onActivated"]
       40 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       42 GETTABLEKS                       R4 R0 K8 ["LayoutOrder"]
       44 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R4 R4 K18 ["InputArea"]
       49 GETTABLEKS                       R4 R4 K19 ["AttachImageButton"]
       51 SETTABLEKS                       R4 R3 K9 ["testId"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1
       55 GETUPVAL                         R1 1
       56 GETUPVAL                         R2 5
       57 DUPTABLE                         R3 K26 [{["icon"] = "icons/common/plus_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
       58 GETTABLEKS                       R4 R0 K6 ["isDisabled"]
       60 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       62 GETTABLEKS                       R4 R0 K7 ["onActivated"]
       64 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       66 GETTABLEKS                       R4 R0 K8 ["LayoutOrder"]
       68 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       70 GETUPVAL                         R4 4
       71 GETTABLEKS                       R4 R4 K18 ["InputArea"]
       73 GETTABLEKS                       R4 R4 K19 ["AttachImageButton"]
       75 SETTABLEKS                       R4 R3 K9 ["testId"]
       77 CALL                             R1 2 -1
       78 RETURN                           R1 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K14 ["IconButton"]
       42 GETTABLEKS                       R7 R4 K15 ["createElement"]
       44 DUPCLOSURE                       R8 K16 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 GETTABLEKS                       R9 R4 K17 ["memo"]
       53 MOVE                             R10 R8
       54 CALL                             R9 1 -1
       55 RETURN                           R9 -1
