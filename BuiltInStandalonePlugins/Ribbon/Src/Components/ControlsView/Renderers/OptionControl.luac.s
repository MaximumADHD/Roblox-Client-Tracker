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
       10 JUMPIFNOT                        R5 ; [+26]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["toString"]
       14 GETTABLEKS                       R6 R2 K2 ["Action"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R6 R0 K4 ["Items"]
       19 GETTABLEKS                       R6 R6 K5 ["Actions"]
       21 GETTABLE                         R3 R6 R5
       22 JUMPIF                           R3 ; [+14]
       23 GETTABLEKS                       R6 R0 K6 ["Warn"]
       25 LOADK                            R8 K7 ["Missing Action %* for Option with id %*"]
       26 MOVE                             R10 R5
       27 GETTABLEKS                       R11 R2 K8 ["Id"]
       29 NAMECALL                         R8 R8 K9 ["format"]
       31 CALL                             R8 3 1
       32 MOVE                             R7 R8
       33 CALL                             R6 1 0
       34 LOADNIL                          R6
       35 CLOSEUPVALS                      R3
       36 RETURN                           R6 1
       37 GETTABLEKS                       R5 R2 K10 ["Setting"]
       39 JUMPIFNOT                        R5 ; [+26]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R5 R5 K3 ["toString"]
       43 GETTABLEKS                       R6 R2 K10 ["Setting"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R0 K4 ["Items"]
       48 GETTABLEKS                       R6 R6 K11 ["Settings"]
       50 GETTABLE                         R4 R6 R5
       51 JUMPIF                           R4 ; [+14]
       52 GETTABLEKS                       R6 R0 K6 ["Warn"]
       54 LOADK                            R8 K12 ["Missing Setting %* for Option with id %*"]
       55 MOVE                             R10 R5
       56 GETTABLEKS                       R11 R2 K8 ["Id"]
       58 NAMECALL                         R8 R8 K9 ["format"]
       60 CALL                             R8 3 1
       61 MOVE                             R7 R8
       62 CALL                             R6 1 0
       63 LOADNIL                          R6
       64 CLOSEUPVALS                      R3
       65 RETURN                           R6 1
       66 MOVE                             R5 R3
       67 JUMPIF                           R5 ; [+3]
       68 MOVE                             R5 R4
       69 JUMPIF                           R5 ; [+1]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R6 R2 K13 ["SettingValue"]
       73 JUMPIF                           R6 ; [+13]
       74 JUMPIFNOT                        R4 ; [+11]
       75 GETTABLEKS                       R8 R4 K14 ["Value"]
       77 FASTCALL1                        TYPEOF R8 ; [+2]
       78 GETIMPORT                        R7 K16 [typeof]
       80 CALL                             R7 1 1
       81 JUMPIFNOTEQKS                    R7 K17 ["number"] ; [+4]
       83 GETTABLEKS                       R6 R4 K14 ["Value"]
       85 JUMP                             ; [+1]
       86 LOADN                            R6 0
       87 JUMPIFNOT                        R4 ; [+8]
       88 GETTABLEKS                       R8 R4 K18 ["Values"]
       90 JUMPIFNOT                        R8 ; [+5]
       91 GETTABLEKS                       R8 R4 K18 ["Values"]
       93 ADDK                             R9 R6 K19 [1]
       94 GETTABLE                         R7 R8 R9
       95 JUMP                             ; [+1]
       96 LOADNIL                          R7
       97 JUMPIFNOT                        R4 ; [+9]
       98 GETTABLEKS                       R9 R2 K20 ["ShowSettingOptions"]
      100 JUMPIFNOT                        R9 ; [+6]
      101 GETUPVAL                         R8 3
      102 MOVE                             R9 R4
      103 GETTABLEKS                       R10 R2 K21 ["Rows"]
      105 CALL                             R8 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R8
      108 GETTABLEKS                       R10 R2 K22 ["Children"]
      110 OR                               R9 R10 R8
      111 JUMPIFNOT                        R7 ; [+3]
      112 GETTABLEKS                       R10 R7 K23 ["Icon"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R10
      116 JUMPIFNOT                        R7 ; [+15]
      117 GETTABLEKS                       R12 R7 K2 ["Action"]
      119 JUMPIFNOT                        R12 ; [+12]
      120 GETTABLEKS                       R12 R0 K4 ["Items"]
      122 GETTABLEKS                       R12 R12 K5 ["Actions"]
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R13 R13 K3 ["toString"]
      127 GETTABLEKS                       R14 R7 K2 ["Action"]
      129 CALL                             R13 1 1
      130 GETTABLE                         R11 R12 R13
      131 JUMP                             ; [+1]
      132 LOADNIL                          R11
      133 JUMPIFNOT                        R11 ; [+3]
      134 GETTABLEKS                       R12 R11 K23 ["Icon"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R12
      138 GETTABLEKS                       R14 R2 K24 ["TextOnly"]
      140 JUMPIFNOT                        R14 ; [+2]
      141 LOADNIL                          R13
      142 JUMP                             ; [+9]
      143 MOVE                             R13 R10
      144 JUMPIF                           R13 ; [+7]
      145 MOVE                             R13 R12
      146 JUMPIF                           R13 ; [+5]
      147 GETTABLEKS                       R13 R2 K23 ["Icon"]
      149 JUMPIF                           R13 ; [+2]
      150 GETTABLEKS                       R13 R5 K23 ["Icon"]
      152 GETTABLEKS                       R14 R5 K25 ["Enabled"]
      154 JUMPIF                           R14 ; [+4]
      155 MOVE                             R14 R11
      156 JUMPIFNOT                        R14 ; [+2]
      157 GETTABLEKS                       R14 R11 K25 ["Enabled"]
      159 LOADNIL                          R15
      160 JUMPIFNOT                        R4 ; [+11]
      161 GETTABLEKS                       R17 R4 K14 ["Value"]
      163 FASTCALL1                        TYPEOF R17 ; [+2]
      164 GETIMPORT                        R16 K16 [typeof]
      166 CALL                             R16 1 1
      167 JUMPIFNOTEQKS                    R16 K26 ["boolean"] ; [+4]
      169 GETTABLEKS                       R15 R4 K14 ["Value"]
      171 JUMP                             ; [+20]
      172 JUMPIFNOT                        R4 ; [+12]
      173 GETTABLEKS                       R16 R2 K13 ["SettingValue"]
      175 JUMPIFNOT                        R16 ; [+9]
      176 GETTABLEKS                       R16 R4 K14 ["Value"]
      178 GETTABLEKS                       R17 R2 K13 ["SettingValue"]
      180 JUMPIFEQ                         R16 R17 ; [+2]
      182 LOADB                            R15 0 +1
      183 LOADB                            R15 1
      184 JUMP                             ; [+7]
      185 GETTABLEKS                       R16 R2 K27 ["Selected"]
      187 JUMPIFNOT                        R16 ; [+3]
      188 GETTABLEKS                       R15 R2 K27 ["Selected"]
      190 JUMP                             ; [+1]
      191 LOADB                            R15 0
      192 LOADNIL                          R16
      193 JUMPIFNOT                        R3 ; [+3]
      194 GETTABLEKS                       R16 R3 K28 ["Checked"]
      196 JUMP                             ; [+5]
      197 JUMPIFNOT                        R11 ; [+3]
      198 GETTABLEKS                       R16 R11 K28 ["Checked"]
      200 JUMP                             ; [+1]
      201 LOADB                            R16 0
      202 LOADNIL                          R17
      203 JUMPIFNOT                        R11 ; [+9]
      204 GETTABLEKS                       R18 R11 K29 ["Visible"]
      206 JUMPIFEQKNIL                     R18 ; [+4]
      208 GETTABLEKS                       R17 R11 K29 ["Visible"]
      210 JUMP                             ; [+11]
      211 LOADB                            R17 1
      212 JUMP                             ; [+9]
      213 JUMPIFNOT                        R5 ; [+8]
      214 GETTABLEKS                       R18 R5 K29 ["Visible"]
      216 JUMPIFEQKNIL                     R18 ; [+4]
      218 GETTABLEKS                       R17 R5 K29 ["Visible"]
      220 JUMP                             ; [+1]
      221 LOADB                            R17 1
      222 JUMPIFNOT                        R3 ; [+3]
      223 GETTABLEKS                       R18 R3 K30 ["Checkable"]
      225 JUMP                             ; [+5]
      226 JUMPIFNOT                        R11 ; [+3]
      227 GETTABLEKS                       R18 R11 K30 ["Checkable"]
      229 JUMP                             ; [+1]
      230 LOADNIL                          R18
      231 GETUPVAL                         R19 4
      232 GETUPVAL                         R20 5
      233 DUPTABLE                         R21 K40 [{"OnSelect", "Children", "Disabled", "Selected", "Visible", "Checkable", "Checked", "Id", "Icon", "LayoutOrder", "MenuView", "Size", "Text", "Tooltip", "WidgetUri", "ReserveCheckmarkSpace"}]
      234 NEWCLOSURE                       R22 P0
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R0
      237 CAPTURE                          REF R3
      238 CAPTURE                          VAL R11
      239 SETTABLEKS                       R22 R21 K31 ["OnSelect"]
      241 SETTABLEKS                       R9 R21 K22 ["Children"]
      243 NOT                              R22 R14
      244 SETTABLEKS                       R22 R21 K32 ["Disabled"]
      246 SETTABLEKS                       R15 R21 K27 ["Selected"]
      248 SETTABLEKS                       R17 R21 K29 ["Visible"]
      250 SETTABLEKS                       R18 R21 K30 ["Checkable"]
      252 SETTABLEKS                       R16 R21 K28 ["Checked"]
      254 GETTABLEKS                       R22 R2 K8 ["Id"]
      256 SETTABLEKS                       R22 R21 K8 ["Id"]
      258 SETTABLEKS                       R13 R21 K23 ["Icon"]
      260 GETTABLEKS                       R22 R0 K33 ["LayoutOrder"]
      262 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      264 GETTABLEKS                       R22 R0 K34 ["MenuView"]
      266 SETTABLEKS                       R22 R21 K34 ["MenuView"]
      268 GETTABLEKS                       R22 R2 K35 ["Size"]
      270 SETTABLEKS                       R22 R21 K35 ["Size"]
      272 GETUPVAL                         R22 6
      273 MOVE                             R23 R1
      274 LOADK                            R24 K36 ["Text"]
      275 MOVE                             R25 R7
      276 MOVE                             R26 R2
      277 MOVE                             R27 R5
      278 CALL                             R22 5 1
      279 SETTABLEKS                       R22 R21 K36 ["Text"]
      281 GETUPVAL                         R22 6
      282 MOVE                             R23 R1
      283 LOADK                            R24 K37 ["Tooltip"]
      284 MOVE                             R25 R7
      285 MOVE                             R26 R2
      286 MOVE                             R27 R5
      287 CALL                             R22 5 1
      288 SETTABLEKS                       R22 R21 K37 ["Tooltip"]
      290 GETTABLEKS                       R22 R0 K38 ["WidgetUri"]
      292 SETTABLEKS                       R22 R21 K38 ["WidgetUri"]
      294 GETTABLEKS                       R22 R2 K39 ["ReserveCheckmarkSpace"]
      296 SETTABLEKS                       R22 R21 K39 ["ReserveCheckmarkSpace"]
      298 CALL                             R19 2 -1
      299 CLOSEUPVALS                      R3
      300 RETURN                           R19 -1

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
