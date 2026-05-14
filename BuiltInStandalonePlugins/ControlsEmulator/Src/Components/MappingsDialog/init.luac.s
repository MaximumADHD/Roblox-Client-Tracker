PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isEmpty"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["mappingsOverrides"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["isUpdatingMappingForGamepadId"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 1
       14 NOT                              R0 R1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLE                         R0 R1 R2
        9 NEWTABLE                         R1 1 0
       11 GETTABLEKS                       R2 R0 K0 ["keyCode"]
       13 GETTABLEKS                       R3 R0 K1 ["direction"]
       15 SETTABLE                         R3 R1 R2
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+57]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFEQKNIL                     R0 ; [+53]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 GETTABLEKS                       R0 R0 K1 ["AbsoluteSize"]
       14 GETTABLEKS                       R0 R0 K2 ["Y"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["current"]
       19 JUMPIFNOTLT                      R0 R1 ; [+23]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 GETIMPORT                        R2 K5 [UDim2.new]
       26 LOADN                            R3 0
       27 LOADN                            R4 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K0 ["current"]
       31 DIV                              R5 R6 R0
       32 LOADN                            R6 0
       33 CALL                             R2 4 1
       34 SETTABLEKS                       R2 R1 K6 ["CanvasSize"]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["current"]
       39 LOADN                            R2 8
       40 SETTABLEKS                       R2 R1 K7 ["ScrollBarThickness"]
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K0 ["current"]
       46 GETIMPORT                        R2 K5 [UDim2.new]
       48 LOADN                            R3 0
       49 LOADN                            R4 0
       50 LOADN                            R5 0
       51 LOADN                            R6 0
       52 CALL                             R2 4 1
       53 SETTABLEKS                       R2 R1 K6 ["CanvasSize"]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K0 ["current"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R1 K7 ["ScrollBarThickness"]
       61 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R2 R2 K1 ["use"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R1 K2 ["saveMappings"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R6 0 2
       24 GETTABLEKS                       R7 R0 K4 ["mappingsOverrides"]
       26 GETTABLEKS                       R8 R0 K5 ["isUpdatingMappingForGamepadId"]
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K6 ["useState"]
       34 LOADNIL                          R6
       35 CALL                             R5 1 2
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R6
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R10 0 1
       55 MOVE                             R11 R5
       56 SETLIST                          R10 R11 1 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K6 ["useState"]
       62 LOADB                            R10 0
       63 CALL                             R9 1 2
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       67 NEWCLOSURE                       R12 P3
       68 CAPTURE                          VAL R10
       69 NEWTABLE                         R13 0 1
       71 MOVE                             R14 R10
       72 SETLIST                          R13 R14 1 [1]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       78 NEWCLOSURE                       R13 P4
       79 CAPTURE                          VAL R10
       80 NEWTABLE                         R14 0 1
       82 MOVE                             R15 R10
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R12 2 1
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R13 R13 K8 ["useRef"]
       89 LOADN                            R14 0
       90 CALL                             R13 1 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K8 ["useRef"]
       94 LOADNIL                          R15
       95 CALL                             R14 1 1
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       99 NEWCLOSURE                       R16 P5
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R13
      102 NEWTABLE                         R17 0 0
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      108 NEWCLOSURE                       R17 P6
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R15
      111 NEWTABLE                         R18 0 0
      113 CALL                             R16 2 1
      114 GETUPVAL                         R17 0
      115 GETTABLEKS                       R17 R17 K9 ["createElement"]
      117 LOADK                            R18 K10 ["Frame"]
      118 NEWTABLE                         R19 1 0
      120 GETUPVAL                         R20 0
      121 GETTABLEKS                       R20 R20 K11 ["Tag"]
      123 LOADK                            R21 K12 ["Component-MappingsDialog X-Fill CX-Invisible data-testid=Component-MappingsDialog"]
      124 SETTABLE                         R21 R19 R20
      125 DUPTABLE                         R20 K16 [{"MappingsInputListener", "MappingsConfirmationDialog", "ErrorsBanner"}]
      126 GETUPVAL                         R21 0
      127 GETTABLEKS                       R21 R21 K9 ["createElement"]
      129 GETUPVAL                         R22 6
      130 NEWTABLE                         R23 1 0
      132 GETUPVAL                         R24 0
      133 GETTABLEKS                       R24 R24 K11 ["Tag"]
      135 LOADK                            R25 K17 ["X-Fill CX-Invisible"]
      136 SETTABLE                         R25 R23 R24
      137 DUPTABLE                         R24 K19 [{"LayoutContainer"}]
      138 GETUPVAL                         R25 0
      139 GETTABLEKS                       R25 R25 K9 ["createElement"]
      141 LOADK                            R26 K10 ["Frame"]
      142 NEWTABLE                         R27 2 0
      144 GETUPVAL                         R28 0
      145 GETTABLEKS                       R28 R28 K11 ["Tag"]
      147 LOADK                            R29 K20 ["X-Column X-Fill CX-Invisible"]
      148 SETTABLE                         R29 R27 R28
      149 GETUPVAL                         R28 7
      150 NAMECALL                         R28 R28 K21 ["getNextOrder"]
      152 CALL                             R28 1 1
      153 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      155 DUPTABLE                         R28 K26 [{"WidgetHeader", "Divider", "HorizontalScrollingFrame"}]
      156 GETUPVAL                         R29 0
      157 GETTABLEKS                       R29 R29 K9 ["createElement"]
      159 GETUPVAL                         R30 8
      160 NEWTABLE                         R31 4 0
      162 GETUPVAL                         R32 0
      163 GETTABLEKS                       R32 R32 K11 ["Tag"]
      165 LOADK                            R33 K27 ["Width-Scaling"]
      166 SETTABLE                         R33 R31 R32
      167 GETUPVAL                         R32 7
      168 NAMECALL                         R32 R32 K21 ["getNextOrder"]
      170 CALL                             R32 1 1
      171 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      173 GETUPVAL                         R32 0
      174 GETTABLEKS                       R32 R32 K9 ["createElement"]
      176 GETUPVAL                         R33 9
      177 NEWTABLE                         R34 8 0
      179 GETUPVAL                         R35 0
      180 GETTABLEKS                       R35 R35 K11 ["Tag"]
      182 LOADK                            R36 K28 ["DeviceSelectorDropdown"]
      183 SETTABLE                         R36 R34 R35
      184 GETUPVAL                         R35 7
      185 NAMECALL                         R35 R35 K21 ["getNextOrder"]
      187 CALL                             R35 1 1
      188 SETTABLEKS                       R35 R34 K22 ["LayoutOrder"]
      190 GETTABLEKS                       R35 R1 K29 ["connectGamepadId"]
      192 SETTABLEKS                       R35 R34 K30 ["onChanged"]
      194 GETTABLEKS                       R35 R0 K31 ["availableDeviceIds"]
      196 SETTABLEKS                       R35 R34 K32 ["deviceIds"]
      198 GETTABLEKS                       R36 R0 K5 ["isUpdatingMappingForGamepadId"]
      200 ORK                              R35 R36 K33 [101]
      201 SETTABLEKS                       R35 R34 K34 ["selectedGamepadId"]
      203 CALL                             R32 2 1
      204 SETTABLEKS                       R32 R31 K35 ["leftContents"]
      206 GETUPVAL                         R32 0
      207 GETTABLEKS                       R32 R32 K9 ["createElement"]
      209 GETUPVAL                         R33 0
      210 GETTABLEKS                       R33 R33 K36 ["Fragment"]
      212 NEWTABLE                         R34 0 0
      214 DUPTABLE                         R35 K39 [{"MappingsRestoreDefaultsButton", "MappingsSaveButton"}]
      215 GETUPVAL                         R36 0
      216 GETTABLEKS                       R36 R36 K9 ["createElement"]
      218 LOADK                            R37 K40 ["TextButton"]
      219 NEWTABLE                         R38 4 0
      221 GETUPVAL                         R39 0
      222 GETTABLEKS                       R39 R39 K11 ["Tag"]
      224 GETUPVAL                         R40 10
      225 LOADK                            R41 K41 ["RestoreDefaultsButton"]
      226 LOADK                            R42 K42 ["data-testid=Component-ResetMappingsButton"]
      227 LOADK                            R43 K43 ["HeaderButton"]
      228 LOADK                            R44 K44 ["Secondary"]
      229 CALL                             R40 4 1
      230 SETTABLE                         R40 R38 R39
      231 GETUPVAL                         R39 7
      232 NAMECALL                         R39 R39 K21 ["getNextOrder"]
      234 CALL                             R39 1 1
      235 SETTABLEKS                       R39 R38 K22 ["LayoutOrder"]
      237 LOADK                            R41 K45 ["MappingsDialog"]
      238 LOADK                            R42 K46 ["RestoreDefaultsButtonLabel"]
      239 NAMECALL                         R39 R2 K47 ["getText"]
      241 CALL                             R39 3 1
      242 SETTABLEKS                       R39 R38 K48 ["Text"]
      244 GETUPVAL                         R39 0
      245 GETTABLEKS                       R39 R39 K49 ["Event"]
      247 GETTABLEKS                       R39 R39 K50 ["Activated"]
      249 SETTABLE                         R12 R38 R39
      250 CALL                             R36 2 1
      251 SETTABLEKS                       R36 R35 K37 ["MappingsRestoreDefaultsButton"]
      253 GETUPVAL                         R36 0
      254 GETTABLEKS                       R36 R36 K9 ["createElement"]
      256 LOADK                            R37 K40 ["TextButton"]
      257 NEWTABLE                         R38 8 0
      259 GETUPVAL                         R39 0
      260 GETTABLEKS                       R39 R39 K11 ["Tag"]
      262 GETUPVAL                         R40 10
      263 LOADK                            R41 K51 ["SaveChangesButton"]
      264 LOADK                            R42 K52 ["data-testid=Component-SaveChangesButton"]
      265 LOADK                            R43 K43 ["HeaderButton"]
      266 JUMPIF                           R4 ; [+2]
      267 LOADK                            R44 K53 ["Inactive"]
      268 JUMP                             ; [+1]
      269 LOADK                            R44 K54 ["Primary"]
      270 CALL                             R40 4 1
      271 SETTABLE                         R40 R38 R39
      272 GETUPVAL                         R39 7
      273 NAMECALL                         R39 R39 K21 ["getNextOrder"]
      275 CALL                             R39 1 1
      276 SETTABLEKS                       R39 R38 K22 ["LayoutOrder"]
      278 LOADK                            R41 K45 ["MappingsDialog"]
      279 LOADK                            R42 K55 ["SaveButtonLabel"]
      280 NAMECALL                         R39 R2 K47 ["getText"]
      282 CALL                             R39 3 1
      283 SETTABLEKS                       R39 R38 K48 ["Text"]
      285 GETUPVAL                         R39 0
      286 GETTABLEKS                       R39 R39 K49 ["Event"]
      288 GETTABLEKS                       R39 R39 K50 ["Activated"]
      290 SETTABLE                         R3 R38 R39
      291 SETTABLEKS                       R4 R38 K56 ["Active"]
      293 CALL                             R36 2 1
      294 SETTABLEKS                       R36 R35 K38 ["MappingsSaveButton"]
      296 CALL                             R32 3 1
      297 SETTABLEKS                       R32 R31 K57 ["rightContents"]
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K23 ["WidgetHeader"]
      302 GETUPVAL                         R29 0
      303 GETTABLEKS                       R29 R29 K9 ["createElement"]
      305 LOADK                            R30 K10 ["Frame"]
      306 NEWTABLE                         R31 2 0
      308 GETUPVAL                         R32 0
      309 GETTABLEKS                       R32 R32 K11 ["Tag"]
      311 LOADK                            R33 K58 ["CX-Divider"]
      312 SETTABLE                         R33 R31 R32
      313 GETUPVAL                         R32 7
      314 NAMECALL                         R32 R32 K21 ["getNextOrder"]
      316 CALL                             R32 1 1
      317 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      319 CALL                             R29 2 1
      320 SETTABLEKS                       R29 R28 K24 ["Divider"]
      322 GETUPVAL                         R29 0
      323 GETTABLEKS                       R29 R29 K9 ["createElement"]
      325 LOADK                            R30 K59 ["ScrollingFrame"]
      326 NEWTABLE                         R31 2 0
      328 GETUPVAL                         R32 0
      329 GETTABLEKS                       R32 R32 K11 ["Tag"]
      331 LOADK                            R33 K17 ["X-Fill CX-Invisible"]
      332 SETTABLE                         R33 R31 R32
      333 GETUPVAL                         R32 7
      334 NAMECALL                         R32 R32 K21 ["getNextOrder"]
      336 CALL                             R32 1 1
      337 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      339 DUPTABLE                         R32 K61 [{"BlueprintAndListContainer"}]
      340 GETUPVAL                         R33 0
      341 GETTABLEKS                       R33 R33 K9 ["createElement"]
      343 LOADK                            R34 K10 ["Frame"]
      344 NEWTABLE                         R35 2 0
      346 GETUPVAL                         R36 0
      347 GETTABLEKS                       R36 R36 K11 ["Tag"]
      349 LOADK                            R37 K62 ["X-Row X-Fill CX-Invisible"]
      350 SETTABLE                         R37 R35 R36
      351 GETUPVAL                         R36 7
      352 NAMECALL                         R36 R36 K21 ["getNextOrder"]
      354 CALL                             R36 1 1
      355 SETTABLEKS                       R36 R35 K22 ["LayoutOrder"]
      357 DUPTABLE                         R36 K65 [{"BlueprintContainer", "ListScrollingContainer"}]
      358 GETUPVAL                         R37 0
      359 GETTABLEKS                       R37 R37 K9 ["createElement"]
      361 LOADK                            R38 K10 ["Frame"]
      362 NEWTABLE                         R39 2 0
      364 GETUPVAL                         R40 0
      365 GETTABLEKS                       R40 R40 K11 ["Tag"]
      367 LOADK                            R41 K66 ["CX-Invisible"]
      368 SETTABLE                         R41 R39 R40
      369 GETUPVAL                         R40 7
      370 NAMECALL                         R40 R40 K21 ["getNextOrder"]
      372 CALL                             R40 1 1
      373 SETTABLEKS                       R40 R39 K22 ["LayoutOrder"]
      375 DUPTABLE                         R40 K68 [{"DeviceBlueprint"}]
      376 GETUPVAL                         R41 0
      377 GETTABLEKS                       R41 R41 K9 ["createElement"]
      379 GETUPVAL                         R42 11
      380 DUPTABLE                         R43 K71 [{"LayoutOrder", "selectedGamepadId", "displayMappings", "activeInputs"}]
      381 GETUPVAL                         R44 7
      382 NAMECALL                         R44 R44 K21 ["getNextOrder"]
      384 CALL                             R44 1 1
      385 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      387 GETTABLEKS                       R44 R0 K5 ["isUpdatingMappingForGamepadId"]
      389 SETTABLEKS                       R44 R43 K34 ["selectedGamepadId"]
      391 LOADB                            R44 0
      392 SETTABLEKS                       R44 R43 K69 ["displayMappings"]
      394 SETTABLEKS                       R8 R43 K70 ["activeInputs"]
      396 CALL                             R41 2 1
      397 SETTABLEKS                       R41 R40 K67 ["DeviceBlueprint"]
      399 CALL                             R37 3 1
      400 SETTABLEKS                       R37 R36 K63 ["BlueprintContainer"]
      402 GETUPVAL                         R37 0
      403 GETTABLEKS                       R37 R37 K9 ["createElement"]
      405 LOADK                            R38 K59 ["ScrollingFrame"]
      406 NEWTABLE                         R39 4 0
      408 GETUPVAL                         R40 0
      409 GETTABLEKS                       R40 R40 K11 ["Tag"]
      411 LOADK                            R41 K72 ["CX-Invisible "]
      412 SETTABLE                         R41 R39 R40
      413 GETUPVAL                         R40 7
      414 NAMECALL                         R40 R40 K21 ["getNextOrder"]
      416 CALL                             R40 1 1
      417 SETTABLEKS                       R40 R39 K22 ["LayoutOrder"]
      419 SETTABLEKS                       R14 R39 K73 ["ref"]
      421 GETUPVAL                         R40 0
      422 GETTABLEKS                       R40 R40 K74 ["Change"]
      424 GETTABLEKS                       R40 R40 K75 ["AbsoluteSize"]
      426 SETTABLE                         R15 R39 R40
      427 DUPTABLE                         R40 K77 [{"Mappings"}]
      428 GETUPVAL                         R41 0
      429 GETTABLEKS                       R41 R41 K9 ["createElement"]
      431 GETUPVAL                         R42 12
      432 DUPTABLE                         R43 K80 [{"LayoutOrder", "onAbsoluteSizeChanged", "onHoveredMappingChanged"}]
      433 GETUPVAL                         R44 7
      434 NAMECALL                         R44 R44 K21 ["getNextOrder"]
      436 CALL                             R44 1 1
      437 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      439 SETTABLEKS                       R16 R43 K78 ["onAbsoluteSizeChanged"]
      441 SETTABLEKS                       R7 R43 K79 ["onHoveredMappingChanged"]
      443 CALL                             R41 2 1
      444 SETTABLEKS                       R41 R40 K76 ["Mappings"]
      446 CALL                             R37 3 1
      447 SETTABLEKS                       R37 R36 K64 ["ListScrollingContainer"]
      449 CALL                             R33 3 1
      450 SETTABLEKS                       R33 R32 K60 ["BlueprintAndListContainer"]
      452 CALL                             R29 3 1
      453 SETTABLEKS                       R29 R28 K25 ["HorizontalScrollingFrame"]
      455 CALL                             R25 3 1
      456 SETTABLEKS                       R25 R24 K18 ["LayoutContainer"]
      458 CALL                             R21 3 1
      459 SETTABLEKS                       R21 R20 K13 ["MappingsInputListener"]
      461 JUMPIFNOT                        R9 ; [+9]
      462 GETUPVAL                         R21 0
      463 GETTABLEKS                       R21 R21 K9 ["createElement"]
      465 GETUPVAL                         R22 13
      466 DUPTABLE                         R23 K82 [{"hideConfirmationDialog"}]
      467 SETTABLEKS                       R11 R23 K81 ["hideConfirmationDialog"]
      469 CALL                             R21 2 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R21
      472 SETTABLEKS                       R21 R20 K14 ["MappingsConfirmationDialog"]
      474 GETUPVAL                         R21 0
      475 GETTABLEKS                       R21 R21 K9 ["createElement"]
      477 GETUPVAL                         R22 14
      478 NEWTABLE                         R23 2 0
      480 GETUPVAL                         R24 0
      481 GETTABLEKS                       R24 R24 K11 ["Tag"]
      483 GETUPVAL                         R25 10
      484 LOADK                            R26 K15 ["ErrorsBanner"]
      485 LOADK                            R27 K83 ["data-testid=Component-ErrorsBanner"]
      486 CALL                             R25 2 1
      487 SETTABLE                         R25 R23 R24
      488 SETTABLEKS                       R11 R23 K81 ["hideConfirmationDialog"]
      490 CALL                             R21 2 1
      491 SETTABLEKS                       R21 R20 K15 ["ErrorsBanner"]
      493 CALL                             R17 3 -1
      494 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["LayoutOrderIterator"]
       36 GETTABLEKS                       R6 R5 K14 ["new"]
       38 CALL                             R6 0 1
       39 GETTABLEKS                       R7 R3 K15 ["Styling"]
       41 GETTABLEKS                       R7 R7 K16 ["joinTags"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K17 ["Src"]
       47 GETTABLEKS                       R9 R9 K12 ["Util"]
       49 GETTABLEKS                       R9 R9 K18 ["MappingsActionsContext"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K17 ["Src"]
       56 GETTABLEKS                       R10 R10 K12 ["Util"]
       58 GETTABLEKS                       R10 R10 K19 ["MappingsContext"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Src"]
       65 GETTABLEKS                       R11 R11 K20 ["Components"]
       67 GETTABLEKS                       R11 R11 K21 ["MappingsList"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R12 R12 K22 ["MappingsInputListener"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K17 ["Src"]
       81 GETTABLEKS                       R13 R13 K20 ["Components"]
       83 GETTABLEKS                       R13 R13 K23 ["WidgetHeader"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K17 ["Src"]
       90 GETTABLEKS                       R14 R14 K20 ["Components"]
       92 GETTABLEKS                       R14 R14 K24 ["DeviceDropdown"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R0 K17 ["Src"]
       99 GETTABLEKS                       R15 R15 K20 ["Components"]
      101 GETTABLEKS                       R15 R15 K25 ["DeviceBlueprint"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETIMPORT                        R16 K1 [script]
      108 GETTABLEKS                       R16 R16 K26 ["ResetMappingsConfirmationDialog"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K17 ["Src"]
      115 GETTABLEKS                       R17 R17 K12 ["Util"]
      117 GETTABLEKS                       R17 R17 K27 ["KeyNamesConstants"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETIMPORT                        R18 K1 [script]
      124 GETTABLEKS                       R18 R18 K28 ["ErrorsBanner"]
      126 CALL                             R17 1 1
      127 GETTABLEKS                       R18 R16 K29 ["KEY_NAMES_DEFINITIONS"]
      129 DUPCLOSURE                       R19 K30 [PROTO_7]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R17
      145 GETTABLEKS                       R20 R2 K31 ["memo"]
      147 MOVE                             R21 R19
      148 CALL                             R20 1 -1
      149 RETURN                           R20 -1
