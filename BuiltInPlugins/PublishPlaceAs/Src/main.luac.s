PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["SaveOrPublishPlaceToRobloxIsCanceled"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K9 [{["Size"], ["MinSize"], ["MaxSize"], ["Resizable"] = True, ["Modal"], ["InitialEnabled"] = False}]
        6 GETIMPORT                        R5 K12 [Vector2.new]
        8 LOADN                            R6 960
        9 LOADN                            R7 720
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETIMPORT                        R5 K12 [Vector2.new]
       15 LOADN                            R6 890
       16 LOADN                            R7 550
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["MinSize"]
       20 GETIMPORT                        R5 K12 [Vector2.new]
       22 LOADN                            R6 960
       23 LOADN                            R7 750
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K3 ["MaxSize"]
       27 GETUPVAL                         R6 3
       28 NOT                              R5 R6
       29 SETTABLEKS                       R5 R4 K6 ["Modal"]
       31 NAMECALL                         R1 R1 K13 ["CreateQWidgetPluginGui"]
       33 CALL                             R1 3 1
       34 SETUPVAL                         R1 1
       35 GETUPVAL                         R1 1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K0 ["Name"]
       39 SETTABLEKS                       R2 R1 K0 ["Name"]
       41 GETUPVAL                         R1 1
       42 GETUPVAL                         R2 4
       43 LOADK                            R4 K14 ["General"]
       44 LOADK                            R5 K15 ["PublishPlace"]
       45 NAMECALL                         R2 R2 K16 ["getText"]
       47 CALL                             R2 3 1
       48 SETTABLEKS                       R2 R1 K17 ["Title"]
       50 GETUPVAL                         R1 1
       51 GETIMPORT                        R2 K21 [Enum.ZIndexBehavior.Sibling]
       53 SETTABLEKS                       R2 R1 K19 ["ZIndexBehavior"]
       55 GETUPVAL                         R1 1
       56 NEWCLOSURE                       R3 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U1
       62 NAMECALL                         R1 R1 K22 ["BindToClose"]
       64 CALL                             R1 2 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K9 [{"focusGui", "localization", "mouse", "plugin", "store", "theme", "calloutController", "publishStatusPanel"}]
        5 GETUPVAL                         R6 2
        6 SETTABLEKS                       R6 R5 K1 ["focusGui"]
        8 GETUPVAL                         R6 3
        9 SETTABLEKS                       R6 R5 K2 ["localization"]
       11 GETUPVAL                         R6 4
       12 NAMECALL                         R6 R6 K10 ["getMouse"]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K3 ["mouse"]
       17 GETUPVAL                         R6 4
       18 SETTABLEKS                       R6 R5 K4 ["plugin"]
       20 GETUPVAL                         R6 5
       21 SETTABLEKS                       R6 R5 K5 ["store"]
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 SETTABLEKS                       R6 R5 K6 ["theme"]
       27 GETUPVAL                         R6 7
       28 SETTABLEKS                       R6 R5 K7 ["calloutController"]
       30 GETUPVAL                         R6 8
       31 SETTABLEKS                       R6 R5 K8 ["publishStatusPanel"]
       33 NEWTABLE                         R6 0 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K0 ["createElement"]
       38 GETUPVAL                         R8 9
       39 DUPTABLE                         R9 K15 [{"OnClose", "IsPublish", "CloseMode", "IsSaveOrPublishAs"}]
       40 GETUPVAL                         R10 10
       41 SETTABLEKS                       R10 R9 K11 ["OnClose"]
       43 SETTABLEKS                       R1 R9 K12 ["IsPublish"]
       45 SETTABLEKS                       R2 R9 K13 ["CloseMode"]
       47 SETTABLEKS                       R0 R9 K14 ["IsSaveOrPublishAs"]
       49 CALL                             R7 2 -1
       50 SETLIST                          R6 R7 -1 [1]
       52 CALL                             R3 3 1
       53 GETUPVAL                         R4 5
       54 GETUPVAL                         R6 11
       55 GETUPVAL                         R8 12
       56 JUMPIFNOT                        R8 ; [+7]
       57 GETUPVAL                         R7 3
       58 LOADK                            R9 K16 ["General"]
       59 LOADK                            R10 K17 ["UntitledExperience"]
       60 NAMECALL                         R7 R7 K18 ["getText"]
       62 CALL                             R7 3 1
       63 JUMP                             ; [+6]
       64 GETUPVAL                         R7 3
       65 LOADK                            R9 K16 ["General"]
       66 LOADK                            R10 K19 ["UntitledGame"]
       67 NAMECALL                         R7 R7 K18 ["getText"]
       69 CALL                             R7 3 1
       70 MOVE                             R8 R0
       71 CALL                             R6 2 -1
       72 NAMECALL                         R4 R4 K20 ["dispatch"]
       74 CALL                             R4 -1 0
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K21 ["mount"]
       78 MOVE                             R5 R3
       79 GETUPVAL                         R6 2
       80 CALL                             R4 2 1
       81 SETUPVAL                         R4 13
       82 GETUPVAL                         R4 2
       83 LOADB                            R5 1
       84 SETTABLEKS                       R5 R4 K22 ["Enabled"]
       86 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+19]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+7]
        4 GETUPVAL                         R4 2
        5 LOADK                            R6 K0 ["General"]
        6 LOADK                            R7 K1 ["PublishExperience"]
        7 NAMECALL                         R4 R4 K2 ["getText"]
        9 CALL                             R4 3 1
       10 JUMP                             ; [+6]
       11 GETUPVAL                         R4 2
       12 LOADK                            R6 K0 ["General"]
       13 LOADK                            R7 K3 ["PublishGame"]
       14 NAMECALL                         R4 R4 K2 ["getText"]
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K4 ["Title"]
       19 JUMP                             ; [+18]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 1
       22 JUMPIFNOT                        R5 ; [+7]
       23 GETUPVAL                         R4 2
       24 LOADK                            R6 K0 ["General"]
       25 LOADK                            R7 K5 ["SaveExperience"]
       26 NAMECALL                         R4 R4 K2 ["getText"]
       28 CALL                             R4 3 1
       29 JUMP                             ; [+6]
       30 GETUPVAL                         R4 2
       31 LOADK                            R6 K0 ["General"]
       32 LOADK                            R7 K6 ["SaveGame"]
       33 NAMECALL                         R4 R4 K2 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K4 ["Title"]
       38 GETUPVAL                         R3 3
       39 MOVE                             R4 R0
       40 MOVE                             R5 R1
       41 MOVE                             R6 R2
       42 CALL                             R3 3 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearUploadNames"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["unmount"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["open"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K2 ["signals"]
       11 GETTABLEKS                       R0 R1 K1 ["StudioPublishService.OnSaveOrPublishPlaceToRoblox"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 NAMECALL                         R0 R0 K3 ["Connect"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K2 ["signals"]
       24 GETTABLEKS                       R0 R1 K4 ["StudioPublishService.GamePublishFinished"]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 NAMECALL                         R0 R0 K3 ["Connect"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K2 ["signals"]
       35 GETTABLEKS                       R0 R1 K5 ["StudioPublishService.GamePublishCancelled"]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U4
       42 NAMECALL                         R0 R0 K3 ["Connect"]
       44 CALL                             R0 2 0
       45 GETUPVAL                         R0 13
       46 CALL                             R0 0 1
       47 JUMPIFNOT                        R0 ; [+16]
       48 GETUPVAL                         R0 3
       49 GETTABLEKS                       R0 R0 K6 ["actionTriggeredSignals"]
       51 JUMPIFNOT                        R0 ; [+4]
       52 GETUPVAL                         R1 3
       53 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       55 GETTABLEN                        R0 R1 1
       56 JUMPIFNOT                        R0 ; [+7]
       57 GETUPVAL                         R1 14
       58 JUMPIFNOT                        R1 ; [+5]
       59 NEWCLOSURE                       R3 P3
       60 CAPTURE                          UPVAL U14
       61 NAMECALL                         R1 R0 K3 ["Connect"]
       63 CALL                             R1 2 0
       64 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [require]
       10 GETTABLEKS                       R4 R2 K5 ["Packages"]
       12 GETTABLEKS                       R4 R4 K6 ["Roact"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R5 R2 K5 ["Packages"]
       19 GETTABLEKS                       R5 R5 K7 ["Rodux"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R2 K5 ["Packages"]
       26 GETTABLEKS                       R6 R6 K8 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K9 ["ContextServices"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R2 K10 ["Src"]
       35 GETTABLEKS                       R8 R8 K11 ["Components"]
       37 GETTABLEKS                       R8 R8 K12 ["ServiceWrapper"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R2 K10 ["Src"]
       44 GETTABLEKS                       R9 R9 K11 ["Components"]
       46 GETTABLEKS                       R9 R9 K13 ["ScreenSelect"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R2 K10 ["Src"]
       53 GETTABLEKS                       R10 R10 K14 ["Reducers"]
       55 GETTABLEKS                       R10 R10 K15 ["MainReducer"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R2 K10 ["Src"]
       62 GETTABLEKS                       R11 R11 K16 ["Middleware"]
       64 GETTABLEKS                       R11 R11 K17 ["MainMiddleware"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R12 R2 K10 ["Src"]
       71 GETTABLEKS                       R12 R12 K18 ["Actions"]
       73 GETTABLEKS                       R12 R12 K19 ["ResetInfo"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R13 R2 K10 ["Src"]
       80 GETTABLEKS                       R13 R13 K20 ["Resources"]
       82 GETTABLEKS                       R13 R13 K21 ["MakeTheme"]
       84 CALL                             R12 1 1
       85 GETTABLEKS                       R13 R2 K10 ["Src"]
       87 GETTABLEKS                       R13 R13 K20 ["Resources"]
       89 GETTABLEKS                       R13 R13 K22 ["SourceStrings"]
       91 GETTABLEKS                       R14 R2 K10 ["Src"]
       93 GETTABLEKS                       R14 R14 K20 ["Resources"]
       95 GETTABLEKS                       R14 R14 K23 ["LocalizedStrings"]
       97 GETTABLEKS                       R15 R4 K24 ["Store"]
       99 GETTABLEKS                       R15 R15 K25 ["new"]
      101 MOVE                             R16 R9
      102 NEWTABLE                         R17 0 0
      104 MOVE                             R18 R10
      105 CALL                             R15 3 1
      106 GETTABLEKS                       R16 R6 K26 ["Localization"]
      108 GETTABLEKS                       R16 R16 K25 ["new"]
      110 DUPTABLE                         R17 K30 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
      111 GETTABLEKS                       R18 R2 K31 ["Name"]
      113 SETTABLEKS                       R18 R17 K27 ["pluginName"]
      115 SETTABLEKS                       R13 R17 K28 ["stringResourceTable"]
      117 SETTABLEKS                       R14 R17 K29 ["translationResourceTable"]
      119 CALL                             R16 1 1
      120 LOADNIL                          R17
      121 GETUPVAL                         R18 0
      122 CALL                             R18 0 1
      123 JUMPIFNOT                        R18 ; [+19]
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R18 R18 K25 ["new"]
      127 DUPTABLE                         R19 K35 [{"plugin", "localization", "store"}]
      128 SETTABLEKS                       R0 R19 K32 ["plugin"]
      130 SETTABLEKS                       R16 R19 K33 ["localization"]
      132 SETTABLEKS                       R15 R19 K34 ["store"]
      134 CALL                             R18 1 1
      135 MOVE                             R17 R18
      136 GETTABLEKS                       R18 R0 K36 ["Unloading"]
      138 NEWCLOSURE                       R20 P0
      139 CAPTURE                          REF R17
      140 NAMECALL                         R18 R18 K37 ["Connect"]
      142 CALL                             R18 2 0
      143 LOADNIL                          R18
      144 LOADNIL                          R19
      145 GETIMPORT                        R20 K4 [require]
      147 GETTABLEKS                       R21 R2 K10 ["Src"]
      149 GETTABLEKS                       R21 R21 K18 ["Actions"]
      151 GETTABLEKS                       R21 R21 K38 ["SetIsPublishing"]
      153 CALL                             R20 1 1
      154 NEWCLOSURE                       R21 P1
      155 CAPTURE                          REF R18
      156 CAPTURE                          VAL R3
      157 CAPTURE                          REF R19
      158 NEWCLOSURE                       R22 P2
      159 CAPTURE                          VAL R2
      160 CAPTURE                          REF R19
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          VAL R16
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          UPVAL U4
      166 CAPTURE                          REF R18
      167 CAPTURE                          VAL R3
      168 GETIMPORT                        R23 K4 [require]
      170 GETTABLEKS                       R24 R2 K10 ["Src"]
      172 GETTABLEKS                       R24 R24 K39 ["Util"]
      174 GETTABLEKS                       R24 R24 K40 ["CalloutController"]
      176 CALL                             R23 1 1
      177 GETTABLEKS                       R24 R23 K25 ["new"]
      179 CALL                             R24 0 1
      180 GETUPVAL                         R25 5
      181 JUMPIF                           R25 ; [+23]
      182 LOADK                            R27 K41 ["TcToggleCallout"]
      183 LOADK                            R28 K42 ["Title"]
      184 NAMECALL                         R25 R16 K43 ["getText"]
      186 CALL                             R25 3 1
      187 LOADK                            R28 K41 ["TcToggleCallout"]
      188 LOADK                            R29 K44 ["Description"]
      189 NAMECALL                         R26 R16 K43 ["getText"]
      191 CALL                             R26 3 1
      192 GETIMPORT                        R27 K46 [game]
      194 LOADK                            R29 K47 ["TeamCreateLink"]
      195 NAMECALL                         R27 R27 K48 ["GetFastString"]
      197 CALL                             R27 2 1
      198 LOADK                            R30 K49 ["PublishPlaceAsTeamCreateToggleCallout"]
      199 MOVE                             R31 R25
      200 MOVE                             R32 R26
      201 MOVE                             R33 R27
      202 NAMECALL                         R28 R24 K50 ["defineCallout"]
      204 CALL                             R28 5 0
      205 NEWCLOSURE                       R25 P3
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R7
      208 CAPTURE                          REF R19
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R24
      214 CAPTURE                          REF R17
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R11
      218 CAPTURE                          UPVAL U6
      219 CAPTURE                          REF R18
      220 NEWCLOSURE                       R26 P4
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R1
      225 CAPTURE                          REF R19
      226 CAPTURE                          UPVAL U6
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R20
      231 CAPTURE                          UPVAL U4
      232 CAPTURE                          REF R18
      233 CAPTURE                          VAL R3
      234 CAPTURE                          UPVAL U0
      235 CAPTURE                          REF R17
      236 MOVE                             R27 R26
      237 CALL                             R27 0 0
      238 CLOSEUPVALS                      R17
      239 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["StudioPublishService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K4 [game]
       15 LOADK                            R4 K7 ["DebugBuiltInPluginModalsNotBlocking"]
       16 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K4 [game]
       21 LOADK                            R5 K9 ["COLLAB9041NewTeamCreateDisabled"]
       22 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Flags"]
       31 GETTABLEKS                       R5 R5 K14 ["getFFlagPublishPlaceAsGameToExperience"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 GETIMPORT                        R5 K11 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Flags"]
       41 GETTABLEKS                       R6 R6 K15 ["getFFlagSTUDIOPLAT42559FixSaveDialogXClose"]
       43 CALL                             R5 1 1
       44 CALL                             R5 0 1
       45 GETIMPORT                        R6 K11 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K13 ["Flags"]
       51 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureStudioUnifiedPublishAction"]
       53 CALL                             R6 1 1
       54 MOVE                             R8 R6
       55 CALL                             R8 0 1
       56 JUMPIFNOT                        R8 ; [+10]
       57 GETIMPORT                        R7 K11 [require]
       59 GETTABLEKS                       R8 R0 K12 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Util"]
       63 GETTABLEKS                       R8 R8 K18 ["PublishStatusPanel"]
       65 CALL                             R7 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 DUPCLOSURE                       R8 K19 [PROTO_10]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 RETURN                           R8 1
