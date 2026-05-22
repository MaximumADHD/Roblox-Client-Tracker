PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["showDialog is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 LOADNIL                          R1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          REF R1
       12 CAPTURE                          UPVAL U1
       13 DUPTABLE                         R3 K4 [{"Dialog"}]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K5 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K9 [{"pluginId", "OnButtonClicked", "OnClose"}]
       19 SETTABLEKS                       R0 R6 K6 ["pluginId"]
       21 SETTABLEKS                       R2 R6 K7 ["OnButtonClicked"]
       23 SETTABLEKS                       R2 R6 K8 ["OnClose"]
       25 DUPTABLE                         R7 K11 [{"Main"}]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K5 ["createElement"]
       29 GETUPVAL                         R9 3
       30 DUPTABLE                         R10 K12 [{"pluginId"}]
       31 SETTABLEKS                       R0 R10 K6 ["pluginId"]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K10 ["Main"]
       36 CALL                             R4 3 1
       37 SETTABLEKS                       R4 R3 K3 ["Dialog"]
       39 GETUPVAL                         R4 4
       40 CALL                             R4 0 1
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R5 R5 K13 ["provide"]
       44 NEWTABLE                         R6 0 4
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R7 R7 K14 ["Plugin"]
       49 GETTABLEKS                       R7 R7 K15 ["new"]
       51 GETTABLEKS                       R8 R4 K16 ["plugin"]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R8 R8 K17 ["Store"]
       57 GETTABLEKS                       R8 R8 K15 ["new"]
       59 GETTABLEKS                       R9 R4 K18 ["store"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R4 K19 ["localization"]
       64 GETTABLEKS                       R10 R4 K20 ["theme"]
       66 SETLIST                          R6 R7 4 [1]
       68 MOVE                             R7 R3
       69 CALL                             R5 2 1
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K21 ["mount"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 1
       75 MOVE                             R1 R6
       76 CLOSEUPVALS                      R1
       77 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K10 ["ContextServices"]
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["InstallationDialog"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Components"]
       47 GETTABLEKS                       R6 R6 K14 ["MainView"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K11 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Util"]
       56 GETTABLEKS                       R7 R7 K16 ["getPluginGlobals"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_1]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R3
       66 RETURN                           R7 1
