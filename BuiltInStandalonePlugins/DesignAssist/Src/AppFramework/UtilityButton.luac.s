PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["IconButton"]
        4 DUPTABLE                         R3 K11 [{["testId"] = "--appkit-utility-button", ["icon"], ["onActivated"], ["isCircular"] = True, ["isDisabled"], ["variant"], ["size"], ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["icon"]
        7 SETTABLEKS                       R4 R3 K3 ["icon"]
        9 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       11 JUMPIF                           R4 ; [+1]
       12 DUPCLOSURE                       R4 K12 [PROTO_0]
       13 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       15 GETTABLEKS                       R4 R0 K7 ["isDisabled"]
       17 SETTABLEKS                       R4 R3 K7 ["isDisabled"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K13 ["Enums"]
       22 GETTABLEKS                       R4 R4 K14 ["ButtonVariant"]
       24 GETTABLEKS                       R4 R4 K15 ["Utility"]
       26 SETTABLEKS                       R4 R3 K8 ["variant"]
       28 GETTABLEKS                       R5 R0 K16 ["isCompact"]
       30 JUMPIFNOT                        R5 ; [+8]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K13 ["Enums"]
       34 GETTABLEKS                       R4 R4 K17 ["InputSize"]
       36 GETTABLEKS                       R4 R4 K18 ["Small"]
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K13 ["Enums"]
       42 GETTABLEKS                       R4 R4 K17 ["InputSize"]
       44 GETTABLEKS                       R4 R4 K19 ["Medium"]
       46 SETTABLEKS                       R4 R3 K9 ["size"]
       48 GETTABLEKS                       R4 R0 K10 ["LayoutOrder"]
       50 SETTABLEKS                       R4 R3 K10 ["LayoutOrder"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.UtilityButton must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R1 K12 ["createElement"]
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
