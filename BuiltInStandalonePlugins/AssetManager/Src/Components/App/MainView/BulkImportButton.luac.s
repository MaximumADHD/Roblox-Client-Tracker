PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getScopeAnalyticsContext"]
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K1 ["launchBulkImport"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
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
       13 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K2 ["createElement"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K3 ["Button"]
       27 DUPTABLE                         R7 K9 [{"LayoutOrder", "text", "onActivated", "variant", "size"}]
       28 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       30 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       32 LOADK                            R10 K10 ["Tooltip"]
       33 LOADK                            R11 K11 ["BulkImport"]
       34 NAMECALL                         R8 R1 K12 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K5 ["text"]
       39 SETTABLEKS                       R4 R7 K6 ["onActivated"]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["ButtonVariant"]
       46 GETTABLEKS                       R8 R8 K15 ["Standard"]
       48 SETTABLEKS                       R8 R7 K7 ["variant"]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R8 R8 K13 ["Enums"]
       53 GETTABLEKS                       R8 R8 K16 ["InputSize"]
       55 GETTABLEKS                       R8 R8 K17 ["XSmall"]
       57 SETTABLEKS                       R8 R7 K8 ["size"]
       59 CALL                             R5 2 -1
       60 RETURN                           R5 -1

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
       38 GETTABLEKS                       R7 R7 K14 ["ItemsController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       47 GETTABLEKS                       R8 R8 K15 ["PluginController"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K16 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 RETURN                           R8 1
