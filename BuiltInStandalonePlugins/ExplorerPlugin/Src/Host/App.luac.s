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
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K4 ["AnalyticsTelemetryServiceProvider"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 4
       18 DUPTABLE                         R8 K5 [{"dockWidget"}]
       19 GETTABLEKS                       R9 R0 K0 ["dockWidget"]
       21 SETTABLEKS                       R9 R8 K0 ["dockWidget"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 1
       25 GETUPVAL                         R8 5
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 1
       28 GETUPVAL                         R9 6
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 1
       31 GETUPVAL                         R10 7
       32 DUPTABLE                         R11 K5 [{"dockWidget"}]
       33 GETTABLEKS                       R12 R0 K0 ["dockWidget"]
       35 SETTABLEKS                       R12 R11 K0 ["dockWidget"]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 1
       39 GETUPVAL                         R11 8
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 1
       42 GETUPVAL                         R12 9
       43 CALL                             R11 1 1
       44 GETUPVAL                         R12 1
       45 GETUPVAL                         R14 10
       46 GETTABLEKS                       R13 R14 K6 ["Provider"]
       48 DUPTABLE                         R14 K5 [{"dockWidget"}]
       49 GETTABLEKS                       R15 R0 K0 ["dockWidget"]
       51 SETTABLEKS                       R15 R14 K0 ["dockWidget"]
       53 CALL                             R12 2 1
       54 GETUPVAL                         R13 1
       55 GETUPVAL                         R14 11
       56 CALL                             R13 1 1
       57 GETUPVAL                         R14 1
       58 GETUPVAL                         R15 12
       59 DUPTABLE                         R16 K5 [{"dockWidget"}]
       60 GETTABLEKS                       R17 R0 K0 ["dockWidget"]
       62 SETTABLEKS                       R17 R16 K0 ["dockWidget"]
       64 CALL                             R14 2 1
       65 GETUPVAL                         R15 1
       66 GETUPVAL                         R16 13
       67 CALL                             R15 1 1
       68 GETUPVAL                         R16 1
       69 GETUPVAL                         R17 14
       70 CALL                             R16 1 1
       71 GETUPVAL                         R17 1
       72 GETUPVAL                         R19 15
       73 GETTABLEKS                       R18 R19 K6 ["Provider"]
       75 DUPTABLE                         R19 K5 [{"dockWidget"}]
       76 GETTABLEKS                       R20 R0 K0 ["dockWidget"]
       78 SETTABLEKS                       R20 R19 K0 ["dockWidget"]
       80 CALL                             R17 2 -1
       81 SETLIST                          R4 R5 -1 [1]
       83 SETTABLEKS                       R4 R3 K2 ["providers"]
       85 DUPTABLE                         R4 K9 [{"MainView", "WidgetRegister"}]
       86 GETUPVAL                         R5 1
       87 GETUPVAL                         R8 16
       88 GETTABLEKS                       R7 R8 K10 ["Components"]
       90 GETTABLEKS                       R6 R7 K7 ["MainView"]
       92 CALL                             R5 1 1
       93 SETTABLEKS                       R5 R4 K7 ["MainView"]
       95 GETUPVAL                         R5 1
       96 GETUPVAL                         R6 17
       97 CALL                             R5 1 1
       98 SETTABLEKS                       R5 R4 K8 ["WidgetRegister"]
      100 CALL                             R1 3 -1
      101 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Explorer"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K11 ["Src"]
       39 GETTABLEKS                       R8 R9 K12 ["Host"]
       41 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K14 ["StudioActionContextProvider"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K11 ["Src"]
       50 GETTABLEKS                       R9 R10 K12 ["Host"]
       52 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       54 GETTABLEKS                       R7 R8 K15 ["StudioActiveViewContextProvider"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R11 K16 ["SharedFeatures"]
       63 GETTABLEKS                       R9 R10 K17 ["ContextMenu"]
       65 GETTABLEKS                       R8 R9 K18 ["StudioContextMenuContextProvider"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K11 ["Src"]
       72 GETTABLEKS                       R11 R12 K12 ["Host"]
       74 GETTABLEKS                       R10 R11 K13 ["Contexts"]
       76 GETTABLEKS                       R9 R10 K19 ["StudioDragDropContextProvider"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Src"]
       83 GETTABLEKS                       R12 R13 K12 ["Host"]
       85 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       87 GETTABLEKS                       R10 R11 K20 ["StudioMouseContextProvider"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R14 R0 K11 ["Src"]
       94 GETTABLEKS                       R13 R14 K12 ["Host"]
       96 GETTABLEKS                       R12 R13 K13 ["Contexts"]
       98 GETTABLEKS                       R11 R12 K21 ["StudioNetworkContextProvider"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R14 R0 K11 ["Src"]
      105 GETTABLEKS                       R13 R14 K16 ["SharedFeatures"]
      107 GETTABLEKS                       R12 R13 K22 ["StudioSelectAll"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R16 R0 K11 ["Src"]
      114 GETTABLEKS                       R15 R16 K12 ["Host"]
      116 GETTABLEKS                       R14 R15 K13 ["Contexts"]
      118 GETTABLEKS                       R13 R14 K23 ["StudioSettingsContextProvider"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R17 R0 K11 ["Src"]
      125 GETTABLEKS                       R16 R17 K12 ["Host"]
      127 GETTABLEKS                       R15 R16 K13 ["Contexts"]
      129 GETTABLEKS                       R14 R15 K24 ["StudioShortcutContextProvider"]
      131 CALL                             R13 1 1
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R18 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R18 K12 ["Host"]
      138 GETTABLEKS                       R16 R17 K13 ["Contexts"]
      140 GETTABLEKS                       R15 R16 K25 ["StudioThemeContextProvider"]
      142 CALL                             R14 1 1
      143 GETIMPORT                        R15 K5 [require]
      145 GETTABLEKS                       R19 R0 K11 ["Src"]
      147 GETTABLEKS                       R18 R19 K12 ["Host"]
      149 GETTABLEKS                       R17 R18 K13 ["Contexts"]
      151 GETTABLEKS                       R16 R17 K26 ["StudioTooltipContextProvider"]
      153 CALL                             R15 1 1
      154 GETIMPORT                        R16 K5 [require]
      156 GETTABLEKS                       R19 R0 K11 ["Src"]
      158 GETTABLEKS                       R18 R19 K16 ["SharedFeatures"]
      160 GETTABLEKS                       R17 R18 K27 ["StudioWindowInput"]
      162 CALL                             R16 1 1
      163 GETIMPORT                        R17 K5 [require]
      165 GETTABLEKS                       R20 R0 K11 ["Src"]
      167 GETTABLEKS                       R19 R20 K12 ["Host"]
      169 GETTABLEKS                       R18 R19 K28 ["WidgetRegister"]
      171 CALL                             R17 1 1
      172 GETIMPORT                        R18 K5 [require]
      174 GETTABLEKS                       R21 R0 K11 ["Src"]
      176 GETTABLEKS                       R20 R21 K29 ["Hooks"]
      178 GETTABLEKS                       R19 R20 K30 ["useWindowFocusEffects"]
      180 CALL                             R18 1 1
      181 GETTABLEKS                       R19 R3 K31 ["createElement"]
      183 DUPCLOSURE                       R20 K32 [PROTO_0]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R17
      202 RETURN                           R20 1
