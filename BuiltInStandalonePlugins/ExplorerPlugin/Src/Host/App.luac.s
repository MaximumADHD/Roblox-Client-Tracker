PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["dockWidget"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 13
       11 GETUPVAL                         R5 1
       12 GETUPVAL                         R9 3
       13 GETTABLEKS                       R8 R9 K4 ["Components"]
       15 GETTABLEKS                       R7 R8 K5 ["Contexts"]
       17 GETTABLEKS                       R6 R7 K6 ["AnalyticsTelemetryServiceProvider"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 1
       21 GETUPVAL                         R7 4
       22 DUPTABLE                         R8 K7 [{"dockWidget"}]
       23 GETTABLEKS                       R9 R0 K0 ["dockWidget"]
       25 SETTABLEKS                       R9 R8 K0 ["dockWidget"]
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 1
       29 GETUPVAL                         R8 5
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 1
       32 GETUPVAL                         R9 6
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 1
       35 GETUPVAL                         R10 7
       36 DUPTABLE                         R11 K7 [{"dockWidget"}]
       37 GETTABLEKS                       R12 R0 K0 ["dockWidget"]
       39 SETTABLEKS                       R12 R11 K0 ["dockWidget"]
       41 CALL                             R9 2 1
       42 GETUPVAL                         R10 1
       43 GETUPVAL                         R11 8
       44 CALL                             R10 1 1
       45 GETUPVAL                         R11 1
       46 GETUPVAL                         R12 9
       47 CALL                             R11 1 1
       48 GETUPVAL                         R12 1
       49 GETUPVAL                         R14 10
       50 GETTABLEKS                       R13 R14 K8 ["Provider"]
       52 DUPTABLE                         R14 K7 [{"dockWidget"}]
       53 GETTABLEKS                       R15 R0 K0 ["dockWidget"]
       55 SETTABLEKS                       R15 R14 K0 ["dockWidget"]
       57 CALL                             R12 2 1
       58 GETUPVAL                         R13 1
       59 GETUPVAL                         R14 11
       60 CALL                             R13 1 1
       61 GETUPVAL                         R14 1
       62 GETUPVAL                         R15 12
       63 DUPTABLE                         R16 K7 [{"dockWidget"}]
       64 GETTABLEKS                       R17 R0 K0 ["dockWidget"]
       66 SETTABLEKS                       R17 R16 K0 ["dockWidget"]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 1
       70 GETUPVAL                         R16 13
       71 CALL                             R15 1 1
       72 GETUPVAL                         R16 1
       73 GETUPVAL                         R17 14
       74 CALL                             R16 1 1
       75 GETUPVAL                         R17 1
       76 GETUPVAL                         R19 15
       77 GETTABLEKS                       R18 R19 K8 ["Provider"]
       79 DUPTABLE                         R19 K7 [{"dockWidget"}]
       80 GETTABLEKS                       R20 R0 K0 ["dockWidget"]
       82 SETTABLEKS                       R20 R19 K0 ["dockWidget"]
       84 CALL                             R17 2 -1
       85 SETLIST                          R4 R5 -1 [1]
       87 SETTABLEKS                       R4 R3 K2 ["providers"]
       89 DUPTABLE                         R4 K11 [{"MainView", "WidgetRegister"}]
       90 GETUPVAL                         R5 1
       91 GETUPVAL                         R8 3
       92 GETTABLEKS                       R7 R8 K4 ["Components"]
       94 GETTABLEKS                       R6 R7 K9 ["MainView"]
       96 CALL                             R5 1 1
       97 SETTABLEKS                       R5 R4 K9 ["MainView"]
       99 GETUPVAL                         R5 1
      100 GETUPVAL                         R6 16
      101 CALL                             R5 1 1
      102 SETTABLEKS                       R5 R4 K10 ["WidgetRegister"]
      104 CALL                             R1 3 -1
      105 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Host"]
       34 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["StudioActionContextProvider"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R9 K11 ["Host"]
       45 GETTABLEKS                       R7 R8 K12 ["Contexts"]
       47 GETTABLEKS                       R6 R7 K14 ["StudioActiveViewContextProvider"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K15 ["SharedFeatures"]
       56 GETTABLEKS                       R8 R9 K16 ["ContextMenu"]
       58 GETTABLEKS                       R7 R8 K17 ["StudioContextMenuContextProvider"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R11 R0 K10 ["Src"]
       65 GETTABLEKS                       R10 R11 K11 ["Host"]
       67 GETTABLEKS                       R9 R10 K12 ["Contexts"]
       69 GETTABLEKS                       R8 R9 K18 ["StudioDragDropContextProvider"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R12 K11 ["Host"]
       78 GETTABLEKS                       R10 R11 K12 ["Contexts"]
       80 GETTABLEKS                       R9 R10 K19 ["StudioMouseContextProvider"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Src"]
       87 GETTABLEKS                       R12 R13 K11 ["Host"]
       89 GETTABLEKS                       R11 R12 K12 ["Contexts"]
       91 GETTABLEKS                       R10 R11 K20 ["StudioNetworkContextProvider"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K5 [require]
       96 GETTABLEKS                       R13 R0 K10 ["Src"]
       98 GETTABLEKS                       R12 R13 K15 ["SharedFeatures"]
      100 GETTABLEKS                       R11 R12 K21 ["StudioSelectAll"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K5 [require]
      105 GETTABLEKS                       R15 R0 K10 ["Src"]
      107 GETTABLEKS                       R14 R15 K11 ["Host"]
      109 GETTABLEKS                       R13 R14 K12 ["Contexts"]
      111 GETTABLEKS                       R12 R13 K22 ["StudioSettingsContextProvider"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K5 [require]
      116 GETTABLEKS                       R16 R0 K10 ["Src"]
      118 GETTABLEKS                       R15 R16 K11 ["Host"]
      120 GETTABLEKS                       R14 R15 K12 ["Contexts"]
      122 GETTABLEKS                       R13 R14 K23 ["StudioShortcutContextProvider"]
      124 CALL                             R12 1 1
      125 GETIMPORT                        R13 K5 [require]
      127 GETTABLEKS                       R17 R0 K10 ["Src"]
      129 GETTABLEKS                       R16 R17 K11 ["Host"]
      131 GETTABLEKS                       R15 R16 K12 ["Contexts"]
      133 GETTABLEKS                       R14 R15 K24 ["StudioThemeContextProvider"]
      135 CALL                             R13 1 1
      136 GETIMPORT                        R14 K5 [require]
      138 GETTABLEKS                       R18 R0 K10 ["Src"]
      140 GETTABLEKS                       R17 R18 K11 ["Host"]
      142 GETTABLEKS                       R16 R17 K12 ["Contexts"]
      144 GETTABLEKS                       R15 R16 K25 ["StudioTooltipContextProvider"]
      146 CALL                             R14 1 1
      147 GETIMPORT                        R15 K5 [require]
      149 GETTABLEKS                       R18 R0 K10 ["Src"]
      151 GETTABLEKS                       R17 R18 K15 ["SharedFeatures"]
      153 GETTABLEKS                       R16 R17 K26 ["StudioWindowInput"]
      155 CALL                             R15 1 1
      156 GETIMPORT                        R16 K5 [require]
      158 GETTABLEKS                       R19 R0 K10 ["Src"]
      160 GETTABLEKS                       R18 R19 K11 ["Host"]
      162 GETTABLEKS                       R17 R18 K27 ["WidgetRegister"]
      164 CALL                             R16 1 1
      165 GETIMPORT                        R17 K5 [require]
      167 GETTABLEKS                       R20 R0 K10 ["Src"]
      169 GETTABLEKS                       R19 R20 K28 ["Hooks"]
      171 GETTABLEKS                       R18 R19 K29 ["useWindowFocusEffects"]
      173 CALL                             R17 1 1
      174 GETTABLEKS                       R18 R2 K30 ["createElement"]
      176 DUPCLOSURE                       R19 K31 [PROTO_0]
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R16
      194 RETURN                           R19 1
