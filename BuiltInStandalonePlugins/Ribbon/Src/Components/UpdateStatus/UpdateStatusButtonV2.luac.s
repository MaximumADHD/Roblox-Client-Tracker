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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["use"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["use"]
       13 CALL                             R2 0 1
       14 NAMECALL                         R2 R2 K3 ["get"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R4 R0 K4 ["Uri"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K5 ["UpdateState"]
       23 GETIMPORT                        R6 K8 [Enum.UpdateState.UpdateNotAvailable]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETTABLEKS                       R6 R0 K5 ["UpdateState"]
       31 GETIMPORT                        R7 K10 [Enum.UpdateState.UpdateAvailable]
       33 JUMPIFEQ                         R6 R7 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 GETTABLEKS                       R7 R0 K5 ["UpdateState"]
       39 GETIMPORT                        R8 K12 [Enum.UpdateState.UpdateInProgress]
       41 JUMPIFEQ                         R7 R8 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 GETTABLEKS                       R8 R0 K5 ["UpdateState"]
       47 GETIMPORT                        R9 K14 [Enum.UpdateState.UpdateFailed]
       49 JUMPIFEQ                         R8 R9 ; [+2]
       51 LOADB                            R7 0 +1
       52 LOADB                            R7 1
       53 GETTABLEKS                       R9 R0 K5 ["UpdateState"]
       55 GETIMPORT                        R10 K16 [Enum.UpdateState.UpdateReady]
       57 JUMPIFEQ                         R9 R10 ; [+2]
       59 LOADB                            R8 0 +1
       60 LOADB                            R8 1
       61 GETUPVAL                         R9 4
       62 LOADB                            R10 0
       63 CALL                             R9 1 2
       64 GETUPVAL                         R11 5
       65 NEWCLOSURE                       R12 P0
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R13 0 1
       70 MOVE                             R14 R2
       71 SETLIST                          R13 R14 1 [1]
       73 CALL                             R11 2 0
       74 NOT                              R11 R4
       75 LOADB                            R12 1
       76 JUMPIF                           R8 ; [+3]
       77 JUMPIF                           R7 ; [+2]
       78 JUMPIFNOT                        R5 ; [+2]
       79 JUMPIF                           R9 ; [+1]
       80 LOADB                            R12 0
       81 GETUPVAL                         R15 6
       82 GETTABLEKS                       R14 R15 K17 ["ButtonVariant"]
       84 GETTABLEKS                       R13 R14 K18 ["Standard"]
       86 JUMPIFNOT                        R7 ; [+6]
       87 GETUPVAL                         R15 6
       88 GETTABLEKS                       R14 R15 K17 ["ButtonVariant"]
       90 GETTABLEKS                       R13 R14 K19 ["Alert"]
       92 JUMP                             ; [+8]
       93 JUMPIF                           R8 ; [+2]
       94 JUMPIFNOT                        R5 ; [+6]
       95 JUMPIF                           R9 ; [+5]
       96 GETUPVAL                         R15 6
       97 GETTABLEKS                       R14 R15 K17 ["ButtonVariant"]
       99 GETTABLEKS                       R13 R14 K20 ["Emphasis"]
      101 LOADNIL                          R14
      102 LOADNIL                          R15
      103 LOADNIL                          R16
      104 JUMPIFNOT                        R7 ; [+19]
      105 LOADK                            R19 K21 ["Action"]
      106 LOADK                            R20 K13 ["UpdateFailed"]
      107 NAMECALL                         R17 R1 K22 ["getText"]
      109 CALL                             R17 3 1
      110 MOVE                             R14 R17
      111 LOADK                            R19 K23 ["Tooltip"]
      112 LOADK                            R20 K24 ["UpdateFailedTitle"]
      113 NAMECALL                         R17 R1 K22 ["getText"]
      115 CALL                             R17 3 1
      116 MOVE                             R15 R17
      117 LOADK                            R19 K23 ["Tooltip"]
      118 LOADK                            R20 K13 ["UpdateFailed"]
      119 NAMECALL                         R17 R1 K22 ["getText"]
      121 CALL                             R17 3 1
      122 MOVE                             R16 R17
      123 JUMP                             ; [+68]
      124 JUMPIFNOT                        R6 ; [+19]
      125 LOADK                            R19 K21 ["Action"]
      126 LOADK                            R20 K25 ["PreparingUpdate"]
      127 NAMECALL                         R17 R1 K22 ["getText"]
      129 CALL                             R17 3 1
      130 MOVE                             R14 R17
      131 LOADK                            R19 K23 ["Tooltip"]
      132 LOADK                            R20 K26 ["UpdateInProgressTitle"]
      133 NAMECALL                         R17 R1 K22 ["getText"]
      135 CALL                             R17 3 1
      136 MOVE                             R15 R17
      137 LOADK                            R19 K23 ["Tooltip"]
      138 LOADK                            R20 K11 ["UpdateInProgress"]
      139 NAMECALL                         R17 R1 K22 ["getText"]
      141 CALL                             R17 3 1
      142 MOVE                             R16 R17
      143 JUMP                             ; [+48]
      144 JUMPIFNOT                        R8 ; [+14]
      145 LOADK                            R19 K21 ["Action"]
      146 LOADK                            R20 K15 ["UpdateReady"]
      147 NAMECALL                         R17 R1 K22 ["getText"]
      149 CALL                             R17 3 1
      150 MOVE                             R14 R17
      151 LOADNIL                          R15
      152 LOADK                            R19 K23 ["Tooltip"]
      153 LOADK                            R20 K15 ["UpdateReady"]
      154 NAMECALL                         R17 R1 K22 ["getText"]
      156 CALL                             R17 3 1
      157 MOVE                             R16 R17
      158 JUMP                             ; [+33]
      159 JUMPIFNOT                        R9 ; [+19]
      160 LOADK                            R19 K21 ["Action"]
      161 LOADK                            R20 K25 ["PreparingUpdate"]
      162 NAMECALL                         R17 R1 K22 ["getText"]
      164 CALL                             R17 3 1
      165 MOVE                             R14 R17
      166 LOADK                            R19 K23 ["Tooltip"]
      167 LOADK                            R20 K26 ["UpdateInProgressTitle"]
      168 NAMECALL                         R17 R1 K22 ["getText"]
      170 CALL                             R17 3 1
      171 MOVE                             R15 R17
      172 LOADK                            R19 K23 ["Tooltip"]
      173 LOADK                            R20 K11 ["UpdateInProgress"]
      174 NAMECALL                         R17 R1 K22 ["getText"]
      176 CALL                             R17 3 1
      177 MOVE                             R16 R17
      178 JUMP                             ; [+13]
      179 LOADK                            R19 K21 ["Action"]
      180 LOADK                            R20 K9 ["UpdateAvailable"]
      181 NAMECALL                         R17 R1 K22 ["getText"]
      183 CALL                             R17 3 1
      184 MOVE                             R14 R17
      185 LOADNIL                          R15
      186 LOADK                            R19 K23 ["Tooltip"]
      187 LOADK                            R20 K9 ["UpdateAvailable"]
      188 NAMECALL                         R17 R1 K22 ["getText"]
      190 CALL                             R17 3 1
      191 MOVE                             R16 R17
      192 GETUPVAL                         R17 7
      193 DUPTABLE                         R18 K30 [{"Uri", "Title", "Text", "WidgetRef"}]
      194 GETTABLEKS                       R19 R0 K4 ["Uri"]
      196 SETTABLEKS                       R19 R18 K4 ["Uri"]
      198 SETTABLEKS                       R15 R18 K27 ["Title"]
      200 SETTABLEKS                       R16 R18 K28 ["Text"]
      202 SETTABLEKS                       R3 R18 K29 ["WidgetRef"]
      204 CALL                             R17 1 2
      205 GETUPVAL                         R19 8
      206 NEWCLOSURE                       R20 P1
      207 CAPTURE                          UPVAL U9
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R18
      210 NEWTABLE                         R21 0 2
      212 MOVE                             R22 R17
      213 MOVE                             R23 R18
      214 SETLIST                          R21 R22 2 [1]
      216 CALL                             R19 2 1
      217 GETUPVAL                         R21 10
      218 GETTABLEKS                       R20 R21 K31 ["createElement"]
      220 GETUPVAL                         R21 11
      221 DUPTABLE                         R22 K37 [{"ref", "LayoutOrder", "Visible", "tag", "onStateChanged"}]
      222 SETTABLEKS                       R3 R22 K32 ["ref"]
      224 GETTABLEKS                       R23 R0 K33 ["LayoutOrder"]
      226 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      228 SETTABLEKS                       R11 R22 K34 ["Visible"]
      230 LOADK                            R23 K38 ["auto-xy"]
      231 SETTABLEKS                       R23 R22 K35 ["tag"]
      233 SETTABLEKS                       R19 R22 K36 ["onStateChanged"]
      235 DUPTABLE                         R23 K40 [{"Button"}]
      236 GETUPVAL                         R25 10
      237 GETTABLEKS                       R24 R25 K31 ["createElement"]
      239 GETUPVAL                         R25 12
      240 DUPTABLE                         R26 K46 [{"LayoutOrder", "size", "text", "variant", "isDisabled", "onActivated"}]
      241 LOADN                            R27 1
      242 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      244 GETUPVAL                         R29 6
      245 GETTABLEKS                       R28 R29 K47 ["InputSize"]
      247 GETTABLEKS                       R27 R28 K48 ["XSmall"]
      249 SETTABLEKS                       R27 R26 K41 ["size"]
      251 SETTABLEKS                       R14 R26 K42 ["text"]
      253 SETTABLEKS                       R13 R26 K43 ["variant"]
      255 SETTABLEKS                       R12 R26 K44 ["isDisabled"]
      257 GETTABLEKS                       R27 R0 K45 ["onActivated"]
      259 SETTABLEKS                       R27 R26 K45 ["onActivated"]
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K39 ["Button"]
      264 CALL                             R20 3 -1
      265 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["SharedFlags"]
       41 GETTABLEKS                       R6 R7 K13 ["getFeatureStudioBackgroundUpdates"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R7 R4 K14 ["Hooks"]
       46 GETTABLEKS                       R6 R7 K15 ["useWidgetRef"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R10 K14 ["Hooks"]
       54 GETTABLEKS                       R8 R9 K16 ["useTooltip"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R1 K17 ["useEffect"]
       59 GETTABLEKS                       R9 R1 K18 ["useState"]
       61 GETTABLEKS                       R10 R2 K19 ["Button"]
       63 GETTABLEKS                       R11 R2 K20 ["Enums"]
       65 GETTABLEKS                       R12 R2 K21 ["View"]
       67 GETTABLEKS                       R14 R2 K20 ["Enums"]
       69 GETTABLEKS                       R13 R14 K22 ["ControlState"]
       71 GETTABLEKS                       R14 R3 K23 ["ContextServices"]
       73 GETTABLEKS                       R15 R14 K24 ["Localization"]
       75 GETTABLEKS                       R16 R14 K25 ["Plugin"]
       77 GETTABLEKS                       R17 R1 K26 ["useCallback"]
       79 DUPCLOSURE                       R18 K27 [PROTO_5]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R17
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R10
       93 RETURN                           R18 1
