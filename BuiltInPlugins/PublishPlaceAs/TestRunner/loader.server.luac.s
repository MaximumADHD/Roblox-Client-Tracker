PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GamePublishFinished"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GamePublishCancelled"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSaveOrPublishPlaceToRoblox"]
        3 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["LocalizationNamespace"]
        6 LOADK                            R7 K1 ["Title"]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["LocalizationNamespace"]
        6 LOADK                            R7 K1 ["Title"]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["LocalizationNamespace"]
        6 LOADK                            R7 K1 ["Title"]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_6:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["LocalizationNamespace"]
        6 LOADK                            R7 K1 ["Title"]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["TestRunner"]
       11 GETTABLEKS                       R1 R1 K6 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R2 R0 K7 ["Packages"]
       24 GETTABLEKS                       R2 R2 K8 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K9 ["launch"]
       29 LOADK                            R3 K10 ["PublishPlaceAs"]
       30 GETTABLEKS                       R4 R0 K11 ["Src"]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R1 K12 ["isCli"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K1 [require]
       40 GETTABLEKS                       R3 R0 K7 ["Packages"]
       42 GETTABLEKS                       R3 R3 K13 ["PluginLoader"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R2 K14 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R4 R0 K11 ["Src"]
       49 GETTABLEKS                       R4 R4 K15 ["Resources"]
       51 GETTABLEKS                       R4 R4 K16 ["SourceStrings"]
       53 GETTABLEKS                       R5 R0 K11 ["Src"]
       55 GETTABLEKS                       R5 R5 K15 ["Resources"]
       57 GETTABLEKS                       R5 R5 K17 ["LocalizedStrings"]
       59 GETIMPORT                        R6 K1 [require]
       61 GETTABLEKS                       R7 R0 K11 ["Src"]
       63 GETTABLEKS                       R7 R7 K18 ["Flags"]
       65 GETTABLEKS                       R7 R7 K19 ["getEngineFeatureStudioUnifiedPublishAction"]
       67 CALL                             R6 1 1
       68 MOVE                             R8 R6
       69 CALL                             R8 0 1
       70 JUMPIFNOT                        R8 ; [+10]
       71 GETIMPORT                        R7 K1 [require]
       73 GETTABLEKS                       R8 R0 K11 ["Src"]
       75 GETTABLEKS                       R8 R8 K20 ["Util"]
       77 GETTABLEKS                       R8 R8 K21 ["PublishStatusInfo"]
       79 CALL                             R7 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 GETIMPORT                        R8 K23 [game]
       84 LOADK                            R10 K24 ["StudioPublishService"]
       85 NAMECALL                         R8 R8 K25 ["GetService"]
       87 CALL                             R8 2 1
       88 DUPTABLE                         R9 K36 [{["plugin"], ["pluginName"] = "PublishPlaceAs", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["extraTriggers"]}]
       89 GETIMPORT                        R10 K37 [plugin]
       91 SETTABLEKS                       R10 R9 K26 ["plugin"]
       93 SETTABLEKS                       R5 R9 K28 ["translationResourceTable"]
       95 SETTABLEKS                       R4 R9 K29 ["fallbackResourceTable"]
       97 NEWTABLE                         R10 4 0
       99 DUPCLOSURE                       R11 K38 [PROTO_0]
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R11 R10 K39 ["StudioPublishService.GamePublishFinished"]
      103 DUPCLOSURE                       R11 K40 [PROTO_1]
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R11 R10 K41 ["StudioPublishService.GamePublishCancelled"]
      107 DUPCLOSURE                       R11 K42 [PROTO_2]
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R11 R10 K43 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
      111 SETTABLEKS                       R10 R9 K35 ["extraTriggers"]
      113 MOVE                             R10 R6
      114 CALL                             R10 0 1
      115 JUMPIFNOT                        R10 ; [+30]
      116 NEWTABLE                         R10 0 2
      118 DUPTABLE                         R11 K48 [{["uri"], ["isPreexistingAction"] = True, ["getText"], ["getTooltip"]}]
      119 DUPTABLE                         R12 K57 [{["DataModel"] = "Standalone", ["PluginId"] = "Collaboration", ["Category"] = "Actions", ["ItemId"] = "PublishStatus"}]
      120 SETTABLEKS                       R12 R11 K44 ["uri"]
      122 DUPCLOSURE                       R12 K58 [PROTO_3]
      123 CAPTURE                          VAL R7
      124 SETTABLEKS                       R12 R11 K46 ["getText"]
      126 DUPCLOSURE                       R12 K59 [PROTO_4]
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R12 R11 K47 ["getTooltip"]
      130 DUPTABLE                         R12 K48 [{["uri"], ["isPreexistingAction"] = True, ["getText"], ["getTooltip"]}]
      131 DUPTABLE                         R13 K61 [{["DataModel"] = "Standalone", ["PluginId"] = "Collaboration", ["Category"] = "Actions", ["ItemId"] = "PublishToRoblox"}]
      132 SETTABLEKS                       R13 R12 K44 ["uri"]
      134 DUPCLOSURE                       R13 K62 [PROTO_5]
      135 CAPTURE                          VAL R7
      136 SETTABLEKS                       R13 R12 K46 ["getText"]
      138 DUPCLOSURE                       R13 K63 [PROTO_6]
      139 CAPTURE                          VAL R7
      140 SETTABLEKS                       R13 R12 K47 ["getTooltip"]
      142 SETLIST                          R10 R11 2 [1]
      144 SETTABLEKS                       R10 R9 K64 ["actionInfos"]
      146 GETTABLEKS                       R10 R3 K65 ["build"]
      148 MOVE                             R11 R9
      149 CALL                             R10 1 1
      150 GETTABLEKS                       R11 R10 K66 ["pluginLoader"]
      152 NAMECALL                         R11 R11 K67 ["waitForUserInteraction"]
      154 CALL                             R11 1 1
      155 JUMPIF                           R11 ; [+1]
      156 RETURN                           R0 0
      157 GETIMPORT                        R12 K1 [require]
      159 GETIMPORT                        R13 K3 [script]
      161 GETTABLEKS                       R13 R13 K4 ["Parent"]
      163 GETTABLEKS                       R13 R13 K4 ["Parent"]
      165 GETTABLEKS                       R13 R13 K11 ["Src"]
      167 GETTABLEKS                       R13 R13 K68 ["main"]
      169 CALL                             R12 1 1
      170 MOVE                             R13 R12
      171 GETIMPORT                        R14 K37 [plugin]
      173 MOVE                             R15 R10
      174 CALL                             R13 2 0
      175 RETURN                           R0 0
