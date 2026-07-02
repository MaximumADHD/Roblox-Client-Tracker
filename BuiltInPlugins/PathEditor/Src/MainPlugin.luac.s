PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["telemetry"]
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["join"]
        8 DUPTABLE                         R7 K4 [{"placeId", "studioSid"}]
        9 GETIMPORT                        R8 K6 [game]
       11 GETTABLEKS                       R8 R8 K7 ["PlaceId"]
       13 SETTABLEKS                       R8 R7 K2 ["placeId"]
       15 GETUPVAL                         R8 2
       16 NAMECALL                         R8 R8 K8 ["GetSessionId"]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K3 ["studioSid"]
       21 MOVE                             R8 R1
       22 CALL                             R6 2 -1
       23 NAMECALL                         R2 R2 K9 ["logRobloxTelemetryEvent"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["totalCount"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+26]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["log"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"selectModeCount", "addPointModeCount", "addTangentModeCount"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["selectModeCount"]
       15 SETTABLEKS                       R3 R2 K2 ["selectModeCount"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["addPointModeCount"]
       20 SETTABLEKS                       R3 R2 K3 ["addPointModeCount"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["addTangentModeCount"]
       25 SETTABLEKS                       R3 R2 K4 ["addTangentModeCount"]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 0
       29 NAMECALL                         R0 R0 K6 ["reset"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logUsageReport"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Store"]
        7 GETTABLEKS                       R2 R2 K2 ["new"]
        9 GETUPVAL                         R3 1
       10 LOADNIL                          R4
       11 NEWTABLE                         R5 0 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["thunkMiddleware"]
       16 SETLIST                          R5 R6 1 [1]
       18 LOADNIL                          R6
       19 CALL                             R2 4 1
       20 SETTABLEKS                       R2 R0 K4 ["store"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["Localization"]
       25 GETTABLEKS                       R2 R2 K2 ["new"]
       27 DUPTABLE                         R3 K10 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PathEditor"}]
       28 GETUPVAL                         R4 3
       29 SETTABLEKS                       R4 R3 K6 ["stringResourceTable"]
       31 GETUPVAL                         R4 4
       32 SETTABLEKS                       R4 R3 K7 ["translationResourceTable"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K11 ["localization"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 SETTABLEKS                       R2 R0 K12 ["log"]
       43 NEWCLOSURE                       R2 P1
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U8
       47 SETTABLEKS                       R2 R0 K13 ["logUsageReport"]
       49 GETUPVAL                         R2 9
       50 GETTABLEKS                       R2 R2 K2 ["new"]
       52 CALL                             R2 0 1
       53 SETTABLEKS                       R2 R0 K14 ["telemetry"]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K15 ["Analytics"]
       58 GETTABLEKS                       R2 R2 K2 ["new"]
       60 DUPCLOSURE                       R3 K16 [PROTO_2]
       61 NEWTABLE                         R4 0 0
       63 CALL                             R2 2 1
       64 SETTABLEKS                       R2 R0 K17 ["analytics"]
       66 GETUPVAL                         R2 10
       67 NAMECALL                         R2 R2 K18 ["IsClient"]
       69 CALL                             R2 1 1
       70 JUMPIF                           R2 ; [+9]
       71 GETUPVAL                         R2 11
       72 JUMPIF                           R2 ; [+7]
       73 GETIMPORT                        R2 K20 [game]
       75 NEWCLOSURE                       R4 P3
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R2 R2 K21 ["BindToClose"]
       79 CALL                             R2 2 0
       80 GETUPVAL                         R2 2
       81 GETTABLEKS                       R2 R2 K22 ["PluginActions"]
       83 GETTABLEKS                       R2 R2 K2 ["new"]
       85 GETTABLEKS                       R3 R1 K23 ["Plugin"]
       87 GETUPVAL                         R4 12
       88 GETTABLEKS                       R5 R1 K24 ["plugin"]
       90 GETTABLEKS                       R6 R0 K11 ["localization"]
       92 CALL                             R4 2 -1
       93 CALL                             R2 -1 1
       94 SETTABLEKS                       R2 R0 K25 ["actions"]
       96 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["provide"]
        7 NEWTABLE                         R4 0 7
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["new"]
       12 MOVE                             R6 R2
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["new"]
       17 GETTABLEKS                       R7 R0 K4 ["store"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K3 ["new"]
       23 NAMECALL                         R8 R2 K5 ["getMouse"]
       25 CALL                             R8 1 -1
       26 CALL                             R7 -1 1
       27 GETUPVAL                         R8 4
       28 CALL                             R8 0 1
       29 GETTABLEKS                       R9 R0 K6 ["localization"]
       31 GETTABLEKS                       R10 R0 K7 ["analytics"]
       33 GETTABLEKS                       R11 R0 K8 ["actions"]
       35 SETLIST                          R4 R5 7 [1]
       37 DUPTABLE                         R5 K11 [{"Portal", "SelectionListener"}]
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K12 ["createPortal"]
       41 DUPTABLE                         R7 K14 [{"PathEditFolder"}]
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R8 R8 K15 ["createElement"]
       45 LOADK                            R9 K16 ["Folder"]
       46 DUPTABLE                         R10 K18 [{["Name"] = "PathEditFolder"}]
       47 DUPTABLE                         R11 K24 [{"ControlPointEditGui", "PathToolbar", "MoveBaseGui", "VisualizationGui", "AddPointComponent"}]
       48 GETUPVAL                         R12 6
       49 GETTABLEKS                       R12 R12 K15 ["createElement"]
       51 GETUPVAL                         R13 7
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K19 ["ControlPointEditGui"]
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K15 ["createElement"]
       58 GETUPVAL                         R13 8
       59 CALL                             R12 1 1
       60 SETTABLEKS                       R12 R11 K20 ["PathToolbar"]
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R12 R12 K15 ["createElement"]
       65 GETUPVAL                         R13 9
       66 CALL                             R12 1 1
       67 SETTABLEKS                       R12 R11 K21 ["MoveBaseGui"]
       69 GETUPVAL                         R12 6
       70 GETTABLEKS                       R12 R12 K15 ["createElement"]
       72 GETUPVAL                         R13 10
       73 CALL                             R12 1 1
       74 SETTABLEKS                       R12 R11 K22 ["VisualizationGui"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K15 ["createElement"]
       79 GETUPVAL                         R13 11
       80 CALL                             R12 1 1
       81 SETTABLEKS                       R12 R11 K23 ["AddPointComponent"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K13 ["PathEditFolder"]
       86 GETUPVAL                         R8 12
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K9 ["Portal"]
       90 GETUPVAL                         R6 6
       91 GETTABLEKS                       R6 R6 K15 ["createElement"]
       93 GETUPVAL                         R7 13
       94 DUPTABLE                         R8 K26 [{"LogUsageReport"}]
       95 GETUPVAL                         R10 14
       96 JUMPIFNOT                        R10 ; [+3]
       97 GETTABLEKS                       R9 R0 K27 ["logUsageReport"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R9
      101 SETTABLEKS                       R9 R8 K25 ["LogUsageReport"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K10 ["SelectionListener"]
      106 CALL                             R3 2 -1
      107 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Rodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K7 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Dash"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K13 [game]
       44 LOADK                            R8 K14 ["CoreGui"]
       45 NAMECALL                         R6 R6 K15 ["GetService"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K13 [game]
       50 LOADK                            R9 K16 ["RbxAnalyticsService"]
       51 NAMECALL                         R7 R7 K15 ["GetService"]
       53 CALL                             R7 2 1
       54 GETIMPORT                        R8 K13 [game]
       56 LOADK                            R10 K17 ["RunService"]
       57 NAMECALL                         R8 R8 K15 ["GetService"]
       59 CALL                             R8 2 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K7 ["Packages"]
       64 GETTABLEKS                       R10 R10 K18 ["Framework"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R9 K19 ["ContextServices"]
       69 GETTABLEKS                       R11 R10 K20 ["Plugin"]
       71 GETTABLEKS                       R12 R10 K21 ["Mouse"]
       73 GETTABLEKS                       R13 R10 K22 ["Store"]
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R15 R0 K5 ["Src"]
       79 GETTABLEKS                       R15 R15 K23 ["Reducers"]
       81 GETTABLEKS                       R15 R15 K24 ["MainReducer"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R0 K5 ["Src"]
       88 GETTABLEKS                       R16 R16 K25 ["Resources"]
       90 GETTABLEKS                       R16 R16 K26 ["MakeTheme"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R0 K5 ["Src"]
       95 GETTABLEKS                       R16 R16 K25 ["Resources"]
       97 GETTABLEKS                       R16 R16 K27 ["Localization"]
       99 GETTABLEKS                       R16 R16 K28 ["SourceStrings"]
      101 GETTABLEKS                       R17 R0 K5 ["Src"]
      103 GETTABLEKS                       R17 R17 K25 ["Resources"]
      105 GETTABLEKS                       R17 R17 K27 ["Localization"]
      107 GETTABLEKS                       R17 R17 K29 ["LocalizedStrings"]
      109 GETTABLEKS                       R18 R0 K5 ["Src"]
      111 GETTABLEKS                       R18 R18 K30 ["Util"]
      113 GETIMPORT                        R19 K4 [require]
      115 GETTABLEKS                       R20 R18 K31 ["MakePluginActions"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K4 [require]
      120 GETTABLEKS                       R21 R18 K32 ["TelemetryGlobals"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K4 [require]
      125 GETTABLEKS                       R22 R18 K33 ["Telemetry"]
      127 GETTABLEKS                       R22 R22 K34 ["Path2dToolUsage"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K4 [require]
      132 GETTABLEKS                       R23 R18 K33 ["Telemetry"]
      134 GETTABLEKS                       R23 R23 K35 ["TelemetryProtocol"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K4 [require]
      139 GETTABLEKS                       R24 R18 K33 ["Telemetry"]
      141 GETTABLEKS                       R24 R24 K36 ["TelemetryProtocolTypes"]
      143 CALL                             R23 1 1
      144 GETTABLEKS                       R24 R0 K5 ["Src"]
      146 GETTABLEKS                       R24 R24 K37 ["Components"]
      148 GETIMPORT                        R25 K4 [require]
      150 GETTABLEKS                       R26 R24 K38 ["ControlPointEditGui"]
      152 CALL                             R25 1 1
      153 GETIMPORT                        R26 K4 [require]
      155 GETTABLEKS                       R27 R24 K39 ["SelectionListener"]
      157 CALL                             R26 1 1
      158 GETIMPORT                        R27 K4 [require]
      160 GETTABLEKS                       R28 R24 K40 ["PathToolbar"]
      162 CALL                             R27 1 1
      163 GETIMPORT                        R28 K4 [require]
      165 GETTABLEKS                       R29 R24 K41 ["MoveBaseGui"]
      167 CALL                             R28 1 1
      168 GETIMPORT                        R29 K4 [require]
      170 GETTABLEKS                       R30 R24 K42 ["VisualizationGui"]
      172 CALL                             R29 1 1
      173 GETIMPORT                        R30 K4 [require]
      175 GETTABLEKS                       R31 R24 K43 ["AddPointComponent"]
      177 CALL                             R30 1 1
      178 GETTABLEKS                       R31 R2 K44 ["PureComponent"]
      180 LOADK                            R33 K45 ["MainPlugin"]
      181 NAMECALL                         R31 R31 K46 ["extend"]
      183 CALL                             R31 2 1
      184 GETIMPORT                        R32 K13 [game]
      186 LOADK                            R34 K47 ["PathEditorRBXTelemetryFixes"]
      187 NAMECALL                         R32 R32 K48 ["GetFastFlag"]
      189 CALL                             R32 2 1
      190 DUPCLOSURE                       R33 K49 [PROTO_4]
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R32
      203 CAPTURE                          VAL R19
      204 SETTABLEKS                       R33 R31 K50 ["init"]
      206 DUPCLOSURE                       R33 K51 [PROTO_5]
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R28
      217 CAPTURE                          VAL R29
      218 CAPTURE                          VAL R30
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R32
      222 SETTABLEKS                       R33 R31 K52 ["render"]
      224 RETURN                           R31 1
