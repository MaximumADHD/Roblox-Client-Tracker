PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K9 [{[1], ["size"], ["variant"], ["isCircular"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K10 ["Enums"]
        6 GETTABLEKS                       R4 R4 K11 ["IconName"]
        8 GETTABLEKS                       R4 R4 K12 ["PlusLarge"]
       10 SETTABLEKS                       R4 R3 K0 ["icon"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K10 ["Enums"]
       15 GETTABLEKS                       R4 R4 K13 ["InputSize"]
       17 GETTABLEKS                       R4 R4 K14 ["XSmall"]
       19 SETTABLEKS                       R4 R3 K1 ["size"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K10 ["Enums"]
       24 GETTABLEKS                       R4 R4 K15 ["ButtonVariant"]
       26 GETTABLEKS                       R4 R4 K16 ["Standard"]
       28 SETTABLEKS                       R4 R3 K2 ["variant"]
       30 GETTABLEKS                       R4 R0 K5 ["isDisabled"]
       32 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       34 GETTABLEKS                       R4 R0 K6 ["onActivated"]
       36 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       38 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       40 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R4 R4 K17 ["InputArea"]
       45 GETTABLEKS                       R4 R4 K18 ["AttachImageButton"]
       47 SETTABLEKS                       R4 R3 K8 ["testId"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["TestIds"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["IconButton"]
       30 GETTABLEKS                       R5 R2 K12 ["createElement"]
       32 DUPCLOSURE                       R6 K13 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 GETTABLEKS                       R7 R2 K14 ["memo"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 -1
       41 RETURN                           R7 -1
