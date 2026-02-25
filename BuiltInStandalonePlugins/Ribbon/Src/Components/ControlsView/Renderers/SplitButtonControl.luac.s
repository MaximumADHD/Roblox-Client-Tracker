PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["Uri"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K1 ["Activate"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["Uri"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K1 ["Activate"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R2 R3 K0 ["Uri"]
       28 MOVE                             R3 R0
       29 CALL                             R1 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 5
       32 GETTABLEKS                       R1 R2 K2 ["Children"]
       34 JUMPIFNOT                        R1 ; [+10]
       35 GETUPVAL                         R1 6
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R1 R2 K3 ["OpenMenu"]
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R2 R3 K2 ["Children"]
       43 MOVE                             R3 R0
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+22]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["ShowSettingOptions"]
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["Rows"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["Size"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K3 ["OpenMenu"]
       20 MOVE                             R3 R1
       21 MOVE                             R4 R0
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K4 ["ChildAction"]
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETUPVAL                         R1 5
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K4 ["ChildAction"]
       32 CALL                             R1 1 1
       33 JUMPIFNOT                        R1 ; [+3]
       34 GETUPVAL                         R1 6
       35 JUMPIFNOT                        R1 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R1 R2 K5 ["Activate"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K4 ["ChildAction"]
       43 MOVE                             R3 R0
       44 CALL                             R1 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R1 R2 K6 ["Children"]
       49 JUMPIFNOT                        R1 ; [+10]
       50 GETUPVAL                         R1 2
       51 JUMPIFNOT                        R1 ; [+8]
       52 GETUPVAL                         R2 4
       53 GETTABLEKS                       R1 R2 K3 ["OpenMenu"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R2 R3 K6 ["Children"]
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
       10 JUMPIFNOT                        R5 ; [+27]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["toString"]
       14 GETTABLEKS                       R6 R2 K2 ["Action"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R7 R0 K4 ["Items"]
       19 GETTABLEKS                       R6 R7 K5 ["Actions"]
       21 GETTABLE                         R3 R6 R5
       22 JUMPIF                           R3 ; [+44]
       23 GETTABLEKS                       R6 R0 K6 ["Warn"]
       25 LOADK                            R8 K7 ["Missing Action %* for SplitButton with id %*"]
       26 MOVE                             R10 R5
       27 GETTABLEKS                       R11 R2 K8 ["Id"]
       29 NAMECALL                         R8 R8 K9 ["format"]
       31 CALL                             R8 3 1
       32 MOVE                             R7 R8
       33 CALL                             R6 1 0
       34 LOADNIL                          R6
       35 CLOSEUPVALS                      R3
       36 RETURN                           R6 1
       37 JUMP                             ; [+29]
       38 GETTABLEKS                       R5 R2 K10 ["Setting"]
       40 JUMPIFNOT                        R5 ; [+26]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K3 ["toString"]
       44 GETTABLEKS                       R6 R2 K10 ["Setting"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R7 R0 K4 ["Items"]
       49 GETTABLEKS                       R6 R7 K11 ["Settings"]
       51 GETTABLE                         R4 R6 R5
       52 JUMPIF                           R4 ; [+14]
       53 GETTABLEKS                       R6 R0 K6 ["Warn"]
       55 LOADK                            R8 K12 ["Missing Setting %* for SplitButton with id %*"]
       56 MOVE                             R10 R5
       57 GETTABLEKS                       R11 R2 K8 ["Id"]
       59 NAMECALL                         R8 R8 K9 ["format"]
       61 CALL                             R8 3 1
       62 MOVE                             R7 R8
       63 CALL                             R6 1 0
       64 LOADNIL                          R6
       65 CLOSEUPVALS                      R3
       66 RETURN                           R6 1
       67 MOVE                             R5 R3
       68 JUMPIF                           R5 ; [+3]
       69 MOVE                             R5 R4
       70 JUMPIF                           R5 ; [+1]
       71 GETUPVAL                         R5 2
       72 JUMPIFNOT                        R4 ; [+12]
       73 GETTABLEKS                       R8 R4 K13 ["Value"]
       75 FASTCALL1                        TYPEOF R8 ; [+2]
       76 GETIMPORT                        R7 K15 [typeof]
       78 CALL                             R7 1 1
       79 JUMPIFNOTEQKS                    R7 K16 ["number"] ; [+5]
       81 GETTABLEKS                       R7 R4 K13 ["Value"]
       83 ADDK                             R6 R7 K17 [1]
       84 JUMP                             ; [+1]
       85 LOADN                            R6 1
       86 JUMPIFNOT                        R4 ; [+7]
       87 GETTABLEKS                       R8 R4 K18 ["Values"]
       89 JUMPIFNOT                        R8 ; [+4]
       90 GETTABLEKS                       R8 R4 K18 ["Values"]
       92 GETTABLE                         R7 R8 R6
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 JUMPIFNOT                        R7 ; [+3]
       96 GETTABLEKS                       R8 R7 K19 ["Icon"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R8
      100 JUMPIFNOT                        R7 ; [+15]
      101 GETTABLEKS                       R10 R7 K2 ["Action"]
      103 JUMPIFNOT                        R10 ; [+12]
      104 GETTABLEKS                       R11 R0 K4 ["Items"]
      106 GETTABLEKS                       R10 R11 K5 ["Actions"]
      108 GETUPVAL                         R12 1
      109 GETTABLEKS                       R11 R12 K3 ["toString"]
      111 GETTABLEKS                       R12 R7 K2 ["Action"]
      113 CALL                             R11 1 1
      114 GETTABLE                         R9 R10 R11
      115 JUMP                             ; [+1]
      116 LOADNIL                          R9
      117 JUMPIFNOT                        R9 ; [+3]
      118 GETTABLEKS                       R10 R9 K19 ["Icon"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R10
      122 MOVE                             R11 R8
      123 JUMPIF                           R11 ; [+7]
      124 MOVE                             R11 R10
      125 JUMPIF                           R11 ; [+5]
      126 GETTABLEKS                       R11 R2 K19 ["Icon"]
      128 JUMPIF                           R11 ; [+2]
      129 GETTABLEKS                       R11 R5 K19 ["Icon"]
      131 JUMPIF                           R11 ; [+13]
      132 GETTABLEKS                       R12 R0 K6 ["Warn"]
      134 LOADK                            R14 K20 ["Missing Icon for SplitButton with id %*"]
      135 GETTABLEKS                       R16 R2 K8 ["Id"]
      137 NAMECALL                         R14 R14 K9 ["format"]
      139 CALL                             R14 2 1
      140 MOVE                             R13 R14
      141 CALL                             R12 1 0
      142 LOADNIL                          R12
      143 CLOSEUPVALS                      R3
      144 RETURN                           R12 1
      145 LOADNIL                          R12
      146 GETTABLEKS                       R13 R2 K21 ["ChildAction"]
      148 JUMPIFNOT                        R13 ; [+11]
      149 GETUPVAL                         R14 1
      150 GETTABLEKS                       R13 R14 K3 ["toString"]
      152 GETTABLEKS                       R14 R2 K21 ["ChildAction"]
      154 CALL                             R13 1 1
      155 GETTABLEKS                       R15 R0 K4 ["Items"]
      157 GETTABLEKS                       R14 R15 K5 ["Actions"]
      159 GETTABLE                         R12 R14 R13
      160 LOADB                            R13 0
      161 JUMPIFNOT                        R3 ; [+7]
      162 GETTABLEKS                       R14 R3 K22 ["Checked"]
      164 JUMPIFEQKB                       R14 TRUE ; [+2]
      166 LOADB                            R13 0 +1
      167 LOADB                            R13 1
      168 JUMP                             ; [+23]
      169 JUMPIFNOT                        R9 ; [+7]
      170 GETTABLEKS                       R14 R9 K22 ["Checked"]
      172 JUMPIFEQKB                       R14 TRUE ; [+2]
      174 LOADB                            R13 0 +1
      175 LOADB                            R13 1
      176 JUMP                             ; [+15]
      177 JUMPIFNOT                        R4 ; [+14]
      178 GETTABLEKS                       R15 R4 K13 ["Value"]
      180 FASTCALL1                        TYPEOF R15 ; [+2]
      181 GETIMPORT                        R14 K15 [typeof]
      183 CALL                             R14 1 1
      184 JUMPIFNOTEQKS                    R14 K23 ["boolean"] ; [+7]
      186 GETTABLEKS                       R14 R4 K13 ["Value"]
      188 JUMPIFEQKB                       R14 TRUE ; [+2]
      190 LOADB                            R13 0 +1
      191 LOADB                            R13 1
      192 LOADB                            R14 0
      193 GETTABLEKS                       R15 R2 K24 ["Single"]
      195 JUMPIFNOT                        R15 ; [+8]
      196 JUMPIFNOT                        R12 ; [+7]
      197 GETTABLEKS                       R15 R12 K22 ["Checked"]
      199 JUMPIFEQKB                       R15 TRUE ; [+2]
      201 LOADB                            R14 0 +1
      202 LOADB                            R14 1
      203 JUMP                             ; [+8]
      204 JUMPIFNOT                        R3 ; [+7]
      205 JUMPIFNOT                        R12 ; [+6]
      206 GETTABLEKS                       R15 R12 K22 ["Checked"]
      208 JUMPIFEQKB                       R15 TRUE ; [+2]
      210 LOADB                            R14 0 +1
      211 LOADB                            R14 1
      212 GETTABLEKS                       R15 R5 K25 ["Enabled"]
      214 JUMPIFNOT                        R15 ; [+4]
      215 NOT                              R15 R9
      216 JUMPIF                           R15 ; [+2]
      217 GETTABLEKS                       R15 R9 K25 ["Enabled"]
      219 LOADNIL                          R16
      220 JUMPIFNOT                        R4 ; [+39]
      221 GETTABLEKS                       R17 R2 K26 ["ShowSettingOptions"]
      223 JUMPIFNOT                        R17 ; [+36]
      224 GETTABLEKS                       R17 R4 K18 ["Values"]
      226 JUMPIFNOT                        R17 ; [+33]
      227 GETTABLEKS                       R17 R4 K18 ["Values"]
      229 LOADNIL                          R18
      230 LOADNIL                          R19
      231 FORGPREP                         R17
      232 JUMPIFNOT                        R21 ; [+15]
      233 GETTABLEKS                       R23 R21 K2 ["Action"]
      235 JUMPIFNOT                        R23 ; [+12]
      236 GETTABLEKS                       R24 R0 K4 ["Items"]
      238 GETTABLEKS                       R23 R24 K5 ["Actions"]
      240 GETUPVAL                         R25 1
      241 GETTABLEKS                       R24 R25 K3 ["toString"]
      243 GETTABLEKS                       R25 R21 K2 ["Action"]
      245 CALL                             R24 1 1
      246 GETTABLE                         R22 R23 R24
      247 JUMP                             ; [+1]
      248 LOADNIL                          R22
      249 JUMPIFNOT                        R22 ; [+5]
      250 GETTABLEKS                       R23 R22 K25 ["Enabled"]
      252 JUMPIFNOT                        R23 ; [+2]
      253 LOADB                            R16 1
      254 JUMP                             ; [+2]
      255 FORGLOOP                         R17 2 ; [-24]
      257 JUMPIF                           R16 ; [+3]
      258 LOADB                            R16 0
      259 JUMP                             ; [+1]
      260 LOADB                            R16 1
      261 GETTABLEKS                       R18 R5 K27 ["Visible"]
      263 JUMPIFEQKNIL                     R18 ; [+4]
      265 GETTABLEKS                       R17 R5 K27 ["Visible"]
      267 JUMP                             ; [+1]
      268 LOADB                            R17 1
      269 GETUPVAL                         R18 3
      270 GETUPVAL                         R19 4
      271 DUPTABLE                         R20 K45 [{"OnSelect", "OnSelectArrow", "Disabled", "EnabledChildren", "Uri", "Icon", "IconOnly", "LayoutOrder", "MainButtonSelected", "ArrowSelectedFromAction", "Size", "Shortcuts", "Text", "Tooltip", "ShortTitle", "Visible", "ShowContextMenu", "ControlIndices", "MenuData", "Single"}]
      272 NEWCLOSURE                       R21 P0
      273 CAPTURE                          REF R3
      274 CAPTURE                          UPVAL U5
      275 CAPTURE                          REF R13
      276 CAPTURE                          VAL R0
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R2
      279 CAPTURE                          REF R16
      280 SETTABLEKS                       R21 R20 K28 ["OnSelect"]
      282 NEWCLOSURE                       R21 P1
      283 CAPTURE                          REF R4
      284 CAPTURE                          VAL R2
      285 CAPTURE                          REF R16
      286 CAPTURE                          UPVAL U6
      287 CAPTURE                          VAL R0
      288 CAPTURE                          UPVAL U5
      289 CAPTURE                          REF R13
      290 SETTABLEKS                       R21 R20 K29 ["OnSelectArrow"]
      292 NOT                              R21 R15
      293 SETTABLEKS                       R21 R20 K30 ["Disabled"]
      295 SETTABLEKS                       R16 R20 K31 ["EnabledChildren"]
      297 GETUPVAL                         R22 1
      298 GETTABLEKS                       R21 R22 K46 ["child"]
      300 GETTABLEKS                       R22 R0 K47 ["WidgetUri"]
      302 GETTABLEKS                       R23 R2 K8 ["Id"]
      304 CALL                             R21 2 1
      305 SETTABLEKS                       R21 R20 K32 ["Uri"]
      307 SETTABLEKS                       R11 R20 K19 ["Icon"]
      309 GETTABLEKS                       R21 R0 K48 ["HideLabels"]
      311 JUMPIF                           R21 ; [+2]
      312 GETTABLEKS                       R21 R2 K33 ["IconOnly"]
      314 SETTABLEKS                       R21 R20 K33 ["IconOnly"]
      316 GETTABLEKS                       R21 R0 K34 ["LayoutOrder"]
      318 SETTABLEKS                       R21 R20 K34 ["LayoutOrder"]
      320 SETTABLEKS                       R13 R20 K35 ["MainButtonSelected"]
      322 SETTABLEKS                       R14 R20 K36 ["ArrowSelectedFromAction"]
      324 GETTABLEKS                       R21 R2 K37 ["Size"]
      326 SETTABLEKS                       R21 R20 K37 ["Size"]
      328 JUMPIFNOT                        R3 ; [+3]
      329 GETTABLEKS                       R21 R3 K38 ["Shortcuts"]
      331 JUMP                             ; [+1]
      332 LOADNIL                          R21
      333 SETTABLEKS                       R21 R20 K38 ["Shortcuts"]
      335 GETUPVAL                         R21 7
      336 MOVE                             R22 R1
      337 LOADK                            R23 K39 ["Text"]
      338 MOVE                             R24 R7
      339 MOVE                             R25 R2
      340 MOVE                             R26 R5
      341 MOVE                             R27 R9
      342 JUMPIF                           R27 ; [+2]
      343 NEWTABLE                         R27 0 0
      345 CALL                             R21 6 1
      346 SETTABLEKS                       R21 R20 K39 ["Text"]
      348 GETUPVAL                         R21 7
      349 MOVE                             R22 R1
      350 LOADK                            R23 K40 ["Tooltip"]
      351 MOVE                             R24 R7
      352 MOVE                             R25 R2
      353 MOVE                             R26 R5
      354 MOVE                             R27 R9
      355 JUMPIF                           R27 ; [+2]
      356 NEWTABLE                         R27 0 0
      358 CALL                             R21 6 1
      359 SETTABLEKS                       R21 R20 K40 ["Tooltip"]
      361 GETUPVAL                         R22 8
      362 CALL                             R22 0 1
      363 JUMPIFNOT                        R22 ; [+12]
      364 GETUPVAL                         R21 7
      365 MOVE                             R22 R1
      366 LOADK                            R23 K41 ["ShortTitle"]
      367 MOVE                             R24 R7
      368 MOVE                             R25 R2
      369 MOVE                             R26 R5
      370 MOVE                             R27 R9
      371 JUMPIF                           R27 ; [+2]
      372 NEWTABLE                         R27 0 0
      374 CALL                             R21 6 1
      375 JUMP                             ; [+1]
      376 LOADNIL                          R21
      377 SETTABLEKS                       R21 R20 K41 ["ShortTitle"]
      379 SETTABLEKS                       R17 R20 K27 ["Visible"]
      381 GETTABLEKS                       R21 R0 K42 ["ShowContextMenu"]
      383 SETTABLEKS                       R21 R20 K42 ["ShowContextMenu"]
      385 GETTABLEKS                       R21 R0 K43 ["ControlIndices"]
      387 SETTABLEKS                       R21 R20 K43 ["ControlIndices"]
      389 GETTABLEKS                       R21 R0 K44 ["MenuData"]
      391 SETTABLEKS                       R21 R20 K44 ["MenuData"]
      393 GETTABLEKS                       R21 R2 K24 ["Single"]
      395 SETTABLEKS                       R21 R20 K24 ["Single"]
      397 CALL                             R18 2 -1
      398 CLOSEUPVALS                      R3
      399 RETURN                           R18 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["SplitButton"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R10 R0 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R8 K16 ["getLocalizedField"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R11 R0 K12 ["Src"]
       51 GETTABLEKS                       R10 R11 K13 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["ControlsView"]
       55 GETTABLEKS                       R8 R9 K17 ["getSettingEnumOptions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R12 R0 K12 ["Src"]
       62 GETTABLEKS                       R11 R12 K13 ["Components"]
       64 GETTABLEKS                       R10 R11 K15 ["ControlsView"]
       66 GETTABLEKS                       R9 R10 K18 ["shouldSkipActivating"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Packages"]
       73 GETTABLEKS                       R10 R11 K19 ["Framework"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K20 ["ContextServices"]
       78 GETTABLEKS                       R11 R10 K21 ["Localization"]
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R15 R0 K12 ["Src"]
       84 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
       86 GETTABLEKS                       R13 R14 K23 ["getFeatureStudioActionShortNames"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R17 R0 K12 ["Src"]
       93 GETTABLEKS                       R16 R17 K13 ["Components"]
       95 GETTABLEKS                       R15 R16 K15 ["ControlsView"]
       97 GETTABLEKS                       R14 R15 K24 ["ControlProps"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K12 ["Src"]
      104 GETTABLEKS                       R15 R16 K25 ["Types"]
      106 CALL                             R14 1 1
      107 DUPTABLE                         R15 K29 [{"Enabled", "Icon", "Visible"}]
      108 LOADB                            R16 1
      109 SETTABLEKS                       R16 R15 K26 ["Enabled"]
      111 LOADNIL                          R16
      112 SETTABLEKS                       R16 R15 K27 ["Icon"]
      114 LOADB                            R16 1
      115 SETTABLEKS                       R16 R15 K28 ["Visible"]
      117 DUPCLOSURE                       R16 K30 [PROTO_2]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R12
      127 RETURN                           R16 1
