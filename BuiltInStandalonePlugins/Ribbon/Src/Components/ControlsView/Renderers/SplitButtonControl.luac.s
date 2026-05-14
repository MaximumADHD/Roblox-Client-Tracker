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
       10 JUMPIFNOT                        R5 ; [+27]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["toString"]
       14 GETTABLEKS                       R6 R2 K2 ["Action"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R6 R0 K4 ["Items"]
       19 GETTABLEKS                       R6 R6 K5 ["Actions"]
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
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K3 ["toString"]
       44 GETTABLEKS                       R6 R2 K10 ["Setting"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R0 K4 ["Items"]
       49 GETTABLEKS                       R6 R6 K11 ["Settings"]
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
      104 GETTABLEKS                       R10 R0 K4 ["Items"]
      106 GETTABLEKS                       R10 R10 K5 ["Actions"]
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K3 ["toString"]
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
      149 GETUPVAL                         R13 1
      150 GETTABLEKS                       R13 R13 K3 ["toString"]
      152 GETTABLEKS                       R14 R2 K21 ["ChildAction"]
      154 CALL                             R13 1 1
      155 GETTABLEKS                       R14 R0 K4 ["Items"]
      157 GETTABLEKS                       R14 R14 K5 ["Actions"]
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
      236 GETTABLEKS                       R23 R0 K4 ["Items"]
      238 GETTABLEKS                       R23 R23 K5 ["Actions"]
      240 GETUPVAL                         R24 1
      241 GETTABLEKS                       R24 R24 K3 ["toString"]
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
      269 LOADNIL                          R18
      270 GETUPVAL                         R19 3
      271 CALL                             R19 0 1
      272 JUMPIFNOT                        R19 ; [+10]
      273 JUMPIFNOT                        R3 ; [+3]
      274 GETTABLEKS                       R18 R3 K28 ["Shortcuts"]
      276 JUMP                             ; [+11]
      277 JUMPIFNOT                        R9 ; [+3]
      278 GETTABLEKS                       R18 R9 K28 ["Shortcuts"]
      280 JUMP                             ; [+7]
      281 LOADNIL                          R18
      282 JUMP                             ; [+5]
      283 JUMPIFNOT                        R3 ; [+3]
      284 GETTABLEKS                       R18 R3 K28 ["Shortcuts"]
      286 JUMP                             ; [+1]
      287 LOADNIL                          R18
      288 GETUPVAL                         R19 4
      289 GETUPVAL                         R20 5
      290 DUPTABLE                         R21 K45 [{"OnSelect", "OnSelectArrow", "Disabled", "EnabledChildren", "Uri", "Icon", "IconOnly", "LayoutOrder", "MainButtonSelected", "ArrowSelectedFromAction", "Size", "Shortcuts", "Text", "Tooltip", "ShortTitle", "Visible", "ShowContextMenu", "ControlIndices", "MenuData", "Single"}]
      291 NEWCLOSURE                       R22 P0
      292 CAPTURE                          REF R3
      293 CAPTURE                          UPVAL U6
      294 CAPTURE                          REF R13
      295 CAPTURE                          VAL R0
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R2
      298 CAPTURE                          REF R16
      299 SETTABLEKS                       R22 R21 K29 ["OnSelect"]
      301 NEWCLOSURE                       R22 P1
      302 CAPTURE                          REF R4
      303 CAPTURE                          VAL R2
      304 CAPTURE                          REF R16
      305 CAPTURE                          UPVAL U7
      306 CAPTURE                          VAL R0
      307 CAPTURE                          UPVAL U6
      308 CAPTURE                          REF R13
      309 SETTABLEKS                       R22 R21 K30 ["OnSelectArrow"]
      311 NOT                              R22 R15
      312 SETTABLEKS                       R22 R21 K31 ["Disabled"]
      314 SETTABLEKS                       R16 R21 K32 ["EnabledChildren"]
      316 GETUPVAL                         R22 1
      317 GETTABLEKS                       R22 R22 K46 ["child"]
      319 GETTABLEKS                       R23 R0 K47 ["WidgetUri"]
      321 GETTABLEKS                       R24 R2 K8 ["Id"]
      323 CALL                             R22 2 1
      324 SETTABLEKS                       R22 R21 K33 ["Uri"]
      326 SETTABLEKS                       R11 R21 K19 ["Icon"]
      328 GETTABLEKS                       R22 R0 K48 ["HideLabels"]
      330 JUMPIF                           R22 ; [+2]
      331 GETTABLEKS                       R22 R2 K34 ["IconOnly"]
      333 SETTABLEKS                       R22 R21 K34 ["IconOnly"]
      335 GETTABLEKS                       R22 R0 K35 ["LayoutOrder"]
      337 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      339 SETTABLEKS                       R13 R21 K36 ["MainButtonSelected"]
      341 SETTABLEKS                       R14 R21 K37 ["ArrowSelectedFromAction"]
      343 GETTABLEKS                       R22 R2 K38 ["Size"]
      345 SETTABLEKS                       R22 R21 K38 ["Size"]
      347 SETTABLEKS                       R18 R21 K28 ["Shortcuts"]
      349 GETUPVAL                         R22 8
      350 MOVE                             R23 R1
      351 LOADK                            R24 K39 ["Text"]
      352 MOVE                             R25 R7
      353 MOVE                             R26 R2
      354 MOVE                             R27 R5
      355 MOVE                             R28 R9
      356 JUMPIF                           R28 ; [+2]
      357 NEWTABLE                         R28 0 0
      359 CALL                             R22 6 1
      360 SETTABLEKS                       R22 R21 K39 ["Text"]
      362 GETUPVAL                         R22 8
      363 MOVE                             R23 R1
      364 LOADK                            R24 K40 ["Tooltip"]
      365 MOVE                             R25 R7
      366 MOVE                             R26 R2
      367 MOVE                             R27 R5
      368 MOVE                             R28 R9
      369 JUMPIF                           R28 ; [+2]
      370 NEWTABLE                         R28 0 0
      372 CALL                             R22 6 1
      373 SETTABLEKS                       R22 R21 K40 ["Tooltip"]
      375 GETUPVAL                         R23 9
      376 CALL                             R23 0 1
      377 JUMPIFNOT                        R23 ; [+12]
      378 GETUPVAL                         R22 8
      379 MOVE                             R23 R1
      380 LOADK                            R24 K41 ["ShortTitle"]
      381 MOVE                             R25 R7
      382 MOVE                             R26 R2
      383 MOVE                             R27 R5
      384 MOVE                             R28 R9
      385 JUMPIF                           R28 ; [+2]
      386 NEWTABLE                         R28 0 0
      388 CALL                             R22 6 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R22
      391 SETTABLEKS                       R22 R21 K41 ["ShortTitle"]
      393 SETTABLEKS                       R17 R21 K27 ["Visible"]
      395 GETTABLEKS                       R22 R0 K42 ["ShowContextMenu"]
      397 SETTABLEKS                       R22 R21 K42 ["ShowContextMenu"]
      399 GETTABLEKS                       R22 R0 K43 ["ControlIndices"]
      401 SETTABLEKS                       R22 R21 K43 ["ControlIndices"]
      403 GETTABLEKS                       R22 R0 K44 ["MenuData"]
      405 SETTABLEKS                       R22 R21 K44 ["MenuData"]
      407 GETTABLEKS                       R22 R2 K24 ["Single"]
      409 SETTABLEKS                       R22 R21 K24 ["Single"]
      411 CALL                             R19 2 -1
      412 CLOSEUPVALS                      R3
      413 RETURN                           R19 -1

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
      116 DUPTABLE                         R16 K30 [{"Enabled", "Icon", "Visible"}]
      117 LOADB                            R17 1
      118 SETTABLEKS                       R17 R16 K27 ["Enabled"]
      120 LOADNIL                          R17
      121 SETTABLEKS                       R17 R16 K28 ["Icon"]
      123 LOADB                            R17 1
      124 SETTABLEKS                       R17 R16 K29 ["Visible"]
      126 DUPCLOSURE                       R17 K31 [PROTO_2]
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R12
      137 RETURN                           R17 1
