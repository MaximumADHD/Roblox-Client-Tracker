PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["join"]
       14 NAMECALL                         R4 R2 K3 ["GetUri"]
       16 CALL                             R4 1 1
       17 DUPTABLE                         R5 K8 [{["Category"] = "Panels", ["ItemId"] = "ExpandedTerrainRestartDialog"}]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["join"]
       22 MOVE                             R5 R3
       23 DUPTABLE                         R6 K10 [{["Category"] = "Widgets"}]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K11 ["createElement"]
       28 GETUPVAL                         R6 4
       29 DUPTABLE                         R7 K21 [{["uri"], ["type"] = "Warning", ["title"], ["description"], ["showIndeterminateProgressIndicator"], ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
       30 SETTABLEKS                       R3 R7 K12 ["uri"]
       32 LOADK                            R10 K7 ["ExpandedTerrainRestartDialog"]
       33 LOADK                            R11 K22 ["Title"]
       34 NAMECALL                         R8 R1 K23 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K15 ["title"]
       39 LOADK                            R10 K7 ["ExpandedTerrainRestartDialog"]
       40 LOADK                            R11 K24 ["Description"]
       41 NAMECALL                         R8 R1 K23 ["getText"]
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K16 ["description"]
       46 GETTABLEKS                       R8 R0 K25 ["IsRestarting"]
       48 SETTABLEKS                       R8 R7 K17 ["showIndeterminateProgressIndicator"]
       50 DUPTABLE                         R8 K29 [{"uri", "text", "disabled", "onActivated"}]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K30 ["child"]
       54 MOVE                             R10 R4
       55 LOADK                            R11 K31 ["Restart"]
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K12 ["uri"]
       59 LOADK                            R11 K7 ["ExpandedTerrainRestartDialog"]
       60 LOADK                            R12 K31 ["Restart"]
       61 NAMECALL                         R9 R1 K23 ["getText"]
       63 CALL                             R9 3 1
       64 SETTABLEKS                       R9 R8 K26 ["text"]
       66 GETTABLEKS                       R9 R0 K25 ["IsRestarting"]
       68 SETTABLEKS                       R9 R8 K27 ["disabled"]
       70 GETTABLEKS                       R9 R0 K32 ["OnRestart"]
       72 SETTABLEKS                       R9 R8 K28 ["onActivated"]
       74 SETTABLEKS                       R8 R7 K18 ["primaryAction"]
       76 DUPTABLE                         R8 K29 [{"uri", "text", "disabled", "onActivated"}]
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R9 R9 K30 ["child"]
       80 MOVE                             R10 R4
       81 LOADK                            R11 K33 ["RestartLater"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K12 ["uri"]
       85 LOADK                            R11 K7 ["ExpandedTerrainRestartDialog"]
       86 LOADK                            R12 K33 ["RestartLater"]
       87 NAMECALL                         R9 R1 K23 ["getText"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K26 ["text"]
       92 GETTABLEKS                       R9 R0 K25 ["IsRestarting"]
       94 SETTABLEKS                       R9 R8 K27 ["disabled"]
       96 GETTABLEKS                       R9 R0 K34 ["OnClose"]
       98 SETTABLEKS                       R9 R8 K28 ["onActivated"]
      100 SETTABLEKS                       R8 R7 K19 ["secondaryAction"]
      102 DUPTABLE                         R8 K36 [{"uri", "onClose"}]
      103 GETUPVAL                         R9 2
      104 GETTABLEKS                       R9 R9 K30 ["child"]
      106 MOVE                             R10 R4
      107 LOADK                            R11 K37 ["Close"]
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K12 ["uri"]
      111 GETTABLEKS                       R9 R0 K34 ["OnClose"]
      113 SETTABLEKS                       R9 R8 K35 ["onClose"]
      115 SETTABLEKS                       R8 R7 K20 ["escapeAction"]
      117 CALL                             R5 2 -1
      118 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K12 ["Plugin"]
       36 GETTABLEKS                       R6 R3 K13 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["Dialog"]
       40 GETTABLEKS                       R7 R3 K15 ["Util"]
       42 GETTABLEKS                       R7 R7 K16 ["StudioUri"]
       44 DUPCLOSURE                       R8 K17 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 RETURN                           R8 1
