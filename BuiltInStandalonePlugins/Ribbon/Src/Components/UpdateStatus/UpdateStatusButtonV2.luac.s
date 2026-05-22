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
       69 LOADB                            R12 1
       70 JUMPIF                           R8 ; [+3]
       71 JUMPIF                           R7 ; [+2]
       72 JUMPIFNOT                        R5 ; [+2]
       73 JUMPIF                           R9 ; [+1]
       74 LOADB                            R12 0
       75 GETUPVAL                         R13 5
       76 GETTABLEKS                       R13 R13 K15 ["ButtonVariant"]
       78 GETTABLEKS                       R13 R13 K16 ["Standard"]
       80 JUMPIFNOT                        R7 ; [+6]
       81 GETUPVAL                         R14 5
       82 GETTABLEKS                       R14 R14 K15 ["ButtonVariant"]
       84 GETTABLEKS                       R13 R14 K17 ["Alert"]
       86 JUMP                             ; [+8]
       87 JUMPIF                           R8 ; [+2]
       88 JUMPIFNOT                        R5 ; [+6]
       89 JUMPIF                           R9 ; [+5]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K15 ["ButtonVariant"]
       93 GETTABLEKS                       R13 R14 K18 ["Emphasis"]
       95 LOADNIL                          R14
       96 LOADNIL                          R15
       97 LOADNIL                          R16
       98 JUMPIFNOT                        R7 ; [+19]
       99 LOADK                            R19 K19 ["Action"]
      100 LOADK                            R20 K11 ["UpdateFailed"]
      101 NAMECALL                         R17 R1 K20 ["getText"]
      103 CALL                             R17 3 1
      104 MOVE                             R14 R17
      105 LOADK                            R19 K21 ["Tooltip"]
      106 LOADK                            R20 K22 ["UpdateFailedTitle"]
      107 NAMECALL                         R17 R1 K20 ["getText"]
      109 CALL                             R17 3 1
      110 MOVE                             R15 R17
      111 LOADK                            R19 K21 ["Tooltip"]
      112 LOADK                            R20 K11 ["UpdateFailed"]
      113 NAMECALL                         R17 R1 K20 ["getText"]
      115 CALL                             R17 3 1
      116 MOVE                             R16 R17
      117 JUMP                             ; [+68]
      118 JUMPIFNOT                        R6 ; [+19]
      119 LOADK                            R19 K19 ["Action"]
      120 LOADK                            R20 K23 ["PreparingUpdate"]
      121 NAMECALL                         R17 R1 K20 ["getText"]
      123 CALL                             R17 3 1
      124 MOVE                             R14 R17
      125 LOADK                            R19 K21 ["Tooltip"]
      126 LOADK                            R20 K24 ["UpdateInProgressTitle"]
      127 NAMECALL                         R17 R1 K20 ["getText"]
      129 CALL                             R17 3 1
      130 MOVE                             R15 R17
      131 LOADK                            R19 K21 ["Tooltip"]
      132 LOADK                            R20 K9 ["UpdateInProgress"]
      133 NAMECALL                         R17 R1 K20 ["getText"]
      135 CALL                             R17 3 1
      136 MOVE                             R16 R17
      137 JUMP                             ; [+48]
      138 JUMPIFNOT                        R8 ; [+14]
      139 LOADK                            R19 K19 ["Action"]
      140 LOADK                            R20 K13 ["UpdateReady"]
      141 NAMECALL                         R17 R1 K20 ["getText"]
      143 CALL                             R17 3 1
      144 MOVE                             R14 R17
      145 LOADNIL                          R15
      146 LOADK                            R19 K21 ["Tooltip"]
      147 LOADK                            R20 K13 ["UpdateReady"]
      148 NAMECALL                         R17 R1 K20 ["getText"]
      150 CALL                             R17 3 1
      151 MOVE                             R16 R17
      152 JUMP                             ; [+33]
      153 JUMPIFNOT                        R9 ; [+19]
      154 LOADK                            R19 K19 ["Action"]
      155 LOADK                            R20 K23 ["PreparingUpdate"]
      156 NAMECALL                         R17 R1 K20 ["getText"]
      158 CALL                             R17 3 1
      159 MOVE                             R14 R17
      160 LOADK                            R19 K21 ["Tooltip"]
      161 LOADK                            R20 K24 ["UpdateInProgressTitle"]
      162 NAMECALL                         R17 R1 K20 ["getText"]
      164 CALL                             R17 3 1
      165 MOVE                             R15 R17
      166 LOADK                            R19 K21 ["Tooltip"]
      167 LOADK                            R20 K9 ["UpdateInProgress"]
      168 NAMECALL                         R17 R1 K20 ["getText"]
      170 CALL                             R17 3 1
      171 MOVE                             R16 R17
      172 JUMP                             ; [+13]
      173 LOADK                            R19 K19 ["Action"]
      174 LOADK                            R20 K7 ["UpdateAvailable"]
      175 NAMECALL                         R17 R1 K20 ["getText"]
      177 CALL                             R17 3 1
      178 MOVE                             R14 R17
      179 LOADNIL                          R15
      180 LOADK                            R19 K21 ["Tooltip"]
      181 LOADK                            R20 K7 ["UpdateAvailable"]
      182 NAMECALL                         R17 R1 K20 ["getText"]
      184 CALL                             R17 3 1
      185 MOVE                             R16 R17
      186 GETUPVAL                         R17 6
      187 DUPTABLE                         R18 K28 [{"Uri", "Title", "Text", "WidgetRef"}]
      188 GETTABLEKS                       R19 R0 K2 ["Uri"]
      190 SETTABLEKS                       R19 R18 K2 ["Uri"]
      192 SETTABLEKS                       R15 R18 K25 ["Title"]
      194 SETTABLEKS                       R16 R18 K26 ["Text"]
      196 SETTABLEKS                       R3 R18 K27 ["WidgetRef"]
      198 CALL                             R17 1 2
      199 GETUPVAL                         R19 7
      200 NEWCLOSURE                       R20 P1
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R18
      204 NEWTABLE                         R21 0 2
      206 MOVE                             R22 R17
      207 MOVE                             R23 R18
      208 SETLIST                          R21 R22 2 [1]
      210 CALL                             R19 2 1
      211 GETUPVAL                         R20 9
      212 GETTABLEKS                       R20 R20 K29 ["createElement"]
      214 GETUPVAL                         R21 10
      215 DUPTABLE                         R22 K35 [{"ref", "LayoutOrder", "Visible", "tag", "onStateChanged"}]
      216 SETTABLEKS                       R3 R22 K30 ["ref"]
      218 GETTABLEKS                       R23 R0 K31 ["LayoutOrder"]
      220 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      222 SETTABLEKS                       R11 R22 K32 ["Visible"]
      224 LOADK                            R23 K36 ["auto-xy"]
      225 SETTABLEKS                       R23 R22 K33 ["tag"]
      227 SETTABLEKS                       R19 R22 K34 ["onStateChanged"]
      229 DUPTABLE                         R23 K38 [{"Button"}]
      230 GETUPVAL                         R24 9
      231 GETTABLEKS                       R24 R24 K29 ["createElement"]
      233 GETUPVAL                         R25 11
      234 DUPTABLE                         R26 K44 [{"LayoutOrder", "size", "text", "variant", "isDisabled", "onActivated"}]
      235 LOADN                            R27 1
      236 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      238 GETUPVAL                         R27 5
      239 GETTABLEKS                       R27 R27 K45 ["InputSize"]
      241 GETTABLEKS                       R27 R27 K46 ["XSmall"]
      243 SETTABLEKS                       R27 R26 K39 ["size"]
      245 SETTABLEKS                       R14 R26 K40 ["text"]
      247 SETTABLEKS                       R13 R26 K41 ["variant"]
      249 SETTABLEKS                       R12 R26 K42 ["isDisabled"]
      251 GETTABLEKS                       R27 R0 K43 ["onActivated"]
      253 SETTABLEKS                       R27 R26 K43 ["onActivated"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K37 ["Button"]
      258 CALL                             R20 3 -1
      259 RETURN                           R20 -1

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
       48 GETTABLEKS                       R7 R1 K15 ["useEffect"]
       50 GETTABLEKS                       R8 R1 K16 ["useState"]
       52 GETTABLEKS                       R9 R2 K17 ["Button"]
       54 GETTABLEKS                       R10 R2 K18 ["Enums"]
       56 GETTABLEKS                       R11 R2 K19 ["View"]
       58 GETTABLEKS                       R12 R2 K18 ["Enums"]
       60 GETTABLEKS                       R12 R12 K20 ["ControlState"]
       62 GETTABLEKS                       R13 R3 K21 ["ContextServices"]
       64 GETTABLEKS                       R14 R13 K22 ["Localization"]
       66 GETTABLEKS                       R15 R13 K23 ["Plugin"]
       68 GETTABLEKS                       R16 R1 K24 ["useCallback"]
       70 DUPCLOSURE                       R17 K25 [PROTO_5]
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R9
       83 RETURN                           R17 1
