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
       24 GETTABLEKS                       R2 R2 K8 ["PluginLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K9 ["PluginLoaderBuilder"]
       29 GETTABLEKS                       R3 R0 K10 ["Src"]
       31 GETTABLEKS                       R3 R3 K11 ["Resources"]
       33 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       35 GETTABLEKS                       R4 R0 K10 ["Src"]
       37 GETTABLEKS                       R4 R4 K11 ["Resources"]
       39 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       41 GETIMPORT                        R5 K1 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Flags"]
       47 GETTABLEKS                       R6 R6 K15 ["getEngineFeatureStudioUnifiedPublishAction"]
       49 CALL                             R5 1 1
       50 MOVE                             R7 R5
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+10]
       53 GETIMPORT                        R6 K1 [require]
       55 GETTABLEKS                       R7 R0 K10 ["Src"]
       57 GETTABLEKS                       R7 R7 K16 ["Util"]
       59 GETTABLEKS                       R7 R7 K17 ["PublishStatusInfo"]
       61 CALL                             R6 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R6
       64 GETIMPORT                        R7 K19 [game]
       66 LOADK                            R9 K20 ["StudioPublishService"]
       67 NAMECALL                         R7 R7 K21 ["GetService"]
       69 CALL                             R7 2 1
       70 DUPTABLE                         R8 K33 [{["plugin"], ["pluginName"] = "PublishPlaceAs", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["extraTriggers"]}]
       71 GETIMPORT                        R9 K34 [plugin]
       73 SETTABLEKS                       R9 R8 K22 ["plugin"]
       75 SETTABLEKS                       R4 R8 K25 ["translationResourceTable"]
       77 SETTABLEKS                       R3 R8 K26 ["fallbackResourceTable"]
       79 NEWTABLE                         R9 4 0
       81 DUPCLOSURE                       R10 K35 [PROTO_0]
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R10 R9 K36 ["StudioPublishService.GamePublishFinished"]
       85 DUPCLOSURE                       R10 K37 [PROTO_1]
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R10 R9 K38 ["StudioPublishService.GamePublishCancelled"]
       89 DUPCLOSURE                       R10 K39 [PROTO_2]
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R10 R9 K40 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
       93 SETTABLEKS                       R9 R8 K32 ["extraTriggers"]
       95 MOVE                             R9 R5
       96 CALL                             R9 0 1
       97 JUMPIFNOT                        R9 ; [+18]
       98 NEWTABLE                         R9 0 1
      100 DUPTABLE                         R10 K45 [{["uri"], ["isPreexistingAction"] = True, ["getText"], ["getTooltip"]}]
      101 DUPTABLE                         R11 K54 [{["DataModel"] = "Standalone", ["PluginId"] = "Collaboration", ["Category"] = "Actions", ["ItemId"] = "PublishStatus"}]
      102 SETTABLEKS                       R11 R10 K41 ["uri"]
      104 DUPCLOSURE                       R11 K55 [PROTO_3]
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R11 R10 K43 ["getText"]
      108 DUPCLOSURE                       R11 K56 [PROTO_4]
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R11 R10 K44 ["getTooltip"]
      112 SETLIST                          R9 R10 1 [1]
      114 SETTABLEKS                       R9 R8 K57 ["actionInfos"]
      116 GETTABLEKS                       R9 R2 K58 ["build"]
      118 MOVE                             R10 R8
      119 CALL                             R9 1 1
      120 GETTABLEKS                       R10 R9 K59 ["pluginLoader"]
      122 NAMECALL                         R10 R10 K60 ["waitForUserInteraction"]
      124 CALL                             R10 1 1
      125 JUMPIF                           R10 ; [+1]
      126 RETURN                           R0 0
      127 GETIMPORT                        R11 K1 [require]
      129 GETIMPORT                        R12 K3 [script]
      131 GETTABLEKS                       R12 R12 K4 ["Parent"]
      133 GETTABLEKS                       R12 R12 K4 ["Parent"]
      135 GETTABLEKS                       R12 R12 K10 ["Src"]
      137 GETTABLEKS                       R12 R12 K61 ["main"]
      139 CALL                             R11 1 1
      140 MOVE                             R12 R11
      141 GETIMPORT                        R13 K34 [plugin]
      143 MOVE                             R14 R9
      144 CALL                             R12 2 0
      145 RETURN                           R0 0
