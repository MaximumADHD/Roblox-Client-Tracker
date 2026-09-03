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
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["createElement"]
       11 GETUPVAL                         R6 3
       12 DUPTABLE                         R7 K5 [{"ErrorKey", "ErrorList"}]
       13 GETUPVAL                         R8 4
       14 GETTABLEKS                       R8 R8 K6 ["EDITOR_ERRORS_KEY"]
       16 SETTABLEKS                       R8 R7 K3 ["ErrorKey"]
       18 NEWTABLE                         R8 0 1
       20 DUPTABLE                         R9 K9 [{"id", "severity"}]
       21 GETUPVAL                         R10 4
       22 GETTABLEKS                       R10 R10 K10 ["EDITOR_ERRORS"]
       24 GETTABLEKS                       R10 R10 K11 ["OpenedWhileRunning"]
       26 SETTABLEKS                       R10 R9 K7 ["id"]
       28 GETUPVAL                         R10 4
       29 GETTABLEKS                       R10 R10 K12 ["SEVERITY"]
       31 GETTABLEKS                       R10 R10 K1 ["Error"]
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
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R3 R3 K2 ["toolbar"]
        6 SETTABLEKS                       R3 R0 K2 ["toolbar"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K1 ["pluginLoaderContext"]
       12 GETTABLEKS                       R3 R3 K3 ["mainButton"]
       14 SETTABLEKS                       R3 R0 K3 ["mainButton"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["plugin"]
        4 NAMECALL                         R0 R0 K1 ["handleButtonClick"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginLoaderContext"]
        3 GETTABLEKS                       R0 R0 K1 ["mainButtonClickedSignal"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["mainButton"]
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K2 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R2 1
       13 NAMECALL                         R0 R0 K3 ["Activate"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["plugin"]
        3 GETIMPORT                        R2 K4 [Enum.RibbonTool.Select]
        5 JUMPIFEQ                         R0 R2 ; [+13]
        7 GETIMPORT                        R2 K6 [Enum.RibbonTool.Rotate]
        9 JUMPIFEQ                         R0 R2 ; [+9]
       11 GETIMPORT                        R2 K8 [Enum.RibbonTool.Move]
       13 JUMPIFEQ                         R0 R2 ; [+5]
       15 GETIMPORT                        R2 K10 [Enum.RibbonTool.Scale]
       17 JUMPIFNOTEQ                      R0 R2 ; [+50]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K11 ["state"]
       22 GETTABLEKS                       R2 R2 K12 ["enabled"]
       24 JUMPIFNOT                        R2 ; [+43]
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K13 ["Heartbeat"]
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
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K15 ["store"]
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R0
       51 CALL                             R5 1 -1
       52 NAMECALL                         R3 R3 K16 ["dispatch"]
       54 CALL                             R3 -1 0
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K17 ["analytics"]
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 NAMECALL                         R1 R0 K1 ["GetSelectedRibbonTool"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K5 [Enum.RibbonTool.None]
        8 JUMPIFEQ                         R1 R2 ; [+8]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K6 ["onToolSelected"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["state"]
       20 GETTABLEKS                       R2 R2 K8 ["enabled"]
       22 JUMPIFNOT                        R2 ; [+18]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K9 ["clearMicrobones"]
       26 CALL                             R2 0 0
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K10 ["store"]
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K11 ["analytics"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K12 ["localization"]
       37 CALL                             R4 2 -1
       38 NAMECALL                         R2 R2 K13 ["dispatch"]
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
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
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K5 ["clearMicrobones"]
       25 CALL                             R1 0 0
       26 NAMECALL                         R1 R0 K6 ["GetSelectedRibbonTool"]
       28 CALL                             R1 1 1
       29 GETIMPORT                        R2 K10 [Enum.RibbonTool.None]
       31 JUMPIFEQ                         R1 R2 ; [+8]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K11 ["onToolSelected"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 1
       38 JUMPIFNOT                        R2 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K12 ["state"]
       43 GETTABLEKS                       R2 R2 K13 ["enabled"]
       45 JUMPIFNOT                        R2 ; [+14]
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K14 ["store"]
       49 GETUPVAL                         R4 5
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K15 ["analytics"]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K16 ["localization"]
       56 CALL                             R4 2 -1
       57 NAMECALL                         R2 R2 K17 ["dispatch"]
       59 CALL                             R2 -1 0
       60 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deactivationInProgress"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["deactivationInProgress"]
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+7]
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K4 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K5 ["table"] ; [+6]
       19 GETIMPORT                        R3 K7 [warn]
       21 LOADK                            R4 K8 ["[AnimationClipEditor] Ignoring malformed Open in Clip Editor request."]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R5 R2 K9 ["animationTag"]
       27 GETTABLEKS                       R6 R2 K10 ["rigUniqueId"]
       29 NAMECALL                         R3 R3 K11 ["openAnimationGenAnimation"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 NAMECALL                         R1 R1 K1 ["getState"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["Status"]
        8 GETTABLEKS                       R1 R1 K3 ["RootInstance"]
       10 JUMPIFEQKNIL                     R1 ; [+5]
       12 JUMPIFEQKNIL                     R0 ; [+3]
       14 JUMPIFNOTEQKS                    R0 K4 [""] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 MOVE                             R4 R0
       19 NAMECALL                         R2 R2 K5 ["GetInstanceByRfc4122String"]
       21 CALL                             R2 2 1
       22 JUMPIFEQ                         R2 R1 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["state"]
       28 GETTABLEKS                       R2 R2 K7 ["enabled"]
       30 JUMPIFNOT                        R2 ; [+9]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K0 ["store"]
       34 GETUPVAL                         R4 2
       35 LOADB                            R5 0
       36 CALL                             R4 1 -1
       37 NAMECALL                         R2 R2 K8 ["dispatch"]
       39 CALL                             R2 -1 0
       40 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R1 K0 ["plugin"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["AnimationClipEditorPlugin requires a Plugin."]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 NEWTABLE                         R2 0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["thunkMiddleware"]
       17 SETLIST                          R2 R3 1 [1]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["LogRoduxEvents"]
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+9]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["loggerMiddleware"]
       27 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K9 [table.insert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K10 ["Store"]
       36 GETTABLEKS                       R3 R3 K11 ["new"]
       38 GETUPVAL                         R4 2
       39 LOADNIL                          R5
       40 MOVE                             R6 R2
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K12 ["store"]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K11 ["new"]
       47 DUPTABLE                         R4 K16 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K17 ["PLUGIN_NAME"]
       51 SETTABLEKS                       R5 R4 K13 ["pluginName"]
       53 GETUPVAL                         R5 5
       54 SETTABLEKS                       R5 R4 K14 ["stringResourceTable"]
       56 GETUPVAL                         R5 6
       57 SETTABLEKS                       R5 R4 K15 ["translationResourceTable"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R0 K18 ["localization"]
       62 GETUPVAL                         R3 7
       63 GETTABLEKS                       R3 R3 K11 ["new"]
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
      137 GETUPVAL                         R6 11
      138 GETTABLEKS                       R6 R6 K32 ["PluginActions"]
      140 GETTABLEKS                       R6 R6 K11 ["new"]
      142 GETTABLEKS                       R7 R1 K0 ["plugin"]
      144 GETUPVAL                         R8 12
      145 GETTABLEKS                       R9 R1 K0 ["plugin"]
      147 GETTABLEKS                       R10 R0 K18 ["localization"]
      149 CALL                             R8 2 -1
      150 CALL                             R6 -1 1
      151 SETTABLEKS                       R6 R0 K33 ["actions"]
      153 DUPTABLE                         R6 K38 [{["enabled"] = False, ["pluginGui"] = }]
      154 SETTABLEKS                       R6 R0 K39 ["state"]
      156 GETUPVAL                         R6 13
      157 GETTABLEKS                       R6 R6 K11 ["new"]
      159 GETUPVAL                         R7 4
      160 GETTABLEKS                       R7 R7 K40 ["SIGNAL_KEYS"]
      162 CALL                             R6 1 1
      163 SETTABLEKS                       R6 R0 K41 ["signals"]
      165 GETUPVAL                         R6 11
      166 GETTABLEKS                       R6 R6 K42 ["Analytics"]
      168 GETTABLEKS                       R6 R6 K11 ["new"]
      170 GETUPVAL                         R7 14
      171 CALL                             R6 1 1
      172 SETTABLEKS                       R6 R0 K43 ["analytics"]
      174 GETTABLEKS                       R8 R1 K0 ["plugin"]
      176 GETTABLEKS                       R9 R0 K18 ["localization"]
      178 NAMECALL                         R6 R0 K44 ["createPluginButton"]
      180 CALL                             R6 3 0
      181 GETTABLEKS                       R6 R0 K45 ["mainButton"]
      183 GETTABLEKS                       R8 R0 K39 ["state"]
      185 GETTABLEKS                       R8 R8 K34 ["enabled"]
      187 NAMECALL                         R6 R6 K46 ["SetActive"]
      189 CALL                             R6 2 0
      190 GETIMPORT                        R6 K49 [task.defer]
      192 NEWCLOSURE                       R7 P0
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R0
      195 CALL                             R6 1 0
      196 NEWCLOSURE                       R6 P1
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R6 R0 K50 ["onDockWidgetEnabledChanged"]
      200 NEWCLOSURE                       R6 P2
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U15
      204 CAPTURE                          UPVAL U16
      205 SETTABLEKS                       R6 R0 K51 ["onToolSelected"]
      207 LOADB                            R6 0
      208 SETTABLEKS                       R6 R0 K52 ["deactivationInProgress"]
      210 NEWCLOSURE                       R6 P3
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U17
      214 CAPTURE                          UPVAL U18
      215 GETTABLEKS                       R7 R0 K53 ["props"]
      217 GETTABLEKS                       R7 R7 K0 ["plugin"]
      219 GETTABLEKS                       R7 R7 K54 ["Deactivation"]
      221 NEWCLOSURE                       R9 P4
      222 CAPTURE                          VAL R1
      223 CAPTURE                          UPVAL U19
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R6
      226 CAPTURE                          UPVAL U17
      227 CAPTURE                          UPVAL U18
      228 NAMECALL                         R7 R7 K55 ["Connect"]
      230 CALL                             R7 2 1
      231 SETTABLEKS                       R7 R0 K56 ["deactivationListener"]
      233 GETUPVAL                         R8 19
      234 JUMPIFNOT                        R8 ; [+13]
      235 GETTABLEKS                       R7 R0 K53 ["props"]
      237 GETTABLEKS                       R7 R7 K0 ["plugin"]
      239 GETTABLEKS                       R7 R7 K57 ["Unloading"]
      241 NEWCLOSURE                       R9 P5
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R6
      244 NAMECALL                         R7 R7 K55 ["Connect"]
      246 CALL                             R7 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R7
      249 SETTABLEKS                       R7 R0 K58 ["unloadingListener"]
      251 GETTABLEKS                       R7 R0 K53 ["props"]
      253 GETTABLEKS                       R7 R7 K0 ["plugin"]
      255 NAMECALL                         R7 R7 K59 ["GetMouse"]
      257 CALL                             R7 1 1
      258 SETTABLEKS                       R7 R0 K60 ["mouse"]
      260 GETUPVAL                         R7 20
      261 CALL                             R7 0 1
      262 SETTABLEKS                       R7 R0 K61 ["theme"]
      264 NEWCLOSURE                       R7 P6
      265 CAPTURE                          VAL R0
      266 SETTABLEKS                       R7 R0 K62 ["closeWidget"]
      268 GETUPVAL                         R7 21
      269 CALL                             R7 0 1
      270 JUMPIFNOT                        R7 ; [+21]
      271 GETUPVAL                         R7 22
      272 LOADK                            R9 K63 ["OpenAnimationInClipEditor"]
      273 NEWCLOSURE                       R10 P7
      274 CAPTURE                          UPVAL U23
      275 CAPTURE                          VAL R0
      276 NAMECALL                         R7 R7 K64 ["Bind"]
      278 CALL                             R7 3 1
      279 SETTABLEKS                       R7 R0 K65 ["animationGenOpenConnection"]
      281 GETUPVAL                         R7 22
      282 LOADK                            R9 K66 ["AnimationGenTookOverAnimator"]
      283 NEWCLOSURE                       R10 P8
      284 CAPTURE                          VAL R0
      285 CAPTURE                          UPVAL U24
      286 CAPTURE                          UPVAL U25
      287 NAMECALL                         R7 R7 K64 ["Bind"]
      289 CALL                             R7 3 1
      290 SETTABLEKS                       R7 R0 K67 ["animationGenTookOverAnimatorConnection"]
      292 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["SETTINGS"]
        7 GETTABLEKS                       R4 R4 K3 ["SnapMode"]
        9 NAMECALL                         R2 R1 K4 ["GetSetting"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+9]
       14 GETTABLEKS                       R3 R0 K5 ["store"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R2
       18 CALL                             R5 1 -1
       19 NAMECALL                         R3 R3 K6 ["dispatch"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["SETTINGS"]
       25 GETTABLEKS                       R5 R5 K7 ["TimelineUnit"]
       27 NAMECALL                         R3 R1 K4 ["GetSetting"]
       29 CALL                             R3 2 1
       30 JUMPIFEQKNIL                     R3 ; [+9]
       32 GETTABLEKS                       R4 R0 K5 ["store"]
       34 GETUPVAL                         R6 2
       35 MOVE                             R7 R3
       36 CALL                             R6 1 -1
       37 NAMECALL                         R4 R4 K6 ["dispatch"]
       39 CALL                             R4 -1 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K2 ["SETTINGS"]
       43 GETTABLEKS                       R6 R6 K8 ["RotationType"]
       45 NAMECALL                         R4 R1 K4 ["GetSetting"]
       47 CALL                             R4 2 1
       48 JUMPIFEQKNIL                     R4 ; [+9]
       50 GETTABLEKS                       R5 R0 K5 ["store"]
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R4
       54 CALL                             R7 1 -1
       55 NAMECALL                         R5 R5 K6 ["dispatch"]
       57 CALL                             R5 -1 0
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K2 ["SETTINGS"]
       61 GETTABLEKS                       R7 R7 K9 ["EulerAnglesOrder"]
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

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 GETTABLEKS                       R2 R0 K2 ["store"]
        6 NAMECALL                         R2 R2 K3 ["getState"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R2 R2 K4 ["Status"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["SETTINGS"]
       14 GETTABLEKS                       R5 R5 K6 ["TimelineUnit"]
       16 GETTABLEKS                       R6 R2 K6 ["TimelineUnit"]
       18 NAMECALL                         R3 R1 K7 ["SetSetting"]
       20 CALL                             R3 3 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["SETTINGS"]
       24 GETTABLEKS                       R5 R5 K8 ["SnapMode"]
       26 GETTABLEKS                       R6 R2 K8 ["SnapMode"]
       28 NAMECALL                         R3 R1 K7 ["SetSetting"]
       30 CALL                             R3 3 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["SETTINGS"]
       34 GETTABLEKS                       R5 R5 K9 ["RotationType"]
       36 GETTABLEKS                       R6 R2 K10 ["DefaultRotationType"]
       38 NAMECALL                         R3 R1 K7 ["SetSetting"]
       40 CALL                             R3 3 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K5 ["SETTINGS"]
       44 GETTABLEKS                       R5 R5 K11 ["EulerAnglesOrder"]
       46 GETTABLEKS                       R6 R2 K12 ["DefaultEulerAnglesOrder"]
       48 NAMECALL                         R3 R1 K7 ["SetSetting"]
       50 CALL                             R3 3 0
       51 RETURN                           R0 0

PROTO_18:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_19:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+12]
       10 GETIMPORT                        R2 K4 [Instance.new]
       12 LOADK                            R3 K5 ["BindableEvent"]
       13 CALL                             R2 1 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       18 SETTABLEKS                       R2 R1 K6 ["Name"]
       20 SETTABLEKS                       R0 R1 K7 ["Parent"]
       22 RETURN                           R1 1

PROTO_20:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R2 R1 K2 ["Destroy"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainDockWidget"]
        6 DUPTABLE                         R4 K5 [{"pluginGui", "enabled"}]
        7 SETTABLEKS                       R1 R4 K3 ["pluginGui"]
        9 GETTABLEKS                       R5 R1 K6 ["Enabled"]
       11 SETTABLEKS                       R5 R4 K4 ["enabled"]
       13 NAMECALL                         R2 R0 K7 ["setState"]
       15 CALL                             R2 2 0
       16 NAMECALL                         R2 R0 K8 ["getPluginSettings"]
       18 CALL                             R2 1 0
       19 JUMPIF                           R1 ; [+2]
       20 LOADNIL                          R2
       21 JUMP                             ; [+6]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K9 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       25 NAMECALL                         R2 R1 K10 ["FindFirstChild"]
       27 CALL                             R2 2 1
       28 JUMPIF                           R2 ; [+12]
       29 GETIMPORT                        R3 K13 [Instance.new]
       31 LOADK                            R4 K14 ["BindableEvent"]
       32 CALL                             R3 1 1
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K9 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       37 SETTABLEKS                       R3 R2 K15 ["Name"]
       39 SETTABLEKS                       R1 R2 K16 ["Parent"]
       41 GETUPVAL                         R2 1
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+6]
       44 GETUPVAL                         R2 2
       45 LOADK                            R4 K17 ["AnimationClipEditorReady"]
       46 LOADK                            R5 K18 ["true"]
       47 NAMECALL                         R2 R2 K19 ["SetItem"]
       49 CALL                             R2 3 0
       50 RETURN                           R0 0

PROTO_22:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKNIL                  R2 ; [+6]
        4 GETIMPORT                        R3 K1 [warn]
        6 LOADK                            R4 K2 ["[AnimationClipEditor] Open in Clip Editor request missing animation or rig."]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["GetInstanceByRfc4122String"]
       13 CALL                             R3 2 1
       14 JUMPIFEQKNIL                     R3 ; [+6]
       16 LOADK                            R6 K4 ["Model"]
       17 NAMECALL                         R4 R3 K5 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIF                           R4 ; [+5]
       21 GETIMPORT                        R4 K1 [warn]
       23 LOADK                            R5 K6 ["[AnimationClipEditor] Open in Clip Editor: could not resolve the target rig."]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 LOADNIL                          R4
       27 GETUPVAL                         R5 1
       28 MOVE                             R7 R1
       29 NAMECALL                         R5 R5 K7 ["GetTagged"]
       31 CALL                             R5 2 3
       32 FORGPREP                         R5
       33 LOADK                            R12 K8 ["KeyframeSequence"]
       34 NAMECALL                         R10 R9 K5 ["IsA"]
       36 CALL                             R10 2 1
       37 JUMPIFNOT                        R10 ; [+18]
       38 GETTABLEKS                       R10 R9 K9 ["Parent"]
       40 JUMPIFNOT                        R10 ; [+15]
       41 GETTABLEKS                       R10 R9 K9 ["Parent"]
       43 LOADK                            R12 K10 ["ObjectValue"]
       44 NAMECALL                         R10 R10 K5 ["IsA"]
       46 CALL                             R10 2 1
       47 JUMPIFNOT                        R10 ; [+8]
       48 GETTABLEKS                       R10 R9 K9 ["Parent"]
       50 GETTABLEKS                       R10 R10 K11 ["Value"]
       52 JUMPIFNOTEQ                      R10 R3 ; [+3]
       54 MOVE                             R4 R9
       55 JUMP                             ; [+2]
       56 FORGLOOP                         R5 2 ; [-24]
       58 JUMPIFNOTEQKNIL                  R4 ; [+6]
       60 GETIMPORT                        R5 K1 [warn]
       62 LOADK                            R6 K12 ["[AnimationClipEditor] Open in Clip Editor: no matching animation found for the rig."]
       63 CALL                             R5 1 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R5 R0 K13 ["store"]
       67 GETUPVAL                         R7 2
       68 MOVE                             R8 R3
       69 GETTABLEKS                       R9 R0 K14 ["analytics"]
       71 GETTABLEKS                       R10 R0 K15 ["localization"]
       73 MOVE                             R11 R4
       74 CALL                             R7 4 -1
       75 NAMECALL                         R5 R5 K16 ["dispatch"]
       77 CALL                             R5 -1 0
       78 GETTABLEKS                       R5 R0 K17 ["state"]
       80 GETTABLEKS                       R5 R5 K18 ["enabled"]
       82 JUMPIFNOT                        R5 ; [+9]
       83 GETTABLEKS                       R5 R0 K19 ["props"]
       85 GETTABLEKS                       R5 R5 K20 ["pluginLoaderContext"]
       87 GETTABLEKS                       R5 R5 K21 ["mainDockWidget"]
       89 NAMECALL                         R6 R5 K22 ["RequestRaise"]
       91 CALL                             R6 1 0
       92 RETURN                           R0 0

PROTO_23:
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
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+21]
       21 GETTABLEKS                       R1 R0 K3 ["animationGenOpenConnection"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETTABLEKS                       R1 R0 K3 ["animationGenOpenConnection"]
       26 NAMECALL                         R1 R1 K1 ["Disconnect"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K4 ["animationGenTookOverAnimatorConnection"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETTABLEKS                       R1 R0 K4 ["animationGenTookOverAnimatorConnection"]
       34 NAMECALL                         R1 R1 K1 ["Disconnect"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 2
       38 LOADK                            R3 K5 ["AnimationClipEditorReady"]
       39 NAMECALL                         R1 R1 K6 ["RemoveItem"]
       41 CALL                             R1 2 0
       42 GETTABLEKS                       R1 R0 K7 ["props"]
       44 GETTABLEKS                       R1 R1 K8 ["pluginLoaderContext"]
       46 GETTABLEKS                       R1 R1 K9 ["mainDockWidget"]
       48 JUMPIF                           R1 ; [+2]
       49 LOADNIL                          R2
       50 JUMP                             ; [+6]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K10 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       54 NAMECALL                         R2 R1 K11 ["FindFirstChild"]
       56 CALL                             R2 2 1
       57 JUMPIFNOT                        R2 ; [+3]
       58 NAMECALL                         R3 R2 K12 ["Destroy"]
       60 CALL                             R3 1 0
       61 NAMECALL                         R2 R0 K13 ["setPluginSettings"]
       63 CALL                             R2 1 0
       64 GETTABLEKS                       R2 R0 K14 ["theme"]
       66 NAMECALL                         R2 R2 K15 ["destroy"]
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["store"]
        4 GETTABLEKS                       R3 R0 K2 ["localization"]
        6 GETTABLEKS                       R4 R1 K3 ["plugin"]
        8 GETTABLEKS                       R5 R0 K4 ["actions"]
       10 GETTABLEKS                       R6 R0 K5 ["analytics"]
       12 GETTABLEKS                       R7 R0 K6 ["mouse"]
       14 GETTABLEKS                       R8 R0 K7 ["theme"]
       16 GETTABLEKS                       R9 R0 K8 ["state"]
       18 GETTABLEKS                       R9 R9 K9 ["pluginGui"]
       20 JUMPIFNOTEQKNIL                  R9 ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 GETTABLEKS                       R11 R0 K8 ["state"]
       26 GETTABLEKS                       R11 R11 K10 ["enabled"]
       28 GETTABLEKS                       R12 R0 K11 ["mainButton"]
       30 MOVE                             R14 R11
       31 NAMECALL                         R12 R12 K12 ["SetActive"]
       33 CALL                             R12 2 0
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K13 ["createElement"]
       37 GETUPVAL                         R13 1
       38 NEWTABLE                         R14 8 0
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
       57 GETTABLEKS                       R15 R1 K24 ["pluginLoaderContext"]
       59 GETTABLEKS                       R15 R15 K25 ["mainDockWidget"]
       61 SETTABLEKS                       R15 R14 K26 ["Widget"]
       63 SETTABLEKS                       R11 R14 K27 ["Enabled"]
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K28 ["Change"]
       68 GETTABLEKS                       R15 R15 K27 ["Enabled"]
       70 GETTABLEKS                       R16 R0 K29 ["onDockWidgetEnabledChanged"]
       72 SETTABLE                         R16 R14 R15
       73 GETTABLEKS                       R15 R0 K30 ["closeWidget"]
       75 SETTABLEKS                       R15 R14 K31 ["OnClose"]
       77 DUPTABLE                         R15 K33 [{"MainProvider"}]
       78 MOVE                             R16 R10
       79 JUMPIFNOT                        R16 ; [+47]
       80 MOVE                             R16 R11
       81 JUMPIFNOT                        R16 ; [+45]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K13 ["createElement"]
       85 GETUPVAL                         R17 2
       86 DUPTABLE                         R18 K38 [{"theme", "focusGui", "store", "plugin", "localization", "pluginActions", "mouse", "analytics", "signals", "calloutController"}]
       87 SETTABLEKS                       R8 R18 K7 ["theme"]
       89 SETTABLEKS                       R9 R18 K34 ["focusGui"]
       91 SETTABLEKS                       R2 R18 K1 ["store"]
       93 SETTABLEKS                       R4 R18 K3 ["plugin"]
       95 SETTABLEKS                       R3 R18 K2 ["localization"]
       97 SETTABLEKS                       R5 R18 K35 ["pluginActions"]
       99 SETTABLEKS                       R7 R18 K6 ["mouse"]
      101 SETTABLEKS                       R6 R18 K5 ["analytics"]
      103 GETTABLEKS                       R19 R0 K36 ["signals"]
      105 SETTABLEKS                       R19 R18 K36 ["signals"]
      107 GETTABLEKS                       R19 R0 K37 ["calloutController"]
      109 SETTABLEKS                       R19 R18 K37 ["calloutController"]
      111 DUPTABLE                         R19 K40 [{"AnimationClipEditor", "Dragger"}]
      112 GETUPVAL                         R20 0
      113 GETTABLEKS                       R20 R20 K13 ["createElement"]
      115 GETUPVAL                         R21 3
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R20 R19 K14 ["AnimationClipEditor"]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K13 ["createElement"]
      122 GETUPVAL                         R21 4
      123 CALL                             R20 1 1
      124 SETTABLEKS                       R20 R19 K39 ["Dragger"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K32 ["MainProvider"]
      129 CALL                             R12 3 -1
      130 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["RunService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["UniqueIdLookupService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K9 [script]
       33 LOADK                            R7 K10 ["AnimationClipEditor"]
       34 NAMECALL                         R5 R5 K11 ["FindFirstAncestor"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [require]
       39 GETTABLEKS                       R7 R5 K14 ["Packages"]
       41 GETTABLEKS                       R7 R7 K15 ["Roact"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R8 R5 K14 ["Packages"]
       48 GETTABLEKS                       R8 R8 K16 ["Rodux"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETTABLEKS                       R9 R5 K14 ["Packages"]
       55 GETTABLEKS                       R9 R9 K17 ["Framework"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R8 K18 ["ContextServices"]
       60 GETTABLEKS                       R10 R5 K19 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Actions"]
       64 GETIMPORT                        R11 K13 [require]
       66 GETTABLEKS                       R12 R10 K21 ["SetDefaultEulerAnglesOrder"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K13 [require]
       71 GETTABLEKS                       R13 R10 K22 ["SetDefaultRotationType"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K13 [require]
       76 GETTABLEKS                       R14 R10 K23 ["SetSnapMode"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K13 [require]
       81 GETTABLEKS                       R15 R10 K24 ["SetTimelineUnit"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K13 [require]
       86 GETTABLEKS                       R16 R10 K25 ["SetTool"]
       88 CALL                             R15 1 1
       89 GETTABLEKS                       R16 R5 K19 ["Src"]
       91 GETTABLEKS                       R16 R16 K26 ["Components"]
       93 GETIMPORT                        R17 K13 [require]
       95 GETTABLEKS                       R18 R16 K10 ["AnimationClipEditor"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K13 [require]
      100 GETTABLEKS                       R19 R16 K27 ["PluginWidget"]
      102 GETTABLEKS                       R19 R19 K28 ["DockWidget"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K13 [require]
      107 GETTABLEKS                       R20 R16 K29 ["Draggers"]
      109 GETTABLEKS                       R20 R20 K30 ["DraggerWrapper"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K13 [require]
      114 GETTABLEKS                       R21 R16 K31 ["BlockingDialog"]
      116 GETTABLEKS                       R21 R21 K32 ["ErrorList"]
      118 CALL                             R20 1 1
      119 GETTABLEKS                       R21 R5 K19 ["Src"]
      121 GETTABLEKS                       R21 R21 K33 ["Context"]
      123 GETIMPORT                        R22 K13 [require]
      125 GETTABLEKS                       R23 R21 K34 ["MainProvider"]
      127 CALL                             R22 1 1
      128 GETIMPORT                        R23 K13 [require]
      130 GETTABLEKS                       R24 R21 K35 ["Signals"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K13 [require]
      135 GETTABLEKS                       R25 R5 K19 ["Src"]
      137 GETTABLEKS                       R25 R25 K36 ["Reducers"]
      139 GETTABLEKS                       R25 R25 K37 ["MainReducer"]
      141 CALL                             R24 1 1
      142 GETTABLEKS                       R25 R9 K38 ["Localization"]
      144 GETTABLEKS                       R26 R5 K19 ["Src"]
      146 GETTABLEKS                       R26 R26 K39 ["Resources"]
      148 GETTABLEKS                       R26 R26 K40 ["SourceStrings"]
      150 GETTABLEKS                       R27 R5 K19 ["Src"]
      152 GETTABLEKS                       R27 R27 K39 ["Resources"]
      154 GETTABLEKS                       R27 R27 K41 ["LocalizedStrings"]
      156 GETIMPORT                        R28 K13 [require]
      158 GETTABLEKS                       R29 R10 K42 ["SetActive"]
      160 CALL                             R28 1 1
      161 GETTABLEKS                       R29 R5 K19 ["Src"]
      163 GETTABLEKS                       R29 R29 K43 ["Thunks"]
      165 GETIMPORT                        R30 K13 [require]
      167 GETTABLEKS                       R31 R29 K44 ["ReleaseEditor"]
      169 CALL                             R30 1 1
      170 GETIMPORT                        R31 K13 [require]
      172 GETTABLEKS                       R32 R29 K45 ["UpdateRootInstance"]
      174 CALL                             R31 1 1
      175 GETTABLEKS                       R32 R5 K19 ["Src"]
      177 GETTABLEKS                       R32 R32 K46 ["Util"]
      179 GETIMPORT                        R33 K13 [require]
      181 GETTABLEKS                       R34 R32 K47 ["CalloutController"]
      183 CALL                             R33 1 1
      184 GETIMPORT                        R34 K13 [require]
      186 GETTABLEKS                       R35 R32 K48 ["Constants"]
      188 CALL                             R34 1 1
      189 GETIMPORT                        R35 K13 [require]
      191 GETTABLEKS                       R36 R32 K49 ["DebugFlags"]
      193 CALL                             R35 1 1
      194 GETIMPORT                        R36 K13 [require]
      196 GETTABLEKS                       R37 R32 K50 ["MakePluginActions"]
      198 CALL                             R36 1 1
      199 GETIMPORT                        R37 K13 [require]
      201 GETTABLEKS                       R38 R32 K51 ["RigVisualization"]
      203 CALL                             R37 1 1
      204 GETIMPORT                        R38 K13 [require]
      206 GETTABLEKS                       R39 R32 K52 ["showBlockingDialog"]
      208 CALL                             R38 1 1
      209 GETIMPORT                        R39 K13 [require]
      211 GETTABLEKS                       R40 R32 K53 ["Theme"]
      213 CALL                             R39 1 1
      214 GETIMPORT                        R40 K13 [require]
      216 GETTABLEKS                       R41 R5 K19 ["Src"]
      218 GETTABLEKS                       R41 R41 K39 ["Resources"]
      220 GETTABLEKS                       R41 R41 K54 ["AnalyticsHandlers"]
      222 CALL                             R40 1 1
      223 GETTABLEKS                       R41 R6 K55 ["PureComponent"]
      225 LOADK                            R43 K56 ["AnimationClipEditorPlugin"]
      226 NAMECALL                         R41 R41 K57 ["extend"]
      228 CALL                             R41 2 1
      229 GETIMPORT                        R42 K1 [game]
      231 LOADK                            R44 K58 ["FaceControlsEditorLink"]
      232 NAMECALL                         R42 R42 K59 ["GetFastString"]
      234 CALL                             R42 2 1
      235 GETIMPORT                        R43 K1 [game]
      237 LOADK                            R45 K60 ["ACEFaceRecorderLink"]
      238 LOADK                            R46 K61 ["https://create.roblox.com/docs/building-and-visuals/animation/face-recorder"]
      239 NAMECALL                         R43 R43 K62 ["DefineFastString"]
      241 CALL                             R43 3 1
      242 GETIMPORT                        R44 K1 [game]
      244 LOADK                            R46 K63 ["ACETemporaryToolHack"]
      245 LOADB                            R47 0
      246 NAMECALL                         R44 R44 K64 ["DefineFastFlag"]
      248 CALL                             R44 3 1
      249 GETIMPORT                        R45 K13 [require]
      251 GETTABLEKS                       R46 R5 K19 ["Src"]
      253 GETTABLEKS                       R46 R46 K65 ["Flags"]
      255 GETTABLEKS                       R46 R46 K66 ["getFFlagAnimationGenOpenACE"]
      257 CALL                             R45 1 1
      258 GETIMPORT                        R46 K13 [require]
      260 GETTABLEKS                       R47 R5 K67 ["LuaFlags"]
      262 GETTABLEKS                       R47 R47 K68 ["GetFFlagFacialAnimationRecordingInStudio"]
      264 CALL                             R46 1 1
      265 DUPCLOSURE                       R47 K69 [PROTO_1]
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R38
      268 CAPTURE                          VAL R6
      269 CAPTURE                          VAL R20
      270 CAPTURE                          VAL R34
      271 SETTABLEKS                       R47 R41 K70 ["handleButtonClick"]
      273 DUPCLOSURE                       R47 K71 [PROTO_2]
      274 SETTABLEKS                       R47 R41 K72 ["createPluginButton"]
      276 DUPCLOSURE                       R47 K73 [PROTO_15]
      277 CAPTURE                          VAL R7
      278 CAPTURE                          VAL R35
      279 CAPTURE                          VAL R24
      280 CAPTURE                          VAL R25
      281 CAPTURE                          VAL R34
      282 CAPTURE                          VAL R26
      283 CAPTURE                          VAL R27
      284 CAPTURE                          VAL R33
      285 CAPTURE                          VAL R42
      286 CAPTURE                          VAL R46
      287 CAPTURE                          VAL R43
      288 CAPTURE                          VAL R9
      289 CAPTURE                          VAL R36
      290 CAPTURE                          VAL R23
      291 CAPTURE                          VAL R40
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R37
      295 CAPTURE                          VAL R30
      296 CAPTURE                          VAL R44
      297 CAPTURE                          VAL R39
      298 CAPTURE                          VAL R45
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R1
      301 CAPTURE                          VAL R4
      302 CAPTURE                          VAL R28
      303 SETTABLEKS                       R47 R41 K74 ["init"]
      305 DUPCLOSURE                       R47 K75 [PROTO_16]
      306 CAPTURE                          VAL R34
      307 CAPTURE                          VAL R13
      308 CAPTURE                          VAL R14
      309 CAPTURE                          VAL R12
      310 CAPTURE                          VAL R11
      311 SETTABLEKS                       R47 R41 K76 ["getPluginSettings"]
      313 DUPCLOSURE                       R47 K77 [PROTO_17]
      314 CAPTURE                          VAL R34
      315 SETTABLEKS                       R47 R41 K78 ["setPluginSettings"]
      317 DUPCLOSURE                       R47 K79 [PROTO_18]
      318 CAPTURE                          VAL R34
      319 DUPCLOSURE                       R48 K80 [PROTO_19]
      320 CAPTURE                          VAL R34
      321 DUPCLOSURE                       R49 K81 [PROTO_20]
      322 CAPTURE                          VAL R34
      323 DUPCLOSURE                       R50 K82 [PROTO_21]
      324 CAPTURE                          VAL R34
      325 CAPTURE                          VAL R45
      326 CAPTURE                          VAL R2
      327 SETTABLEKS                       R50 R41 K83 ["didMount"]
      329 DUPCLOSURE                       R50 K84 [PROTO_22]
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R31
      333 SETTABLEKS                       R50 R41 K85 ["openAnimationGenAnimation"]
      335 DUPCLOSURE                       R50 K86 [PROTO_23]
      336 CAPTURE                          VAL R44
      337 CAPTURE                          VAL R45
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R34
      340 SETTABLEKS                       R50 R41 K87 ["willUnmount"]
      342 DUPCLOSURE                       R50 K88 [PROTO_24]
      343 CAPTURE                          VAL R6
      344 CAPTURE                          VAL R18
      345 CAPTURE                          VAL R22
      346 CAPTURE                          VAL R17
      347 CAPTURE                          VAL R19
      348 SETTABLEKS                       R50 R41 K89 ["render"]
      350 RETURN                           R41 1
