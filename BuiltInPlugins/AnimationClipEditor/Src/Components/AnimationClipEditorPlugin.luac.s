PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["IsRunning"]
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+37]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["Error"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["createElement"]
       11 GETUPVAL                         R6 3
       12 DUPTABLE                         R7 K5 [{"ErrorKey", "ErrorList"}]
       13 GETUPVAL                         R9 4
       14 GETTABLEKS                       R8 R9 K6 ["EDITOR_ERRORS_KEY"]
       16 SETTABLEKS                       R8 R7 K3 ["ErrorKey"]
       18 NEWTABLE                         R8 0 1
       20 DUPTABLE                         R9 K9 [{"id", "severity"}]
       21 GETUPVAL                         R12 4
       22 GETTABLEKS                       R11 R12 K10 ["EDITOR_ERRORS"]
       24 GETTABLEKS                       R10 R11 K11 ["OpenedWhileRunning"]
       26 SETTABLEKS                       R10 R9 K7 ["id"]
       28 GETUPVAL                         R12 4
       29 GETTABLEKS                       R11 R12 K12 ["SEVERITY"]
       31 GETTABLEKS                       R10 R11 K1 ["Error"]
       33 SETTABLEKS                       R10 R9 K8 ["severity"]
       35 SETLIST                          R8 R9 1 [1]
       37 SETTABLEKS                       R8 R7 K4 ["ErrorList"]
       39 CALL                             R5 2 -1
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0
       42 DUPCLOSURE                       R4 K13 [PROTO_0]
       43 NAMECALL                         R2 R0 K14 ["setState"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R5 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R3 R4 K2 ["toolbar"]
        6 SETTABLEKS                       R3 R0 K2 ["toolbar"]
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R5 K1 ["pluginLoaderContext"]
       12 GETTABLEKS                       R3 R4 K3 ["mainButton"]
       14 SETTABLEKS                       R3 R0 K3 ["mainButton"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["plugin"]
        4 NAMECALL                         R0 R0 K1 ["handleButtonClick"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["pluginLoaderContext"]
        3 GETTABLEKS                       R0 R1 K1 ["mainButtonClickedSignal"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["mainButton"]
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K2 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R2 1
       13 NAMECALL                         R0 R0 K3 ["Activate"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plugin"]
        3 GETIMPORT                        R2 K4 [Enum.RibbonTool.Select]
        5 JUMPIFEQ                         R0 R2 ; [+13]
        7 GETIMPORT                        R2 K6 [Enum.RibbonTool.Rotate]
        9 JUMPIFEQ                         R0 R2 ; [+9]
       11 GETIMPORT                        R2 K8 [Enum.RibbonTool.Move]
       13 JUMPIFEQ                         R0 R2 ; [+5]
       15 GETIMPORT                        R2 K10 [Enum.RibbonTool.Scale]
       17 JUMPIFNOTEQ                      R0 R2 ; [+50]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K11 ["state"]
       22 GETTABLEKS                       R2 R3 K12 ["enabled"]
       24 JUMPIFNOT                        R2 ; [+43]
       25 LOADNIL                          R2
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K13 ["Heartbeat"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          REF R2
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R3 R3 K14 ["Connect"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETIMPORT                        R4 K10 [Enum.RibbonTool.Scale]
       39 JUMPIFNOTEQ                      R0 R4 ; [+4]
       41 GETIMPORT                        R3 K4 [Enum.RibbonTool.Select]
       43 JUMPIF                           R3 ; [+1]
       44 MOVE                             R3 R0
       45 MOVE                             R0 R3
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K15 ["store"]
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R0
       51 CALL                             R5 1 -1
       52 NAMECALL                         R3 R3 K16 ["dispatch"]
       54 CALL                             R3 -1 0
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K17 ["analytics"]
       58 LOADK                            R5 K18 ["onToolChanged"]
       59 GETTABLEKS                       R6 R0 K19 ["Name"]
       61 NAMECALL                         R3 R3 K20 ["report"]
       63 CALL                             R3 3 0
       64 LOADB                            R3 1
       65 CLOSEUPVALS                      R2
       66 RETURN                           R3 1
       67 CLOSEUPVALS                      R2
       68 LOADB                            R2 0
       69 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 NAMECALL                         R1 R0 K1 ["GetSelectedRibbonTool"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K5 [Enum.RibbonTool.None]
        8 JUMPIFEQ                         R1 R2 ; [+8]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K6 ["onToolSelected"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K7 ["state"]
       20 GETTABLEKS                       R2 R3 K8 ["enabled"]
       22 JUMPIFNOT                        R2 ; [+18]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K9 ["clearMicrobones"]
       26 CALL                             R2 0 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K10 ["store"]
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K11 ["analytics"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K12 ["localization"]
       37 CALL                             R4 2 -1
       38 NAMECALL                         R2 R2 K13 ["dispatch"]
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["deactivationInProgress"]
        9 GETIMPORT                        R1 K4 [task.wait]
       11 CALL                             R1 0 0
       12 GETIMPORT                        R1 K4 [task.wait]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 3
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 2
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K1 ["deactivationInProgress"]
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K5 ["clearMicrobones"]
       25 CALL                             R1 0 0
       26 NAMECALL                         R1 R0 K6 ["GetSelectedRibbonTool"]
       28 CALL                             R1 1 1
       29 GETIMPORT                        R2 K10 [Enum.RibbonTool.None]
       31 JUMPIFEQ                         R1 R2 ; [+8]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K11 ["onToolSelected"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 1
       38 JUMPIFNOT                        R2 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R3 R4 K12 ["state"]
       43 GETTABLEKS                       R2 R3 K13 ["enabled"]
       45 JUMPIFNOT                        R2 ; [+14]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K14 ["store"]
       49 GETUPVAL                         R4 5
       50 GETUPVAL                         R6 2
       51 GETTABLEKS                       R5 R6 K15 ["analytics"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R6 R7 K16 ["localization"]
       56 CALL                             R4 2 -1
       57 NAMECALL                         R2 R2 K17 ["dispatch"]
       59 CALL                             R2 -1 0
       60 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deactivationInProgress"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["deactivationInProgress"]
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R1 K0 ["plugin"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["AnimationClipEditorPlugin requires a Plugin."]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 NEWTABLE                         R2 0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["thunkMiddleware"]
       17 SETLIST                          R2 R3 1 [1]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K5 ["LogRoduxEvents"]
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+9]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K6 ["loggerMiddleware"]
       27 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K9 [table.insert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K10 ["Store"]
       36 GETTABLEKS                       R3 R4 K11 ["new"]
       38 GETUPVAL                         R4 2
       39 LOADNIL                          R5
       40 MOVE                             R6 R2
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K12 ["store"]
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R3 R4 K11 ["new"]
       47 DUPTABLE                         R4 K16 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R5 R6 K17 ["PLUGIN_NAME"]
       51 SETTABLEKS                       R5 R4 K13 ["pluginName"]
       53 GETUPVAL                         R5 5
       54 SETTABLEKS                       R5 R4 K14 ["stringResourceTable"]
       56 GETUPVAL                         R5 6
       57 SETTABLEKS                       R5 R4 K15 ["translationResourceTable"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R0 K18 ["localization"]
       62 GETUPVAL                         R4 7
       63 GETTABLEKS                       R3 R4 K11 ["new"]
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R0 K19 ["calloutController"]
       68 GETTABLEKS                       R3 R0 K18 ["localization"]
       70 LOADK                            R5 K20 ["FaceControlsEditorButtonCallout"]
       71 LOADK                            R6 K21 ["Title"]
       72 NAMECALL                         R3 R3 K22 ["getText"]
       74 CALL                             R3 3 1
       75 GETTABLEKS                       R4 R0 K18 ["localization"]
       77 LOADK                            R6 K20 ["FaceControlsEditorButtonCallout"]
       78 LOADK                            R7 K23 ["Description"]
       79 NAMECALL                         R4 R4 K22 ["getText"]
       81 CALL                             R4 3 1
       82 GETUPVAL                         R5 8
       83 GETTABLEKS                       R6 R0 K19 ["calloutController"]
       85 LOADK                            R8 K24 ["FaceControlsEditorCallout"]
       86 MOVE                             R9 R3
       87 MOVE                             R10 R4
       88 MOVE                             R11 R5
       89 NAMECALL                         R6 R6 K25 ["defineCallout"]
       91 CALL                             R6 5 0
       92 GETTABLEKS                       R6 R0 K19 ["calloutController"]
       94 LOADK                            R8 K26 ["CurveEditorCallout"]
       95 GETTABLEKS                       R9 R0 K18 ["localization"]
       97 LOADK                            R11 K26 ["CurveEditorCallout"]
       98 LOADK                            R12 K21 ["Title"]
       99 NAMECALL                         R9 R9 K22 ["getText"]
      101 CALL                             R9 3 1
      102 GETTABLEKS                       R10 R0 K18 ["localization"]
      104 LOADK                            R12 K26 ["CurveEditorCallout"]
      105 LOADK                            R13 K23 ["Description"]
      106 NAMECALL                         R10 R10 K22 ["getText"]
      108 CALL                             R10 3 1
      109 LOADK                            R11 K27 ["https://create.roblox.com/docs/building-and-visuals/animation/curve-editor"]
      110 NAMECALL                         R6 R6 K25 ["defineCallout"]
      112 CALL                             R6 5 0
      113 GETUPVAL                         R6 9
      114 CALL                             R6 0 1
      115 JUMPIFNOT                        R6 ; [+21]
      116 GETTABLEKS                       R6 R0 K19 ["calloutController"]
      118 LOADK                            R8 K28 ["FaceRecorderCallout"]
      119 GETTABLEKS                       R9 R0 K18 ["localization"]
      121 LOADK                            R11 K29 ["FaceCapture"]
      122 LOADK                            R12 K30 ["TeachingCalloutTitle"]
      123 NAMECALL                         R9 R9 K22 ["getText"]
      125 CALL                             R9 3 1
      126 GETTABLEKS                       R10 R0 K18 ["localization"]
      128 LOADK                            R12 K29 ["FaceCapture"]
      129 LOADK                            R13 K31 ["TeachingCalloutDescription"]
      130 NAMECALL                         R10 R10 K22 ["getText"]
      132 CALL                             R10 3 1
      133 GETUPVAL                         R11 10
      134 NAMECALL                         R6 R6 K25 ["defineCallout"]
      136 CALL                             R6 5 0
      137 GETUPVAL                         R8 11
      138 GETTABLEKS                       R7 R8 K32 ["PluginActions"]
      140 GETTABLEKS                       R6 R7 K11 ["new"]
      142 GETTABLEKS                       R7 R1 K0 ["plugin"]
      144 GETUPVAL                         R8 12
      145 GETTABLEKS                       R9 R1 K0 ["plugin"]
      147 GETTABLEKS                       R10 R0 K18 ["localization"]
      149 CALL                             R8 2 -1
      150 CALL                             R6 -1 1
      151 SETTABLEKS                       R6 R0 K33 ["actions"]
      153 DUPTABLE                         R6 K36 [{"enabled", "pluginGui"}]
      154 LOADB                            R7 0
      155 SETTABLEKS                       R7 R6 K34 ["enabled"]
      157 LOADNIL                          R7
      158 SETTABLEKS                       R7 R6 K35 ["pluginGui"]
      160 SETTABLEKS                       R6 R0 K37 ["state"]
      162 GETUPVAL                         R7 13
      163 GETTABLEKS                       R6 R7 K11 ["new"]
      165 GETUPVAL                         R8 4
      166 GETTABLEKS                       R7 R8 K38 ["SIGNAL_KEYS"]
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R0 K39 ["signals"]
      171 GETUPVAL                         R8 11
      172 GETTABLEKS                       R7 R8 K40 ["Analytics"]
      174 GETTABLEKS                       R6 R7 K11 ["new"]
      176 GETUPVAL                         R7 14
      177 CALL                             R6 1 1
      178 SETTABLEKS                       R6 R0 K41 ["analytics"]
      180 NEWCLOSURE                       R6 P0
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R6 R0 K42 ["onDockWidgetLoaded"]
      184 GETTABLEKS                       R8 R1 K0 ["plugin"]
      186 GETTABLEKS                       R9 R0 K18 ["localization"]
      188 NAMECALL                         R6 R0 K43 ["createPluginButton"]
      190 CALL                             R6 3 0
      191 GETTABLEKS                       R6 R0 K44 ["mainButton"]
      193 GETTABLEKS                       R9 R0 K37 ["state"]
      195 GETTABLEKS                       R8 R9 K34 ["enabled"]
      197 NAMECALL                         R6 R6 K45 ["SetActive"]
      199 CALL                             R6 2 0
      200 GETIMPORT                        R6 K48 [task.defer]
      202 NEWCLOSURE                       R7 P1
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R0
      205 CALL                             R6 1 0
      206 NEWCLOSURE                       R6 P2
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R6 R0 K49 ["onDockWidgetEnabledChanged"]
      210 NEWCLOSURE                       R6 P3
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U15
      214 CAPTURE                          UPVAL U16
      215 SETTABLEKS                       R6 R0 K50 ["onToolSelected"]
      217 LOADB                            R6 0
      218 SETTABLEKS                       R6 R0 K51 ["deactivationInProgress"]
      220 NEWCLOSURE                       R6 P4
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R0
      223 CAPTURE                          UPVAL U17
      224 CAPTURE                          UPVAL U18
      225 GETTABLEKS                       R9 R0 K52 ["props"]
      227 GETTABLEKS                       R8 R9 K0 ["plugin"]
      229 GETTABLEKS                       R7 R8 K53 ["Deactivation"]
      231 NEWCLOSURE                       R9 P5
      232 CAPTURE                          VAL R1
      233 CAPTURE                          UPVAL U19
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R6
      236 CAPTURE                          UPVAL U17
      237 CAPTURE                          UPVAL U18
      238 NAMECALL                         R7 R7 K54 ["Connect"]
      240 CALL                             R7 2 1
      241 SETTABLEKS                       R7 R0 K55 ["deactivationListener"]
      243 GETUPVAL                         R8 19
      244 JUMPIFNOT                        R8 ; [+13]
      245 GETTABLEKS                       R9 R0 K52 ["props"]
      247 GETTABLEKS                       R8 R9 K0 ["plugin"]
      249 GETTABLEKS                       R7 R8 K56 ["Unloading"]
      251 NEWCLOSURE                       R9 P6
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R6
      254 NAMECALL                         R7 R7 K54 ["Connect"]
      256 CALL                             R7 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R7
      259 SETTABLEKS                       R7 R0 K57 ["unloadingListener"]
      261 GETTABLEKS                       R8 R0 K52 ["props"]
      263 GETTABLEKS                       R7 R8 K0 ["plugin"]
      265 NAMECALL                         R7 R7 K58 ["GetMouse"]
      267 CALL                             R7 1 1
      268 SETTABLEKS                       R7 R0 K59 ["mouse"]
      270 GETUPVAL                         R7 20
      271 CALL                             R7 0 1
      272 SETTABLEKS                       R7 R0 K60 ["theme"]
      274 NEWCLOSURE                       R7 P7
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R7 R0 K61 ["closeWidget"]
      278 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["plugin"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["SETTINGS"]
        7 GETTABLEKS                       R4 R5 K3 ["SnapMode"]
        9 NAMECALL                         R2 R1 K4 ["GetSetting"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+9]
       14 GETTABLEKS                       R3 R0 K5 ["store"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R2
       18 CALL                             R5 1 -1
       19 NAMECALL                         R3 R3 K6 ["dispatch"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K2 ["SETTINGS"]
       25 GETTABLEKS                       R5 R6 K7 ["TimelineUnit"]
       27 NAMECALL                         R3 R1 K4 ["GetSetting"]
       29 CALL                             R3 2 1
       30 JUMPIFEQKNIL                     R3 ; [+9]
       32 GETTABLEKS                       R4 R0 K5 ["store"]
       34 GETUPVAL                         R6 2
       35 MOVE                             R7 R3
       36 CALL                             R6 1 -1
       37 NAMECALL                         R4 R4 K6 ["dispatch"]
       39 CALL                             R4 -1 0
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K2 ["SETTINGS"]
       43 GETTABLEKS                       R6 R7 K8 ["RotationType"]
       45 NAMECALL                         R4 R1 K4 ["GetSetting"]
       47 CALL                             R4 2 1
       48 JUMPIFEQKNIL                     R4 ; [+9]
       50 GETTABLEKS                       R5 R0 K5 ["store"]
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R4
       54 CALL                             R7 1 -1
       55 NAMECALL                         R5 R5 K6 ["dispatch"]
       57 CALL                             R5 -1 0
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K2 ["SETTINGS"]
       61 GETTABLEKS                       R7 R8 K9 ["EulerAnglesOrder"]
       63 NAMECALL                         R5 R1 K4 ["GetSetting"]
       65 CALL                             R5 2 1
       66 JUMPIFEQKNIL                     R5 ; [+11]
       68 GETTABLEKS                       R6 R0 K5 ["store"]
       70 GETUPVAL                         R8 4
       71 GETIMPORT                        R10 K12 [Enum.RotationOrder]
       73 GETTABLE                         R9 R10 R5
       74 CALL                             R8 1 -1
       75 NAMECALL                         R6 R6 K6 ["dispatch"]
       77 CALL                             R6 -1 0
       78 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["plugin"]
        4 GETTABLEKS                       R3 R0 K2 ["store"]
        6 NAMECALL                         R3 R3 K3 ["getState"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R2 R3 K4 ["Status"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K5 ["SETTINGS"]
       14 GETTABLEKS                       R5 R6 K6 ["TimelineUnit"]
       16 GETTABLEKS                       R6 R2 K6 ["TimelineUnit"]
       18 NAMECALL                         R3 R1 K7 ["SetSetting"]
       20 CALL                             R3 3 0
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K5 ["SETTINGS"]
       24 GETTABLEKS                       R5 R6 K8 ["SnapMode"]
       26 GETTABLEKS                       R6 R2 K8 ["SnapMode"]
       28 NAMECALL                         R3 R1 K7 ["SetSetting"]
       30 CALL                             R3 3 0
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K5 ["SETTINGS"]
       34 GETTABLEKS                       R5 R6 K9 ["RotationType"]
       36 GETTABLEKS                       R6 R2 K10 ["DefaultRotationType"]
       38 NAMECALL                         R3 R1 K7 ["SetSetting"]
       40 CALL                             R3 3 0
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K5 ["SETTINGS"]
       44 GETTABLEKS                       R5 R6 K11 ["EulerAnglesOrder"]
       46 GETTABLEKS                       R6 R2 K12 ["DefaultEulerAnglesOrder"]
       48 NAMECALL                         R3 R1 K7 ["SetSetting"]
       50 CALL                             R3 3 0
       51 RETURN                           R0 0

PROTO_16:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_17:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+6]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+12]
       10 GETIMPORT                        R2 K4 [Instance.new]
       12 LOADK                            R3 K5 ["BindableEvent"]
       13 CALL                             R2 1 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       18 SETTABLEKS                       R2 R1 K6 ["Name"]
       20 SETTABLEKS                       R0 R1 K7 ["Parent"]
       22 RETURN                           R1 1

PROTO_18:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+6]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R2 R1 K2 ["Destroy"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R3 K2 [{"pluginGui", "enabled"}]
        1 GETTABLEKS                       R4 R0 K3 ["dockWidget"]
        3 SETTABLEKS                       R4 R3 K0 ["pluginGui"]
        5 GETTABLEKS                       R5 R0 K3 ["dockWidget"]
        7 GETTABLEKS                       R4 R5 K4 ["Enabled"]
        9 SETTABLEKS                       R4 R3 K1 ["enabled"]
       11 NAMECALL                         R1 R0 K5 ["setState"]
       13 CALL                             R1 2 0
       14 NAMECALL                         R1 R0 K6 ["getPluginSettings"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K3 ["dockWidget"]
       19 JUMPIF                           R1 ; [+2]
       20 LOADNIL                          R2
       21 JUMP                             ; [+6]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K7 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       25 NAMECALL                         R2 R1 K8 ["FindFirstChild"]
       27 CALL                             R2 2 1
       28 JUMPIF                           R2 ; [+12]
       29 GETIMPORT                        R3 K11 [Instance.new]
       31 LOADK                            R4 K12 ["BindableEvent"]
       32 CALL                             R3 1 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K7 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       37 SETTABLEKS                       R3 R2 K13 ["Name"]
       39 SETTABLEKS                       R1 R2 K14 ["Parent"]
       41 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["deactivationListener"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["deactivationListener"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETTABLEKS                       R1 R0 K2 ["unloadingListener"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R1 R0 K2 ["unloadingListener"]
       15 NAMECALL                         R1 R1 K1 ["Disconnect"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K3 ["dockWidget"]
       20 JUMPIF                           R1 ; [+2]
       21 LOADNIL                          R2
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K4 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       26 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 NAMECALL                         R3 R2 K6 ["Destroy"]
       32 CALL                             R3 1 0
       33 NAMECALL                         R1 R0 K7 ["setPluginSettings"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K8 ["theme"]
       38 NAMECALL                         R1 R1 K9 ["destroy"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["store"]
        4 GETTABLEKS                       R3 R0 K2 ["localization"]
        6 GETTABLEKS                       R4 R1 K3 ["plugin"]
        8 GETTABLEKS                       R5 R0 K4 ["actions"]
       10 GETTABLEKS                       R6 R0 K5 ["analytics"]
       12 GETTABLEKS                       R7 R0 K6 ["mouse"]
       14 GETTABLEKS                       R8 R0 K7 ["theme"]
       16 GETTABLEKS                       R10 R0 K8 ["state"]
       18 GETTABLEKS                       R9 R10 K9 ["pluginGui"]
       20 JUMPIFNOTEQKNIL                  R9 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 GETTABLEKS                       R12 R0 K8 ["state"]
       26 GETTABLEKS                       R11 R12 K10 ["enabled"]
       28 GETTABLEKS                       R12 R0 K11 ["mainButton"]
       30 MOVE                             R14 R11
       31 NAMECALL                         R12 R12 K12 ["SetActive"]
       33 CALL                             R12 2 0
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R12 R13 K13 ["createElement"]
       37 GETUPVAL                         R13 1
       38 NEWTABLE                         R14 16 0
       40 LOADK                            R15 K14 ["AnimationClipEditor"]
       41 SETTABLEKS                       R15 R14 K15 ["Id"]
       43 LOADK                            R17 K16 ["Plugin"]
       44 LOADK                            R18 K17 ["Name"]
       45 NAMECALL                         R15 R3 K18 ["getText"]
       47 CALL                             R15 3 1
       48 SETTABLEKS                       R15 R14 K19 ["Title"]
       50 LOADK                            R15 K14 ["AnimationClipEditor"]
       51 SETTABLEKS                       R15 R14 K17 ["Name"]
       53 GETIMPORT                        R15 K23 [Enum.ZIndexBehavior.Sibling]
       55 SETTABLEKS                       R15 R14 K21 ["ZIndexBehavior"]
       57 GETTABLEKS                       R16 R1 K24 ["pluginLoaderContext"]
       59 GETTABLEKS                       R15 R16 K25 ["mainDockWidget"]
       61 SETTABLEKS                       R15 R14 K26 ["Widget"]
       63 SETTABLEKS                       R11 R14 K27 ["Enabled"]
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R15 R16 K28 ["Ref"]
       68 GETTABLEKS                       R16 R0 K29 ["onDockWidgetLoaded"]
       70 SETTABLE                         R16 R14 R15
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R16 R17 K30 ["Change"]
       74 GETTABLEKS                       R15 R16 K27 ["Enabled"]
       76 GETTABLEKS                       R16 R0 K31 ["onDockWidgetEnabledChanged"]
       78 SETTABLE                         R16 R14 R15
       79 GETTABLEKS                       R15 R0 K32 ["closeWidget"]
       81 SETTABLEKS                       R15 R14 K33 ["OnClose"]
       83 DUPTABLE                         R15 K35 [{"MainProvider"}]
       84 MOVE                             R16 R10
       85 JUMPIFNOT                        R16 ; [+47]
       86 MOVE                             R16 R11
       87 JUMPIFNOT                        R16 ; [+45]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R16 R17 K13 ["createElement"]
       91 GETUPVAL                         R17 2
       92 DUPTABLE                         R18 K40 [{"theme", "focusGui", "store", "plugin", "localization", "pluginActions", "mouse", "analytics", "signals", "calloutController"}]
       93 SETTABLEKS                       R8 R18 K7 ["theme"]
       95 SETTABLEKS                       R9 R18 K36 ["focusGui"]
       97 SETTABLEKS                       R2 R18 K1 ["store"]
       99 SETTABLEKS                       R4 R18 K3 ["plugin"]
      101 SETTABLEKS                       R3 R18 K2 ["localization"]
      103 SETTABLEKS                       R5 R18 K37 ["pluginActions"]
      105 SETTABLEKS                       R7 R18 K6 ["mouse"]
      107 SETTABLEKS                       R6 R18 K5 ["analytics"]
      109 GETTABLEKS                       R19 R0 K38 ["signals"]
      111 SETTABLEKS                       R19 R18 K38 ["signals"]
      113 GETTABLEKS                       R19 R0 K39 ["calloutController"]
      115 SETTABLEKS                       R19 R18 K39 ["calloutController"]
      117 DUPTABLE                         R19 K42 [{"AnimationClipEditor", "Dragger"}]
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R20 R21 K13 ["createElement"]
      121 GETUPVAL                         R21 3
      122 CALL                             R20 1 1
      123 SETTABLEKS                       R20 R19 K14 ["AnimationClipEditor"]
      125 GETUPVAL                         R21 0
      126 GETTABLEKS                       R20 R21 K13 ["createElement"]
      128 GETUPVAL                         R21 4
      129 CALL                             R20 1 1
      130 SETTABLEKS                       R20 R19 K41 ["Dragger"]
      132 CALL                             R16 3 1
      133 SETTABLEKS                       R16 R15 K34 ["MainProvider"]
      135 CALL                             R12 3 -1
      136 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Rodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R7 R1 K15 ["Src"]
       38 GETTABLEKS                       R6 R7 K16 ["Actions"]
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R6 K17 ["SetDefaultEulerAnglesOrder"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K9 [require]
       47 GETTABLEKS                       R9 R6 K18 ["SetDefaultRotationType"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R10 R6 K19 ["SetSnapMode"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R11 R6 K20 ["SetTimelineUnit"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K9 [require]
       62 GETTABLEKS                       R12 R6 K21 ["SetTool"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R13 R1 K15 ["Src"]
       67 GETTABLEKS                       R12 R13 K22 ["Components"]
       69 GETIMPORT                        R13 K9 [require]
       71 GETTABLEKS                       R14 R12 K6 ["AnimationClipEditor"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K9 [require]
       76 GETTABLEKS                       R16 R12 K23 ["PluginWidget"]
       78 GETTABLEKS                       R15 R16 K24 ["DockWidget"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K9 [require]
       83 GETTABLEKS                       R17 R12 K25 ["Draggers"]
       85 GETTABLEKS                       R16 R17 K26 ["DraggerWrapper"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K9 [require]
       90 GETTABLEKS                       R18 R12 K27 ["BlockingDialog"]
       92 GETTABLEKS                       R17 R18 K28 ["ErrorList"]
       94 CALL                             R16 1 1
       95 GETTABLEKS                       R18 R1 K15 ["Src"]
       97 GETTABLEKS                       R17 R18 K29 ["Context"]
       99 GETIMPORT                        R18 K9 [require]
      101 GETTABLEKS                       R19 R17 K30 ["MainProvider"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K9 [require]
      106 GETTABLEKS                       R20 R17 K31 ["Signals"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K9 [require]
      111 GETTABLEKS                       R23 R1 K15 ["Src"]
      113 GETTABLEKS                       R22 R23 K32 ["Reducers"]
      115 GETTABLEKS                       R21 R22 K33 ["MainReducer"]
      117 CALL                             R20 1 1
      118 GETTABLEKS                       R21 R5 K34 ["Localization"]
      120 GETTABLEKS                       R24 R1 K15 ["Src"]
      122 GETTABLEKS                       R23 R24 K35 ["Resources"]
      124 GETTABLEKS                       R22 R23 K36 ["SourceStrings"]
      126 GETTABLEKS                       R25 R1 K15 ["Src"]
      128 GETTABLEKS                       R24 R25 K35 ["Resources"]
      130 GETTABLEKS                       R23 R24 K37 ["LocalizedStrings"]
      132 GETTABLEKS                       R25 R1 K15 ["Src"]
      134 GETTABLEKS                       R24 R25 K38 ["Thunks"]
      136 GETIMPORT                        R25 K9 [require]
      138 GETTABLEKS                       R26 R24 K39 ["ReleaseEditor"]
      140 CALL                             R25 1 1
      141 GETTABLEKS                       R27 R1 K15 ["Src"]
      143 GETTABLEKS                       R26 R27 K40 ["Util"]
      145 GETIMPORT                        R27 K9 [require]
      147 GETTABLEKS                       R28 R26 K41 ["CalloutController"]
      149 CALL                             R27 1 1
      150 GETIMPORT                        R28 K9 [require]
      152 GETTABLEKS                       R29 R26 K42 ["Constants"]
      154 CALL                             R28 1 1
      155 GETIMPORT                        R29 K9 [require]
      157 GETTABLEKS                       R30 R26 K43 ["DebugFlags"]
      159 CALL                             R29 1 1
      160 GETIMPORT                        R30 K9 [require]
      162 GETTABLEKS                       R31 R26 K44 ["MakePluginActions"]
      164 CALL                             R30 1 1
      165 GETIMPORT                        R31 K9 [require]
      167 GETTABLEKS                       R32 R26 K45 ["RigVisualization"]
      169 CALL                             R31 1 1
      170 GETIMPORT                        R32 K9 [require]
      172 GETTABLEKS                       R33 R26 K46 ["showBlockingDialog"]
      174 CALL                             R32 1 1
      175 GETIMPORT                        R33 K9 [require]
      177 GETTABLEKS                       R34 R26 K47 ["Theme"]
      179 CALL                             R33 1 1
      180 GETIMPORT                        R34 K9 [require]
      182 GETTABLEKS                       R37 R1 K15 ["Src"]
      184 GETTABLEKS                       R36 R37 K35 ["Resources"]
      186 GETTABLEKS                       R35 R36 K48 ["AnalyticsHandlers"]
      188 CALL                             R34 1 1
      189 GETTABLEKS                       R35 R2 K49 ["PureComponent"]
      191 LOADK                            R37 K50 ["AnimationClipEditorPlugin"]
      192 NAMECALL                         R35 R35 K51 ["extend"]
      194 CALL                             R35 2 1
      195 GETIMPORT                        R36 K1 [game]
      197 LOADK                            R38 K52 ["FaceControlsEditorLink"]
      198 NAMECALL                         R36 R36 K53 ["GetFastString"]
      200 CALL                             R36 2 1
      201 GETIMPORT                        R37 K1 [game]
      203 LOADK                            R39 K54 ["ACEFaceRecorderLink"]
      204 LOADK                            R40 K55 ["https://create.roblox.com/docs/building-and-visuals/animation/face-recorder"]
      205 NAMECALL                         R37 R37 K56 ["DefineFastString"]
      207 CALL                             R37 3 1
      208 GETIMPORT                        R38 K1 [game]
      210 LOADK                            R40 K57 ["ACETemporaryToolHack"]
      211 LOADB                            R41 0
      212 NAMECALL                         R38 R38 K58 ["DefineFastFlag"]
      214 CALL                             R38 3 1
      215 GETIMPORT                        R39 K9 [require]
      217 GETTABLEKS                       R41 R1 K59 ["LuaFlags"]
      219 GETTABLEKS                       R40 R41 K60 ["GetFFlagFacialAnimationRecordingInStudio"]
      221 CALL                             R39 1 1
      222 DUPCLOSURE                       R40 K61 [PROTO_1]
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R28
      228 SETTABLEKS                       R40 R35 K62 ["handleButtonClick"]
      230 DUPCLOSURE                       R40 K63 [PROTO_2]
      231 SETTABLEKS                       R40 R35 K64 ["createPluginButton"]
      233 DUPCLOSURE                       R40 K65 [PROTO_13]
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R29
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R39
      244 CAPTURE                          VAL R37
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R30
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R34
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R38
      254 CAPTURE                          VAL R33
      255 SETTABLEKS                       R40 R35 K66 ["init"]
      257 DUPCLOSURE                       R40 K67 [PROTO_14]
      258 CAPTURE                          VAL R28
      259 CAPTURE                          VAL R9
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R7
      263 SETTABLEKS                       R40 R35 K68 ["getPluginSettings"]
      265 DUPCLOSURE                       R40 K69 [PROTO_15]
      266 CAPTURE                          VAL R28
      267 SETTABLEKS                       R40 R35 K70 ["setPluginSettings"]
      269 DUPCLOSURE                       R40 K71 [PROTO_16]
      270 CAPTURE                          VAL R28
      271 DUPCLOSURE                       R41 K72 [PROTO_17]
      272 CAPTURE                          VAL R28
      273 DUPCLOSURE                       R42 K73 [PROTO_18]
      274 CAPTURE                          VAL R28
      275 DUPCLOSURE                       R43 K74 [PROTO_19]
      276 CAPTURE                          VAL R28
      277 SETTABLEKS                       R43 R35 K75 ["didMount"]
      279 DUPCLOSURE                       R43 K76 [PROTO_20]
      280 CAPTURE                          VAL R38
      281 CAPTURE                          VAL R28
      282 SETTABLEKS                       R43 R35 K77 ["willUnmount"]
      284 DUPCLOSURE                       R43 K78 [PROTO_21]
      285 CAPTURE                          VAL R2
      286 CAPTURE                          VAL R14
      287 CAPTURE                          VAL R18
      288 CAPTURE                          VAL R13
      289 CAPTURE                          VAL R15
      290 SETTABLEKS                       R43 R35 K79 ["render"]
      292 RETURN                           R35 1
