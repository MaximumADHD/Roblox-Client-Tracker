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
      180 JUMPIF                           R4 ; [+3]
      181 GETUPVAL                         R4 13
      182 CALL                             R4 0 1
      183 JUMPIFNOT                        R4 ; [+21]
      184 GETUPVAL                         R4 14
      185 GETTABLEKS                       R4 R4 K38 ["Util"]
      187 GETTABLEKS                       R4 R4 K39 ["createFoundationDesignBinding"]
      189 CALL                             R4 0 2
      190 SETTABLEKS                       R5 R0 K40 ["onFoundationStyleSheetChange"]
      192 GETUPVAL                         R6 15
      193 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      195 LOADNIL                          R8
      196 LOADNIL                          R9
      197 NEWTABLE                         R10 0 1
      199 MOVE                             R11 R4
      200 SETLIST                          R10 R11 1 [1]
      202 CALL                             R6 4 1
      203 SETTABLEKS                       R6 R0 K41 ["design"]
      205 RETURN                           R0 0

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
       40 JUMPIF                           R6 ; [+3]
       41 GETUPVAL                         R6 3
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+11]
       44 MOVE                             R7 R5
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K4 ["new"]
       48 GETTABLEKS                       R9 R0 K13 ["design"]
       50 CALL                             R8 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R6 K16 [table.insert]
       54 CALL                             R6 -1 0
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K17 ["provide"]
       58 MOVE                             R7 R5
       59 DUPTABLE                         R8 K19 [{"MainWidget"}]
       60 GETUPVAL                         R9 6
       61 GETTABLEKS                       R9 R9 K20 ["createElement"]
       63 GETUPVAL                         R10 7
       64 NEWTABLE                         R11 16 0
       66 LOADK                            R12 K21 ["TerrainEditor"]
       67 SETTABLEKS                       R12 R11 K22 ["Id"]
       69 SETTABLEKS                       R4 R11 K23 ["Enabled"]
       71 GETTABLEKS                       R12 R0 K7 ["localization"]
       73 LOADK                            R14 K2 ["Plugin"]
       74 LOADK                            R15 K24 ["Name"]
       75 NAMECALL                         R12 R12 K25 ["getText"]
       77 CALL                             R12 3 1
       78 SETTABLEKS                       R12 R11 K26 ["Title"]
       80 GETIMPORT                        R12 K30 [Enum.ZIndexBehavior.Sibling]
       82 SETTABLEKS                       R12 R11 K28 ["ZIndexBehavior"]
       84 GETIMPORT                        R12 K33 [Enum.InitialDockState.Left]
       86 SETTABLEKS                       R12 R11 K31 ["InitialDockState"]
       88 GETIMPORT                        R12 K35 [Vector2.new]
       90 LOADN                            R13 640
       91 LOADN                            R14 480
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K36 ["Size"]
       95 GETIMPORT                        R12 K35 [Vector2.new]
       97 LOADN                            R13 350
       98 LOADN                            R14 200
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K37 ["MinSize"]
      102 GETTABLEKS                       R12 R0 K38 ["onClose"]
      104 SETTABLEKS                       R12 R11 K39 ["OnClose"]
      106 LOADB                            R12 1
      107 SETTABLEKS                       R12 R11 K40 ["ShouldRestore"]
      109 GETTABLEKS                       R12 R0 K41 ["onCreated"]
      111 SETTABLEKS                       R12 R11 K42 ["OnWidgetCreated"]
      113 GETTABLEKS                       R12 R0 K43 ["onFocused"]
      115 SETTABLEKS                       R12 R11 K44 ["OnWidgetFocused"]
      117 GETTABLEKS                       R12 R0 K45 ["onUnfocused"]
      119 SETTABLEKS                       R12 R11 K46 ["OnWidgetFocusReleased"]
      121 GETTABLEKS                       R12 R0 K47 ["onRestore"]
      123 SETTABLEKS                       R12 R11 K48 ["OnWidgetRestored"]
      125 GETTABLEKS                       R13 R0 K0 ["props"]
      127 GETTABLEKS                       R13 R13 K49 ["PluginLoaderContext"]
      129 JUMPIFNOT                        R13 ; [+7]
      130 GETTABLEKS                       R12 R0 K0 ["props"]
      132 GETTABLEKS                       R12 R12 K49 ["PluginLoaderContext"]
      134 GETTABLEKS                       R12 R12 K50 ["mainDockWidget"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R12
      138 SETTABLEKS                       R12 R11 K51 ["Widget"]
      140 GETUPVAL                         R12 8
      141 GETTABLEKS                       R12 R12 K52 ["Change"]
      143 GETTABLEKS                       R12 R12 K23 ["Enabled"]
      145 GETTABLEKS                       R13 R0 K53 ["onWidgetEnabledChanged"]
      147 SETTABLE                         R13 R11 R12
      148 GETUPVAL                         R13 2
      149 CALL                             R13 0 1
      150 JUMPIF                           R13 ; [+3]
      151 GETUPVAL                         R13 3
      152 CALL                             R13 0 1
      153 JUMPIFNOT                        R13 ; [+22]
      154 DUPTABLE                         R12 K55 [{"Provider"}]
      155 GETUPVAL                         R13 6
      156 GETTABLEKS                       R13 R13 K20 ["createElement"]
      158 GETUPVAL                         R14 9
      159 DUPTABLE                         R15 K57 [{"onStyleSheetChange"}]
      160 GETTABLEKS                       R16 R0 K58 ["onFoundationStyleSheetChange"]
      162 SETTABLEKS                       R16 R15 K56 ["onStyleSheetChange"]
      164 DUPTABLE                         R16 K60 [{"App"}]
      165 GETUPVAL                         R17 6
      166 GETTABLEKS                       R17 R17 K20 ["createElement"]
      168 GETUPVAL                         R18 10
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K59 ["App"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K54 ["Provider"]
      175 JUMP                             ; [+8]
      176 DUPTABLE                         R12 K60 [{"App"}]
      177 GETUPVAL                         R13 6
      178 GETTABLEKS                       R13 R13 K20 ["createElement"]
      180 GETUPVAL                         R14 10
      181 CALL                             R13 1 1
      182 SETTABLEKS                       R13 R12 K59 ["App"]
      184 CALL                             R9 3 1
      185 SETTABLEKS                       R9 R8 K18 ["MainWidget"]
      187 LOADB                            R9 1
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

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
      143 GETTABLEKS                       R28 R28 K38 ["getFFlagEnableTerrainPalette"]
      145 CALL                             R27 1 1
      146 GETIMPORT                        R28 K4 [require]
      148 GETTABLEKS                       R29 R0 K23 ["Src"]
      150 GETTABLEKS                       R29 R29 K37 ["Flags"]
      152 GETTABLEKS                       R29 R29 K39 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      154 CALL                             R28 1 1
      155 GETTABLEKS                       R29 R1 K40 ["PureComponent"]
      157 LOADK                            R31 K41 ["MainPlugin"]
      158 NAMECALL                         R29 R29 K42 ["extend"]
      160 CALL                             R29 2 1
      161 DUPCLOSURE                       R30 K43 [PROTO_7]
      162 CAPTURE                          VAL R26
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R28
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R13
      178 SETTABLEKS                       R30 R29 K44 ["init"]
      180 DUPCLOSURE                       R30 K45 [PROTO_8]
      181 SETTABLEKS                       R30 R29 K46 ["didUpdate"]
      183 DUPCLOSURE                       R30 K47 [PROTO_9]
      184 SETTABLEKS                       R30 R29 K48 ["willUnmount"]
      186 DUPCLOSURE                       R30 K49 [PROTO_10]
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R19
      198 SETTABLEKS                       R30 R29 K50 ["render"]
      200 RETURN                           R29 1
