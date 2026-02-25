PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GamePublishFinished"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GamePublishCancelled"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSaveOrPublishPlaceToRoblox"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["TestRunner"]
       11 GETTABLEKS                       R1 R2 K6 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R1 R2 K4 ["Parent"]
       18 GETTABLEKS                       R0 R1 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["PluginLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K9 ["PluginLoaderBuilder"]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R4 R5 K11 ["Resources"]
       33 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       35 GETTABLEKS                       R6 R0 K10 ["Src"]
       37 GETTABLEKS                       R5 R6 K11 ["Resources"]
       39 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       41 GETIMPORT                        R5 K15 [game]
       43 LOADK                            R7 K16 ["StudioPublishService"]
       44 NAMECALL                         R5 R5 K17 ["GetService"]
       46 CALL                             R5 2 1
       47 DUPTABLE                         R6 K26 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
       48 GETIMPORT                        R7 K27 [plugin]
       50 SETTABLEKS                       R7 R6 K18 ["plugin"]
       52 LOADK                            R7 K28 ["PublishPlaceAs"]
       53 SETTABLEKS                       R7 R6 K19 ["pluginName"]
       55 SETTABLEKS                       R4 R6 K20 ["translationResourceTable"]
       57 SETTABLEKS                       R3 R6 K21 ["fallbackResourceTable"]
       59 LOADNIL                          R7
       60 SETTABLEKS                       R7 R6 K22 ["overrideLocaleId"]
       62 LOADNIL                          R7
       63 SETTABLEKS                       R7 R6 K23 ["localizationNamespace"]
       65 LOADB                            R7 1
       66 SETTABLEKS                       R7 R6 K24 ["noToolbar"]
       68 NEWTABLE                         R7 4 0
       70 DUPCLOSURE                       R8 K29 [PROTO_0]
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R8 R7 K30 ["StudioPublishService.GamePublishFinished"]
       74 DUPCLOSURE                       R8 K31 [PROTO_1]
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R8 R7 K32 ["StudioPublishService.GamePublishCancelled"]
       78 DUPCLOSURE                       R8 K33 [PROTO_2]
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R8 R7 K34 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
       82 SETTABLEKS                       R7 R6 K25 ["extraTriggers"]
       84 GETTABLEKS                       R7 R2 K35 ["build"]
       86 MOVE                             R8 R6
       87 CALL                             R7 1 1
       88 GETTABLEKS                       R8 R7 K36 ["pluginLoader"]
       90 NAMECALL                         R8 R8 K37 ["waitForUserInteraction"]
       92 CALL                             R8 1 1
       93 JUMPIF                           R8 ; [+1]
       94 RETURN                           R0 0
       95 GETIMPORT                        R9 K1 [require]
       97 GETIMPORT                        R14 K3 [script]
       99 GETTABLEKS                       R13 R14 K4 ["Parent"]
      101 GETTABLEKS                       R12 R13 K4 ["Parent"]
      103 GETTABLEKS                       R11 R12 K10 ["Src"]
      105 GETTABLEKS                       R10 R11 K38 ["main"]
      107 CALL                             R9 1 1
      108 MOVE                             R10 R9
      109 GETIMPORT                        R11 K27 [plugin]
      111 MOVE                             R12 R7
      112 CALL                             R10 2 0
      113 RETURN                           R0 0
