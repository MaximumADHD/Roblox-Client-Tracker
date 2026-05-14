PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["telemetry"]
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 GETUPVAL                         R6 1
        6 DUPTABLE                         R7 K2 [{"placeId"}]
        7 GETIMPORT                        R8 K4 [game]
        9 GETTABLEKS                       R8 R8 K5 ["PlaceId"]
       11 SETTABLEKS                       R8 R7 K1 ["placeId"]
       13 MOVE                             R8 R1
       14 CALL                             R6 2 -1
       15 NAMECALL                         R2 R2 K6 ["logRobloxTelemetryEvent"]
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["totalCount"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+28]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["log"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K6 [{"ctx", "textFieldCount", "sliderCount", "greenCircleCount"}]
       12 SETTABLEKS                       R0 R3 K2 ["ctx"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["textFieldCount"]
       17 SETTABLEKS                       R4 R3 K3 ["textFieldCount"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["sliderCount"]
       22 SETTABLEKS                       R4 R3 K4 ["sliderCount"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K5 ["greenCircleCount"]
       27 SETTABLEKS                       R4 R3 K5 ["greenCircleCount"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 0
       31 NAMECALL                         R1 R1 K7 ["reset"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["state"]
        7 GETTABLEKS                       R0 R0 K2 ["enabled"]
        9 JUMPIF                           R0 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["log"]
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R2 K5 [{"ctx"}]
       15 LOADK                            R3 K6 ["ribbon"]
       16 SETTABLEKS                       R3 R2 K4 ["ctx"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K7 ["logUsageReport"]
       23 LOADK                            R1 K8 ["widgetDisabled"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["state"]
        7 GETTABLEKS                       R0 R0 K2 ["enabled"]
        9 JUMPIF                           R0 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["log"]
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R2 K5 [{"ctx"}]
       15 LOADK                            R3 K6 ["properties"]
       16 SETTABLEKS                       R3 R2 K4 ["ctx"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K7 ["logUsageReport"]
       23 LOADK                            R1 K8 ["widgetDisabled"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R0 K3 ["log"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R2 R0 K4 ["logUsageReport"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K5 ["toggleEnabled"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R2 R0 K6 ["toggleFromRibbon"]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U3
       30 SETTABLEKS                       R2 R0 K7 ["toggleFromProperties"]
       32 NEWCLOSURE                       R2 P5
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R0 K8 ["onClose"]
       36 NEWCLOSURE                       R2 P6
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       40 NEWCLOSURE                       R2 P7
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K11 ["Localization"]
       47 GETTABLEKS                       R2 R2 K12 ["new"]
       49 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       50 GETUPVAL                         R4 5
       51 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       53 GETUPVAL                         R4 6
       54 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       56 LOADK                            R4 K17 ["WindControl"]
       57 SETTABLEKS                       R4 R3 K15 ["pluginName"]
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R0 K18 ["localization"]
       62 GETUPVAL                         R2 4
       63 GETTABLEKS                       R2 R2 K19 ["Analytics"]
       65 GETTABLEKS                       R2 R2 K12 ["new"]
       67 DUPCLOSURE                       R3 K20 [PROTO_9]
       68 NEWTABLE                         R4 0 0
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R0 K21 ["analytics"]
       73 GETUPVAL                         R2 7
       74 GETTABLEKS                       R2 R2 K12 ["new"]
       76 CALL                             R2 0 1
       77 SETTABLEKS                       R2 R0 K22 ["telemetry"]
       79 GETUPVAL                         R2 8
       80 LOADK                            R4 K23 ["openGlobalWindControl"]
       81 GETTABLEKS                       R5 R0 K7 ["toggleFromProperties"]
       83 NAMECALL                         R2 R2 K24 ["bind"]
       85 CALL                             R2 3 1
       86 SETTABLEKS                       R2 R0 K25 ["onOpenWindControlEditorConnection"]
       88 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K12 [{"Toolbar", "Active", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K13 ["WindControl"]
       15 SETTABLEKS                       R7 R6 K7 ["Title"]
       17 LOADK                            R7 K14 [""]
       18 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
       20 LOADK                            R7 K14 [""]
       21 SETTABLEKS                       R7 R6 K9 ["Icon"]
       23 GETTABLEKS                       R7 R0 K15 ["toggleFromRibbon"]
       25 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K11 ["ClickableWhenViewportHidden"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       33 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R3 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R2
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R2 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R10 R0 K7 ["localization"]
       29 GETTABLEKS                       R11 R0 K8 ["analytics"]
       31 SETLIST                          R6 R7 5 [1]
       33 DUPTABLE                         R7 K11 [{"MainGui", "Toolbar"}]
       34 MOVE                             R8 R4
       35 JUMPIFNOT                        R8 ; [+7]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K12 ["createElement"]
       39 GETUPVAL                         R9 5
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K9 ["MainGui"]
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K12 ["createElement"]
       48 GETUPVAL                         R9 6
       49 DUPTABLE                         R10 K15 [{"Title", "RenderButtons"}]
       50 LOADK                            R11 K16 ["windControl"]
       51 SETTABLEKS                       R11 R10 K13 ["Title"]
       53 NEWCLOSURE                       R11 P0
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R11 R10 K14 ["RenderButtons"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["analytics"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K1 ["logUsageReport"]
        5 LOADK                            R2 K2 ["placeClosing"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K3 ["onOpenWindControlEditorConnection"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETTABLEKS                       R1 R0 K3 ["onOpenWindControlEditorConnection"]
       12 NAMECALL                         R1 R1 K4 ["Disconnect"]
       14 CALL                             R1 1 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["onOpenWindControlEditorConnection"]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["MemStorageService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K12 ["Dictionary"]
       29 GETTABLEKS                       R4 R4 K13 ["join"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["UI"]
       40 GETTABLEKS                       R7 R6 K16 ["PluginButton"]
       42 GETTABLEKS                       R8 R6 K17 ["PluginToolbar"]
       44 GETTABLEKS                       R9 R5 K18 ["ContextServices"]
       46 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       48 GETTABLEKS                       R11 R9 K20 ["Mouse"]
       50 GETIMPORT                        R12 K4 [require]
       52 GETTABLEKS                       R13 R0 K21 ["Src"]
       54 GETTABLEKS                       R13 R13 K22 ["Util"]
       56 GETTABLEKS                       R13 R13 K23 ["Telemetry"]
       58 GETTABLEKS                       R13 R13 K24 ["TelemetryProtocol"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K4 [require]
       63 GETTABLEKS                       R14 R0 K21 ["Src"]
       65 GETTABLEKS                       R14 R14 K22 ["Util"]
       67 GETTABLEKS                       R14 R14 K23 ["Telemetry"]
       69 GETTABLEKS                       R14 R14 K25 ["WindsockOrigin"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K4 [require]
       74 GETTABLEKS                       R15 R0 K21 ["Src"]
       76 GETTABLEKS                       R15 R15 K22 ["Util"]
       78 GETTABLEKS                       R15 R15 K23 ["Telemetry"]
       80 GETTABLEKS                       R15 R15 K26 ["WindsockUsage"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K4 [require]
       85 GETTABLEKS                       R16 R0 K21 ["Src"]
       87 GETTABLEKS                       R16 R16 K22 ["Util"]
       89 GETTABLEKS                       R16 R16 K23 ["Telemetry"]
       91 GETTABLEKS                       R16 R16 K27 ["TelemetryProtocolTypes"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K4 [require]
       96 GETTABLEKS                       R17 R0 K21 ["Src"]
       98 GETTABLEKS                       R17 R17 K22 ["Util"]
      100 GETTABLEKS                       R17 R17 K28 ["AnalyticsGlobals"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K4 [require]
      105 GETTABLEKS                       R18 R0 K21 ["Src"]
      107 GETTABLEKS                       R18 R18 K29 ["Resources"]
      109 GETTABLEKS                       R18 R18 K30 ["MakeTheme"]
      111 CALL                             R17 1 1
      112 GETTABLEKS                       R18 R0 K21 ["Src"]
      114 GETTABLEKS                       R18 R18 K29 ["Resources"]
      116 GETTABLEKS                       R18 R18 K31 ["Localization"]
      118 GETTABLEKS                       R18 R18 K32 ["SourceStrings"]
      120 GETTABLEKS                       R19 R0 K21 ["Src"]
      122 GETTABLEKS                       R19 R19 K29 ["Resources"]
      124 GETTABLEKS                       R19 R19 K31 ["Localization"]
      126 GETTABLEKS                       R19 R19 K33 ["LocalizedStrings"]
      128 GETTABLEKS                       R20 R0 K21 ["Src"]
      130 GETTABLEKS                       R20 R20 K34 ["Components"]
      132 GETIMPORT                        R21 K4 [require]
      134 GETTABLEKS                       R22 R20 K35 ["MainGui"]
      136 CALL                             R21 1 1
      137 GETTABLEKS                       R22 R1 K36 ["PureComponent"]
      139 LOADK                            R24 K37 ["MainPlugin"]
      140 NAMECALL                         R22 R22 K38 ["extend"]
      142 CALL                             R22 2 1
      143 DUPCLOSURE                       R23 K39 [PROTO_10]
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R2
      153 SETTABLEKS                       R23 R22 K40 ["init"]
      155 DUPCLOSURE                       R23 K41 [PROTO_11]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R7
      158 SETTABLEKS                       R23 R22 K42 ["renderButtons"]
      160 DUPCLOSURE                       R23 K43 [PROTO_13]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R8
      168 SETTABLEKS                       R23 R22 K44 ["render"]
      170 DUPCLOSURE                       R23 K45 [PROTO_14]
      171 SETTABLEKS                       R23 R22 K46 ["willUnmount"]
      173 RETURN                           R22 1
