PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          UPVAL U0
        4 DUPTABLE                         R3 K1 [{"Dialog"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K6 [{"pluginId", "OnButtonClicked", "OnClose"}]
       10 SETTABLEKS                       R0 R6 K3 ["pluginId"]
       12 SETTABLEKS                       R2 R6 K4 ["OnButtonClicked"]
       14 SETTABLEKS                       R2 R6 K5 ["OnClose"]
       16 DUPTABLE                         R7 K8 [{"Main"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K2 ["createElement"]
       20 GETUPVAL                         R9 2
       21 DUPTABLE                         R10 K9 [{"pluginId"}]
       22 SETTABLEKS                       R0 R10 K3 ["pluginId"]
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K7 ["Main"]
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K0 ["Dialog"]
       30 GETUPVAL                         R4 3
       31 CALL                             R4 0 1
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K10 ["provide"]
       35 NEWTABLE                         R6 0 4
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R7 R7 K11 ["Plugin"]
       40 GETTABLEKS                       R7 R7 K12 ["new"]
       42 GETTABLEKS                       R8 R4 K13 ["plugin"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K14 ["Store"]
       48 GETTABLEKS                       R8 R8 K12 ["new"]
       50 GETTABLEKS                       R9 R4 K15 ["store"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R4 K16 ["localization"]
       55 GETTABLEKS                       R10 R4 K17 ["theme"]
       57 SETLIST                          R6 R7 4 [1]
       59 MOVE                             R7 R3
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K18 ["mount"]
       64 MOVE                             R7 R5
       65 CALL                             R6 1 1
       66 MOVE                             R1 R6
       67 CLOSEUPVALS                      R1
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["InstallationDialog"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Components"]
       40 GETTABLEKS                       R5 R5 K12 ["MainView"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["getPluginGlobals"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K15 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 RETURN                           R6 1
