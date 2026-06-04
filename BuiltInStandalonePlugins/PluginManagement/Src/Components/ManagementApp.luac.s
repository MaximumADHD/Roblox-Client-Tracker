PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["enabled"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["enabled"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButton"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["enabled"]
       12 NAMECALL                         R0 R0 K5 ["SetActive"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["props"]
       18 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       20 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["toggleState"]
       25 NAMECALL                         R0 R0 K8 ["Connect"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"enabled", "DEPRECATED_killDockWidget"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["enabled"]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["DEPRECATED_killDockWidget"]
        8 NAMECALL                         R1 R1 K3 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 LOADB                            R2 0
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+17]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K2 ["PluginLoaderContext"]
       12 JUMPIFNOT                        R3 ; [+12]
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K2 ["PluginLoaderContext"]
       17 GETTABLEKS                       R3 R3 K3 ["mainDockWidget"]
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+3]
       22 GETTABLEKS                       R4 R3 K4 ["Enabled"]
       24 MOVE                             R2 R4
       25 DUPTABLE                         R3 K7 [{"enabled", "DEPRECATED_killDockWidget"}]
       26 SETTABLEKS                       R2 R3 K5 ["enabled"]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R3 K6 ["DEPRECATED_killDockWidget"]
       31 SETTABLEKS                       R3 R0 K8 ["state"]
       33 GETUPVAL                         R3 0
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+62]
       36 GETTABLEKS                       R3 R0 K0 ["props"]
       38 GETTABLEKS                       R3 R3 K9 ["localization"]
       40 SETTABLEKS                       R3 R0 K9 ["localization"]
       42 GETTABLEKS                       R3 R0 K0 ["props"]
       44 GETTABLEKS                       R3 R3 K10 ["theme"]
       46 SETTABLEKS                       R3 R0 K10 ["theme"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K11 ["Plugin"]
       51 GETTABLEKS                       R3 R3 K12 ["new"]
       53 GETTABLEKS                       R4 R0 K0 ["props"]
       55 GETTABLEKS                       R4 R4 K1 ["plugin"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R0 K13 ["pluginContext"]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K12 ["new"]
       63 GETTABLEKS                       R4 R0 K0 ["props"]
       65 GETTABLEKS                       R4 R4 K14 ["api"]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R0 K15 ["apiContext"]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K16 ["Store"]
       73 GETTABLEKS                       R3 R3 K12 ["new"]
       75 GETTABLEKS                       R4 R0 K0 ["props"]
       77 GETTABLEKS                       R4 R4 K17 ["store"]
       79 CALL                             R3 1 1
       80 SETTABLEKS                       R3 R0 K18 ["storeContext"]
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R3 R3 K19 ["Mouse"]
       85 GETTABLEKS                       R3 R3 K12 ["new"]
       87 GETTABLEKS                       R4 R0 K0 ["props"]
       89 GETTABLEKS                       R4 R4 K1 ["plugin"]
       91 NAMECALL                         R4 R4 K20 ["GetMouse"]
       93 CALL                             R4 1 -1
       94 CALL                             R3 -1 1
       95 SETTABLEKS                       R3 R0 K21 ["mouseContext"]
       97 JUMP                             ; [+31]
       98 GETTABLEKS                       R3 R0 K0 ["props"]
      100 GETTABLEKS                       R3 R3 K9 ["localization"]
      102 JUMPIF                           R3 ; [+16]
      103 GETUPVAL                         R3 1
      104 GETTABLEKS                       R3 R3 K22 ["Localization"]
      106 GETTABLEKS                       R3 R3 K12 ["new"]
      108 DUPTABLE                         R4 K26 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      109 GETUPVAL                         R5 3
      110 SETTABLEKS                       R5 R4 K23 ["stringResourceTable"]
      112 GETUPVAL                         R5 4
      113 SETTABLEKS                       R5 R4 K24 ["translationResourceTable"]
      115 LOADK                            R5 K27 ["PluginInstallation"]
      116 SETTABLEKS                       R5 R4 K25 ["pluginName"]
      118 CALL                             R3 1 1
      119 SETTABLEKS                       R3 R0 K9 ["localization"]
      121 GETTABLEKS                       R3 R0 K0 ["props"]
      123 GETTABLEKS                       R3 R3 K10 ["theme"]
      125 JUMPIF                           R3 ; [+1]
      126 GETUPVAL                         R3 5
      127 SETTABLEKS                       R3 R0 K10 ["theme"]
      129 NEWCLOSURE                       R3 P0
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R3 R0 K28 ["toggleState"]
      133 NEWCLOSURE                       R3 P1
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R3 R0 K29 ["onClose"]
      137 NEWCLOSURE                       R3 P2
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R3 R0 K30 ["onWidgetEnabledChanged"]
      141 GETUPVAL                         R3 0
      142 CALL                             R3 0 1
      143 JUMPIFNOT                        R3 ; [+5]
      144 NEWCLOSURE                       R3 P3
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R3 R0 K31 ["onDockWidgetCreated"]
      148 RETURN                           R0 0
      149 GETTABLEKS                       R3 R0 K0 ["props"]
      151 GETTABLEKS                       R3 R3 K1 ["plugin"]
      153 GETTABLEKS                       R3 R3 K32 ["MultipleDocumentInterfaceInstance"]
      155 GETTABLEKS                       R3 R3 K33 ["DataModelSessionEnded"]
      157 NEWCLOSURE                       R5 P4
      158 CAPTURE                          VAL R0
      159 NAMECALL                         R3 R3 K34 ["Connect"]
      161 CALL                             R3 2 0
      162 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 DUPTABLE                         R2 K2 [{"DEPRECATED_killDockWidget"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["DEPRECATED_killDockWidget"]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K9 [{"Toolbar", "Active", "Title", "OnClick"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K10 ["luaManagePluginsButton"]
       15 SETTABLEKS                       R7 R6 K7 ["Title"]
       17 GETTABLEKS                       R7 R0 K11 ["toggleState"]
       19 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       24 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["enabled"]
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+117]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["provide"]
       12 NEWTABLE                         R4 0 3
       14 GETTABLEKS                       R5 R0 K4 ["pluginContext"]
       16 GETTABLEKS                       R6 R0 K5 ["apiContext"]
       18 GETTABLEKS                       R7 R1 K6 ["pluginManagementApi"]
       20 SETLIST                          R4 R5 3 [1]
       22 DUPTABLE                         R5 K8 [{"MainWidget"}]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K9 ["createElement"]
       26 GETUPVAL                         R7 3
       27 NEWTABLE                         R8 16 0
       29 LOADK                            R9 K10 ["PluginManagement"]
       30 SETTABLEKS                       R9 R8 K11 ["Id"]
       32 GETTABLEKS                       R9 R0 K12 ["localization"]
       34 LOADK                            R11 K13 ["Manage"]
       35 LOADK                            R12 K14 ["WindowTitle"]
       36 NAMECALL                         R9 R9 K15 ["getText"]
       38 CALL                             R9 3 1
       39 SETTABLEKS                       R9 R8 K16 ["Title"]
       41 SETTABLEKS                       R2 R8 K17 ["Enabled"]
       43 GETTABLEKS                       R9 R1 K18 ["PluginLoaderContext"]
       45 GETTABLEKS                       R9 R9 K19 ["mainDockWidget"]
       47 SETTABLEKS                       R9 R8 K20 ["Widget"]
       49 GETIMPORT                        R9 K23 [Vector2.new]
       51 LOADN                            R10 88
       52 LOADN                            R11 48
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K24 ["Size"]
       56 GETIMPORT                        R9 K23 [Vector2.new]
       58 LOADN                            R10 88
       59 LOADN                            R11 180
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K25 ["MinSize"]
       63 GETIMPORT                        R9 K29 [Enum.ZIndexBehavior.Sibling]
       65 SETTABLEKS                       R9 R8 K27 ["ZIndexBehavior"]
       67 GETIMPORT                        R9 K32 [Enum.InitialDockState.Float]
       69 SETTABLEKS                       R9 R8 K30 ["InitialDockState"]
       71 LOADB                            R9 0
       72 SETTABLEKS                       R9 R8 K33 ["ShouldRestore"]
       74 GETTABLEKS                       R9 R0 K34 ["onDockWidgetCreated"]
       76 SETTABLEKS                       R9 R8 K35 ["OnWidgetCreated"]
       78 GETTABLEKS                       R9 R0 K36 ["onClose"]
       80 SETTABLEKS                       R9 R8 K37 ["OnClose"]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K38 ["Change"]
       85 GETTABLEKS                       R9 R9 K17 ["Enabled"]
       87 GETTABLEKS                       R10 R0 K39 ["onWidgetEnabledChanged"]
       89 SETTABLE                         R10 R8 R9
       90 DUPTABLE                         R9 K41 [{"MainProvider"}]
       91 MOVE                             R10 R2
       92 JUMPIFNOT                        R10 ; [+26]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K3 ["provide"]
       96 NEWTABLE                         R11 0 5
       98 GETTABLEKS                       R12 R0 K12 ["localization"]
      100 GETTABLEKS                       R13 R0 K42 ["theme"]
      102 GETTABLEKS                       R14 R0 K43 ["storeContext"]
      104 GETTABLEKS                       R15 R0 K44 ["mouseContext"]
      106 GETTABLEKS                       R16 R1 K45 ["analytics"]
      108 SETLIST                          R11 R12 5 [1]
      110 DUPTABLE                         R12 K47 [{"MainView"}]
      111 GETUPVAL                         R13 2
      112 GETTABLEKS                       R13 R13 K9 ["createElement"]
      114 GETUPVAL                         R14 4
      115 CALL                             R13 1 1
      116 SETTABLEKS                       R13 R12 K46 ["MainView"]
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K40 ["MainProvider"]
      121 CALL                             R6 3 1
      122 SETTABLEKS                       R6 R5 K7 ["MainWidget"]
      124 CALL                             R3 2 -1
      125 RETURN                           R3 -1
      126 GETTABLEKS                       R3 R1 K48 ["plugin"]
      128 GETTABLEKS                       R4 R1 K49 ["store"]
      130 GETTABLEKS                       R5 R1 K50 ["api"]
      132 GETTABLEKS                       R6 R1 K45 ["analytics"]
      134 GETUPVAL                         R7 1
      135 GETTABLEKS                       R7 R7 K3 ["provide"]
      137 NEWTABLE                         R8 0 3
      139 GETUPVAL                         R9 1
      140 GETTABLEKS                       R9 R9 K51 ["Plugin"]
      142 GETTABLEKS                       R9 R9 K22 ["new"]
      144 MOVE                             R10 R3
      145 CALL                             R9 1 1
      146 GETUPVAL                         R10 5
      147 GETTABLEKS                       R10 R10 K22 ["new"]
      149 MOVE                             R11 R5
      150 CALL                             R10 1 1
      151 GETTABLEKS                       R11 R1 K6 ["pluginManagementApi"]
      153 SETLIST                          R8 R9 3 [1]
      155 DUPTABLE                         R9 K53 [{"Toolbar", "MainWidget"}]
      156 GETUPVAL                         R10 2
      157 GETTABLEKS                       R10 R10 K9 ["createElement"]
      159 GETUPVAL                         R11 6
      160 DUPTABLE                         R12 K55 [{"Title", "RenderButtons"}]
      161 LOADK                            R13 K56 ["luaManagePluginsToolbar"]
      162 SETTABLEKS                       R13 R12 K16 ["Title"]
      164 NEWCLOSURE                       R13 P0
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R13 R12 K54 ["RenderButtons"]
      168 CALL                             R10 2 1
      169 SETTABLEKS                       R10 R9 K52 ["Toolbar"]
      171 GETTABLEKS                       R11 R0 K1 ["state"]
      173 GETTABLEKS                       R11 R11 K57 ["DEPRECATED_killDockWidget"]
      175 NOT                              R10 R11
      176 JUMPIFNOT                        R10 ; [+100]
      177 GETUPVAL                         R10 2
      178 GETTABLEKS                       R10 R10 K9 ["createElement"]
      180 GETUPVAL                         R11 3
      181 NEWTABLE                         R12 16 0
      183 LOADK                            R13 K10 ["PluginManagement"]
      184 SETTABLEKS                       R13 R12 K11 ["Id"]
      186 SETTABLEKS                       R2 R12 K17 ["Enabled"]
      188 GETTABLEKS                       R13 R0 K12 ["localization"]
      190 LOADK                            R15 K13 ["Manage"]
      191 LOADK                            R16 K14 ["WindowTitle"]
      192 NAMECALL                         R13 R13 K15 ["getText"]
      194 CALL                             R13 3 1
      195 SETTABLEKS                       R13 R12 K16 ["Title"]
      197 GETIMPORT                        R13 K29 [Enum.ZIndexBehavior.Sibling]
      199 SETTABLEKS                       R13 R12 K27 ["ZIndexBehavior"]
      201 GETIMPORT                        R13 K32 [Enum.InitialDockState.Float]
      203 SETTABLEKS                       R13 R12 K30 ["InitialDockState"]
      205 GETIMPORT                        R13 K23 [Vector2.new]
      207 LOADN                            R14 88
      208 LOADN                            R15 48
      209 CALL                             R13 2 1
      210 SETTABLEKS                       R13 R12 K24 ["Size"]
      212 GETIMPORT                        R13 K23 [Vector2.new]
      214 LOADN                            R14 88
      215 LOADN                            R15 180
      216 CALL                             R13 2 1
      217 SETTABLEKS                       R13 R12 K25 ["MinSize"]
      219 GETTABLEKS                       R13 R0 K36 ["onClose"]
      221 SETTABLEKS                       R13 R12 K37 ["OnClose"]
      223 LOADB                            R13 0
      224 SETTABLEKS                       R13 R12 K33 ["ShouldRestore"]
      226 GETUPVAL                         R13 2
      227 GETTABLEKS                       R13 R13 K38 ["Change"]
      229 GETTABLEKS                       R13 R13 K17 ["Enabled"]
      231 GETTABLEKS                       R14 R0 K39 ["onWidgetEnabledChanged"]
      233 SETTABLE                         R14 R12 R13
      234 DUPTABLE                         R13 K41 [{"MainProvider"}]
      235 MOVE                             R14 R2
      236 JUMPIFNOT                        R14 ; [+37]
      237 GETUPVAL                         R14 1
      238 GETTABLEKS                       R14 R14 K3 ["provide"]
      240 NEWTABLE                         R15 0 5
      242 GETTABLEKS                       R16 R0 K12 ["localization"]
      244 GETTABLEKS                       R17 R0 K42 ["theme"]
      246 GETUPVAL                         R18 1
      247 GETTABLEKS                       R18 R18 K58 ["Store"]
      249 GETTABLEKS                       R18 R18 K22 ["new"]
      251 MOVE                             R19 R4
      252 CALL                             R18 1 1
      253 GETUPVAL                         R19 1
      254 GETTABLEKS                       R19 R19 K59 ["Mouse"]
      256 GETTABLEKS                       R19 R19 K22 ["new"]
      258 NAMECALL                         R20 R3 K60 ["GetMouse"]
      260 CALL                             R20 1 -1
      261 CALL                             R19 -1 1
      262 MOVE                             R20 R6
      263 SETLIST                          R15 R16 5 [1]
      265 DUPTABLE                         R16 K47 [{"MainView"}]
      266 GETUPVAL                         R17 2
      267 GETTABLEKS                       R17 R17 K9 ["createElement"]
      269 GETUPVAL                         R18 4
      270 CALL                             R17 1 1
      271 SETTABLEKS                       R17 R16 K46 ["MainView"]
      273 CALL                             R14 2 1
      274 SETTABLEKS                       R14 R13 K40 ["MainProvider"]
      276 CALL                             R10 3 1
      277 SETTABLEKS                       R10 R9 K7 ["MainWidget"]
      279 CALL                             R7 2 -1
      280 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioLazyPluginManagement"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 MOVE                             R4 R1
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 LOADNIL                          R3
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R3 K4 [require]
       32 GETTABLEKS                       R4 R0 K5 ["Src"]
       34 GETTABLEKS                       R4 R4 K10 ["Components"]
       36 GETTABLEKS                       R4 R4 K11 ["ManagementMainView"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K4 [require]
       41 GETTABLEKS                       R5 R0 K5 ["Src"]
       43 GETTABLEKS                       R5 R5 K10 ["Components"]
       45 GETTABLEKS                       R5 R5 K12 ["Navigation"]
       47 GETTABLEKS                       R5 R5 K13 ["NavigationContainer"]
       49 CALL                             R4 1 1
       50 GETIMPORT                        R5 K4 [require]
       52 GETTABLEKS                       R6 R0 K8 ["Packages"]
       54 GETTABLEKS                       R6 R6 K14 ["Framework"]
       56 CALL                             R5 1 1
       57 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K5 ["Src"]
       63 GETTABLEKS                       R8 R8 K15 ["ContextServices"]
       65 GETTABLEKS                       R8 R8 K16 ["PluginAPI2"]
       67 CALL                             R7 1 1
       68 MOVE                             R9 R1
       69 CALL                             R9 0 1
       70 JUMPIFNOT                        R9 ; [+2]
       71 LOADNIL                          R8
       72 JUMP                             ; [+9]
       73 GETIMPORT                        R8 K4 [require]
       75 GETTABLEKS                       R9 R0 K5 ["Src"]
       77 GETTABLEKS                       R9 R9 K17 ["Util"]
       79 GETTABLEKS                       R9 R9 K18 ["Constants"]
       81 CALL                             R8 1 1
       82 GETTABLEKS                       R9 R5 K19 ["UI"]
       84 GETTABLEKS                       R10 R9 K20 ["DockWidget"]
       86 MOVE                             R12 R1
       87 CALL                             R12 0 1
       88 JUMPIFNOT                        R12 ; [+2]
       89 LOADNIL                          R11
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R11 R9 K21 ["PluginButton"]
       93 MOVE                             R13 R1
       94 CALL                             R13 0 1
       95 JUMPIFNOT                        R13 ; [+2]
       96 LOADNIL                          R12
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R12 R9 K22 ["PluginToolbar"]
      100 MOVE                             R14 R1
      101 CALL                             R14 0 1
      102 JUMPIFNOT                        R14 ; [+2]
      103 LOADNIL                          R13
      104 JUMP                             ; [+6]
      105 GETTABLEKS                       R13 R0 K5 ["Src"]
      107 GETTABLEKS                       R13 R13 K23 ["Resources"]
      109 GETTABLEKS                       R13 R13 K24 ["SourceStrings"]
      111 MOVE                             R15 R1
      112 CALL                             R15 0 1
      113 JUMPIFNOT                        R15 ; [+2]
      114 LOADNIL                          R14
      115 JUMP                             ; [+6]
      116 GETTABLEKS                       R14 R0 K5 ["Src"]
      118 GETTABLEKS                       R14 R14 K23 ["Resources"]
      120 GETTABLEKS                       R14 R14 K25 ["LocalizedStrings"]
      122 MOVE                             R16 R1
      123 CALL                             R16 0 1
      124 JUMPIFNOT                        R16 ; [+2]
      125 LOADNIL                          R15
      126 JUMP                             ; [+9]
      127 GETIMPORT                        R15 K4 [require]
      129 GETTABLEKS                       R16 R0 K5 ["Src"]
      131 GETTABLEKS                       R16 R16 K23 ["Resources"]
      133 GETTABLEKS                       R16 R16 K26 ["makeTheme"]
      135 CALL                             R15 1 1
      136 GETTABLEKS                       R16 R2 K27 ["PureComponent"]
      138 LOADK                            R18 K28 ["ManagementApp"]
      139 NAMECALL                         R16 R16 K29 ["extend"]
      141 CALL                             R16 2 1
      142 DUPCLOSURE                       R17 K30 [PROTO_5]
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R15
      149 SETTABLEKS                       R17 R16 K31 ["init"]
      151 MOVE                             R17 R1
      152 CALL                             R17 0 1
      153 JUMPIF                           R17 ; [+8]
      154 DUPCLOSURE                       R17 K32 [PROTO_6]
      155 SETTABLEKS                       R17 R16 K33 ["getDerivedStateFromProps"]
      157 DUPCLOSURE                       R17 K34 [PROTO_7]
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R11
      160 SETTABLEKS                       R17 R16 K35 ["renderButtons"]
      162 MOVE                             R17 R1
      163 CALL                             R17 0 1
      164 JUMPIFNOT                        R17 ; [+3]
      165 DUPCLOSURE                       R17 K36 [PROTO_8]
      166 SETTABLEKS                       R17 R16 K37 ["didUpdate"]
      168 DUPCLOSURE                       R17 K38 [PROTO_10]
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R12
      176 SETTABLEKS                       R17 R16 K39 ["render"]
      178 RETURN                           R16 1
