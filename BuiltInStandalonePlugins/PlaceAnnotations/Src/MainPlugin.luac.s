PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETTABLEKS                       R1 R0 K0 ["Checked"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 GETUPVAL                         R6 5
       16 GETTABLEKS                       R5 R6 K2 ["PluginOpenEvent"]
       18 GETUPVAL                         R6 6
       19 CALL                             R4 2 -1
       20 NAMECALL                         R1 R1 K3 ["logRobloxTelemetryEvent"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

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
       32 CAPTURE                          UPVAL U9
       33 NAMECALL                         R1 R1 K4 ["Connect"]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R2 0
       37 GETUPVAL                         R4 10
       38 NAMECALL                         R2 R2 K3 ["BindToChangedAsync"]
       40 CALL                             R2 2 1
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U9
       44 NAMECALL                         R2 R2 K4 ["Connect"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R5 12
       48 GETTABLEKS                       R4 R5 K5 ["Plugin"]
       50 GETTABLEKS                       R3 R4 K6 ["Unloading"]
       52 NEWCLOSURE                       R5 P2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          UPVAL U8
       57 NAMECALL                         R3 R3 K7 ["Once"]
       59 CALL                             R3 2 1
       60 NEWCLOSURE                       R4 P3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 RETURN                           R4 1

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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETUPVAL                         R5 5
       11 GETTABLEKS                       R4 R5 K1 ["PluginCloseEvent"]
       13 GETUPVAL                         R5 6
       14 CALL                             R3 2 -1
       15 NAMECALL                         R0 R0 K2 ["logRobloxTelemetryEvent"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

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
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K0 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       12 JUMPIFNOT                        R1 ; [+11]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R3 4
       15 GETUPVAL                         R4 5
       16 GETUPVAL                         R6 6
       17 GETTABLEKS                       R5 R6 K1 ["PluginRestoreEvent"]
       19 GETUPVAL                         R6 7
       20 CALL                             R4 2 -1
       21 NAMECALL                         R1 R1 K2 ["logRobloxTelemetryEvent"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETTABLEKS                       R1 R0 K0 ["Enabled"]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R6 5
       15 GETTABLEKS                       R5 R6 K2 ["PluginRestoreEvent"]
       17 GETUPVAL                         R6 6
       18 CALL                             R4 2 -1
       19 NAMECALL                         R1 R1 K3 ["logRobloxTelemetryEvent"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

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
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R6
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R1
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 0
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       48 NEWCLOSURE                       R9 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R10 0 0
       54 CALL                             R8 2 0
       55 GETUPVAL                         R10 9
       56 GETTABLEKS                       R9 R10 K6 ["Localization"]
       58 GETTABLEKS                       R8 R9 K2 ["new"]
       60 DUPTABLE                         R9 K10 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       61 GETUPVAL                         R10 10
       62 SETTABLEKS                       R10 R9 K7 ["stringResourceTable"]
       64 GETUPVAL                         R10 11
       65 SETTABLEKS                       R10 R9 K8 ["translationResourceTable"]
       67 LOADK                            R10 K11 ["PlaceAnnotations"]
       68 SETTABLEKS                       R10 R9 K9 ["pluginName"]
       70 CALL                             R8 1 1
       71 GETUPVAL                         R11 9
       72 GETTABLEKS                       R10 R11 K12 ["Analytics"]
       74 GETTABLEKS                       R9 R10 K2 ["new"]
       76 DUPCLOSURE                       R10 K13 [PROTO_8]
       77 NEWTABLE                         R11 0 0
       79 CALL                             R9 2 1
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R10 R11 K14 ["useMemo"]
       83 NEWCLOSURE                       R11 P3
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          UPVAL U13
       86 CAPTURE                          VAL R5
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R5
       90 SETLIST                          R12 R13 1 [1]
       92 CALL                             R10 2 2
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R12 R13 K5 ["useEffect"]
       96 NEWCLOSURE                       R13 P4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R4
      100 NEWTABLE                         R14 0 2
      102 GETUPVAL                         R18 6
      103 GETTABLEKS                       R17 R18 K15 ["PlaceIdKey"]
      105 NAMECALL                         R15 R5 K16 ["GetItem"]
      107 CALL                             R15 2 1
      108 GETUPVAL                         R19 6
      109 GETTABLEKS                       R18 R19 K17 ["TCEnabledKey"]
      111 NAMECALL                         R16 R5 K16 ["GetItem"]
      113 CALL                             R16 2 -1
      114 SETLIST                          R14 R15 -1 [1]
      116 CALL                             R12 2 0
      117 GETUPVAL                         R13 9
      118 GETTABLEKS                       R12 R13 K18 ["provide"]
      120 NEWTABLE                         R13 0 9
      122 GETUPVAL                         R15 14
      123 GETTABLEKS                       R14 R15 K2 ["new"]
      125 MOVE                             R15 R5
      126 CALL                             R14 1 1
      127 GETUPVAL                         R16 15
      128 GETTABLEKS                       R15 R16 K2 ["new"]
      130 NAMECALL                         R16 R5 K19 ["GetMouse"]
      132 CALL                             R16 1 -1
      133 CALL                             R15 -1 1
      134 MOVE                             R16 R8
      135 MOVE                             R17 R9
      136 GETUPVAL                         R19 16
      137 GETTABLEKS                       R18 R19 K2 ["new"]
      139 CALL                             R18 0 1
      140 GETUPVAL                         R20 17
      141 GETTABLEKS                       R19 R20 K2 ["new"]
      143 CALL                             R19 0 1
      144 GETUPVAL                         R21 18
      145 GETTABLEKS                       R20 R21 K2 ["new"]
      147 CALL                             R20 0 1
      148 GETUPVAL                         R22 19
      149 GETTABLEKS                       R21 R22 K2 ["new"]
      151 MOVE                             R22 R10
      152 CALL                             R21 1 1
      153 GETUPVAL                         R24 3
      154 GETTABLEKS                       R23 R24 K20 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
      156 JUMPIFNOT                        R23 ; [+6]
      157 GETUPVAL                         R23 20
      158 GETTABLEKS                       R22 R23 K2 ["new"]
      160 MOVE                             R23 R6
      161 CALL                             R22 1 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R22
      164 SETLIST                          R13 R14 9 [1]
      166 DUPTABLE                         R14 K22 [{"MainWidget"}]
      167 GETUPVAL                         R16 0
      168 GETTABLEKS                       R15 R16 K23 ["createElement"]
      170 GETUPVAL                         R16 21
      171 NEWTABLE                         R17 16 0
      173 LOADK                            R18 K11 ["PlaceAnnotations"]
      174 SETTABLEKS                       R18 R17 K24 ["Id"]
      176 SETTABLEKS                       R1 R17 K25 ["Enabled"]
      178 LOADK                            R20 K1 ["Plugin"]
      179 LOADK                            R21 K26 ["Name"]
      180 NAMECALL                         R18 R8 K27 ["getText"]
      182 CALL                             R18 3 1
      183 SETTABLEKS                       R18 R17 K28 ["Title"]
      185 GETIMPORT                        R18 K32 [Enum.ZIndexBehavior.Sibling]
      187 SETTABLEKS                       R18 R17 K30 ["ZIndexBehavior"]
      189 GETIMPORT                        R18 K35 [Enum.InitialDockState.Left]
      191 SETTABLEKS                       R18 R17 K33 ["InitialDockState"]
      193 JUMPIFNOT                        R3 ; [+2]
      194 LOADB                            R18 1
      195 JUMP                             ; [+1]
      196 LOADB                            R18 0
      197 SETTABLEKS                       R18 R17 K36 ["ShouldRestore"]
      199 GETIMPORT                        R18 K38 [Vector2.new]
      201 LOADN                            R19 128
      202 LOADN                            R20 224
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K39 ["Size"]
      206 GETIMPORT                        R18 K38 [Vector2.new]
      208 LOADN                            R19 250
      209 LOADN                            R20 200
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K40 ["MinSize"]
      213 NEWCLOSURE                       R18 P5
      214 CAPTURE                          VAL R2
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          VAL R6
      217 CAPTURE                          UPVAL U4
      218 CAPTURE                          UPVAL U5
      219 CAPTURE                          UPVAL U6
      220 CAPTURE                          VAL R5
      221 SETTABLEKS                       R18 R17 K41 ["OnClose"]
      223 NEWCLOSURE                       R18 P6
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R2
      226 CAPTURE                          UPVAL U3
      227 CAPTURE                          VAL R6
      228 CAPTURE                          UPVAL U4
      229 CAPTURE                          UPVAL U5
      230 CAPTURE                          UPVAL U6
      231 CAPTURE                          VAL R5
      232 SETTABLEKS                       R18 R17 K42 ["OnWidgetRestored"]
      234 GETUPVAL                         R20 0
      235 GETTABLEKS                       R19 R20 K43 ["Change"]
      237 GETTABLEKS                       R18 R19 K25 ["Enabled"]
      239 NEWCLOSURE                       R19 P7
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          VAL R6
      243 CAPTURE                          UPVAL U4
      244 CAPTURE                          UPVAL U5
      245 CAPTURE                          UPVAL U6
      246 CAPTURE                          VAL R5
      247 SETTABLE                         R19 R17 R18
      248 DUPTABLE                         R18 K45 [{"Provider"}]
      249 GETUPVAL                         R20 0
      250 GETTABLEKS                       R19 R20 K23 ["createElement"]
      252 GETUPVAL                         R20 22
      253 DUPTABLE                         R21 K47 [{"onStyleSheetChange"}]
      254 SETTABLEKS                       R11 R21 K46 ["onStyleSheetChange"]
      256 GETUPVAL                         R23 0
      257 GETTABLEKS                       R22 R23 K23 ["createElement"]
      259 GETUPVAL                         R24 23
      260 GETTABLEKS                       R23 R24 K44 ["Provider"]
      262 NEWTABLE                         R24 0 0
      264 DUPTABLE                         R25 K49 [{"AnnotationListView"}]
      265 JUMPIFNOT                        R1 ; [+14]
      266 GETUPVAL                         R27 0
      267 GETTABLEKS                       R26 R27 K23 ["createElement"]
      269 GETUPVAL                         R27 24
      270 DUPTABLE                         R28 K50 [{"Size"}]
      271 GETIMPORT                        R29 K38 [Vector2.new]
      273 LOADN                            R30 128
      274 LOADN                            R31 224
      275 CALL                             R29 2 1
      276 SETTABLEKS                       R29 R28 K39 ["Size"]
      278 CALL                             R26 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R26
      281 SETTABLEKS                       R26 R25 K48 ["AnnotationListView"]
      283 CALL                             R22 3 -1
      284 CALL                             R19 -1 1
      285 SETTABLEKS                       R19 R18 K44 ["Provider"]
      287 CALL                             R15 3 1
      288 SETTABLEKS                       R15 R14 K21 ["MainWidget"]
      290 CALL                             R12 2 -1
      291 RETURN                           R12 -1

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
       52 GETTABLEKS                       R10 R0 K17 ["Bin"]
       54 GETTABLEKS                       R9 R10 K18 ["Common"]
       56 GETTABLEKS                       R8 R9 K19 ["defineLuaFlags"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K9 ["Src"]
       63 GETTABLEKS                       R10 R11 K10 ["Util"]
       65 GETTABLEKS                       R9 R10 K20 ["Constants"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R10 R2 K21 ["UI"]
       70 GETTABLEKS                       R9 R10 K22 ["DockWidget"]
       72 GETTABLEKS                       R11 R2 K23 ["Styling"]
       74 GETTABLEKS                       R10 R11 K24 ["registerPluginStyles"]
       76 GETTABLEKS                       R11 R2 K25 ["ContextServices"]
       78 GETTABLEKS                       R12 R11 K26 ["Plugin"]
       80 GETTABLEKS                       R13 R11 K27 ["Mouse"]
       82 GETTABLEKS                       R14 R11 K28 ["Design"]
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R18 R0 K9 ["Src"]
       88 GETTABLEKS                       R17 R18 K15 ["Components"]
       90 GETTABLEKS                       R16 R17 K29 ["AnnotationListView"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R19 R0 K9 ["Src"]
       97 GETTABLEKS                       R18 R19 K30 ["Contexts"]
       99 GETTABLEKS                       R17 R18 K31 ["UsernameContext"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R20 R0 K9 ["Src"]
      106 GETTABLEKS                       R19 R20 K30 ["Contexts"]
      108 GETTABLEKS                       R18 R19 K32 ["InputListenerContext"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R21 R0 K9 ["Src"]
      115 GETTABLEKS                       R20 R21 K30 ["Contexts"]
      117 GETTABLEKS                       R19 R20 K33 ["AnnotationsServiceContext"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R22 R0 K9 ["Src"]
      124 GETTABLEKS                       R21 R22 K30 ["Contexts"]
      126 GETTABLEKS                       R20 R21 K34 ["ClassIconContext"]
      128 CALL                             R19 1 1
      129 GETTABLEKS                       R23 R0 K9 ["Src"]
      131 GETTABLEKS                       R22 R23 K35 ["Resources"]
      133 GETTABLEKS                       R21 R22 K36 ["Localization"]
      135 GETTABLEKS                       R20 R21 K37 ["SourceStrings"]
      137 GETTABLEKS                       R24 R0 K9 ["Src"]
      139 GETTABLEKS                       R23 R24 K35 ["Resources"]
      141 GETTABLEKS                       R22 R23 K36 ["Localization"]
      143 GETTABLEKS                       R21 R22 K38 ["LocalizedStrings"]
      145 GETTABLEKS                       R22 R4 K39 ["ANNOTATIONS_ACTION_URI"]
      147 GETTABLEKS                       R23 R4 K40 ["ADD_ANNOTATION_ACTION_URI"]
      149 GETIMPORT                        R24 K5 [require]
      151 GETTABLEKS                       R26 R0 K6 ["Packages"]
      153 GETTABLEKS                       R25 R26 K41 ["TelemetryProtocol"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R29 R0 K9 ["Src"]
      160 GETTABLEKS                       R28 R29 K10 ["Util"]
      162 GETTABLEKS                       R27 R28 K42 ["TelemetryUtils"]
      164 CALL                             R26 1 1
      165 GETTABLEKS                       R25 R26 K43 ["AnnotationsPluginActionEvent"]
      167 GETIMPORT                        R26 K5 [require]
      169 GETTABLEKS                       R29 R0 K9 ["Src"]
      171 GETTABLEKS                       R28 R29 K30 ["Contexts"]
      173 GETTABLEKS                       R27 R28 K44 ["TelemetryContext"]
      175 CALL                             R26 1 1
      176 GETIMPORT                        R28 K5 [require]
      178 GETTABLEKS                       R31 R0 K9 ["Src"]
      180 GETTABLEKS                       R30 R31 K10 ["Util"]
      182 GETTABLEKS                       R29 R30 K42 ["TelemetryUtils"]
      184 CALL                             R28 1 1
      185 GETTABLEKS                       R27 R28 K45 ["getTelemetryEvent"]
      187 DUPCLOSURE                       R28 K46 [PROTO_14]
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R25
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R15
      213 RETURN                           R28 1
