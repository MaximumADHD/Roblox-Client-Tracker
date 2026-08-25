PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableDeviceSimulatorToolbar"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["launch"]
       30 LOADK                            R4 K2 ["DeviceSimulatorToolbar"]
       31 GETTABLEKS                       R5 R0 K13 ["Src"]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R2 K14 ["isCli"]
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+1]
       38 RETURN                           R0 0
       39 GETIMPORT                        R3 K16 [plugin]
       41 GETTABLEKS                       R4 R0 K17 ["Name"]
       43 SETTABLEKS                       R4 R3 K17 ["Name"]
       45 GETIMPORT                        R3 K5 [require]
       47 GETTABLEKS                       R4 R0 K10 ["Packages"]
       49 GETTABLEKS                       R4 R4 K18 ["PluginLoader"]
       51 CALL                             R3 1 1
       52 GETTABLEKS                       R4 R3 K19 ["PluginLoaderBuilder"]
       54 GETTABLEKS                       R5 R0 K13 ["Src"]
       56 GETTABLEKS                       R5 R5 K20 ["Resources"]
       58 GETTABLEKS                       R5 R5 K21 ["Localization"]
       60 GETTABLEKS                       R5 R5 K22 ["SourceStrings"]
       62 GETTABLEKS                       R6 R0 K13 ["Src"]
       64 GETTABLEKS                       R6 R6 K20 ["Resources"]
       66 GETTABLEKS                       R6 R6 K21 ["Localization"]
       68 GETTABLEKS                       R6 R6 K23 ["LocalizedStrings"]
       70 GETIMPORT                        R7 K16 [plugin]
       72 GETTABLEKS                       R7 R7 K24 ["MultipleDocumentInterfaceInstance"]
       74 DUPTABLE                         R8 K32 [{["plugin"], ["pluginName"] = "DeviceSimulatorToolbar", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["extraTriggers"], ["shouldImmediatelyOpen"]}]
       75 GETIMPORT                        R9 K16 [plugin]
       77 SETTABLEKS                       R9 R8 K15 ["plugin"]
       79 SETTABLEKS                       R6 R8 K26 ["translationResourceTable"]
       81 SETTABLEKS                       R5 R8 K27 ["fallbackResourceTable"]
       83 DUPTABLE                         R9 K34 [{"SessionStarted"}]
       84 DUPCLOSURE                       R10 K35 [PROTO_0]
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R10 R9 K33 ["SessionStarted"]
       88 SETTABLEKS                       R9 R8 K30 ["extraTriggers"]
       90 DUPCLOSURE                       R9 K36 [PROTO_1]
       91 SETTABLEKS                       R9 R8 K31 ["shouldImmediatelyOpen"]
       93 GETTABLEKS                       R9 R4 K37 ["build"]
       95 MOVE                             R10 R8
       96 CALL                             R9 1 1
       97 GETTABLEKS                       R10 R9 K38 ["pluginLoader"]
       99 NAMECALL                         R10 R10 K39 ["waitForUserInteraction"]
      101 CALL                             R10 1 1
      102 JUMPIF                           R10 ; [+1]
      103 RETURN                           R0 0
      104 GETIMPORT                        R11 K5 [require]
      106 GETTABLEKS                       R12 R0 K6 ["Bin"]
      108 GETTABLEKS                       R12 R12 K7 ["Common"]
      110 GETTABLEKS                       R12 R12 K40 ["main"]
      112 CALL                             R11 1 1
      113 MOVE                             R12 R11
      114 GETIMPORT                        R13 K16 [plugin]
      116 CALL                             R12 1 0
      117 RETURN                           R0 0
