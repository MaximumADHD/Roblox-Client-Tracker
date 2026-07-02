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
       41 GETIMPORT                        R5 K15 [game]
       43 LOADK                            R7 K16 ["StudioPublishService"]
       44 NAMECALL                         R5 R5 K17 ["GetService"]
       46 CALL                             R5 2 1
       47 DUPTABLE                         R6 K29 [{["plugin"], ["pluginName"] = "PublishPlaceAs", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["extraTriggers"]}]
       48 GETIMPORT                        R7 K30 [plugin]
       50 SETTABLEKS                       R7 R6 K18 ["plugin"]
       52 SETTABLEKS                       R4 R6 K21 ["translationResourceTable"]
       54 SETTABLEKS                       R3 R6 K22 ["fallbackResourceTable"]
       56 NEWTABLE                         R7 4 0
       58 DUPCLOSURE                       R8 K31 [PROTO_0]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R8 R7 K32 ["StudioPublishService.GamePublishFinished"]
       62 DUPCLOSURE                       R8 K33 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R8 R7 K34 ["StudioPublishService.GamePublishCancelled"]
       66 DUPCLOSURE                       R8 K35 [PROTO_2]
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R8 R7 K36 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
       70 SETTABLEKS                       R7 R6 K28 ["extraTriggers"]
       72 GETTABLEKS                       R7 R2 K37 ["build"]
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R7 K38 ["pluginLoader"]
       78 NAMECALL                         R8 R8 K39 ["waitForUserInteraction"]
       80 CALL                             R8 1 1
       81 JUMPIF                           R8 ; [+1]
       82 RETURN                           R0 0
       83 GETIMPORT                        R9 K1 [require]
       85 GETIMPORT                        R10 K3 [script]
       87 GETTABLEKS                       R10 R10 K4 ["Parent"]
       89 GETTABLEKS                       R10 R10 K4 ["Parent"]
       91 GETTABLEKS                       R10 R10 K10 ["Src"]
       93 GETTABLEKS                       R10 R10 K40 ["main"]
       95 CALL                             R9 1 1
       96 MOVE                             R10 R9
       97 GETIMPORT                        R11 K30 [plugin]
       99 MOVE                             R12 R7
      100 CALL                             R10 2 0
      101 RETURN                           R0 0
