PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["AnimatedImageImporter"]
        7 DUPTABLE                         R3 K5 [{["Size"], ["Resizable"] = True, ["Modal"] = True}]
        8 GETIMPORT                        R4 K8 [Vector2.new]
       10 LOADN                            R5 1280
       11 LOADN                            R6 720
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["Size"]
       15 NAMECALL                         R0 R0 K9 ["CreateQWidgetPluginGui"]
       17 CALL                             R0 3 1
       18 GETIMPORT                        R1 K13 [Enum.ZIndexBehavior.Sibling]
       20 SETTABLEKS                       R1 R0 K11 ["ZIndexBehavior"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K14 ["createRoot"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 1
       27 DUPTABLE                         R2 K17 [{"root", "widget"}]
       28 SETTABLEKS                       R1 R2 K15 ["root"]
       30 SETTABLEKS                       R0 R2 K16 ["widget"]
       32 SETUPVAL                         R2 0
       33 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K1 ["root"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["ContextServices"]
       11 GETTABLEKS                       R4 R4 K3 ["provide"]
       13 NEWTABLE                         R5 0 3
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K2 ["ContextServices"]
       18 GETTABLEKS                       R6 R6 K4 ["Plugin"]
       20 GETTABLEKS                       R6 R6 K5 ["new"]
       22 GETUPVAL                         R7 0
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K2 ["ContextServices"]
       27 GETTABLEKS                       R7 R7 K6 ["Design"]
       29 GETTABLEKS                       R7 R7 K5 ["new"]
       31 GETIMPORT                        R8 K8 [Instance.new]
       33 LOADK                            R9 K9 ["StyleSheet"]
       34 CALL                             R8 1 -1
       35 CALL                             R7 -1 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K2 ["ContextServices"]
       39 GETTABLEKS                       R8 R8 K10 ["Focus"]
       41 GETTABLEKS                       R8 R8 K5 ["new"]
       43 GETTABLEKS                       R9 R1 K11 ["widget"]
       45 CALL                             R8 1 -1
       46 SETLIST                          R5 R6 -1 [1]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K12 ["createElement"]
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K13 ["ContextStack"]
       54 DUPTABLE                         R8 K15 [{"providers"}]
       55 NEWTABLE                         R9 0 3
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K12 ["createElement"]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K16 ["Providers"]
       63 GETTABLEKS                       R11 R11 K17 ["StandaloneDataModel"]
       65 DUPTABLE                         R12 K21 [{"plugin", "pluginGui", "studioUri"}]
       66 GETUPVAL                         R13 0
       67 SETTABLEKS                       R13 R12 K18 ["plugin"]
       69 GETUPVAL                         R13 6
       70 GETTABLEKS                       R14 R1 K11 ["widget"]
       72 CALL                             R13 1 1
       73 SETTABLEKS                       R13 R12 K19 ["pluginGui"]
       75 DUPTABLE                         R13 K29 [{["DataModel"], ["PluginType"], ["PluginId"], ["Category"] = "Widgets", ["ItemId"] = "AnimatedImageImporter"}]
       76 GETTABLEKS                       R14 R0 K22 ["DataModel"]
       78 SETTABLEKS                       R14 R13 K22 ["DataModel"]
       80 GETTABLEKS                       R14 R0 K23 ["PluginType"]
       82 SETTABLEKS                       R14 R13 K23 ["PluginType"]
       84 GETTABLEKS                       R14 R0 K24 ["PluginId"]
       86 SETTABLEKS                       R14 R13 K24 ["PluginId"]
       88 SETTABLEKS                       R13 R12 K20 ["studioUri"]
       90 CALL                             R10 2 1
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R11 R11 K12 ["createElement"]
       94 GETUPVAL                         R12 7
       95 GETTABLEKS                       R12 R12 K30 ["Components"]
       97 GETTABLEKS                       R12 R12 K31 ["FoundationProviderAdapter"]
       99 CALL                             R11 1 1
      100 GETUPVAL                         R12 3
      101 GETTABLEKS                       R12 R12 K12 ["createElement"]
      103 GETUPVAL                         R13 7
      104 GETTABLEKS                       R13 R13 K32 ["Contexts"]
      106 GETTABLEKS                       R13 R13 K33 ["Localization"]
      108 GETTABLEKS                       R13 R13 K34 ["Provider"]
      110 DUPTABLE                         R14 K36 [{"localization"}]
      111 GETUPVAL                         R15 7
      112 GETTABLEKS                       R15 R15 K32 ["Contexts"]
      114 GETTABLEKS                       R15 R15 K33 ["Localization"]
      116 GETTABLEKS                       R15 R15 K33 ["Localization"]
      118 GETTABLEKS                       R15 R15 K5 ["new"]
      120 DUPTABLE                         R16 K40 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimatedImageImporter"}]
      121 GETUPVAL                         R17 8
      122 GETTABLEKS                       R17 R17 K41 ["Src"]
      124 GETTABLEKS                       R17 R17 K42 ["Resources"]
      126 GETTABLEKS                       R17 R17 K33 ["Localization"]
      128 GETTABLEKS                       R17 R17 K43 ["SourceStrings"]
      130 SETTABLEKS                       R17 R16 K37 ["stringResourceTable"]
      132 GETUPVAL                         R17 8
      133 GETTABLEKS                       R17 R17 K41 ["Src"]
      135 GETTABLEKS                       R17 R17 K42 ["Resources"]
      137 GETTABLEKS                       R17 R17 K33 ["Localization"]
      139 GETTABLEKS                       R17 R17 K44 ["LocalizedStrings"]
      141 SETTABLEKS                       R17 R16 K38 ["translationResourceTable"]
      143 CALL                             R15 1 1
      144 SETTABLEKS                       R15 R14 K35 ["localization"]
      146 CALL                             R12 2 -1
      147 SETLIST                          R9 R10 -1 [1]
      149 SETTABLEKS                       R9 R8 K14 ["providers"]
      151 GETUPVAL                         R9 3
      152 GETTABLEKS                       R9 R9 K12 ["createElement"]
      154 GETUPVAL                         R10 9
      155 DUPTABLE                         R11 K47 [{"key", "initialScreen"}]
      156 GETIMPORT                        R13 K50 [os.clock]
      158 CALL                             R13 0 -1
      159 FASTCALL                         TOSTRING ; [+2]
      160 GETIMPORT                        R12 K52 [tostring]
      162 CALL                             R12 -1 1
      163 SETTABLEKS                       R12 R11 K45 ["key"]
      165 DUPTABLE                         R12 K55 [{["type"] = "fileDialog"}]
      166 SETTABLEKS                       R12 R11 K46 ["initialScreen"]
      168 CALL                             R9 2 -1
      169 CALL                             R6 -1 -1
      170 CALL                             R4 -1 -1
      171 NAMECALL                         R2 R2 K56 ["render"]
      173 CALL                             R2 -1 0
      174 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CLOSEUPVALS                      R0
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["App"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["CrossEnvironment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactRoblox"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Packages"]
       55 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Libraries"]
       64 GETTABLEKS                       R9 R9 K17 ["as"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R0 K18 ["Parent"]
       69 LOADK                            R13 K19 ["Plugin"]
       70 NAMECALL                         R11 R9 K20 ["IsA"]
       72 CALL                             R11 2 1
       73 FASTCALL2K                       ASSERT R11 K21 ; [+4]
       75 LOADK                            R12 K21 ["Main.Parent is not a Plugin"]
       76 GETIMPORT                        R10 K23 [assert]
       78 CALL                             R10 2 0
       79 DUPCLOSURE                       R10 K24 [PROTO_2]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R1
       90 RETURN                           R10 1
