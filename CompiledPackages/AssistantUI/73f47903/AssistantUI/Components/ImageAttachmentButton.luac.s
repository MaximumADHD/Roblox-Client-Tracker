PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+51]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K9 [{[1], ["size"], ["variant"], ["isCircular"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K10 ["Enums"]
        9 GETTABLEKS                       R4 R4 K11 ["IconName"]
       11 GETTABLEKS                       R4 R4 K12 ["PlusLarge"]
       13 SETTABLEKS                       R4 R3 K0 ["icon"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K10 ["Enums"]
       18 GETTABLEKS                       R4 R4 K13 ["InputSize"]
       20 GETTABLEKS                       R4 R4 K14 ["XSmall"]
       22 SETTABLEKS                       R4 R3 K1 ["size"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K10 ["Enums"]
       27 GETTABLEKS                       R4 R4 K15 ["ButtonVariant"]
       29 GETTABLEKS                       R4 R4 K16 ["Standard"]
       31 SETTABLEKS                       R4 R3 K2 ["variant"]
       33 GETTABLEKS                       R4 R0 K5 ["isDisabled"]
       35 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       37 GETTABLEKS                       R4 R0 K6 ["onActivated"]
       39 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       41 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       43 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K17 ["InputArea"]
       48 GETTABLEKS                       R4 R4 K18 ["AttachImageButton"]
       50 SETTABLEKS                       R4 R3 K8 ["testId"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1
       54 GETUPVAL                         R1 1
       55 GETUPVAL                         R2 5
       56 DUPTABLE                         R3 K25 [{[1] = "icons/common/plus_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
       57 GETTABLEKS                       R4 R0 K5 ["isDisabled"]
       59 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       61 GETTABLEKS                       R4 R0 K6 ["onActivated"]
       63 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       65 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       67 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       69 GETUPVAL                         R4 4
       70 GETTABLEKS                       R4 R4 K17 ["InputArea"]
       72 GETTABLEKS                       R4 R4 K18 ["AttachImageButton"]
       74 SETTABLEKS                       R4 R3 K8 ["testId"]
       76 CALL                             R1 2 -1
       77 RETURN                           R1 -1

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
