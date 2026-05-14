PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K7 [{"Size", "MinSize", "MaxSize", "Resizable", "Modal", "InitialEnabled"}]
        6 GETIMPORT                        R5 K10 [Vector2.new]
        8 LOADN                            R6 192
        9 LOADN                            R7 208
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETIMPORT                        R5 K10 [Vector2.new]
       15 LOADN                            R6 122
       16 LOADN                            R7 38
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K2 ["MinSize"]
       20 GETIMPORT                        R5 K10 [Vector2.new]
       22 LOADN                            R6 192
       23 LOADN                            R7 238
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K3 ["MaxSize"]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K4 ["Resizable"]
       30 GETUPVAL                         R6 3
       31 NOT                              R5 R6
       32 SETTABLEKS                       R5 R4 K5 ["Modal"]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K6 ["InitialEnabled"]
       37 NAMECALL                         R1 R1 K11 ["CreateQWidgetPluginGui"]
       39 CALL                             R1 3 1
       40 SETUPVAL                         R1 1
       41 GETUPVAL                         R1 1
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K0 ["Name"]
       45 SETTABLEKS                       R2 R1 K0 ["Name"]
       47 GETUPVAL                         R1 1
       48 GETUPVAL                         R2 4
       49 LOADK                            R4 K12 ["General"]
       50 LOADK                            R5 K13 ["PublishPlace"]
       51 NAMECALL                         R2 R2 K14 ["getText"]
       53 CALL                             R2 3 1
       54 SETTABLEKS                       R2 R1 K15 ["Title"]
       56 GETUPVAL                         R1 1
       57 GETIMPORT                        R2 K19 [Enum.ZIndexBehavior.Sibling]
       59 SETTABLEKS                       R2 R1 K17 ["ZIndexBehavior"]
       61 GETUPVAL                         R1 1
       62 NEWCLOSURE                       R3 P0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U1
       68 NAMECALL                         R1 R1 K20 ["BindToClose"]
       70 CALL                             R1 2 0
       71 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K8 [{"focusGui", "localization", "mouse", "plugin", "store", "theme", "calloutController"}]
        5 GETUPVAL                         R6 2
        6 SETTABLEKS                       R6 R5 K1 ["focusGui"]
        8 GETUPVAL                         R6 3
        9 SETTABLEKS                       R6 R5 K2 ["localization"]
       11 GETUPVAL                         R6 4
       12 NAMECALL                         R6 R6 K9 ["getMouse"]
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
       30 NEWTABLE                         R6 0 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K0 ["createElement"]
       35 GETUPVAL                         R8 8
       36 DUPTABLE                         R9 K14 [{"OnClose", "IsPublish", "CloseMode", "IsSaveOrPublishAs"}]
       37 GETUPVAL                         R10 9
       38 SETTABLEKS                       R10 R9 K10 ["OnClose"]
       40 SETTABLEKS                       R1 R9 K11 ["IsPublish"]
       42 SETTABLEKS                       R2 R9 K12 ["CloseMode"]
       44 SETTABLEKS                       R0 R9 K13 ["IsSaveOrPublishAs"]
       46 CALL                             R7 2 -1
       47 SETLIST                          R6 R7 -1 [1]
       49 CALL                             R3 3 1
       50 GETUPVAL                         R4 5
       51 GETUPVAL                         R6 10
       52 GETUPVAL                         R8 11
       53 JUMPIFNOT                        R8 ; [+7]
       54 GETUPVAL                         R7 3
       55 LOADK                            R9 K15 ["General"]
       56 LOADK                            R10 K16 ["UntitledExperience"]
       57 NAMECALL                         R7 R7 K17 ["getText"]
       59 CALL                             R7 3 1
       60 JUMP                             ; [+6]
       61 GETUPVAL                         R7 3
       62 LOADK                            R9 K15 ["General"]
       63 LOADK                            R10 K18 ["UntitledGame"]
       64 NAMECALL                         R7 R7 K17 ["getText"]
       66 CALL                             R7 3 1
       67 MOVE                             R8 R0
       68 CALL                             R6 2 -1
       69 NAMECALL                         R4 R4 K19 ["dispatch"]
       71 CALL                             R4 -1 0
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K20 ["mount"]
       75 MOVE                             R5 R3
       76 GETUPVAL                         R6 2
       77 CALL                             R4 2 1
       78 SETUPVAL                         R4 12
       79 GETUPVAL                         R4 2
       80 LOADB                            R5 1
       81 SETTABLEKS                       R5 R4 K21 ["Enabled"]
       83 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       45 RETURN                           R0 0

PROTO_8:
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
      121 LOADNIL                          R18
      122 GETIMPORT                        R19 K4 [require]
      124 GETTABLEKS                       R20 R2 K10 ["Src"]
      126 GETTABLEKS                       R20 R20 K18 ["Actions"]
      128 GETTABLEKS                       R20 R20 K32 ["SetIsPublishing"]
      130 CALL                             R19 1 1
      131 NEWCLOSURE                       R20 P0
      132 CAPTURE                          REF R17
      133 CAPTURE                          VAL R3
      134 CAPTURE                          REF R18
      135 NEWCLOSURE                       R21 P1
      136 CAPTURE                          VAL R2
      137 CAPTURE                          REF R18
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          VAL R16
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          REF R17
      144 CAPTURE                          VAL R3
      145 GETIMPORT                        R22 K4 [require]
      147 GETTABLEKS                       R23 R2 K10 ["Src"]
      149 GETTABLEKS                       R23 R23 K33 ["Util"]
      151 GETTABLEKS                       R23 R23 K34 ["CalloutController"]
      153 CALL                             R22 1 1
      154 GETTABLEKS                       R23 R22 K25 ["new"]
      156 CALL                             R23 0 1
      157 GETUPVAL                         R24 3
      158 JUMPIF                           R24 ; [+23]
      159 LOADK                            R26 K35 ["TcToggleCallout"]
      160 LOADK                            R27 K36 ["Title"]
      161 NAMECALL                         R24 R16 K37 ["getText"]
      163 CALL                             R24 3 1
      164 LOADK                            R27 K35 ["TcToggleCallout"]
      165 LOADK                            R28 K38 ["Description"]
      166 NAMECALL                         R25 R16 K37 ["getText"]
      168 CALL                             R25 3 1
      169 GETIMPORT                        R26 K40 [game]
      171 LOADK                            R28 K41 ["TeamCreateLink"]
      172 NAMECALL                         R26 R26 K42 ["GetFastString"]
      174 CALL                             R26 2 1
      175 LOADK                            R29 K43 ["PublishPlaceAsTeamCreateToggleCallout"]
      176 MOVE                             R30 R24
      177 MOVE                             R31 R25
      178 MOVE                             R32 R26
      179 NAMECALL                         R27 R23 K44 ["defineCallout"]
      181 CALL                             R27 5 0
      182 NEWCLOSURE                       R24 P2
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R7
      185 CAPTURE                          REF R18
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R11
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          REF R17
      196 NEWCLOSURE                       R25 P3
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R1
      201 CAPTURE                          REF R18
      202 CAPTURE                          UPVAL U4
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R19
      207 CAPTURE                          UPVAL U2
      208 CAPTURE                          REF R17
      209 CAPTURE                          VAL R3
      210 MOVE                             R26 R25
      211 CALL                             R26 0 0
      212 CLOSEUPVALS                      R17
      213 RETURN                           R0 0

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
       45 DUPCLOSURE                       R6 K16 [PROTO_8]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 RETURN                           R6 1
