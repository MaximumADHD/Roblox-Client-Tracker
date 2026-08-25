PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["plugin"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["plugin"]
        6 GETUPVAL                         R4 3
        7 LOADNIL                          R5
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R0
       11 SETLIST                          R6 R7 1 [1]
       13 CALL                             R2 4 1
       14 MOVE                             R3 R1
       15 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["plugin"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K1 ["plugin"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 2
       30 GETUPVAL                         R5 6
       31 GETTABLEKS                       R5 R5 K2 ["provide"]
       33 NEWTABLE                         R6 0 2
       35 GETUPVAL                         R7 7
       36 GETTABLEKS                       R7 R7 K3 ["new"]
       38 GETTABLEKS                       R8 R0 K1 ["plugin"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 8
       42 GETTABLEKS                       R8 R8 K3 ["new"]
       44 MOVE                             R9 R3
       45 CALL                             R8 1 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 DUPTABLE                         R7 K5 [{"LocalizationProvider"}]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K6 ["createElement"]
       52 GETUPVAL                         R9 9
       53 GETTABLEKS                       R9 R9 K7 ["Provider"]
       55 DUPTABLE                         R10 K9 [{"localization"}]
       56 GETTABLEKS                       R11 R0 K8 ["localization"]
       58 SETTABLEKS                       R11 R10 K8 ["localization"]
       60 DUPTABLE                         R11 K11 [{"FoundationProvider"}]
       61 GETUPVAL                         R12 1
       62 GETTABLEKS                       R12 R12 K6 ["createElement"]
       64 GETUPVAL                         R13 10
       65 DUPTABLE                         R14 K15 [{"theme", "plugin", "overlayGui", "onStyleSheetChange"}]
       66 SETTABLEKS                       R1 R14 K12 ["theme"]
       68 GETTABLEKS                       R15 R0 K1 ["plugin"]
       70 SETTABLEKS                       R15 R14 K1 ["plugin"]
       72 GETTABLEKS                       R15 R0 K16 ["toolbarGui"]
       74 SETTABLEKS                       R15 R14 K13 ["overlayGui"]
       76 SETTABLEKS                       R4 R14 K14 ["onStyleSheetChange"]
       78 DUPTABLE                         R15 K18 [{"Toolbar"}]
       79 GETUPVAL                         R16 1
       80 GETTABLEKS                       R16 R16 K6 ["createElement"]
       82 GETUPVAL                         R17 11
       83 DUPTABLE                         R18 K24 [{"simulatorService", "actions", "placeSessionBridge", "hiddenDeviceStore", "registryEnabled"}]
       84 GETTABLEKS                       R19 R0 K19 ["simulatorService"]
       86 SETTABLEKS                       R19 R18 K19 ["simulatorService"]
       88 GETTABLEKS                       R19 R0 K20 ["actions"]
       90 SETTABLEKS                       R19 R18 K20 ["actions"]
       92 GETTABLEKS                       R19 R0 K21 ["placeSessionBridge"]
       94 SETTABLEKS                       R19 R18 K21 ["placeSessionBridge"]
       96 SETTABLEKS                       R2 R18 K22 ["hiddenDeviceStore"]
       98 GETTABLEKS                       R19 R0 K23 ["registryEnabled"]
      100 SETTABLEKS                       R19 R18 K23 ["registryEnabled"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K17 ["Toolbar"]
      105 CALL                             R12 3 1
      106 SETTABLEKS                       R12 R11 K10 ["FoundationProvider"]
      108 CALL                             R8 3 1
      109 SETTABLEKS                       R8 R7 K4 ["LocalizationProvider"]
      111 CALL                             R5 2 -1
      112 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["HiddenDeviceStore"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Toolbar"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K10 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       57 GETTABLEKS                       R8 R8 K16 ["useStudioTheme"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       62 GETTABLEKS                       R9 R8 K18 ["Design"]
       64 GETTABLEKS                       R10 R3 K12 ["Components"]
       66 GETTABLEKS                       R10 R10 K19 ["FoundationProviderAdapter"]
       68 GETTABLEKS                       R11 R8 K20 ["Plugin"]
       70 GETTABLEKS                       R12 R3 K21 ["Util"]
       72 GETTABLEKS                       R12 R12 K22 ["createFoundationDesignBinding"]
       74 GETTABLEKS                       R13 R2 K23 ["Styling"]
       76 GETTABLEKS                       R13 R13 K24 ["registerPluginStyles"]
       78 DUPCLOSURE                       R14 K25 [PROTO_2]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 RETURN                           R14 1
