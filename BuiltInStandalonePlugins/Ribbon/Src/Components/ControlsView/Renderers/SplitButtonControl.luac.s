PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["Uri"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K1 ["Activate"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["Uri"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K1 ["Activate"]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K0 ["Uri"]
       28 MOVE                             R3 R0
       29 CALL                             R1 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K2 ["Children"]
       34 JUMPIFNOT                        R1 ; [+10]
       35 GETUPVAL                         R1 6
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETUPVAL                         R1 3
       38 GETTABLEKS                       R1 R1 K3 ["OpenMenu"]
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K2 ["Children"]
       43 MOVE                             R3 R0
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+22]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["ShowSettingOptions"]
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["Rows"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["Size"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["OpenMenu"]
       20 MOVE                             R3 R1
       21 MOVE                             R4 R0
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K4 ["ChildAction"]
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETUPVAL                         R1 5
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K4 ["ChildAction"]
       32 CALL                             R1 1 1
       33 JUMPIFNOT                        R1 ; [+3]
       34 GETUPVAL                         R1 6
       35 JUMPIFNOT                        R1 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K5 ["Activate"]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K4 ["ChildAction"]
       43 MOVE                             R3 R0
       44 CALL                             R1 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K6 ["Children"]
       49 JUMPIFNOT                        R1 ; [+10]
       50 GETUPVAL                         R1 2
       51 JUMPIFNOT                        R1 ; [+8]
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R1 R1 K3 ["OpenMenu"]
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K6 ["Children"]
       58 MOVE                             R3 R0
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

PROTO_2:
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
       22 JUMPIF                           R3 ; [+42]
       23 GETTABLEKS                       R6 R0 K6 ["Warn"]
       25 LOADK                            R7 K7 ["Missing Action %* for SplitButton with id %*"]
       26 MOVE                             R9 R5
       27 GETTABLEKS                       R10 R2 K8 ["Id"]
       29 NAMECALL                         R7 R7 K9 ["format"]
       31 CALL                             R7 3 1
       32 CALL                             R6 1 0
       33 LOADNIL                          R6
       34 CLOSEUPVALS                      R3
       35 RETURN                           R6 1
       36 JUMP                             ; [+28]
       37 GETTABLEKS                       R5 R2 K10 ["Setting"]
       39 JUMPIFNOT                        R5 ; [+25]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R5 R5 K3 ["toString"]
       43 GETTABLEKS                       R6 R2 K10 ["Setting"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R0 K4 ["Items"]
       48 GETTABLEKS                       R6 R6 K11 ["Settings"]
       50 GETTABLE                         R4 R6 R5
       51 JUMPIF                           R4 ; [+13]
       52 GETTABLEKS                       R6 R0 K6 ["Warn"]
       54 LOADK                            R7 K12 ["Missing Setting %* for SplitButton with id %*"]
       55 MOVE                             R9 R5
       56 GETTABLEKS                       R10 R2 K8 ["Id"]
       58 NAMECALL                         R7 R7 K9 ["format"]
       60 CALL                             R7 3 1
       61 CALL                             R6 1 0
       62 LOADNIL                          R6
       63 CLOSEUPVALS                      R3
       64 RETURN                           R6 1
       65 MOVE                             R5 R3
       66 JUMPIF                           R5 ; [+3]
       67 MOVE                             R5 R4
       68 JUMPIF                           R5 ; [+1]
       69 GETUPVAL                         R5 2
       70 JUMPIFNOT                        R4 ; [+12]
       71 GETTABLEKS                       R8 R4 K13 ["Value"]
       73 FASTCALL1                        TYPEOF R8 ; [+2]
       74 GETIMPORT                        R7 K15 [typeof]
       76 CALL                             R7 1 1
       77 JUMPIFNOTEQKS                    R7 K16 ["number"] ; [+5]
       79 GETTABLEKS                       R7 R4 K13 ["Value"]
       81 ADDK                             R6 R7 K17 [1]
       82 JUMP                             ; [+1]
       83 LOADN                            R6 1
       84 JUMPIFNOT                        R4 ; [+7]
       85 GETTABLEKS                       R8 R4 K18 ["Values"]
       87 JUMPIFNOT                        R8 ; [+4]
       88 GETTABLEKS                       R8 R4 K18 ["Values"]
       90 GETTABLE                         R7 R8 R6
       91 JUMP                             ; [+1]
       92 LOADNIL                          R7
       93 JUMPIFNOT                        R7 ; [+3]
       94 GETTABLEKS                       R8 R7 K19 ["Icon"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R8
       98 JUMPIFNOT                        R7 ; [+15]
       99 GETTABLEKS                       R10 R7 K2 ["Action"]
      101 JUMPIFNOT                        R10 ; [+12]
      102 GETTABLEKS                       R10 R0 K4 ["Items"]
      104 GETTABLEKS                       R10 R10 K5 ["Actions"]
      106 GETUPVAL                         R11 1
      107 GETTABLEKS                       R11 R11 K3 ["toString"]
      109 GETTABLEKS                       R12 R7 K2 ["Action"]
      111 CALL                             R11 1 1
      112 GETTABLE                         R9 R10 R11
      113 JUMP                             ; [+1]
      114 LOADNIL                          R9
      115 JUMPIFNOT                        R9 ; [+3]
      116 GETTABLEKS                       R10 R9 K19 ["Icon"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 MOVE                             R11 R8
      121 JUMPIF                           R11 ; [+7]
      122 MOVE                             R11 R10
      123 JUMPIF                           R11 ; [+5]
      124 GETTABLEKS                       R11 R2 K19 ["Icon"]
      126 JUMPIF                           R11 ; [+2]
      127 GETTABLEKS                       R11 R5 K19 ["Icon"]
      129 JUMPIF                           R11 ; [+12]
      130 GETTABLEKS                       R12 R0 K6 ["Warn"]
      132 LOADK                            R13 K20 ["Missing Icon for SplitButton with id %*"]
      133 GETTABLEKS                       R15 R2 K8 ["Id"]
      135 NAMECALL                         R13 R13 K9 ["format"]
      137 CALL                             R13 2 1
      138 CALL                             R12 1 0
      139 LOADNIL                          R12
      140 CLOSEUPVALS                      R3
      141 RETURN                           R12 1
      142 LOADNIL                          R12
      143 GETTABLEKS                       R13 R2 K21 ["ChildAction"]
      145 JUMPIFNOT                        R13 ; [+11]
      146 GETUPVAL                         R13 1
      147 GETTABLEKS                       R13 R13 K3 ["toString"]
      149 GETTABLEKS                       R14 R2 K21 ["ChildAction"]
      151 CALL                             R13 1 1
      152 GETTABLEKS                       R14 R0 K4 ["Items"]
      154 GETTABLEKS                       R14 R14 K5 ["Actions"]
      156 GETTABLE                         R12 R14 R13
      157 LOADB                            R13 0
      158 JUMPIFNOT                        R3 ; [+7]
      159 GETTABLEKS                       R14 R3 K22 ["Checked"]
      161 JUMPIFEQKB                       R14 TRUE ; [+2]
      163 LOADB                            R13 0 +1
      164 LOADB                            R13 1
      165 JUMP                             ; [+23]
      166 JUMPIFNOT                        R9 ; [+7]
      167 GETTABLEKS                       R14 R9 K22 ["Checked"]
      169 JUMPIFEQKB                       R14 TRUE ; [+2]
      171 LOADB                            R13 0 +1
      172 LOADB                            R13 1
      173 JUMP                             ; [+15]
      174 JUMPIFNOT                        R4 ; [+14]
      175 GETTABLEKS                       R15 R4 K13 ["Value"]
      177 FASTCALL1                        TYPEOF R15 ; [+2]
      178 GETIMPORT                        R14 K15 [typeof]
      180 CALL                             R14 1 1
      181 JUMPIFNOTEQKS                    R14 K23 ["boolean"] ; [+7]
      183 GETTABLEKS                       R14 R4 K13 ["Value"]
      185 JUMPIFEQKB                       R14 TRUE ; [+2]
      187 LOADB                            R13 0 +1
      188 LOADB                            R13 1
      189 LOADB                            R14 0
      190 GETTABLEKS                       R15 R2 K24 ["Single"]
      192 JUMPIFNOT                        R15 ; [+8]
      193 JUMPIFNOT                        R12 ; [+7]
      194 GETTABLEKS                       R15 R12 K22 ["Checked"]
      196 JUMPIFEQKB                       R15 TRUE ; [+2]
      198 LOADB                            R14 0 +1
      199 LOADB                            R14 1
      200 JUMP                             ; [+8]
      201 JUMPIFNOT                        R3 ; [+7]
      202 JUMPIFNOT                        R12 ; [+6]
      203 GETTABLEKS                       R15 R12 K22 ["Checked"]
      205 JUMPIFEQKB                       R15 TRUE ; [+2]
      207 LOADB                            R14 0 +1
      208 LOADB                            R14 1
      209 GETTABLEKS                       R15 R5 K25 ["Enabled"]
      211 JUMPIFNOT                        R15 ; [+4]
      212 NOT                              R15 R9
      213 JUMPIF                           R15 ; [+2]
      214 GETTABLEKS                       R15 R9 K25 ["Enabled"]
      216 LOADNIL                          R16
      217 JUMPIFNOT                        R4 ; [+39]
      218 GETTABLEKS                       R17 R2 K26 ["ShowSettingOptions"]
      220 JUMPIFNOT                        R17 ; [+36]
      221 GETTABLEKS                       R17 R4 K18 ["Values"]
      223 JUMPIFNOT                        R17 ; [+33]
      224 GETTABLEKS                       R17 R4 K18 ["Values"]
      226 LOADNIL                          R18
      227 LOADNIL                          R19
      228 FORGPREP                         R17
      229 JUMPIFNOT                        R21 ; [+15]
      230 GETTABLEKS                       R23 R21 K2 ["Action"]
      232 JUMPIFNOT                        R23 ; [+12]
      233 GETTABLEKS                       R23 R0 K4 ["Items"]
      235 GETTABLEKS                       R23 R23 K5 ["Actions"]
      237 GETUPVAL                         R24 1
      238 GETTABLEKS                       R24 R24 K3 ["toString"]
      240 GETTABLEKS                       R25 R21 K2 ["Action"]
      242 CALL                             R24 1 1
      243 GETTABLE                         R22 R23 R24
      244 JUMP                             ; [+1]
      245 LOADNIL                          R22
      246 JUMPIFNOT                        R22 ; [+5]
      247 GETTABLEKS                       R23 R22 K25 ["Enabled"]
      249 JUMPIFNOT                        R23 ; [+2]
      250 LOADB                            R16 1
      251 JUMP                             ; [+2]
      252 FORGLOOP                         R17 2 ; [-24]
      254 JUMPIF                           R16 ; [+3]
      255 LOADB                            R16 0
      256 JUMP                             ; [+1]
      257 LOADB                            R16 1
      258 GETTABLEKS                       R18 R5 K27 ["Visible"]
      260 JUMPIFEQKNIL                     R18 ; [+4]
      262 GETTABLEKS                       R17 R5 K27 ["Visible"]
      264 JUMP                             ; [+1]
      265 LOADB                            R17 1
      266 LOADNIL                          R18
      267 GETUPVAL                         R19 3
      268 CALL                             R19 0 1
      269 JUMPIFNOT                        R19 ; [+10]
      270 JUMPIFNOT                        R3 ; [+3]
      271 GETTABLEKS                       R18 R3 K28 ["Shortcuts"]
      273 JUMP                             ; [+11]
      274 JUMPIFNOT                        R9 ; [+3]
      275 GETTABLEKS                       R18 R9 K28 ["Shortcuts"]
      277 JUMP                             ; [+7]
      278 LOADNIL                          R18
      279 JUMP                             ; [+5]
      280 JUMPIFNOT                        R3 ; [+3]
      281 GETTABLEKS                       R18 R3 K28 ["Shortcuts"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R18
      285 GETUPVAL                         R19 4
      286 GETUPVAL                         R20 5
      287 DUPTABLE                         R21 K45 [{"OnSelect", "OnSelectArrow", "Disabled", "EnabledChildren", "Uri", "Icon", "IconOnly", "LayoutOrder", "MainButtonSelected", "ArrowSelectedFromAction", "Size", "Shortcuts", "Text", "Tooltip", "ShortTitle", "Visible", "ShowContextMenu", "ControlIndices", "MenuData", "Single"}]
      288 NEWCLOSURE                       R22 P0
      289 CAPTURE                          REF R3
      290 CAPTURE                          UPVAL U6
      291 CAPTURE                          REF R13
      292 CAPTURE                          VAL R0
      293 CAPTURE                          VAL R9
      294 CAPTURE                          VAL R2
      295 CAPTURE                          REF R16
      296 SETTABLEKS                       R22 R21 K29 ["OnSelect"]
      298 NEWCLOSURE                       R22 P1
      299 CAPTURE                          REF R4
      300 CAPTURE                          VAL R2
      301 CAPTURE                          REF R16
      302 CAPTURE                          UPVAL U7
      303 CAPTURE                          VAL R0
      304 CAPTURE                          UPVAL U6
      305 CAPTURE                          REF R13
      306 SETTABLEKS                       R22 R21 K30 ["OnSelectArrow"]
      308 NOT                              R22 R15
      309 SETTABLEKS                       R22 R21 K31 ["Disabled"]
      311 SETTABLEKS                       R16 R21 K32 ["EnabledChildren"]
      313 GETUPVAL                         R22 1
      314 GETTABLEKS                       R22 R22 K46 ["child"]
      316 GETTABLEKS                       R23 R0 K47 ["WidgetUri"]
      318 GETTABLEKS                       R24 R2 K8 ["Id"]
      320 CALL                             R22 2 1
      321 SETTABLEKS                       R22 R21 K33 ["Uri"]
      323 SETTABLEKS                       R11 R21 K19 ["Icon"]
      325 GETTABLEKS                       R22 R0 K48 ["HideLabels"]
      327 JUMPIF                           R22 ; [+2]
      328 GETTABLEKS                       R22 R2 K34 ["IconOnly"]
      330 SETTABLEKS                       R22 R21 K34 ["IconOnly"]
      332 GETTABLEKS                       R22 R0 K35 ["LayoutOrder"]
      334 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      336 SETTABLEKS                       R13 R21 K36 ["MainButtonSelected"]
      338 SETTABLEKS                       R14 R21 K37 ["ArrowSelectedFromAction"]
      340 GETTABLEKS                       R22 R2 K38 ["Size"]
      342 SETTABLEKS                       R22 R21 K38 ["Size"]
      344 SETTABLEKS                       R18 R21 K28 ["Shortcuts"]
      346 GETUPVAL                         R22 8
      347 MOVE                             R23 R1
      348 LOADK                            R24 K39 ["Text"]
      349 MOVE                             R25 R7
      350 MOVE                             R26 R2
      351 MOVE                             R27 R5
      352 MOVE                             R28 R9
      353 JUMPIF                           R28 ; [+2]
      354 NEWTABLE                         R28 0 0
      356 CALL                             R22 6 1
      357 SETTABLEKS                       R22 R21 K39 ["Text"]
      359 GETUPVAL                         R22 8
      360 MOVE                             R23 R1
      361 LOADK                            R24 K40 ["Tooltip"]
      362 MOVE                             R25 R7
      363 MOVE                             R26 R2
      364 MOVE                             R27 R5
      365 MOVE                             R28 R9
      366 JUMPIF                           R28 ; [+2]
      367 NEWTABLE                         R28 0 0
      369 CALL                             R22 6 1
      370 SETTABLEKS                       R22 R21 K40 ["Tooltip"]
      372 GETUPVAL                         R23 9
      373 CALL                             R23 0 1
      374 JUMPIFNOT                        R23 ; [+12]
      375 GETUPVAL                         R22 8
      376 MOVE                             R23 R1
      377 LOADK                            R24 K41 ["ShortTitle"]
      378 MOVE                             R25 R7
      379 MOVE                             R26 R2
      380 MOVE                             R27 R5
      381 MOVE                             R28 R9
      382 JUMPIF                           R28 ; [+2]
      383 NEWTABLE                         R28 0 0
      385 CALL                             R22 6 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R22
      388 SETTABLEKS                       R22 R21 K41 ["ShortTitle"]
      390 SETTABLEKS                       R17 R21 K27 ["Visible"]
      392 GETTABLEKS                       R22 R0 K42 ["ShowContextMenu"]
      394 SETTABLEKS                       R22 R21 K42 ["ShowContextMenu"]
      396 GETTABLEKS                       R22 R0 K43 ["ControlIndices"]
      398 SETTABLEKS                       R22 R21 K43 ["ControlIndices"]
      400 GETTABLEKS                       R22 R0 K44 ["MenuData"]
      402 SETTABLEKS                       R22 R21 K44 ["MenuData"]
      404 GETTABLEKS                       R22 R2 K24 ["Single"]
      406 SETTABLEKS                       R22 R21 K24 ["Single"]
      408 CALL                             R19 2 -1
      409 CLOSEUPVALS                      R3
      410 RETURN                           R19 -1

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
       33 GETTABLEKS                       R6 R6 K14 ["SplitButton"]
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
       60 GETTABLEKS                       R9 R0 K12 ["Src"]
       62 GETTABLEKS                       R9 R9 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K15 ["ControlsView"]
       66 GETTABLEKS                       R9 R9 K18 ["shouldSkipActivating"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Packages"]
       73 GETTABLEKS                       R10 R10 K19 ["Framework"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K20 ["ContextServices"]
       78 GETTABLEKS                       R11 R10 K21 ["Localization"]
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K12 ["Src"]
       84 GETTABLEKS                       R13 R13 K22 ["SharedFlags"]
       86 GETTABLEKS                       R13 R13 K23 ["getFeatureStudioActionShortNames"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Src"]
       93 GETTABLEKS                       R14 R14 K22 ["SharedFlags"]
       95 GETTABLEKS                       R14 R14 K24 ["getFFlagFixSplitButtonShortcutHint"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K12 ["Src"]
      102 GETTABLEKS                       R15 R15 K13 ["Components"]
      104 GETTABLEKS                       R15 R15 K15 ["ControlsView"]
      106 GETTABLEKS                       R15 R15 K25 ["ControlProps"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K12 ["Src"]
      113 GETTABLEKS                       R16 R16 K26 ["Types"]
      115 CALL                             R15 1 1
      116 DUPTABLE                         R16 K32 [{["Enabled"] = True, ["Icon"] = , ["Visible"] = True}]
      117 DUPCLOSURE                       R17 K33 [PROTO_2]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R12
      128 RETURN                           R17 1
