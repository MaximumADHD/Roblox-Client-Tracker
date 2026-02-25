PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADK                            R1 K1 ["TerrainEditor"]
        4 CALL                             R0 1 1
        5 NAMECALL                         R1 R0 K2 ["GetMouse"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K4 [Ray.new]
       10 LOADK                            R3 K5 [{0, 0, 0}]
       11 LOADK                            R4 K6 [{1, 0, 0}]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K7 ["UnitRay"]
       15 NAMECALL                         R1 R0 K2 ["GetMouse"]
       17 CALL                             R1 1 1
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R1 K8 ["X"]
       21 NAMECALL                         R1 R0 K2 ["GetMouse"]
       23 CALL                             R1 1 1
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R1 K9 ["Y"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K10 ["mock"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K10 ["mock"]
       35 GETUPVAL                         R3 3
       36 CALL                             R2 1 1
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R3 R4 K10 ["mock"]
       40 CALL                             R3 0 1
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R4 R5 K0 ["new"]
       44 MOVE                             R5 R0
       45 MOVE                             R6 R2
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 6
       48 LOADB                            R6 1
       49 CALL                             R5 1 1
       50 GETUPVAL                         R7 7
       51 GETTABLEKS                       R6 R7 K10 ["mock"]
       53 CALL                             R6 0 1
       54 GETUPVAL                         R8 8
       55 GETTABLEKS                       R7 R8 K10 ["mock"]
       57 MOVE                             R8 R1
       58 MOVE                             R9 R4
       59 MOVE                             R10 R3
       60 MOVE                             R11 R2
       61 MOVE                             R12 R5
       62 CALL                             R7 5 1
       63 DUPTABLE                         R8 K18 [{"Analytics", "Localization", "PluginController", "ShortcutController", "StudioServices", "Stylizer", "ToolController"}]
       64 SETTABLEKS                       R3 R8 K11 ["Analytics"]
       66 SETTABLEKS                       R2 R8 K12 ["Localization"]
       68 SETTABLEKS                       R1 R8 K13 ["PluginController"]
       70 SETTABLEKS                       R4 R8 K14 ["ShortcutController"]
       72 SETTABLEKS                       R6 R8 K15 ["StudioServices"]
       74 SETTABLEKS                       R5 R8 K16 ["Stylizer"]
       76 SETTABLEKS                       R7 R8 K17 ["ToolController"]
       78 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["MaterialFramework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K8 ["ContextServices"]
       25 GETTABLEKS                       R3 R4 K9 ["Analytics"]
       27 GETTABLEKS                       R5 R1 K8 ["ContextServices"]
       29 GETTABLEKS                       R4 R5 K10 ["Localization"]
       31 GETTABLEKS                       R7 R1 K11 ["TestHelpers"]
       33 GETTABLEKS                       R6 R7 K12 ["Instances"]
       35 GETTABLEKS                       R5 R6 K13 ["MockPlugin"]
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R9 R0 K14 ["Src"]
       41 GETTABLEKS                       R8 R9 K15 ["Resources"]
       43 GETTABLEKS                       R7 R8 K16 ["MakeTheme"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Src"]
       50 GETTABLEKS                       R9 R10 K17 ["Controllers"]
       52 GETTABLEKS                       R8 R9 K18 ["PluginController"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R11 R0 K14 ["Src"]
       59 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       61 GETTABLEKS                       R9 R10 K19 ["ShortcutController"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K4 [require]
       66 GETTABLEKS                       R12 R0 K14 ["Src"]
       68 GETTABLEKS                       R11 R12 K17 ["Controllers"]
       70 GETTABLEKS                       R10 R11 K20 ["ToolController"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K4 [require]
       75 GETTABLEKS                       R13 R0 K14 ["Src"]
       77 GETTABLEKS                       R12 R13 K21 ["Util"]
       79 GETTABLEKS                       R11 R12 K22 ["mockResourceTable"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R12 R2 K23 ["Context"]
       84 GETTABLEKS                       R11 R12 K24 ["StudioServices"]
       86 DUPTABLE                         R12 K26 [{"libraries"}]
       87 NEWTABLE                         R13 2 0
       89 GETTABLEKS                       R15 R2 K15 ["Resources"]
       91 GETTABLEKS                       R14 R15 K27 ["LOCALIZATION_PROJECT_NAME"]
       93 DUPTABLE                         R15 K30 [{"stringResourceTable", "translationResourceTable"}]
       94 SETTABLEKS                       R10 R15 K28 ["stringResourceTable"]
       96 SETTABLEKS                       R10 R15 K29 ["translationResourceTable"]
       98 SETTABLE                         R15 R13 R14
       99 GETTABLEKS                       R15 R1 K15 ["Resources"]
      101 GETTABLEKS                       R14 R15 K27 ["LOCALIZATION_PROJECT_NAME"]
      103 DUPTABLE                         R15 K30 [{"stringResourceTable", "translationResourceTable"}]
      104 SETTABLEKS                       R10 R15 K28 ["stringResourceTable"]
      106 SETTABLEKS                       R10 R15 K29 ["translationResourceTable"]
      108 SETTABLE                         R15 R13 R14
      109 SETTABLEKS                       R13 R12 K25 ["libraries"]
      111 DUPCLOSURE                       R13 K31 [PROTO_0]
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R9
      121 RETURN                           R13 1
