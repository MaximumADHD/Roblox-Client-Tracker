PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCanAutoUpdateAsync"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateManagerBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [task.defer]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K5 ["CanAutoUpdateNotification"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R2 R2 K6 ["Connect"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R0 K2 ["Uri"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R5 R0 K3 ["UpdateState"]
       17 GETIMPORT                        R6 K6 [Enum.UpdateState.UpdateNotAvailable]
       19 JUMPIFEQ                         R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 GETTABLEKS                       R6 R0 K3 ["UpdateState"]
       25 GETIMPORT                        R7 K8 [Enum.UpdateState.UpdateAvailable]
       27 JUMPIFEQ                         R6 R7 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 GETTABLEKS                       R7 R0 K3 ["UpdateState"]
       33 GETIMPORT                        R8 K10 [Enum.UpdateState.UpdateInProgress]
       35 JUMPIFEQ                         R7 R8 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 GETTABLEKS                       R8 R0 K3 ["UpdateState"]
       41 GETIMPORT                        R9 K12 [Enum.UpdateState.UpdateFailed]
       43 JUMPIFEQ                         R8 R9 ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 GETTABLEKS                       R9 R0 K3 ["UpdateState"]
       49 GETIMPORT                        R10 K14 [Enum.UpdateState.UpdateReady]
       51 JUMPIFEQ                         R9 R10 ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 GETUPVAL                         R9 3
       56 LOADB                            R10 0
       57 CALL                             R9 1 2
       58 GETUPVAL                         R11 4
       59 NEWCLOSURE                       R12 P0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R10
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R2
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 0
       68 NOT                              R11 R4
       69 GETUPVAL                         R12 5
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+5]
       72 MOVE                             R12 R6
       73 JUMPIF                           R12 ; [+1]
       74 AND                              R12 R5 R9
       75 JUMPIFNOT                        R12 ; [+1]
       76 LOADB                            R11 0
       77 GETUPVAL                         R12 6
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+2]
       80 JUMPIFNOT                        R7 ; [+1]
       81 LOADB                            R11 0
       82 LOADB                            R12 1
       83 JUMPIF                           R8 ; [+3]
       84 JUMPIF                           R7 ; [+2]
       85 JUMPIFNOT                        R5 ; [+2]
       86 JUMPIF                           R9 ; [+1]
       87 LOADB                            R12 0
       88 GETUPVAL                         R13 7
       89 GETTABLEKS                       R13 R13 K15 ["ButtonVariant"]
       91 GETTABLEKS                       R13 R13 K16 ["Standard"]
       93 JUMPIFNOT                        R7 ; [+6]
       94 GETUPVAL                         R14 7
       95 GETTABLEKS                       R14 R14 K15 ["ButtonVariant"]
       97 GETTABLEKS                       R13 R14 K17 ["Alert"]
       99 JUMP                             ; [+8]
      100 JUMPIF                           R8 ; [+2]
      101 JUMPIFNOT                        R5 ; [+6]
      102 JUMPIF                           R9 ; [+5]
      103 GETUPVAL                         R14 7
      104 GETTABLEKS                       R14 R14 K15 ["ButtonVariant"]
      106 GETTABLEKS                       R13 R14 K18 ["Emphasis"]
      108 LOADNIL                          R14
      109 LOADNIL                          R15
      110 LOADNIL                          R16
      111 JUMPIFNOT                        R7 ; [+19]
      112 LOADK                            R19 K19 ["Action"]
      113 LOADK                            R20 K11 ["UpdateFailed"]
      114 NAMECALL                         R17 R1 K20 ["getText"]
      116 CALL                             R17 3 1
      117 MOVE                             R14 R17
      118 LOADK                            R19 K21 ["Tooltip"]
      119 LOADK                            R20 K22 ["UpdateFailedTitle"]
      120 NAMECALL                         R17 R1 K20 ["getText"]
      122 CALL                             R17 3 1
      123 MOVE                             R15 R17
      124 LOADK                            R19 K21 ["Tooltip"]
      125 LOADK                            R20 K11 ["UpdateFailed"]
      126 NAMECALL                         R17 R1 K20 ["getText"]
      128 CALL                             R17 3 1
      129 MOVE                             R16 R17
      130 JUMP                             ; [+68]
      131 JUMPIFNOT                        R6 ; [+19]
      132 LOADK                            R19 K19 ["Action"]
      133 LOADK                            R20 K23 ["PreparingUpdate"]
      134 NAMECALL                         R17 R1 K20 ["getText"]
      136 CALL                             R17 3 1
      137 MOVE                             R14 R17
      138 LOADK                            R19 K21 ["Tooltip"]
      139 LOADK                            R20 K24 ["UpdateInProgressTitle"]
      140 NAMECALL                         R17 R1 K20 ["getText"]
      142 CALL                             R17 3 1
      143 MOVE                             R15 R17
      144 LOADK                            R19 K21 ["Tooltip"]
      145 LOADK                            R20 K9 ["UpdateInProgress"]
      146 NAMECALL                         R17 R1 K20 ["getText"]
      148 CALL                             R17 3 1
      149 MOVE                             R16 R17
      150 JUMP                             ; [+48]
      151 JUMPIFNOT                        R8 ; [+14]
      152 LOADK                            R19 K19 ["Action"]
      153 LOADK                            R20 K13 ["UpdateReady"]
      154 NAMECALL                         R17 R1 K20 ["getText"]
      156 CALL                             R17 3 1
      157 MOVE                             R14 R17
      158 LOADNIL                          R15
      159 LOADK                            R19 K21 ["Tooltip"]
      160 LOADK                            R20 K13 ["UpdateReady"]
      161 NAMECALL                         R17 R1 K20 ["getText"]
      163 CALL                             R17 3 1
      164 MOVE                             R16 R17
      165 JUMP                             ; [+33]
      166 JUMPIFNOT                        R9 ; [+19]
      167 LOADK                            R19 K19 ["Action"]
      168 LOADK                            R20 K23 ["PreparingUpdate"]
      169 NAMECALL                         R17 R1 K20 ["getText"]
      171 CALL                             R17 3 1
      172 MOVE                             R14 R17
      173 LOADK                            R19 K21 ["Tooltip"]
      174 LOADK                            R20 K24 ["UpdateInProgressTitle"]
      175 NAMECALL                         R17 R1 K20 ["getText"]
      177 CALL                             R17 3 1
      178 MOVE                             R15 R17
      179 LOADK                            R19 K21 ["Tooltip"]
      180 LOADK                            R20 K9 ["UpdateInProgress"]
      181 NAMECALL                         R17 R1 K20 ["getText"]
      183 CALL                             R17 3 1
      184 MOVE                             R16 R17
      185 JUMP                             ; [+13]
      186 LOADK                            R19 K19 ["Action"]
      187 LOADK                            R20 K7 ["UpdateAvailable"]
      188 NAMECALL                         R17 R1 K20 ["getText"]
      190 CALL                             R17 3 1
      191 MOVE                             R14 R17
      192 LOADNIL                          R15
      193 LOADK                            R19 K21 ["Tooltip"]
      194 LOADK                            R20 K7 ["UpdateAvailable"]
      195 NAMECALL                         R17 R1 K20 ["getText"]
      197 CALL                             R17 3 1
      198 MOVE                             R16 R17
      199 GETUPVAL                         R17 8
      200 DUPTABLE                         R18 K28 [{"Uri", "Title", "Text", "WidgetRef"}]
      201 GETTABLEKS                       R19 R0 K2 ["Uri"]
      203 SETTABLEKS                       R19 R18 K2 ["Uri"]
      205 SETTABLEKS                       R15 R18 K25 ["Title"]
      207 SETTABLEKS                       R16 R18 K26 ["Text"]
      209 SETTABLEKS                       R3 R18 K27 ["WidgetRef"]
      211 CALL                             R17 1 2
      212 GETUPVAL                         R19 9
      213 NEWCLOSURE                       R20 P1
      214 CAPTURE                          UPVAL U10
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R18
      217 NEWTABLE                         R21 0 2
      219 MOVE                             R22 R17
      220 MOVE                             R23 R18
      221 SETLIST                          R21 R22 2 [1]
      223 CALL                             R19 2 1
      224 GETUPVAL                         R20 11
      225 GETTABLEKS                       R20 R20 K29 ["createElement"]
      227 GETUPVAL                         R21 12
      228 DUPTABLE                         R22 K36 [{["ref"], ["LayoutOrder"], ["Visible"], ["tag"] = "auto-xy", ["onStateChanged"]}]
      229 SETTABLEKS                       R3 R22 K30 ["ref"]
      231 GETTABLEKS                       R23 R0 K31 ["LayoutOrder"]
      233 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      235 SETTABLEKS                       R11 R22 K32 ["Visible"]
      237 SETTABLEKS                       R19 R22 K35 ["onStateChanged"]
      239 DUPTABLE                         R23 K38 [{"Button"}]
      240 GETUPVAL                         R24 11
      241 GETTABLEKS                       R24 R24 K29 ["createElement"]
      243 GETUPVAL                         R25 13
      244 DUPTABLE                         R26 K45 [{["LayoutOrder"] = 1, ["size"], ["text"], ["variant"], ["isDisabled"], ["onActivated"]}]
      245 GETUPVAL                         R27 7
      246 GETTABLEKS                       R27 R27 K46 ["InputSize"]
      248 GETTABLEKS                       R27 R27 K47 ["XSmall"]
      250 SETTABLEKS                       R27 R26 K40 ["size"]
      252 SETTABLEKS                       R14 R26 K41 ["text"]
      254 SETTABLEKS                       R13 R26 K42 ["variant"]
      256 SETTABLEKS                       R12 R26 K43 ["isDisabled"]
      258 GETTABLEKS                       R27 R0 K44 ["onActivated"]
      260 SETTABLEKS                       R27 R26 K44 ["onActivated"]
      262 CALL                             R24 2 1
      263 SETTABLEKS                       R24 R23 K37 ["Button"]
      265 CALL                             R20 3 -1
      266 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Hooks"]
       37 GETTABLEKS                       R5 R5 K12 ["useWidgetRef"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K11 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K14 ["useTooltip"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["SharedFlags"]
       54 GETTABLEKS                       R8 R8 K16 ["getFFlagStudioDoNotShowUpdateInProgressButton"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["SharedFlags"]
       63 GETTABLEKS                       R9 R9 K17 ["getFFlagStudioDoNotShowUpdateFailedButton"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R1 K18 ["useEffect"]
       68 GETTABLEKS                       R10 R1 K19 ["useState"]
       70 GETTABLEKS                       R11 R2 K20 ["Button"]
       72 GETTABLEKS                       R12 R2 K21 ["Enums"]
       74 GETTABLEKS                       R13 R2 K22 ["View"]
       76 GETTABLEKS                       R14 R2 K21 ["Enums"]
       78 GETTABLEKS                       R14 R14 K23 ["ControlState"]
       80 GETTABLEKS                       R15 R3 K24 ["ContextServices"]
       82 GETTABLEKS                       R16 R15 K25 ["Localization"]
       84 GETTABLEKS                       R17 R15 K26 ["Plugin"]
       86 GETTABLEKS                       R18 R1 K27 ["useCallback"]
       88 DUPCLOSURE                       R19 K28 [PROTO_5]
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R11
      103 RETURN                           R19 1
