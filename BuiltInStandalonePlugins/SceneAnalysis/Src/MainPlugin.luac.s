PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K2 ["hookHeartbeat"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K3 ["unhookHeartbeat"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K3 ["hookHeartbeat"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R1 R1 K4 ["hookHeartbeat"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClose"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onDockWidgetCreated"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K8 ["Localization"]
       29 GETTABLEKS                       R2 R3 K9 ["new"]
       31 DUPTABLE                         R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       32 GETUPVAL                         R4 1
       33 SETTABLEKS                       R4 R3 K10 ["stringResourceTable"]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       38 LOADK                            R4 K14 ["SceneAnalysis"]
       39 SETTABLEKS                       R4 R3 K12 ["pluginName"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R0 K15 ["localization"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R3 R4 K16 ["Analytics"]
       47 GETTABLEKS                       R2 R3 K9 ["new"]
       49 DUPCLOSURE                       R3 K17 [PROTO_6]
       50 NEWTABLE                         R4 0 0
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R0 K18 ["analytics"]
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R2 R3 K19 ["createRef"]
       58 CALL                             R2 0 1
       59 SETTABLEKS                       R2 R0 K20 ["treemapRef"]
       61 LOADN                            R2 0
       62 SETTABLEKS                       R2 R0 K21 ["timeOfNextAutomaticUpdate"]
       64 LOADN                            R2 1
       65 SETTABLEKS                       R2 R0 K22 ["delayBetweenAutomaticUpdates"]
       67 NAMECALL                         R2 R0 K23 ["hookHeartbeat"]
       69 CALL                             R2 1 0
       70 GETUPVAL                         R3 4
       71 GETTABLEKS                       R2 R3 K9 ["new"]
       73 CALL                             R2 0 1
       74 SETTABLEKS                       R2 R0 K24 ["DEPRECATED_stylizer"]
       76 GETUPVAL                         R2 5
       77 GETTABLEKS                       R3 R1 K25 ["Plugin"]
       79 CALL                             R2 1 1
       80 SETTABLEKS                       R2 R0 K26 ["design"]
       82 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K2 ["timeOfNextAutomaticUpdate"]
        6 JUMPIFNOTLT                      R1 R0 ; [+40]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["state"]
       11 GETTABLEKS                       R0 R1 K4 ["enabled"]
       13 JUMPIFNOT                        R0 ; [+33]
       14 GETUPVAL                         R0 0
       15 GETIMPORT                        R2 K1 [tick]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K5 ["delayBetweenAutomaticUpdates"]
       21 ADD                              R1 R2 R3
       22 SETTABLEKS                       R1 R0 K2 ["timeOfNextAutomaticUpdate"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K6 ["treemapRef"]
       27 JUMPIFNOTEQKNIL                  R0 ; [+2]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K6 ["treemapRef"]
       33 NAMECALL                         R0 R0 K7 ["getValue"]
       35 CALL                             R0 1 1
       36 JUMPIFNOTEQKNIL                  R0 ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 1
       40 NAMECALL                         R1 R1 K8 ["GetData1"]
       42 CALL                             R1 1 1
       43 MOVE                             R4 R1
       44 NAMECALL                         R2 R0 K9 ["SubmitTreemapNodes"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["unhookHeartbeat"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R2 K2 [game]
        5 LOADK                            R4 K3 ["RunService"]
        6 NAMECALL                         R2 R2 K4 ["GetService"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R1 R2 K5 ["Heartbeat"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R1 R1 K6 ["Connect"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K7 ["heartbeatConnection"]
       19 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 4
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 SETLIST                          R6 R7 4 [1]
       31 DUPTABLE                         R7 K10 [{"MainWidget"}]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R8 R9 K11 ["createElement"]
       35 GETUPVAL                         R9 4
       36 NEWTABLE                         R10 16 0
       38 LOADK                            R11 K12 ["SceneAnalysis"]
       39 SETTABLEKS                       R11 R10 K13 ["Id"]
       41 SETTABLEKS                       R4 R10 K14 ["Enabled"]
       43 GETTABLEKS                       R11 R0 K7 ["localization"]
       45 LOADK                            R13 K2 ["Plugin"]
       46 LOADK                            R14 K15 ["Name"]
       47 NAMECALL                         R11 R11 K16 ["getText"]
       49 CALL                             R11 3 1
       50 SETTABLEKS                       R11 R10 K17 ["Title"]
       52 GETIMPORT                        R11 K21 [Enum.ZIndexBehavior.Sibling]
       54 SETTABLEKS                       R11 R10 K19 ["ZIndexBehavior"]
       56 GETIMPORT                        R11 K24 [Enum.InitialDockState.Bottom]
       58 SETTABLEKS                       R11 R10 K22 ["InitialDockState"]
       60 GETIMPORT                        R11 K26 [Vector2.new]
       62 LOADN                            R12 128
       63 LOADN                            R13 224
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K27 ["Size"]
       67 GETIMPORT                        R11 K26 [Vector2.new]
       69 LOADN                            R12 250
       70 LOADN                            R13 200
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K28 ["MinSize"]
       74 GETTABLEKS                       R11 R0 K29 ["onClose"]
       76 SETTABLEKS                       R11 R10 K30 ["OnClose"]
       78 GETTABLEKS                       R12 R1 K31 ["PluginLoaderContext"]
       80 GETTABLEKS                       R11 R12 K32 ["mainDockWidget"]
       82 SETTABLEKS                       R11 R10 K33 ["Widget"]
       84 GETTABLEKS                       R11 R0 K34 ["onDockWidgetCreated"]
       86 SETTABLEKS                       R11 R10 K35 ["OnWidgetCreated"]
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R12 R13 K36 ["Change"]
       91 GETTABLEKS                       R11 R12 K14 ["Enabled"]
       93 GETTABLEKS                       R12 R0 K37 ["onWidgetEnabledChanged"]
       95 SETTABLE                         R12 R10 R11
       96 DUPTABLE                         R11 K40 [{"Wrapper", "StyleLink"}]
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R12 R13 K11 ["createElement"]
      100 LOADK                            R13 K41 ["Frame"]
      101 NEWTABLE                         R14 1 0
      103 GETUPVAL                         R16 3
      104 GETTABLEKS                       R15 R16 K42 ["Tag"]
      106 LOADK                            R16 K43 ["X-Fill X-Column"]
      107 SETTABLE                         R16 R14 R15
      108 DUPTABLE                         R15 K47 [{"Layout", "DropdownFrame", "TreemapArea"}]
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R16 R17 K11 ["createElement"]
      112 LOADK                            R17 K48 ["UIListLayout"]
      113 DUPTABLE                         R18 K54 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      114 GETIMPORT                        R19 K56 [UDim.new]
      116 LOADN                            R20 0
      117 LOADN                            R21 0
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K49 ["Padding"]
      121 GETIMPORT                        R19 K58 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R19 R18 K50 ["FillDirection"]
      125 GETIMPORT                        R19 K60 [Enum.HorizontalAlignment.Left]
      127 SETTABLEKS                       R19 R18 K51 ["HorizontalAlignment"]
      129 GETIMPORT                        R19 K62 [Enum.VerticalAlignment.Top]
      131 SETTABLEKS                       R19 R18 K52 ["VerticalAlignment"]
      133 GETIMPORT                        R19 K64 [Enum.SortOrder.LayoutOrder]
      135 SETTABLEKS                       R19 R18 K53 ["SortOrder"]
      137 CALL                             R16 2 1
      138 SETTABLEKS                       R16 R15 K44 ["Layout"]
      140 GETUPVAL                         R17 3
      141 GETTABLEKS                       R16 R17 K11 ["createElement"]
      143 LOADK                            R17 K41 ["Frame"]
      144 DUPTABLE                         R18 K65 [{"Size", "LayoutOrder"}]
      145 GETIMPORT                        R19 K67 [UDim2.new]
      147 LOADN                            R20 1
      148 LOADN                            R21 0
      149 LOADN                            R22 0
      150 LOADN                            R23 60
      151 CALL                             R19 4 1
      152 SETTABLEKS                       R19 R18 K27 ["Size"]
      154 LOADN                            R19 1
      155 SETTABLEKS                       R19 R18 K63 ["LayoutOrder"]
      157 DUPTABLE                         R19 K69 [{"Label"}]
      158 GETUPVAL                         R21 3
      159 GETTABLEKS                       R20 R21 K11 ["createElement"]
      161 LOADK                            R21 K70 ["TextLabel"]
      162 DUPTABLE                         R22 K73 [{"Text", "TextSize", "Size"}]
      163 LOADK                            R23 K74 ["Dropdown Goes Here"]
      164 SETTABLEKS                       R23 R22 K71 ["Text"]
      166 LOADN                            R23 14
      167 SETTABLEKS                       R23 R22 K72 ["TextSize"]
      169 GETIMPORT                        R23 K67 [UDim2.new]
      171 LOADN                            R24 1
      172 LOADN                            R25 0
      173 LOADN                            R26 1
      174 LOADN                            R27 0
      175 CALL                             R23 4 1
      176 SETTABLEKS                       R23 R22 K27 ["Size"]
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K68 ["Label"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K45 ["DropdownFrame"]
      184 GETUPVAL                         R17 3
      185 GETTABLEKS                       R16 R17 K11 ["createElement"]
      187 LOADK                            R17 K41 ["Frame"]
      188 DUPTABLE                         R18 K65 [{"Size", "LayoutOrder"}]
      189 GETIMPORT                        R19 K67 [UDim2.new]
      191 LOADN                            R20 1
      192 LOADN                            R21 0
      193 LOADN                            R22 0
      194 LOADN                            R23 144
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K27 ["Size"]
      198 LOADN                            R19 2
      199 SETTABLEKS                       R19 R18 K63 ["LayoutOrder"]
      201 DUPTABLE                         R19 K76 [{"Treemap"}]
      202 GETUPVAL                         R21 3
      203 GETTABLEKS                       R20 R21 K11 ["createElement"]
      205 GETUPVAL                         R21 5
      206 DUPTABLE                         R22 K79 [{"Size", "Position", "ref"}]
      207 GETIMPORT                        R23 K67 [UDim2.new]
      209 LOADN                            R24 1
      210 LOADN                            R25 236
      211 LOADN                            R26 1
      212 LOADN                            R27 236
      213 CALL                             R23 4 1
      214 SETTABLEKS                       R23 R22 K27 ["Size"]
      216 GETIMPORT                        R23 K67 [UDim2.new]
      218 LOADN                            R24 0
      219 LOADN                            R25 10
      220 LOADN                            R26 0
      221 LOADN                            R27 10
      222 CALL                             R23 4 1
      223 SETTABLEKS                       R23 R22 K77 ["Position"]
      225 GETTABLEKS                       R23 R0 K80 ["treemapRef"]
      227 SETTABLEKS                       R23 R22 K78 ["ref"]
      229 CALL                             R20 2 1
      230 SETTABLEKS                       R20 R19 K75 ["Treemap"]
      232 CALL                             R16 3 1
      233 SETTABLEKS                       R16 R15 K46 ["TreemapArea"]
      235 CALL                             R12 3 1
      236 SETTABLEKS                       R12 R11 K38 ["Wrapper"]
      238 GETUPVAL                         R13 3
      239 GETTABLEKS                       R12 R13 K11 ["createElement"]
      241 LOADK                            R13 K39 ["StyleLink"]
      242 DUPTABLE                         R14 K82 [{"StyleSheet"}]
      243 GETTABLEKS                       R15 R0 K83 ["design"]
      245 SETTABLEKS                       R15 R14 K81 ["StyleSheet"]
      247 CALL                             R12 2 1
      248 SETTABLEKS                       R12 R11 K39 ["StyleLink"]
      250 CALL                             R8 3 1
      251 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      253 CALL                             R5 2 -1
      254 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R4 K10 ["DockWidget"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       29 GETTABLEKS                       R6 R4 K13 ["Mouse"]
       31 GETTABLEKS                       R9 R2 K14 ["Style"]
       33 GETTABLEKS                       R8 R9 K15 ["Themes"]
       35 GETTABLEKS                       R7 R8 K16 ["StudioTheme"]
       37 GETTABLEKS                       R9 R2 K17 ["Styling"]
       39 GETTABLEKS                       R8 R9 K18 ["registerPluginStyles"]
       41 GETTABLEKS                       R12 R0 K19 ["Src"]
       43 GETTABLEKS                       R11 R12 K20 ["Resources"]
       45 GETTABLEKS                       R10 R11 K21 ["Localization"]
       47 GETTABLEKS                       R9 R10 K22 ["SourceStrings"]
       49 GETTABLEKS                       R13 R0 K19 ["Src"]
       51 GETTABLEKS                       R12 R13 K20 ["Resources"]
       53 GETTABLEKS                       R11 R12 K21 ["Localization"]
       55 GETTABLEKS                       R10 R11 K23 ["LocalizedStrings"]
       57 GETTABLEKS                       R12 R0 K19 ["Src"]
       59 GETTABLEKS                       R11 R12 K24 ["Components"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R11 K25 ["Treemap"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R17 R0 K19 ["Src"]
       70 GETTABLEKS                       R16 R17 K24 ["Components"]
       72 GETTABLEKS                       R15 R16 K25 ["Treemap"]
       74 GETTABLEKS                       R14 R15 K26 ["TreemapMockData"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R18 R0 K19 ["Src"]
       81 GETTABLEKS                       R17 R18 K24 ["Components"]
       83 GETTABLEKS                       R16 R17 K25 ["Treemap"]
       85 GETTABLEKS                       R15 R16 K27 ["TreemapTypes"]
       87 CALL                             R14 1 1
       88 GETTABLEKS                       R15 R1 K28 ["PureComponent"]
       90 LOADK                            R17 K29 ["MainPlugin"]
       91 NAMECALL                         R15 R15 K30 ["extend"]
       93 CALL                             R15 2 1
       94 DUPCLOSURE                       R16 K31 [PROTO_7]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R16 R15 K32 ["init"]
      103 DUPCLOSURE                       R16 K33 [PROTO_8]
      104 SETTABLEKS                       R16 R15 K34 ["unhookHeartbeat"]
      106 DUPCLOSURE                       R16 K35 [PROTO_10]
      107 CAPTURE                          VAL R13
      108 SETTABLEKS                       R16 R15 K36 ["hookHeartbeat"]
      110 DUPCLOSURE                       R16 K37 [PROTO_11]
      111 SETTABLEKS                       R16 R15 K38 ["didUpdate"]
      113 DUPCLOSURE                       R16 K39 [PROTO_12]
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R12
      120 SETTABLEKS                       R16 R15 K40 ["render"]
      122 RETURN                           R15 1
