PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["BindableEvent"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K4 ["LOAD_MATERIAL_GENERATOR"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K5 ["Bind"]
       12 CALL                             R1 3 0
       13 GETTABLEKS                       R1 R0 K6 ["Event"]
       15 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["MaterialGenerator"]
        1 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R3 K0 ["MaterialGenerator"]
        1 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K7 [game]
       18 LOADK                            R3 K8 ["MemStorageService"]
       19 NAMECALL                         R1 R1 K9 ["GetService"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Packages"]
       26 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K12 ["SharedPluginConstants"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R2 K13 ["launch"]
       36 LOADK                            R5 K14 ["MaterialGenerator"]
       37 GETTABLEKS                       R6 R0 K15 ["Src"]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R4 R2 K16 ["isCli"]
       42 CALL                             R4 0 1
       43 JUMPIFNOT                        R4 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R4 K7 [game]
       47 LOADK                            R6 K17 ["EnableMaterialGenerator"]
       48 NAMECALL                         R4 R4 K18 ["GetFastFlag"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R4 ; [+1]
       52 RETURN                           R0 0
       53 GETIMPORT                        R4 K4 [require]
       55 GETTABLEKS                       R7 R0 K15 ["Src"]
       57 GETTABLEKS                       R6 R7 K19 ["Flags"]
       59 GETTABLEKS                       R5 R6 K20 ["getFFlagShowMaterialGeneratorFromElsewhere"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K4 [require]
       64 GETTABLEKS                       R7 R0 K10 ["Packages"]
       66 GETTABLEKS                       R6 R7 K21 ["PluginLoader"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R6 R5 K22 ["PluginLoaderBuilder"]
       71 GETTABLEKS                       R10 R0 K15 ["Src"]
       73 GETTABLEKS                       R9 R10 K23 ["Resources"]
       75 GETTABLEKS                       R8 R9 K24 ["Localization"]
       77 GETTABLEKS                       R7 R8 K25 ["SourceStrings"]
       79 GETTABLEKS                       R11 R0 K15 ["Src"]
       81 GETTABLEKS                       R10 R11 K23 ["Resources"]
       83 GETTABLEKS                       R9 R10 K24 ["Localization"]
       85 GETTABLEKS                       R8 R9 K26 ["LocalizedStrings"]
       87 NEWTABLE                         R9 1 0
       89 LOADK                            R11 K27 ["MemStorageService."]
       90 GETTABLEKS                       R12 R3 K28 ["LOAD_MATERIAL_GENERATOR"]
       92 CONCAT                           R10 R11 R12
       93 DUPCLOSURE                       R11 K29 [PROTO_1]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R3
       96 SETTABLE                         R11 R9 R10
       97 DUPTABLE                         R10 K40 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "extraTriggers", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       98 GETIMPORT                        R11 K41 [plugin]
      100 SETTABLEKS                       R11 R10 K30 ["plugin"]
      102 LOADK                            R11 K14 ["MaterialGenerator"]
      103 SETTABLEKS                       R11 R10 K31 ["pluginName"]
      105 SETTABLEKS                       R8 R10 K32 ["translationResourceTable"]
      107 SETTABLEKS                       R7 R10 K33 ["fallbackResourceTable"]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K34 ["overrideLocaleId"]
      112 LOADNIL                          R11
      113 SETTABLEKS                       R11 R10 K35 ["localizationNamespace"]
      115 MOVE                             R12 R4
      116 CALL                             R12 0 1
      117 JUMPIFNOT                        R12 ; [+2]
      118 MOVE                             R11 R9
      119 JUMP                             ; [+1]
      120 LOADNIL                          R11
      121 SETTABLEKS                       R11 R10 K36 ["extraTriggers"]
      123 DUPCLOSURE                       R11 K42 [PROTO_2]
      124 SETTABLEKS                       R11 R10 K37 ["getToolbarName"]
      126 DUPTABLE                         R11 K47 [{"getName", "getDescription", "icon", "text"}]
      127 DUPCLOSURE                       R12 K48 [PROTO_3]
      128 SETTABLEKS                       R12 R11 K43 ["getName"]
      130 DUPCLOSURE                       R12 K49 [PROTO_4]
      131 SETTABLEKS                       R12 R11 K44 ["getDescription"]
      133 LOADK                            R12 K50 [""]
      134 SETTABLEKS                       R12 R11 K45 ["icon"]
      136 LOADNIL                          R12
      137 SETTABLEKS                       R12 R11 K46 ["text"]
      139 SETTABLEKS                       R11 R10 K38 ["buttonInfo"]
      141 DUPTABLE                         R11 K55 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      142 LOADK                            R12 K14 ["MaterialGenerator"]
      143 SETTABLEKS                       R12 R11 K51 ["id"]
      145 GETIMPORT                        R12 K58 [DockWidgetPluginGuiInfo.new]
      147 GETIMPORT                        R13 K62 [Enum.InitialDockState.Left]
      149 LOADB                            R14 0
      150 LOADB                            R15 0
      151 LOADN                            R16 128
      152 LOADN                            R17 224
      153 LOADN                            R18 250
      154 LOADN                            R19 200
      155 CALL                             R12 7 1
      156 SETTABLEKS                       R12 R11 K52 ["dockWidgetPluginGuiInfo"]
      158 DUPCLOSURE                       R12 K63 [PROTO_5]
      159 SETTABLEKS                       R12 R11 K53 ["getDockTitle"]
      161 GETIMPORT                        R12 K66 [Enum.ZIndexBehavior.Sibling]
      163 SETTABLEKS                       R12 R11 K54 ["zIndexBehavior"]
      165 SETTABLEKS                       R11 R10 K39 ["dockWidgetInfo"]
      167 GETTABLEKS                       R11 R6 K67 ["build"]
      169 MOVE                             R12 R10
      170 CALL                             R11 1 1
      171 GETTABLEKS                       R12 R11 K68 ["pluginLoader"]
      173 NAMECALL                         R12 R12 K69 ["waitForUserInteraction"]
      175 CALL                             R12 1 1
      176 JUMPIF                           R12 ; [+1]
      177 RETURN                           R0 0
      178 GETIMPORT                        R13 K4 [require]
      180 GETIMPORT                        R16 K1 [script]
      182 GETTABLEKS                       R15 R16 K2 ["Parent"]
      184 GETTABLEKS                       R14 R15 K70 ["main"]
      186 CALL                             R13 1 1
      187 MOVE                             R14 R13
      188 GETIMPORT                        R15 K41 [plugin]
      190 MOVE                             R16 R11
      191 CALL                             R14 2 0
      192 RETURN                           R0 0
