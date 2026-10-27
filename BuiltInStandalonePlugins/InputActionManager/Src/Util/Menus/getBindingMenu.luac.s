PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+51]
        5 NEWTABLE                         R4 0 2
        7 DUPTABLE                         R5 K3 [{"icon", "id", "text"}]
        8 GETUPVAL                         R7 1
        9 CALL                             R7 0 1
       10 JUMPIFNOT                        R7 ; [+4]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K4 ["TextUppercaseALowercaseA"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K0 ["icon"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K5 ["BINDING_DISPLAY_NAME"]
       21 SETTABLEKS                       R6 R5 K1 ["id"]
       23 LOADK                            R8 K6 ["Menu"]
       24 LOADK                            R9 K7 ["DisplayName"]
       25 NAMECALL                         R6 R0 K8 ["getText"]
       27 CALL                             R6 3 1
       28 SETTABLEKS                       R6 R5 K2 ["text"]
       30 DUPTABLE                         R6 K3 [{"icon", "id", "text"}]
       31 GETUPVAL                         R8 1
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+4]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K9 ["Image"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 SETTABLEKS                       R7 R6 K0 ["icon"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["BINDING_DISPLAY_IMAGE"]
       44 SETTABLEKS                       R7 R6 K1 ["id"]
       46 LOADK                            R9 K6 ["Menu"]
       47 LOADK                            R10 K11 ["DisplayImage"]
       48 NAMECALL                         R7 R0 K8 ["getText"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K2 ["text"]
       53 SETLIST                          R4 R5 2 [1]
       55 JUMP                             ; [+2]
       56 NEWTABLE                         R4 0 0
       58 NEWTABLE                         R5 0 0
       60 GETUPVAL                         R6 4
       61 CALL                             R6 0 1
       62 JUMPIFNOT                        R6 ; [+24]
       63 DUPTABLE                         R8 K3 [{"icon", "id", "text"}]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K12 ["LocationPin"]
       67 SETTABLEKS                       R9 R8 K0 ["icon"]
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R9 R9 K13 ["SHOW_IN_EXPLORER"]
       72 SETTABLEKS                       R9 R8 K1 ["id"]
       74 LOADK                            R11 K6 ["Menu"]
       75 LOADK                            R12 K14 ["ShowInExplorer"]
       76 NAMECALL                         R9 R0 K8 ["getText"]
       78 CALL                             R9 3 1
       79 SETTABLEKS                       R9 R8 K2 ["text"]
       81 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       83 MOVE                             R7 R3
       84 GETIMPORT                        R6 K17 [table.insert]
       86 CALL                             R6 2 0
       87 GETUPVAL                         R6 5
       88 MOVE                             R7 R1
       89 MOVE                             R8 R2
       90 CALL                             R6 2 1
       91 JUMPIFNOT                        R6 ; [+39]
       92 DUPTABLE                         R8 K19 [{"icon", "id", "isChecked", "text"}]
       93 GETUPVAL                         R10 1
       94 CALL                             R10 0 1
       95 JUMPIFNOT                        R10 ; [+5]
       96 GETUPVAL                         R9 6
       97 GETTABLEKS                       R10 R2 K20 ["clampMagnitudeToOne"]
       99 CALL                             R9 1 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R9
      102 SETTABLEKS                       R9 R8 K0 ["icon"]
      104 GETUPVAL                         R9 3
      105 GETTABLEKS                       R9 R9 K21 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
      107 SETTABLEKS                       R9 R8 K1 ["id"]
      109 GETUPVAL                         R10 1
      110 CALL                             R10 0 1
      111 JUMPIFNOT                        R10 ; [+2]
      112 LOADNIL                          R9
      113 JUMP                             ; [+2]
      114 GETTABLEKS                       R9 R2 K20 ["clampMagnitudeToOne"]
      116 SETTABLEKS                       R9 R8 K18 ["isChecked"]
      118 LOADK                            R11 K6 ["Menu"]
      119 LOADK                            R12 K22 ["ClampMagnitudeToOne"]
      120 NAMECALL                         R9 R0 K8 ["getText"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K2 ["text"]
      125 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      127 MOVE                             R7 R5
      128 GETIMPORT                        R6 K17 [table.insert]
      130 CALL                             R6 2 0
      131 GETUPVAL                         R6 0
      132 CALL                             R6 0 1
      133 JUMPIF                           R6 ; [+58]
      134 DUPTABLE                         R8 K3 [{"icon", "id", "text"}]
      135 GETUPVAL                         R10 1
      136 CALL                             R10 0 1
      137 JUMPIFNOT                        R10 ; [+4]
      138 GETUPVAL                         R9 2
      139 GETTABLEKS                       R9 R9 K4 ["TextUppercaseALowercaseA"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K0 ["icon"]
      145 GETUPVAL                         R9 3
      146 GETTABLEKS                       R9 R9 K5 ["BINDING_DISPLAY_NAME"]
      148 SETTABLEKS                       R9 R8 K1 ["id"]
      150 LOADK                            R11 K6 ["Menu"]
      151 LOADK                            R12 K7 ["DisplayName"]
      152 NAMECALL                         R9 R0 K8 ["getText"]
      154 CALL                             R9 3 1
      155 SETTABLEKS                       R9 R8 K2 ["text"]
      157 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      159 MOVE                             R7 R5
      160 GETIMPORT                        R6 K17 [table.insert]
      162 CALL                             R6 2 0
      163 DUPTABLE                         R8 K3 [{"icon", "id", "text"}]
      164 GETUPVAL                         R10 1
      165 CALL                             R10 0 1
      166 JUMPIFNOT                        R10 ; [+4]
      167 GETUPVAL                         R9 2
      168 GETTABLEKS                       R9 R9 K9 ["Image"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R9
      172 SETTABLEKS                       R9 R8 K0 ["icon"]
      174 GETUPVAL                         R9 3
      175 GETTABLEKS                       R9 R9 K10 ["BINDING_DISPLAY_IMAGE"]
      177 SETTABLEKS                       R9 R8 K1 ["id"]
      179 LOADK                            R11 K6 ["Menu"]
      180 LOADK                            R12 K11 ["DisplayImage"]
      181 NAMECALL                         R9 R0 K8 ["getText"]
      183 CALL                             R9 3 1
      184 SETTABLEKS                       R9 R8 K2 ["text"]
      186 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      188 MOVE                             R7 R5
      189 GETIMPORT                        R6 K17 [table.insert]
      191 CALL                             R6 2 0
      192 GETUPVAL                         R6 7
      193 MOVE                             R7 R1
      194 MOVE                             R8 R2
      195 CALL                             R6 2 1
      196 JUMPIFNOT                        R6 ; [+38]
      197 DUPTABLE                         R8 K23 [{"id", "text"}]
      198 GETUPVAL                         R9 3
      199 GETTABLEKS                       R9 R9 K24 ["BINDING_PRESSED_THRESHOLD"]
      201 SETTABLEKS                       R9 R8 K1 ["id"]
      203 LOADK                            R11 K6 ["Menu"]
      204 LOADK                            R12 K25 ["PressedThreshold"]
      205 NAMECALL                         R9 R0 K8 ["getText"]
      207 CALL                             R9 3 1
      208 SETTABLEKS                       R9 R8 K2 ["text"]
      210 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      212 MOVE                             R7 R5
      213 GETIMPORT                        R6 K17 [table.insert]
      215 CALL                             R6 2 0
      216 DUPTABLE                         R8 K23 [{"id", "text"}]
      217 GETUPVAL                         R9 3
      218 GETTABLEKS                       R9 R9 K26 ["BINDING_RELEASED_THRESHOLD"]
      220 SETTABLEKS                       R9 R8 K1 ["id"]
      222 LOADK                            R11 K6 ["Menu"]
      223 LOADK                            R12 K27 ["ReleasedThreshold"]
      224 NAMECALL                         R9 R0 K8 ["getText"]
      226 CALL                             R9 3 1
      227 SETTABLEKS                       R9 R8 K2 ["text"]
      229 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      231 MOVE                             R7 R5
      232 GETIMPORT                        R6 K17 [table.insert]
      234 CALL                             R6 2 0
      235 GETTABLEKS                       R6 R1 K28 ["type"]
      237 GETIMPORT                        R7 K32 [Enum.InputActionType.Direction1D]
      239 JUMPIFNOTEQ                      R6 R7 ; [+21]
      241 DUPTABLE                         R8 K23 [{"id", "text"}]
      242 GETUPVAL                         R9 3
      243 GETTABLEKS                       R9 R9 K33 ["BINDING_SCALE"]
      245 SETTABLEKS                       R9 R8 K1 ["id"]
      247 LOADK                            R11 K6 ["Menu"]
      248 LOADK                            R12 K34 ["Scale"]
      249 NAMECALL                         R9 R0 K8 ["getText"]
      251 CALL                             R9 3 1
      252 SETTABLEKS                       R9 R8 K2 ["text"]
      254 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      256 MOVE                             R7 R5
      257 GETIMPORT                        R6 K17 [table.insert]
      259 CALL                             R6 2 0
      260 JUMP                             ; [+143]
      261 GETTABLEKS                       R6 R1 K28 ["type"]
      263 GETIMPORT                        R7 K36 [Enum.InputActionType.Direction2D]
      265 JUMPIFNOTEQ                      R6 R7 ; [+94]
      267 GETUPVAL                         R6 8
      268 CALL                             R6 0 1
      269 JUMPIFNOT                        R6 ; [+32]
      270 GETTABLEKS                       R6 R2 K37 ["keyCode"]
      272 GETIMPORT                        R7 K40 [Enum.KeyCode.Thumbstick1]
      274 JUMPIFEQ                         R6 R7 ; [+7]
      276 GETTABLEKS                       R6 R2 K37 ["keyCode"]
      278 GETIMPORT                        R7 K42 [Enum.KeyCode.Thumbstick2]
      280 JUMPIFNOTEQ                      R6 R7 ; [+40]
      282 DUPTABLE                         R8 K23 [{"id", "text"}]
      283 GETUPVAL                         R9 3
      284 GETTABLEKS                       R9 R9 K43 ["BINDING_RESPONSE_CURVE"]
      286 SETTABLEKS                       R9 R8 K1 ["id"]
      288 LOADK                            R11 K6 ["Menu"]
      289 LOADK                            R12 K44 ["ResponseCurve"]
      290 NAMECALL                         R9 R0 K8 ["getText"]
      292 CALL                             R9 3 1
      293 SETTABLEKS                       R9 R8 K2 ["text"]
      295 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      297 MOVE                             R7 R5
      298 GETIMPORT                        R6 K17 [table.insert]
      300 CALL                             R6 2 0
      301 JUMP                             ; [+19]
      302 DUPTABLE                         R8 K23 [{"id", "text"}]
      303 GETUPVAL                         R9 3
      304 GETTABLEKS                       R9 R9 K43 ["BINDING_RESPONSE_CURVE"]
      306 SETTABLEKS                       R9 R8 K1 ["id"]
      308 LOADK                            R11 K6 ["Menu"]
      309 LOADK                            R12 K44 ["ResponseCurve"]
      310 NAMECALL                         R9 R0 K8 ["getText"]
      312 CALL                             R9 3 1
      313 SETTABLEKS                       R9 R8 K2 ["text"]
      315 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      317 MOVE                             R7 R5
      318 GETIMPORT                        R6 K17 [table.insert]
      320 CALL                             R6 2 0
      321 DUPTABLE                         R8 K23 [{"id", "text"}]
      322 GETUPVAL                         R9 3
      323 GETTABLEKS                       R9 R9 K33 ["BINDING_SCALE"]
      325 SETTABLEKS                       R9 R8 K1 ["id"]
      327 LOADK                            R11 K6 ["Menu"]
      328 LOADK                            R12 K34 ["Scale"]
      329 NAMECALL                         R9 R0 K8 ["getText"]
      331 CALL                             R9 3 1
      332 SETTABLEKS                       R9 R8 K2 ["text"]
      334 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      336 MOVE                             R7 R5
      337 GETIMPORT                        R6 K17 [table.insert]
      339 CALL                             R6 2 0
      340 DUPTABLE                         R8 K23 [{"id", "text"}]
      341 GETUPVAL                         R9 3
      342 GETTABLEKS                       R9 R9 K45 ["BINDING_VECTOR2_SCALE"]
      344 SETTABLEKS                       R9 R8 K1 ["id"]
      346 LOADK                            R11 K6 ["Menu"]
      347 LOADK                            R12 K46 ["Vector2Scale"]
      348 NAMECALL                         R9 R0 K8 ["getText"]
      350 CALL                             R9 3 1
      351 SETTABLEKS                       R9 R8 K2 ["text"]
      353 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      355 MOVE                             R7 R5
      356 GETIMPORT                        R6 K17 [table.insert]
      358 CALL                             R6 2 0
      359 JUMP                             ; [+44]
      360 GETTABLEKS                       R6 R1 K28 ["type"]
      362 GETIMPORT                        R7 K48 [Enum.InputActionType.Direction3D]
      364 JUMPIFNOTEQ                      R6 R7 ; [+39]
      366 DUPTABLE                         R8 K23 [{"id", "text"}]
      367 GETUPVAL                         R9 3
      368 GETTABLEKS                       R9 R9 K33 ["BINDING_SCALE"]
      370 SETTABLEKS                       R9 R8 K1 ["id"]
      372 LOADK                            R11 K6 ["Menu"]
      373 LOADK                            R12 K34 ["Scale"]
      374 NAMECALL                         R9 R0 K8 ["getText"]
      376 CALL                             R9 3 1
      377 SETTABLEKS                       R9 R8 K2 ["text"]
      379 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      381 MOVE                             R7 R5
      382 GETIMPORT                        R6 K17 [table.insert]
      384 CALL                             R6 2 0
      385 DUPTABLE                         R8 K23 [{"id", "text"}]
      386 GETUPVAL                         R9 3
      387 GETTABLEKS                       R9 R9 K49 ["BINDING_VECTOR3_SCALE"]
      389 SETTABLEKS                       R9 R8 K1 ["id"]
      391 LOADK                            R11 K6 ["Menu"]
      392 LOADK                            R12 K50 ["Vector3Scale"]
      393 NAMECALL                         R9 R0 K8 ["getText"]
      395 CALL                             R9 3 1
      396 SETTABLEKS                       R9 R8 K2 ["text"]
      398 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      400 MOVE                             R7 R5
      401 GETIMPORT                        R6 K17 [table.insert]
      403 CALL                             R6 2 0
      404 GETUPVAL                         R6 4
      405 CALL                             R6 0 1
      406 JUMPIF                           R6 ; [+20]
      407 GETUPVAL                         R6 0
      408 CALL                             R6 0 1
      409 JUMPIFNOT                        R6 ; [+16]
      410 LENGTH                           R6 R5
      411 LOADN                            R7 0
      412 JUMPIFNOTLT                      R7 R6 ; [+12]
      414 NEWTABLE                         R6 0 2
      416 DUPTABLE                         R7 K52 [{"items"}]
      417 SETTABLEKS                       R4 R7 K51 ["items"]
      419 DUPTABLE                         R8 K52 [{"items"}]
      420 SETTABLEKS                       R5 R8 K51 ["items"]
      422 SETLIST                          R6 R7 2 [1]
      424 RETURN                           R6 1
      425 RETURN                           R4 1
      426 RETURN                           R5 1
      427 NEWTABLE                         R6 0 0
      429 LENGTH                           R7 R3
      430 LOADN                            R8 0
      431 JUMPIFNOTLT                      R8 R7 ; [+10]
      433 DUPTABLE                         R9 K52 [{"items"}]
      434 SETTABLEKS                       R3 R9 K51 ["items"]
      436 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      438 MOVE                             R8 R6
      439 GETIMPORT                        R7 K17 [table.insert]
      441 CALL                             R7 2 0
      442 DUPTABLE                         R9 K52 [{"items"}]
      443 SETTABLEKS                       R4 R9 K51 ["items"]
      445 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      447 MOVE                             R8 R6
      448 GETIMPORT                        R7 K17 [table.insert]
      450 CALL                             R7 2 0
      451 LENGTH                           R7 R5
      452 LOADN                            R8 0
      453 JUMPIFNOTLT                      R8 R7 ; [+10]
      455 DUPTABLE                         R9 K52 [{"items"}]
      456 SETTABLEKS                       R5 R9 K51 ["items"]
      458 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      460 MOVE                             R8 R6
      461 GETIMPORT                        R7 K17 [table.insert]
      463 CALL                             R7 2 0
      464 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getIconForBoolean"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["Cell"]
       49 GETTABLEKS                       R6 R6 K15 ["isClampCompatible"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["Cell"]
       60 GETTABLEKS                       R7 R7 K16 ["isThresholdCompatible"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R0 K8 ["Src"]
       65 GETTABLEKS                       R7 R7 K17 ["Flags"]
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R7 K18 ["getFFlagIAMShowInExplorer"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R7 K19 ["getFFlagIAMIconImprovements"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R7 K20 ["getFFlagIAMUseDisplayImageName"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K5 [require]
       84 GETTABLEKS                       R12 R7 K21 ["getFFlagIAMResponseCurveFix"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R1 K22 ["Enums"]
       89 GETTABLEKS                       R12 R12 K23 ["IconName"]
       91 DUPCLOSURE                       R13 K24 [PROTO_0]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 RETURN                           R13 1
