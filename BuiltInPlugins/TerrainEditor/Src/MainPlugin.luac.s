PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["onClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["onRestore"]
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["toolController"]
        8 JUMPIFNOT                        R0 ; [+43]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K4 ["toolController"]
       12 NAMECALL                         R0 R0 K5 ["getTool"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R0 R0 K6 ["_name"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["Empty"]
       20 JUMPIFEQ                         R0 R1 ; [+31]
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["toolController"]
       26 NAMECALL                         R1 R1 K8 ["getToolIndex"]
       28 CALL                             R1 1 1
       29 SETTABLEKS                       R1 R0 K9 ["toolIndex"]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K4 ["toolController"]
       35 NAMECALL                         R1 R1 K10 ["getTabIndex"]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K11 ["tabIndex"]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K4 ["toolController"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K11 ["tabIndex"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K9 ["toolIndex"]
       49 NAMECALL                         R0 R0 K12 ["setTabAndToolIndex"]
       51 CALL                             R0 3 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R0 ; [+28]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       11 GETTABLEKS                       R0 R0 K2 ["mainButton"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["state"]
       16 GETTABLEKS                       R2 R2 K4 ["enabled"]
       18 NAMECALL                         R0 R0 K5 ["SetActive"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["props"]
       24 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       26 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       31 NAMECALL                         R0 R0 K8 ["Connect"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["toolController"]
       10 JUMPIFNOT                        R1 ; [+28]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["tabIndex"]
       14 JUMPIFNOT                        R1 ; [+24]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["toolIndex"]
       18 JUMPIFNOT                        R1 ; [+20]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["toolController"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["tabIndex"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["toolIndex"]
       28 NAMECALL                         R1 R1 K6 ["setTabAndToolIndex"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 0
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R1 K5 ["toolIndex"]
       35 GETUPVAL                         R1 0
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K4 ["tabIndex"]
       39 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["onRestore"]
        6 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["onClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["resume"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["pause"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R4 R4 K2 ["mainDockWidget"]
       10 LOADB                            R5 0
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K3 ["Enabled"]
       15 MOVE                             R3 R5
       16 DUPTABLE                         R6 K5 [{"enabled"}]
       17 SETTABLEKS                       R3 R6 K4 ["enabled"]
       19 NAMECALL                         R4 R0 K6 ["setState"]
       21 CALL                             R4 2 0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R0 K7 ["toggleEnabled"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R4 R0 K8 ["onClose"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R0 K9 ["onCreated"]
       35 NEWCLOSURE                       R4 P3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R4 R0 K10 ["onRestore"]
       39 NEWCLOSURE                       R4 P4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R0 K11 ["onWidgetEnabledChanged"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K12 ["Localization"]
       46 GETTABLEKS                       R4 R4 K13 ["new"]
       48 DUPTABLE                         R5 K19 [{["libraries"], ["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainEditor"}]
       49 NEWTABLE                         R6 2 0
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K20 ["Resources"]
       54 GETTABLEKS                       R7 R7 K21 ["LOCALIZATION_PROJECT_NAME"]
       56 DUPTABLE                         R8 K22 [{"stringResourceTable", "translationResourceTable"}]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K20 ["Resources"]
       60 GETTABLEKS                       R9 R9 K23 ["SourceStrings"]
       62 SETTABLEKS                       R9 R8 K15 ["stringResourceTable"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K20 ["Resources"]
       67 GETTABLEKS                       R9 R9 K24 ["LocalizedStrings"]
       69 SETTABLEKS                       R9 R8 K16 ["translationResourceTable"]
       71 SETTABLE                         R8 R6 R7
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R7 R7 K20 ["Resources"]
       75 GETTABLEKS                       R7 R7 K21 ["LOCALIZATION_PROJECT_NAME"]
       77 DUPTABLE                         R8 K22 [{"stringResourceTable", "translationResourceTable"}]
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R9 R9 K20 ["Resources"]
       81 GETTABLEKS                       R9 R9 K23 ["SourceStrings"]
       83 SETTABLEKS                       R9 R8 K15 ["stringResourceTable"]
       85 GETUPVAL                         R9 3
       86 GETTABLEKS                       R9 R9 K20 ["Resources"]
       88 GETTABLEKS                       R9 R9 K24 ["LocalizedStrings"]
       90 SETTABLEKS                       R9 R8 K16 ["translationResourceTable"]
       92 SETTABLE                         R8 R6 R7
       93 SETTABLEKS                       R6 R5 K14 ["libraries"]
       95 GETUPVAL                         R6 4
       96 SETTABLEKS                       R6 R5 K15 ["stringResourceTable"]
       98 GETUPVAL                         R6 5
       99 SETTABLEKS                       R6 R5 K16 ["translationResourceTable"]
      101 CALL                             R4 1 1
      102 SETTABLEKS                       R4 R0 K25 ["localization"]
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R4 R4 K26 ["Analytics"]
      107 GETTABLEKS                       R4 R4 K13 ["new"]
      109 GETUPVAL                         R5 6
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R0 K27 ["analytics"]
      113 GETUPVAL                         R4 7
      114 GETTABLEKS                       R4 R4 K13 ["new"]
      116 MOVE                             R5 R2
      117 GETTABLEKS                       R6 R0 K25 ["localization"]
      119 CALL                             R4 2 1
      120 SETTABLEKS                       R4 R0 K28 ["shortcutController"]
      122 GETUPVAL                         R4 8
      123 GETTABLEKS                       R4 R4 K13 ["new"]
      125 MOVE                             R5 R2
      126 CALL                             R4 1 1
      127 SETTABLEKS                       R4 R0 K29 ["pluginController"]
      129 GETUPVAL                         R4 9
      130 GETTABLEKS                       R4 R4 K13 ["new"]
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R0 K30 ["studioServices"]
      135 GETUPVAL                         R4 10
      136 CALL                             R4 0 1
      137 SETTABLEKS                       R4 R0 K31 ["stylizer"]
      139 GETUPVAL                         R4 11
      140 GETTABLEKS                       R4 R4 K13 ["new"]
      142 GETTABLEKS                       R5 R0 K29 ["pluginController"]
      144 GETTABLEKS                       R6 R0 K28 ["shortcutController"]
      146 GETTABLEKS                       R7 R0 K27 ["analytics"]
      148 GETTABLEKS                       R8 R0 K25 ["localization"]
      150 GETTABLEKS                       R9 R0 K31 ["stylizer"]
      152 CALL                             R4 5 1
      153 SETTABLEKS                       R4 R0 K32 ["toolController"]
      155 NEWCLOSURE                       R4 P5
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R4 R0 K33 ["onFocused"]
      159 NEWCLOSURE                       R4 P6
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R4 R0 K34 ["onUnfocused"]
      163 GETTABLEKS                       R5 R0 K35 ["props"]
      165 GETTABLEKS                       R5 R5 K1 ["PluginLoaderContext"]
      167 JUMPIFNOT                        R5 ; [+7]
      168 GETTABLEKS                       R4 R0 K35 ["props"]
      170 GETTABLEKS                       R4 R4 K1 ["PluginLoaderContext"]
      172 GETTABLEKS                       R4 R4 K36 ["mainButton"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R4
      176 SETTABLEKS                       R4 R0 K37 ["button"]
      178 GETUPVAL                         R4 12
      179 CALL                             R4 0 1
      180 JUMPIFNOT                        R4 ; [+21]
      181 GETUPVAL                         R4 13
      182 GETTABLEKS                       R4 R4 K38 ["Util"]
      184 GETTABLEKS                       R4 R4 K39 ["createFoundationDesignBinding"]
      186 CALL                             R4 0 2
      187 SETTABLEKS                       R5 R0 K40 ["onFoundationStyleSheetChange"]
      189 GETUPVAL                         R6 14
      190 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      192 LOADNIL                          R8
      193 LOADNIL                          R9
      194 NEWTABLE                         R10 0 1
      196 MOVE                             R11 R4
      197 SETLIST                          R10 R11 1 [1]
      199 CALL                             R6 4 1
      200 SETTABLEKS                       R6 R0 K41 ["design"]
      202 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["pluginController"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["toolController"]
        7 NAMECALL                         R1 R1 K1 ["destroy"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 9
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K4 ["new"]
       18 NAMECALL                         R8 R3 K5 ["getMouse"]
       20 CALL                             R8 1 -1
       21 CALL                             R7 -1 1
       22 GETTABLEKS                       R8 R0 K6 ["stylizer"]
       24 GETTABLEKS                       R9 R0 K7 ["localization"]
       26 GETTABLEKS                       R10 R0 K8 ["analytics"]
       28 GETTABLEKS                       R11 R0 K9 ["shortcutController"]
       30 GETTABLEKS                       R12 R0 K10 ["pluginController"]
       32 GETTABLEKS                       R13 R0 K11 ["studioServices"]
       34 GETTABLEKS                       R14 R0 K12 ["toolController"]
       36 SETLIST                          R5 R6 9 [1]
       38 GETUPVAL                         R6 2
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+11]
       41 MOVE                             R7 R5
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K4 ["new"]
       45 GETTABLEKS                       R9 R0 K13 ["design"]
       47 CALL                             R8 1 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R6 K16 [table.insert]
       51 CALL                             R6 -1 0
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K17 ["provide"]
       55 MOVE                             R7 R5
       56 DUPTABLE                         R8 K19 [{"MainWidget"}]
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R9 R9 K20 ["createElement"]
       60 GETUPVAL                         R10 6
       61 NEWTABLE                         R11 16 0
       63 LOADK                            R12 K21 ["TerrainEditor"]
       64 SETTABLEKS                       R12 R11 K22 ["Id"]
       66 SETTABLEKS                       R4 R11 K23 ["Enabled"]
       68 GETTABLEKS                       R12 R0 K7 ["localization"]
       70 LOADK                            R14 K2 ["Plugin"]
       71 LOADK                            R15 K24 ["Name"]
       72 NAMECALL                         R12 R12 K25 ["getText"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K26 ["Title"]
       77 GETIMPORT                        R12 K30 [Enum.ZIndexBehavior.Sibling]
       79 SETTABLEKS                       R12 R11 K28 ["ZIndexBehavior"]
       81 GETIMPORT                        R12 K33 [Enum.InitialDockState.Left]
       83 SETTABLEKS                       R12 R11 K31 ["InitialDockState"]
       85 GETIMPORT                        R12 K35 [Vector2.new]
       87 LOADN                            R13 640
       88 LOADN                            R14 480
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K36 ["Size"]
       92 GETIMPORT                        R12 K35 [Vector2.new]
       94 LOADN                            R13 350
       95 LOADN                            R14 200
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K37 ["MinSize"]
       99 GETTABLEKS                       R12 R0 K38 ["onClose"]
      101 SETTABLEKS                       R12 R11 K39 ["OnClose"]
      103 LOADB                            R12 1
      104 SETTABLEKS                       R12 R11 K40 ["ShouldRestore"]
      106 GETTABLEKS                       R12 R0 K41 ["onCreated"]
      108 SETTABLEKS                       R12 R11 K42 ["OnWidgetCreated"]
      110 GETTABLEKS                       R12 R0 K43 ["onFocused"]
      112 SETTABLEKS                       R12 R11 K44 ["OnWidgetFocused"]
      114 GETTABLEKS                       R12 R0 K45 ["onUnfocused"]
      116 SETTABLEKS                       R12 R11 K46 ["OnWidgetFocusReleased"]
      118 GETTABLEKS                       R12 R0 K47 ["onRestore"]
      120 SETTABLEKS                       R12 R11 K48 ["OnWidgetRestored"]
      122 GETTABLEKS                       R13 R0 K0 ["props"]
      124 GETTABLEKS                       R13 R13 K49 ["PluginLoaderContext"]
      126 JUMPIFNOT                        R13 ; [+7]
      127 GETTABLEKS                       R12 R0 K0 ["props"]
      129 GETTABLEKS                       R12 R12 K49 ["PluginLoaderContext"]
      131 GETTABLEKS                       R12 R12 K50 ["mainDockWidget"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R12
      135 SETTABLEKS                       R12 R11 K51 ["Widget"]
      137 GETUPVAL                         R12 7
      138 GETTABLEKS                       R12 R12 K52 ["Change"]
      140 GETTABLEKS                       R12 R12 K23 ["Enabled"]
      142 GETTABLEKS                       R13 R0 K53 ["onWidgetEnabledChanged"]
      144 SETTABLE                         R13 R11 R12
      145 GETUPVAL                         R13 2
      146 CALL                             R13 0 1
      147 JUMPIFNOT                        R13 ; [+22]
      148 DUPTABLE                         R12 K55 [{"Provider"}]
      149 GETUPVAL                         R13 5
      150 GETTABLEKS                       R13 R13 K20 ["createElement"]
      152 GETUPVAL                         R14 8
      153 DUPTABLE                         R15 K57 [{"onStyleSheetChange"}]
      154 GETTABLEKS                       R16 R0 K58 ["onFoundationStyleSheetChange"]
      156 SETTABLEKS                       R16 R15 K56 ["onStyleSheetChange"]
      158 DUPTABLE                         R16 K60 [{"App"}]
      159 GETUPVAL                         R17 5
      160 GETTABLEKS                       R17 R17 K20 ["createElement"]
      162 GETUPVAL                         R18 9
      163 CALL                             R17 1 1
      164 SETTABLEKS                       R17 R16 K59 ["App"]
      166 CALL                             R13 3 1
      167 SETTABLEKS                       R13 R12 K54 ["Provider"]
      169 JUMP                             ; [+8]
      170 DUPTABLE                         R12 K60 [{"App"}]
      171 GETUPVAL                         R13 5
      172 GETTABLEKS                       R13 R13 K20 ["createElement"]
      174 GETUPVAL                         R14 9
      175 CALL                             R13 1 1
      176 SETTABLEKS                       R13 R12 K59 ["App"]
      178 CALL                             R9 3 1
      179 SETTABLEKS                       R9 R8 K18 ["MainWidget"]
      181 LOADB                            R9 1
      182 CALL                             R6 3 -1
      183 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["Components"]
       30 GETTABLEKS                       R4 R4 K10 ["FoundationProviderAdapter"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R6 R6 K11 ["Framework"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K5 ["Packages"]
       43 GETTABLEKS                       R7 R7 K12 ["MaterialFramework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R5 K13 ["UI"]
       48 GETTABLEKS                       R8 R7 K14 ["DockWidget"]
       50 GETTABLEKS                       R9 R5 K15 ["ContextServices"]
       52 GETTABLEKS                       R10 R9 K16 ["Plugin"]
       54 GETTABLEKS                       R11 R9 K17 ["Mouse"]
       56 GETTABLEKS                       R12 R9 K18 ["Design"]
       58 GETTABLEKS                       R13 R5 K19 ["Styling"]
       60 GETTABLEKS                       R13 R13 K20 ["registerPluginStyles"]
       62 GETTABLEKS                       R14 R6 K21 ["Context"]
       64 GETTABLEKS                       R14 R14 K22 ["StudioServices"]
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K23 ["Src"]
       70 GETTABLEKS                       R16 R16 K24 ["Resources"]
       72 GETTABLEKS                       R16 R16 K25 ["MakeTheme"]
       74 CALL                             R15 1 1
       75 GETTABLEKS                       R16 R0 K23 ["Src"]
       77 GETTABLEKS                       R16 R16 K24 ["Resources"]
       79 GETTABLEKS                       R16 R16 K26 ["Localization"]
       81 GETTABLEKS                       R16 R16 K27 ["SourceStrings"]
       83 GETTABLEKS                       R17 R0 K23 ["Src"]
       85 GETTABLEKS                       R17 R17 K24 ["Resources"]
       87 GETTABLEKS                       R17 R17 K26 ["Localization"]
       89 GETTABLEKS                       R17 R17 K28 ["LocalizedStrings"]
       91 GETTABLEKS                       R18 R0 K23 ["Src"]
       93 GETTABLEKS                       R18 R18 K9 ["Components"]
       95 GETIMPORT                        R19 K4 [require]
       97 GETTABLEKS                       R20 R18 K29 ["App"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R20 R0 K23 ["Src"]
      102 GETTABLEKS                       R20 R20 K30 ["Controllers"]
      104 GETIMPORT                        R21 K4 [require]
      106 GETTABLEKS                       R22 R20 K31 ["ShortcutController"]
      108 CALL                             R21 1 1
      109 GETIMPORT                        R22 K4 [require]
      111 GETTABLEKS                       R23 R20 K32 ["PluginController"]
      113 CALL                             R22 1 1
      114 GETIMPORT                        R23 K4 [require]
      116 GETTABLEKS                       R24 R20 K33 ["ToolController"]
      118 CALL                             R23 1 1
      119 GETIMPORT                        R24 K4 [require]
      121 GETTABLEKS                       R25 R0 K23 ["Src"]
      123 GETTABLEKS                       R25 R25 K24 ["Resources"]
      125 GETTABLEKS                       R25 R25 K34 ["AnalyticsHandlers"]
      127 CALL                             R24 1 1
      128 GETIMPORT                        R25 K4 [require]
      130 GETTABLEKS                       R26 R0 K23 ["Src"]
      132 GETTABLEKS                       R26 R26 K35 ["Types"]
      134 CALL                             R25 1 1
      135 GETTABLEKS                       R26 R25 K36 ["Tool"]
      137 GETIMPORT                        R27 K4 [require]
      139 GETTABLEKS                       R28 R0 K23 ["Src"]
      141 GETTABLEKS                       R28 R28 K37 ["Flags"]
      143 GETTABLEKS                       R28 R28 K38 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      145 CALL                             R27 1 1
      146 GETTABLEKS                       R28 R1 K39 ["PureComponent"]
      148 LOADK                            R30 K40 ["MainPlugin"]
      149 NAMECALL                         R28 R28 K41 ["extend"]
      151 CALL                             R28 2 1
      152 DUPCLOSURE                       R29 K42 [PROTO_7]
      153 CAPTURE                          VAL R26
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R13
      168 SETTABLEKS                       R29 R28 K43 ["init"]
      170 DUPCLOSURE                       R29 K44 [PROTO_8]
      171 SETTABLEKS                       R29 R28 K45 ["didUpdate"]
      173 DUPCLOSURE                       R29 K46 [PROTO_9]
      174 SETTABLEKS                       R29 R28 K47 ["willUnmount"]
      176 DUPCLOSURE                       R29 K48 [PROTO_10]
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R27
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R19
      187 SETTABLEKS                       R29 R28 K49 ["render"]
      189 RETURN                           R28 1
