PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["ContextStack"]
        6 DUPTABLE                         R4 K2 [{"providers"}]
        7 NEWTABLE                         R5 0 8
        9 GETUPVAL                         R6 1
       10 GETUPVAL                         R7 3
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 1
       13 GETUPVAL                         R9 4
       14 GETTABLEKS                       R8 R9 K3 ["StudioProvider"]
       16 DUPTABLE                         R9 K7 [{"plugin", "theme", "studioService"}]
       17 GETTABLEKS                       R10 R0 K4 ["plugin"]
       19 SETTABLEKS                       R10 R9 K4 ["plugin"]
       21 SETTABLEKS                       R1 R9 K5 ["theme"]
       23 GETUPVAL                         R10 5
       24 SETTABLEKS                       R10 R9 K6 ["studioService"]
       26 CALL                             R7 2 1
       27 GETUPVAL                         R8 1
       28 GETUPVAL                         R9 6
       29 DUPTABLE                         R10 K9 [{"plugin", "dockWidget"}]
       30 GETTABLEKS                       R11 R0 K4 ["plugin"]
       32 SETTABLEKS                       R11 R10 K4 ["plugin"]
       34 GETTABLEKS                       R11 R0 K8 ["dockWidget"]
       36 SETTABLEKS                       R11 R10 K8 ["dockWidget"]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 1
       40 GETUPVAL                         R10 7
       41 CALL                             R9 1 1
       42 GETUPVAL                         R10 1
       43 GETUPVAL                         R11 8
       44 DUPTABLE                         R12 K10 [{"plugin"}]
       45 GETTABLEKS                       R13 R0 K4 ["plugin"]
       47 SETTABLEKS                       R13 R12 K4 ["plugin"]
       49 CALL                             R10 2 1
       50 GETUPVAL                         R11 1
       51 GETUPVAL                         R12 9
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 1
       54 GETUPVAL                         R13 10
       55 DUPTABLE                         R14 K11 [{"theme"}]
       56 SETTABLEKS                       R1 R14 K5 ["theme"]
       58 CALL                             R12 2 1
       59 GETUPVAL                         R13 1
       60 GETUPVAL                         R14 11
       61 CALL                             R13 1 -1
       62 SETLIST                          R5 R6 -1 [1]
       64 SETTABLEKS                       R5 R4 K1 ["providers"]
       66 DUPTABLE                         R5 K13 [{"MainView"}]
       67 GETUPVAL                         R6 1
       68 GETUPVAL                         R9 12
       69 GETTABLEKS                       R8 R9 K14 ["Components"]
       71 GETTABLEKS                       R7 R8 K12 ["MainView"]
       73 DUPTABLE                         R8 K16 [{"overlayGui"}]
       74 GETTABLEKS                       R9 R0 K8 ["dockWidget"]
       76 SETTABLEKS                       R9 R8 K15 ["overlayGui"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R5 K12 ["MainView"]
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PropertiesPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Properties"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R9 R1 K14 ["Src"]
       38 GETTABLEKS                       R8 R9 K15 ["Components"]
       40 GETTABLEKS                       R7 R8 K16 ["Contexts"]
       42 GETTABLEKS                       R6 R7 K17 ["StudioActionContextProvider"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R10 R1 K14 ["Src"]
       49 GETTABLEKS                       R9 R10 K15 ["Components"]
       51 GETTABLEKS                       R8 R9 K16 ["Contexts"]
       53 GETTABLEKS                       R7 R8 K18 ["StudioActiveViewContextProvider"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R11 R1 K14 ["Src"]
       60 GETTABLEKS                       R10 R11 K15 ["Components"]
       62 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       64 GETTABLEKS                       R8 R9 K19 ["StudioClassIconContextProvider"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R12 R1 K14 ["Src"]
       71 GETTABLEKS                       R11 R12 K15 ["Components"]
       73 GETTABLEKS                       R10 R11 K16 ["Contexts"]
       75 GETTABLEKS                       R9 R10 K20 ["StudioNetworkContextProvider"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R13 R1 K14 ["Src"]
       82 GETTABLEKS                       R12 R13 K15 ["Components"]
       84 GETTABLEKS                       R11 R12 K16 ["Contexts"]
       86 GETTABLEKS                       R10 R11 K21 ["StudioSettingsContextProvider"]
       88 CALL                             R9 1 1
       89 GETIMPORT                        R10 K9 [require]
       91 GETTABLEKS                       R13 R1 K14 ["Src"]
       93 GETTABLEKS                       R12 R13 K22 ["Hooks"]
       95 GETTABLEKS                       R11 R12 K23 ["useThemeName"]
       97 CALL                             R10 1 1
       98 GETTABLEKS                       R13 R2 K15 ["Components"]
      100 GETTABLEKS                       R12 R13 K16 ["Contexts"]
      102 GETTABLEKS                       R11 R12 K24 ["AssetNameContextProvider"]
      104 GETTABLEKS                       R14 R2 K15 ["Components"]
      106 GETTABLEKS                       R13 R14 K16 ["Contexts"]
      108 GETTABLEKS                       R12 R13 K25 ["ThemeContextProvider"]
      110 GETTABLEKS                       R13 R2 K26 ["AssetPickerProvider"]
      112 GETTABLEKS                       R14 R3 K27 ["createElement"]
      114 DUPCLOSURE                       R15 K28 [PROTO_0]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R2
      128 RETURN                           R15 1
