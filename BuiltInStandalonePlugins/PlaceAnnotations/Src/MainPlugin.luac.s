PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 GETTABLEKS                       R1 R0 K0 ["Checked"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K1 ["PluginOpenEvent"]
       14 GETUPVAL                         R6 5
       15 CALL                             R4 2 -1
       16 NAMECALL                         R1 R1 K2 ["logRobloxTelemetryEvent"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Checked"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["beginAddAnnotation"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["endAddAnnotation"]
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R2 R3 K1 ["PlaceIdKey"]
       12 LOADN                            R3 0
       13 NAMECALL                         R0 R0 K2 ["SetItem"]
       15 CALL                             R0 3 0
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K3 ["TCEnabledKey"]
       20 LOADB                            R3 0
       21 NAMECALL                         R0 R0 K2 ["SetItem"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 GETTABLEKS                       R1 R0 K1 ["Checked"]
       12 GETUPVAL                         R2 2
       13 JUMPIFEQ                         R1 R2 ; [+6]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R3 1
       17 NAMECALL                         R1 R1 K2 ["ActivateAsync"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R3 1
       22 NAMECALL                         R1 R1 K3 ["BindToChangedAsync"]
       24 CALL                             R1 2 1
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 NAMECALL                         R1 R1 K4 ["Connect"]
       34 CALL                             R1 2 1
       35 GETUPVAL                         R2 0
       36 GETUPVAL                         R4 9
       37 NAMECALL                         R2 R2 K3 ["BindToChangedAsync"]
       39 CALL                             R2 2 1
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U8
       43 NAMECALL                         R2 R2 K4 ["Connect"]
       45 CALL                             R2 2 1
       46 GETUPVAL                         R5 11
       47 GETTABLEKS                       R4 R5 K5 ["Plugin"]
       49 GETTABLEKS                       R3 R4 K6 ["Unloading"]
       51 NEWCLOSURE                       R5 P2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U7
       56 NAMECALL                         R3 R3 K7 ["Once"]
       58 CALL                             R3 2 1
       59 NEWCLOSURE                       R4 P3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 RETURN                           R4 1

PROTO_5:
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["TCEnabledKey"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnSetItem"]
        8 CALL                             R0 3 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Util"]
        3 GETTABLEKS                       R0 R1 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 2
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R0
       13 SETLIST                          R6 R7 1 [1]
       15 CALL                             R2 4 1
       16 MOVE                             R3 R1
       17 RETURN                           R2 2

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["PlaceIdKey"]
        4 NAMECALL                         R0 R0 K1 ["GetItem"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+22]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["PlaceIdKey"]
       12 NAMECALL                         R0 R0 K1 ["GetItem"]
       14 CALL                             R0 2 1
       15 LOADN                            R1 0
       16 JUMPIFNOTLT                      R1 R0 ; [+13]
       18 GETUPVAL                         R0 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K2 ["TCEnabledKey"]
       22 NAMECALL                         R0 R0 K1 ["GetItem"]
       24 CALL                             R0 2 1
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R0 2
       27 LOADB                            R1 1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 2
       31 LOADB                            R1 0
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R4 R5 K0 ["PluginCloseEvent"]
        9 GETUPVAL                         R5 5
       10 CALL                             R3 2 -1
       11 NAMECALL                         R0 R0 K1 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R4 4
       12 GETUPVAL                         R6 5
       13 GETTABLEKS                       R5 R6 K0 ["PluginRestoreEvent"]
       15 GETUPVAL                         R6 6
       16 CALL                             R4 2 -1
       17 NAMECALL                         R1 R1 K1 ["logRobloxTelemetryEvent"]
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R5 R6 K1 ["PluginRestoreEvent"]
       13 GETUPVAL                         R6 5
       14 CALL                             R4 2 -1
       15 NAMECALL                         R1 R1 K2 ["logRobloxTelemetryEvent"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R0 K1 ["Plugin"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["new"]
       15 CALL                             R6 0 1
       16 GETTABLEKS                       R7 R0 K1 ["Plugin"]
       18 LOADK                            R9 K3 ["Actions"]
       19 NAMECALL                         R7 R7 K4 ["GetPluginComponent"]
       21 CALL                             R7 2 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R7
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R10 0 1
       40 MOVE                             R11 R1
       41 SETLIST                          R10 R11 1 [1]
       43 CALL                             R8 2 0
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R10 0 0
       53 CALL                             R8 2 0
       54 GETUPVAL                         R10 8
       55 GETTABLEKS                       R9 R10 K6 ["Localization"]
       57 GETTABLEKS                       R8 R9 K2 ["new"]
       59 DUPTABLE                         R9 K10 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       60 GETUPVAL                         R10 9
       61 SETTABLEKS                       R10 R9 K7 ["stringResourceTable"]
       63 GETUPVAL                         R10 10
       64 SETTABLEKS                       R10 R9 K8 ["translationResourceTable"]
       66 LOADK                            R10 K11 ["PlaceAnnotations"]
       67 SETTABLEKS                       R10 R9 K9 ["pluginName"]
       69 CALL                             R8 1 1
       70 GETUPVAL                         R11 8
       71 GETTABLEKS                       R10 R11 K12 ["Analytics"]
       73 GETTABLEKS                       R9 R10 K2 ["new"]
       75 DUPCLOSURE                       R10 K13 [PROTO_8]
       76 NEWTABLE                         R11 0 0
       78 CALL                             R9 2 1
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R10 R11 K14 ["useMemo"]
       82 NEWCLOSURE                       R11 P3
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R12 0 1
       88 MOVE                             R13 R5
       89 SETLIST                          R12 R13 1 [1]
       91 CALL                             R10 2 2
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R12 R13 K5 ["useEffect"]
       95 NEWCLOSURE                       R13 P4
       96 CAPTURE                          VAL R5
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R4
       99 NEWTABLE                         R14 0 2
      101 GETUPVAL                         R18 5
      102 GETTABLEKS                       R17 R18 K15 ["PlaceIdKey"]
      104 NAMECALL                         R15 R5 K16 ["GetItem"]
      106 CALL                             R15 2 1
      107 GETUPVAL                         R19 5
      108 GETTABLEKS                       R18 R19 K17 ["TCEnabledKey"]
      110 NAMECALL                         R16 R5 K16 ["GetItem"]
      112 CALL                             R16 2 -1
      113 SETLIST                          R14 R15 -1 [1]
      115 CALL                             R12 2 0
      116 GETUPVAL                         R13 8
      117 GETTABLEKS                       R12 R13 K18 ["provide"]
      119 NEWTABLE                         R13 0 9
      121 GETUPVAL                         R15 13
      122 GETTABLEKS                       R14 R15 K2 ["new"]
      124 MOVE                             R15 R5
      125 CALL                             R14 1 1
      126 GETUPVAL                         R16 14
      127 GETTABLEKS                       R15 R16 K2 ["new"]
      129 NAMECALL                         R16 R5 K19 ["GetMouse"]
      131 CALL                             R16 1 -1
      132 CALL                             R15 -1 1
      133 MOVE                             R16 R8
      134 MOVE                             R17 R9
      135 GETUPVAL                         R19 15
      136 GETTABLEKS                       R18 R19 K2 ["new"]
      138 CALL                             R18 0 1
      139 GETUPVAL                         R20 16
      140 GETTABLEKS                       R19 R20 K2 ["new"]
      142 CALL                             R19 0 1
      143 GETUPVAL                         R21 17
      144 GETTABLEKS                       R20 R21 K2 ["new"]
      146 CALL                             R20 0 1
      147 GETUPVAL                         R22 18
      148 GETTABLEKS                       R21 R22 K2 ["new"]
      150 MOVE                             R22 R10
      151 CALL                             R21 1 1
      152 GETUPVAL                         R23 19
      153 GETTABLEKS                       R22 R23 K2 ["new"]
      155 MOVE                             R23 R6
      156 CALL                             R22 1 -1
      157 SETLIST                          R13 R14 -1 [1]
      159 DUPTABLE                         R14 K21 [{"MainWidget"}]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R15 R16 K22 ["createElement"]
      163 GETUPVAL                         R16 20
      164 NEWTABLE                         R17 16 0
      166 LOADK                            R18 K11 ["PlaceAnnotations"]
      167 SETTABLEKS                       R18 R17 K23 ["Id"]
      169 SETTABLEKS                       R1 R17 K24 ["Enabled"]
      171 LOADK                            R20 K1 ["Plugin"]
      172 LOADK                            R21 K25 ["Name"]
      173 NAMECALL                         R18 R8 K26 ["getText"]
      175 CALL                             R18 3 1
      176 SETTABLEKS                       R18 R17 K27 ["Title"]
      178 GETIMPORT                        R18 K31 [Enum.ZIndexBehavior.Sibling]
      180 SETTABLEKS                       R18 R17 K29 ["ZIndexBehavior"]
      182 GETIMPORT                        R18 K34 [Enum.InitialDockState.Left]
      184 SETTABLEKS                       R18 R17 K32 ["InitialDockState"]
      186 JUMPIFNOT                        R3 ; [+2]
      187 LOADB                            R18 1
      188 JUMP                             ; [+1]
      189 LOADB                            R18 0
      190 SETTABLEKS                       R18 R17 K35 ["ShouldRestore"]
      192 GETIMPORT                        R18 K37 [Vector2.new]
      194 LOADN                            R19 128
      195 LOADN                            R20 224
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K38 ["Size"]
      199 GETIMPORT                        R18 K37 [Vector2.new]
      201 LOADN                            R19 250
      202 LOADN                            R20 200
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K39 ["MinSize"]
      206 NEWCLOSURE                       R18 P5
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R6
      209 CAPTURE                          UPVAL U3
      210 CAPTURE                          UPVAL U4
      211 CAPTURE                          UPVAL U5
      212 CAPTURE                          VAL R5
      213 SETTABLEKS                       R18 R17 K40 ["OnClose"]
      215 NEWCLOSURE                       R18 P6
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R6
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U4
      221 CAPTURE                          UPVAL U5
      222 CAPTURE                          VAL R5
      223 SETTABLEKS                       R18 R17 K41 ["OnWidgetRestored"]
      225 GETUPVAL                         R20 0
      226 GETTABLEKS                       R19 R20 K42 ["Change"]
      228 GETTABLEKS                       R18 R19 K24 ["Enabled"]
      230 NEWCLOSURE                       R19 P7
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R6
      233 CAPTURE                          UPVAL U3
      234 CAPTURE                          UPVAL U4
      235 CAPTURE                          UPVAL U5
      236 CAPTURE                          VAL R5
      237 SETTABLE                         R19 R17 R18
      238 DUPTABLE                         R18 K44 [{"Provider"}]
      239 GETUPVAL                         R20 0
      240 GETTABLEKS                       R19 R20 K22 ["createElement"]
      242 GETUPVAL                         R20 21
      243 DUPTABLE                         R21 K46 [{"onStyleSheetChange"}]
      244 SETTABLEKS                       R11 R21 K45 ["onStyleSheetChange"]
      246 GETUPVAL                         R23 0
      247 GETTABLEKS                       R22 R23 K22 ["createElement"]
      249 GETUPVAL                         R24 22
      250 GETTABLEKS                       R23 R24 K43 ["Provider"]
      252 NEWTABLE                         R24 0 0
      254 DUPTABLE                         R25 K48 [{"AnnotationListView"}]
      255 JUMPIFNOT                        R1 ; [+14]
      256 GETUPVAL                         R27 0
      257 GETTABLEKS                       R26 R27 K22 ["createElement"]
      259 GETUPVAL                         R27 23
      260 DUPTABLE                         R28 K49 [{"Size"}]
      261 GETIMPORT                        R29 K37 [Vector2.new]
      263 LOADN                            R30 128
      264 LOADN                            R31 224
      265 CALL                             R29 2 1
      266 SETTABLEKS                       R29 R28 K38 ["Size"]
      268 CALL                             R26 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R26
      271 SETTABLEKS                       R26 R25 K47 ["AnnotationListView"]
      273 CALL                             R22 3 -1
      274 CALL                             R19 -1 1
      275 SETTABLEKS                       R19 R18 K43 ["Provider"]
      277 CALL                             R15 3 1
      278 SETTABLEKS                       R15 R14 K20 ["MainWidget"]
      280 CALL                             R12 2 -1
      281 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
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
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["CrossDMCommunication"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K12 ["Standalone"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R6 K13 ["ActionUris"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["StudioFoundation"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R5 K15 ["Components"]
       48 GETTABLEKS                       R6 R7 K16 ["FoundationProviderAdapter"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Src"]
       54 GETTABLEKS                       R9 R10 K10 ["Util"]
       56 GETTABLEKS                       R8 R9 K17 ["Constants"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R9 R2 K18 ["UI"]
       61 GETTABLEKS                       R8 R9 K19 ["DockWidget"]
       63 GETTABLEKS                       R10 R2 K20 ["Styling"]
       65 GETTABLEKS                       R9 R10 K21 ["registerPluginStyles"]
       67 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       69 GETTABLEKS                       R11 R10 K23 ["Plugin"]
       71 GETTABLEKS                       R12 R10 K24 ["Mouse"]
       73 GETTABLEKS                       R13 R10 K25 ["Design"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R17 R0 K9 ["Src"]
       79 GETTABLEKS                       R16 R17 K15 ["Components"]
       81 GETTABLEKS                       R15 R16 K26 ["AnnotationListView"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R18 R0 K9 ["Src"]
       88 GETTABLEKS                       R17 R18 K27 ["Contexts"]
       90 GETTABLEKS                       R16 R17 K28 ["UsernameContext"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R19 R0 K9 ["Src"]
       97 GETTABLEKS                       R18 R19 K27 ["Contexts"]
       99 GETTABLEKS                       R17 R18 K29 ["InputListenerContext"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R20 R0 K9 ["Src"]
      106 GETTABLEKS                       R19 R20 K27 ["Contexts"]
      108 GETTABLEKS                       R18 R19 K30 ["AnnotationsServiceContext"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R21 R0 K9 ["Src"]
      115 GETTABLEKS                       R20 R21 K27 ["Contexts"]
      117 GETTABLEKS                       R19 R20 K31 ["ClassIconContext"]
      119 CALL                             R18 1 1
      120 GETTABLEKS                       R22 R0 K9 ["Src"]
      122 GETTABLEKS                       R21 R22 K32 ["Resources"]
      124 GETTABLEKS                       R20 R21 K33 ["Localization"]
      126 GETTABLEKS                       R19 R20 K34 ["SourceStrings"]
      128 GETTABLEKS                       R23 R0 K9 ["Src"]
      130 GETTABLEKS                       R22 R23 K32 ["Resources"]
      132 GETTABLEKS                       R21 R22 K33 ["Localization"]
      134 GETTABLEKS                       R20 R21 K35 ["LocalizedStrings"]
      136 GETTABLEKS                       R21 R4 K36 ["ANNOTATIONS_ACTION_URI"]
      138 GETTABLEKS                       R22 R4 K37 ["ADD_ANNOTATION_ACTION_URI"]
      140 GETIMPORT                        R23 K5 [require]
      142 GETTABLEKS                       R25 R0 K6 ["Packages"]
      144 GETTABLEKS                       R24 R25 K38 ["TelemetryProtocol"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R25 K5 [require]
      149 GETTABLEKS                       R28 R0 K9 ["Src"]
      151 GETTABLEKS                       R27 R28 K10 ["Util"]
      153 GETTABLEKS                       R26 R27 K39 ["TelemetryUtils"]
      155 CALL                             R25 1 1
      156 GETTABLEKS                       R24 R25 K40 ["AnnotationsPluginActionEvent"]
      158 GETIMPORT                        R25 K5 [require]
      160 GETTABLEKS                       R28 R0 K9 ["Src"]
      162 GETTABLEKS                       R27 R28 K27 ["Contexts"]
      164 GETTABLEKS                       R26 R27 K41 ["TelemetryContext"]
      166 CALL                             R25 1 1
      167 GETIMPORT                        R27 K5 [require]
      169 GETTABLEKS                       R30 R0 K9 ["Src"]
      171 GETTABLEKS                       R29 R30 K10 ["Util"]
      173 GETTABLEKS                       R28 R29 K39 ["TelemetryUtils"]
      175 CALL                             R27 1 1
      176 GETTABLEKS                       R26 R27 K42 ["getTelemetryEvent"]
      178 DUPCLOSURE                       R27 K43 [PROTO_14]
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R14
      203 RETURN                           R27 1
