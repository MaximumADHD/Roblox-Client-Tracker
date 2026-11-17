PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Setting"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["SettingValue"]
        7 JUMPIFNOT                        R1 ; [+11]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["Select"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["Setting"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["SettingValue"]
       17 MOVE                             R4 R0
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["OnSelect"]
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K3 ["OnSelect"]
       26 GETUPVAL                         R2 0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 2
       29 JUMPIFNOT                        R1 ; [+9]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K4 ["Activate"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K5 ["Uri"]
       36 MOVE                             R3 R0
       37 CALL                             R1 2 0
       38 JUMP                             ; [+10]
       39 GETUPVAL                         R1 3
       40 JUMPIFNOT                        R1 ; [+8]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K4 ["Activate"]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K5 ["Uri"]
       47 MOVE                             R3 R0
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K6 ["CloseMenus"]
       52 CALL                             R1 0 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R2 K2 ["Action"]
       10 JUMPIFNOT                        R5 ; [+25]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["toString"]
       14 GETTABLEKS                       R6 R2 K2 ["Action"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R6 R0 K4 ["Items"]
       19 GETTABLEKS                       R6 R6 K5 ["Actions"]
       21 GETTABLE                         R3 R6 R5
       22 JUMPIF                           R3 ; [+13]
       23 GETTABLEKS                       R6 R0 K6 ["Warn"]
       25 LOADK                            R7 K7 ["Missing Action %* for Option with id %*"]
       26 MOVE                             R9 R5
       27 GETTABLEKS                       R10 R2 K8 ["Id"]
       29 NAMECALL                         R7 R7 K9 ["format"]
       31 CALL                             R7 3 1
       32 CALL                             R6 1 0
       33 LOADNIL                          R6
       34 CLOSEUPVALS                      R3
       35 RETURN                           R6 1
       36 GETTABLEKS                       R5 R2 K10 ["Setting"]
       38 JUMPIFNOT                        R5 ; [+25]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K3 ["toString"]
       42 GETTABLEKS                       R6 R2 K10 ["Setting"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R0 K4 ["Items"]
       47 GETTABLEKS                       R6 R6 K11 ["Settings"]
       49 GETTABLE                         R4 R6 R5
       50 JUMPIF                           R4 ; [+13]
       51 GETTABLEKS                       R6 R0 K6 ["Warn"]
       53 LOADK                            R7 K12 ["Missing Setting %* for Option with id %*"]
       54 MOVE                             R9 R5
       55 GETTABLEKS                       R10 R2 K8 ["Id"]
       57 NAMECALL                         R7 R7 K9 ["format"]
       59 CALL                             R7 3 1
       60 CALL                             R6 1 0
       61 LOADNIL                          R6
       62 CLOSEUPVALS                      R3
       63 RETURN                           R6 1
       64 MOVE                             R5 R3
       65 JUMPIF                           R5 ; [+3]
       66 MOVE                             R5 R4
       67 JUMPIF                           R5 ; [+1]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R6 R2 K13 ["SettingValue"]
       71 JUMPIF                           R6 ; [+13]
       72 JUMPIFNOT                        R4 ; [+11]
       73 GETTABLEKS                       R8 R4 K14 ["Value"]
       75 FASTCALL1                        TYPEOF R8 ; [+2]
       76 GETIMPORT                        R7 K16 [typeof]
       78 CALL                             R7 1 1
       79 JUMPIFNOTEQKS                    R7 K17 ["number"] ; [+4]
       81 GETTABLEKS                       R6 R4 K14 ["Value"]
       83 JUMP                             ; [+1]
       84 LOADN                            R6 0
       85 JUMPIFNOT                        R4 ; [+8]
       86 GETTABLEKS                       R8 R4 K18 ["Values"]
       88 JUMPIFNOT                        R8 ; [+5]
       89 GETTABLEKS                       R8 R4 K18 ["Values"]
       91 ADDK                             R9 R6 K19 [1]
       92 GETTABLE                         R7 R8 R9
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 JUMPIFNOT                        R4 ; [+9]
       96 GETTABLEKS                       R9 R2 K20 ["ShowSettingOptions"]
       98 JUMPIFNOT                        R9 ; [+6]
       99 GETUPVAL                         R8 3
      100 MOVE                             R9 R4
      101 GETTABLEKS                       R10 R2 K21 ["Rows"]
      103 CALL                             R8 2 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R8
      106 GETTABLEKS                       R10 R2 K22 ["Children"]
      108 OR                               R9 R10 R8
      109 JUMPIFNOT                        R7 ; [+3]
      110 GETTABLEKS                       R10 R7 K23 ["Icon"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R10
      114 JUMPIFNOT                        R7 ; [+15]
      115 GETTABLEKS                       R12 R7 K2 ["Action"]
      117 JUMPIFNOT                        R12 ; [+12]
      118 GETTABLEKS                       R12 R0 K4 ["Items"]
      120 GETTABLEKS                       R12 R12 K5 ["Actions"]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R13 R13 K3 ["toString"]
      125 GETTABLEKS                       R14 R7 K2 ["Action"]
      127 CALL                             R13 1 1
      128 GETTABLE                         R11 R12 R13
      129 JUMP                             ; [+1]
      130 LOADNIL                          R11
      131 JUMPIFNOT                        R11 ; [+3]
      132 GETTABLEKS                       R12 R11 K23 ["Icon"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R12
      136 GETTABLEKS                       R14 R2 K24 ["TextOnly"]
      138 JUMPIFNOT                        R14 ; [+2]
      139 LOADNIL                          R13
      140 JUMP                             ; [+9]
      141 MOVE                             R13 R10
      142 JUMPIF                           R13 ; [+7]
      143 MOVE                             R13 R12
      144 JUMPIF                           R13 ; [+5]
      145 GETTABLEKS                       R13 R2 K23 ["Icon"]
      147 JUMPIF                           R13 ; [+2]
      148 GETTABLEKS                       R13 R5 K23 ["Icon"]
      150 GETTABLEKS                       R14 R5 K25 ["Enabled"]
      152 JUMPIF                           R14 ; [+4]
      153 MOVE                             R14 R11
      154 JUMPIFNOT                        R14 ; [+2]
      155 GETTABLEKS                       R14 R11 K25 ["Enabled"]
      157 LOADNIL                          R15
      158 JUMPIFNOT                        R4 ; [+11]
      159 GETTABLEKS                       R17 R4 K14 ["Value"]
      161 FASTCALL1                        TYPEOF R17 ; [+2]
      162 GETIMPORT                        R16 K16 [typeof]
      164 CALL                             R16 1 1
      165 JUMPIFNOTEQKS                    R16 K26 ["boolean"] ; [+4]
      167 GETTABLEKS                       R15 R4 K14 ["Value"]
      169 JUMP                             ; [+20]
      170 JUMPIFNOT                        R4 ; [+12]
      171 GETTABLEKS                       R16 R2 K13 ["SettingValue"]
      173 JUMPIFNOT                        R16 ; [+9]
      174 GETTABLEKS                       R16 R4 K14 ["Value"]
      176 GETTABLEKS                       R17 R2 K13 ["SettingValue"]
      178 JUMPIFEQ                         R16 R17 ; [+2]
      180 LOADB                            R15 0 +1
      181 LOADB                            R15 1
      182 JUMP                             ; [+7]
      183 GETTABLEKS                       R16 R2 K27 ["Selected"]
      185 JUMPIFNOT                        R16 ; [+3]
      186 GETTABLEKS                       R15 R2 K27 ["Selected"]
      188 JUMP                             ; [+1]
      189 LOADB                            R15 0
      190 LOADNIL                          R16
      191 JUMPIFNOT                        R3 ; [+3]
      192 GETTABLEKS                       R16 R3 K28 ["Checked"]
      194 JUMP                             ; [+5]
      195 JUMPIFNOT                        R11 ; [+3]
      196 GETTABLEKS                       R16 R11 K28 ["Checked"]
      198 JUMP                             ; [+1]
      199 LOADB                            R16 0
      200 LOADNIL                          R17
      201 JUMPIFNOT                        R11 ; [+9]
      202 GETTABLEKS                       R18 R11 K29 ["Visible"]
      204 JUMPIFEQKNIL                     R18 ; [+4]
      206 GETTABLEKS                       R17 R11 K29 ["Visible"]
      208 JUMP                             ; [+11]
      209 LOADB                            R17 1
      210 JUMP                             ; [+9]
      211 JUMPIFNOT                        R5 ; [+8]
      212 GETTABLEKS                       R18 R5 K29 ["Visible"]
      214 JUMPIFEQKNIL                     R18 ; [+4]
      216 GETTABLEKS                       R17 R5 K29 ["Visible"]
      218 JUMP                             ; [+1]
      219 LOADB                            R17 1
      220 JUMPIFNOT                        R3 ; [+3]
      221 GETTABLEKS                       R18 R3 K30 ["Checkable"]
      223 JUMP                             ; [+5]
      224 JUMPIFNOT                        R11 ; [+3]
      225 GETTABLEKS                       R18 R11 K30 ["Checkable"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R18
      229 GETUPVAL                         R19 4
      230 GETUPVAL                         R20 5
      231 DUPTABLE                         R21 K40 [{"OnSelect", "Children", "Disabled", "Selected", "Visible", "Checkable", "Checked", "Id", "Icon", "LayoutOrder", "MenuView", "Size", "Text", "Tooltip", "WidgetUri", "ReserveCheckmarkSpace"}]
      232 NEWCLOSURE                       R22 P0
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R0
      235 CAPTURE                          REF R3
      236 CAPTURE                          VAL R11
      237 SETTABLEKS                       R22 R21 K31 ["OnSelect"]
      239 SETTABLEKS                       R9 R21 K22 ["Children"]
      241 NOT                              R22 R14
      242 SETTABLEKS                       R22 R21 K32 ["Disabled"]
      244 SETTABLEKS                       R15 R21 K27 ["Selected"]
      246 SETTABLEKS                       R17 R21 K29 ["Visible"]
      248 SETTABLEKS                       R18 R21 K30 ["Checkable"]
      250 SETTABLEKS                       R16 R21 K28 ["Checked"]
      252 GETTABLEKS                       R22 R2 K8 ["Id"]
      254 SETTABLEKS                       R22 R21 K8 ["Id"]
      256 SETTABLEKS                       R13 R21 K23 ["Icon"]
      258 GETTABLEKS                       R22 R0 K33 ["LayoutOrder"]
      260 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      262 GETTABLEKS                       R22 R0 K34 ["MenuView"]
      264 SETTABLEKS                       R22 R21 K34 ["MenuView"]
      266 GETTABLEKS                       R22 R2 K35 ["Size"]
      268 SETTABLEKS                       R22 R21 K35 ["Size"]
      270 GETUPVAL                         R22 6
      271 MOVE                             R23 R1
      272 LOADK                            R24 K36 ["Text"]
      273 MOVE                             R25 R7
      274 MOVE                             R26 R2
      275 MOVE                             R27 R5
      276 CALL                             R22 5 1
      277 SETTABLEKS                       R22 R21 K36 ["Text"]
      279 GETUPVAL                         R22 6
      280 MOVE                             R23 R1
      281 LOADK                            R24 K37 ["Tooltip"]
      282 MOVE                             R25 R7
      283 MOVE                             R26 R2
      284 MOVE                             R27 R5
      285 CALL                             R22 5 1
      286 SETTABLEKS                       R22 R21 K37 ["Tooltip"]
      288 GETTABLEKS                       R22 R0 K38 ["WidgetUri"]
      290 SETTABLEKS                       R22 R21 K38 ["WidgetUri"]
      292 GETTABLEKS                       R22 R2 K39 ["ReserveCheckmarkSpace"]
      294 SETTABLEKS                       R22 R21 K39 ["ReserveCheckmarkSpace"]
      296 CALL                             R19 2 -1
      297 CLOSEUPVALS                      R3
      298 RETURN                           R19 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["MenuItem"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R7 K16 ["getLocalizedField"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Src"]
       51 GETTABLEKS                       R8 R8 K13 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["ControlsView"]
       55 GETTABLEKS                       R8 R8 K17 ["getSettingEnumOptions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Packages"]
       62 GETTABLEKS                       R9 R9 K18 ["Framework"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R8 K19 ["ContextServices"]
       67 GETTABLEKS                       R10 R9 K20 ["Localization"]
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K12 ["Src"]
       73 GETTABLEKS                       R12 R12 K13 ["Components"]
       75 GETTABLEKS                       R12 R12 K15 ["ControlsView"]
       77 GETTABLEKS                       R12 R12 K21 ["ControlProps"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K12 ["Src"]
       84 GETTABLEKS                       R13 R13 K22 ["Types"]
       86 CALL                             R12 1 1
       87 DUPTABLE                         R13 K28 [{["Enabled"] = True, ["Icon"] = , ["Visible"] = True}]
       88 DUPCLOSURE                       R14 K29 [PROTO_1]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 RETURN                           R14 1
