PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 1
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 LENGTH                           R3 R2
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       13 RETURN                           R0 1
       14 GETIMPORT                        R3 K4 [table.clone]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 MOVE                             R4 R3
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADNIL                          R9
       23 GETTABLEKS                       R10 R8 K5 ["Type"]
       25 JUMPIFNOTEQKS                    R10 K6 ["Dropdown"] ; [+44]
       27 GETTABLEKS                       R10 R8 K7 ["Id"]
       29 JUMPIFNOTEQ                      R10 R1 ; [+40]
       31 GETIMPORT                        R10 K4 [table.clone]
       33 GETTABLEKS                       R11 R8 K8 ["Options"]
       35 CALL                             R10 1 1
       36 NEWTABLE                         R11 0 0
       38 MOVE                             R12 R10
       39 LOADNIL                          R13
       40 LOADNIL                          R14
       41 FORGPREP                         R12
       42 LOADB                            R17 1
       43 SETTABLE                         R17 R11 R16
       44 FORGLOOP                         R12 2 ; [-3]
       46 MOVE                             R12 R2
       47 LOADNIL                          R13
       48 LOADNIL                          R14
       49 FORGPREP                         R12
       50 GETTABLE                         R17 R11 R16
       51 JUMPIF                           R17 ; [+9]
       52 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
       54 MOVE                             R18 R10
       55 MOVE                             R19 R16
       56 GETIMPORT                        R17 K10 [table.insert]
       58 CALL                             R17 2 0
       59 LOADB                            R17 1
       60 SETTABLE                         R17 R11 R16
       61 FORGLOOP                         R12 2 ; [-12]
       63 GETIMPORT                        R12 K4 [table.clone]
       65 MOVE                             R13 R8
       66 CALL                             R12 1 1
       67 MOVE                             R9 R12
       68 SETTABLEKS                       R10 R9 K8 ["Options"]
       70 GETTABLEKS                       R10 R8 K5 ["Type"]
       72 JUMPIFNOTEQKS                    R10 K11 ["Section"] ; [+17]
       74 MOVE                             R10 R9
       75 JUMPIF                           R10 ; [+4]
       76 GETIMPORT                        R10 K4 [table.clone]
       78 MOVE                             R11 R8
       79 CALL                             R10 1 1
       80 MOVE                             R9 R10
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R11 R8 K12 ["Controls"]
       84 MOVE                             R12 R1
       85 MOVE                             R13 R2
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K12 ["Controls"]
       89 JUMP                             ; [+23]
       90 GETTABLEKS                       R10 R8 K5 ["Type"]
       92 JUMPIFNOTEQKS                    R10 K6 ["Dropdown"] ; [+20]
       94 GETTABLEKS                       R10 R8 K13 ["BundledControls"]
       96 JUMPIFEQKNIL                     R10 ; [+16]
       98 MOVE                             R10 R9
       99 JUMPIF                           R10 ; [+4]
      100 GETIMPORT                        R10 K4 [table.clone]
      102 MOVE                             R11 R8
      103 CALL                             R10 1 1
      104 MOVE                             R9 R10
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R11 R8 K13 ["BundledControls"]
      108 MOVE                             R12 R1
      109 MOVE                             R13 R2
      110 CALL                             R10 3 1
      111 SETTABLEKS                       R10 R9 K13 ["BundledControls"]
      113 JUMPIFEQKNIL                     R9 ; [+2]
      115 SETTABLE                         R9 R3 R7
      116 FORGLOOP                         R4 2 ; [-95]
      118 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETIMPORT                        R1 K3 [os.clock]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 JUMPIFEQKNIL                     R0 ; [+3]
       20 GETUPVAL                         R0 3
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R1 K2 [os.clock]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETUPVAL                         R0 2
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 0
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Config"]
        4 GETTABLEKS                       R1 R1 K1 ["Controls"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["presetControlId"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["savedPresetNames"]
       12 CALL                             R0 3 1
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["entry"]
        9 GETTABLEKS                       R2 R0 K2 ["dynamicState"]
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["useState"]
       16 LOADB                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["useRef"]
       21 LOADK                            R7 K5 [-∞]
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K4 ["useRef"]
       26 GETTABLEKS                       R9 R0 K6 ["isSaveDialogOpen"]
       28 JUMPIFEQKB                       R9 TRUE ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R0 K6 ["isSaveDialogOpen"]
       35 JUMPIFEQKB                       R9 TRUE ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K7 ["current"]
       41 GETTABLEKS                       R8 R0 K8 ["onDismiss"]
       43 GETTABLEKS                       R9 R0 K9 ["onApply"]
       45 GETTABLEKS                       R10 R0 K10 ["onRequestSave"]
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 NEWTABLE                         R13 0 1
       57 MOVE                             R14 R8
       58 SETLIST                          R13 R14 1 [1]
       60 CALL                             R11 2 1
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R5
       69 NEWTABLE                         R14 0 2
       71 MOVE                             R15 R11
       72 MOVE                             R16 R4
       73 SETLIST                          R14 R15 2 [1]
       75 CALL                             R12 2 1
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K11 ["useCallback"]
       79 NEWCLOSURE                       R14 P2
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 NEWTABLE                         R15 0 1
       85 MOVE                             R16 R9
       86 SETLIST                          R15 R16 1 [1]
       88 CALL                             R13 2 1
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R14 R14 K11 ["useCallback"]
       92 NEWCLOSURE                       R15 P3
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R7
       95 NEWTABLE                         R16 0 1
       97 MOVE                             R17 R10
       98 SETLIST                          R16 R17 1 [1]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 2
      102 GETTABLEKS                       R15 R15 K12 ["useMemo"]
      104 NEWCLOSURE                       R16 P4
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R0
      108 NEWTABLE                         R17 0 3
      110 GETTABLEKS                       R18 R1 K13 ["Config"]
      112 GETTABLEKS                       R18 R18 K14 ["Controls"]
      114 GETTABLEKS                       R19 R0 K15 ["presetControlId"]
      116 GETTABLEKS                       R20 R0 K16 ["savedPresetNames"]
      118 SETLIST                          R17 R18 3 [1]
      120 CALL                             R15 2 1
      121 JUMPIFEQKNIL                     R2 ; [+4]
      123 GETTABLEKS                       R16 R2 K17 ["Icon"]
      125 JUMP                             ; [+4]
      126 GETTABLEKS                       R16 R1 K13 ["Config"]
      128 GETTABLEKS                       R16 R16 K18 ["InitialIcon"]
      130 JUMPIFEQKNIL                     R2 ; [+4]
      132 GETTABLEKS                       R17 R2 K19 ["Label"]
      134 JUMP                             ; [+4]
      135 GETTABLEKS                       R17 R1 K13 ["Config"]
      137 GETTABLEKS                       R17 R17 K20 ["InitialLabel"]
      139 GETUPVAL                         R18 4
      140 GETTABLEKS                       R18 R18 K21 ["getSimulatorDisplayName"]
      142 MOVE                             R19 R3
      143 GETTABLEKS                       R20 R1 K22 ["Name"]
      145 CALL                             R18 2 1
      146 GETUPVAL                         R19 4
      147 GETTABLEKS                       R19 R19 K23 ["getDropdownDisplayTextByValue"]
      149 MOVE                             R20 R3
      150 GETTABLEKS                       R21 R1 K22 ["Name"]
      152 CALL                             R19 2 1
      153 LOADK                            R21 K24 ["simulator-pill-%*"]
      154 GETTABLEKS                       R23 R1 K22 ["Name"]
      156 NAMECALL                         R21 R21 K25 ["format"]
      158 CALL                             R21 2 1
      159 MOVE                             R20 R21
      160 GETUPVAL                         R21 2
      161 GETTABLEKS                       R21 R21 K26 ["createElement"]
      163 GETUPVAL                         R22 5
      164 GETTABLEKS                       R22 R22 K27 ["Root"]
      166 DUPTABLE                         R23 K29 [{"isOpen"}]
      167 SETTABLEKS                       R4 R23 K28 ["isOpen"]
      169 DUPTABLE                         R24 K32 [{"Anchor", "Content"}]
      170 GETUPVAL                         R25 2
      171 GETTABLEKS                       R25 R25 K26 ["createElement"]
      173 GETUPVAL                         R26 5
      174 GETTABLEKS                       R26 R26 K30 ["Anchor"]
      176 DUPTABLE                         R27 K34 [{"LayoutOrder"}]
      177 GETTABLEKS                       R28 R0 K33 ["LayoutOrder"]
      179 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      181 DUPTABLE                         R28 K36 [{"Button"}]
      182 GETUPVAL                         R29 2
      183 GETTABLEKS                       R29 R29 K26 ["createElement"]
      185 GETUPVAL                         R30 6
      186 DUPTABLE                         R31 K44 [{["testId"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
      187 SETTABLEKS                       R20 R31 K37 ["testId"]
      189 SETTABLEKS                       R17 R31 K38 ["text"]
      191 SETTABLEKS                       R16 R31 K39 ["leading"]
      193 SETTABLEKS                       R4 R31 K42 ["isChecked"]
      195 SETTABLEKS                       R12 R31 K43 ["onActivated"]
      197 CALL                             R29 2 1
      198 SETTABLEKS                       R29 R28 K35 ["Button"]
      200 CALL                             R25 3 1
      201 SETTABLEKS                       R25 R24 K30 ["Anchor"]
      203 GETUPVAL                         R25 2
      204 GETTABLEKS                       R25 R25 K26 ["createElement"]
      206 GETUPVAL                         R26 5
      207 GETTABLEKS                       R26 R26 K31 ["Content"]
      209 DUPTABLE                         R27 K54 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["side"], ["radius"], ["backgroundStyle"], ["onPressedOutside"]}]
      210 GETUPVAL                         R28 7
      211 GETTABLEKS                       R28 R28 K55 ["End"]
      213 SETTABLEKS                       R28 R27 K45 ["align"]
      215 DUPTABLE                         R28 K59 [{["position"], ["offset"] = 8}]
      216 GETUPVAL                         R29 8
      217 GETTABLEKS                       R29 R29 K60 ["Bottom"]
      219 SETTABLEKS                       R29 R28 K56 ["position"]
      221 SETTABLEKS                       R28 R27 K50 ["side"]
      223 GETUPVAL                         R28 9
      224 GETTABLEKS                       R28 R28 K61 ["Medium"]
      226 SETTABLEKS                       R28 R27 K51 ["radius"]
      228 DUPTABLE                         R28 K64 [{["Transparency"] = 1}]
      229 SETTABLEKS                       R28 R27 K52 ["backgroundStyle"]
      231 SETTABLEKS                       R11 R27 K53 ["onPressedOutside"]
      233 DUPTABLE                         R28 K66 [{"Body"}]
      234 GETUPVAL                         R29 2
      235 GETTABLEKS                       R29 R29 K26 ["createElement"]
      237 GETUPVAL                         R30 10
      238 DUPTABLE                         R31 K70 [{["Size"], ["tag"] = "col auto-y radius-large clip stroke-thin stroke-muted bg-surface-100", ["testId"]}]
      239 GETIMPORT                        R32 K73 [UDim2.fromOffset]
      241 LOADN                            R33 320
      242 LOADN                            R34 0
      243 CALL                             R32 2 1
      244 SETTABLEKS                       R32 R31 K67 ["Size"]
      246 LOADK                            R33 K74 ["%*-content"]
      247 MOVE                             R35 R20
      248 NAMECALL                         R33 R33 K25 ["format"]
      250 CALL                             R33 2 1
      251 MOVE                             R32 R33
      252 SETTABLEKS                       R32 R31 K37 ["testId"]
      254 DUPTABLE                         R32 K76 [{"Content", "Footer"}]
      255 GETUPVAL                         R33 2
      256 GETTABLEKS                       R33 R33 K26 ["createElement"]
      258 GETUPVAL                         R34 10
      259 DUPTABLE                         R35 K78 [{["LayoutOrder"] = 1, ["tag"] = "col size-full-0 auto-y padding-y-large"}]
      260 DUPTABLE                         R36 K80 [{"PanelBody"}]
      261 GETUPVAL                         R37 2
      262 GETTABLEKS                       R37 R37 K26 ["createElement"]
      264 GETUPVAL                         R38 10
      265 DUPTABLE                         R39 K82 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-small"}]
      266 DUPTABLE                         R40 K84 [{"Header", "Controls"}]
      267 GETUPVAL                         R41 2
      268 GETTABLEKS                       R41 R41 K26 ["createElement"]
      270 GETUPVAL                         R42 11
      271 DUPTABLE                         R43 K87 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-700 auto-none padding-x-xsmall text-no-wrap text-label-large text-align-x-left text-align-y-center", ["testId"]}]
      272 LOADK                            R46 K88 ["Simulator"]
      273 LOADK                            R47 K89 ["Title"]
      274 DUPTABLE                         R48 K91 [{"simulatorName"}]
      275 SETTABLEKS                       R18 R48 K90 ["simulatorName"]
      277 NAMECALL                         R44 R3 K92 ["getText"]
      279 CALL                             R44 4 1
      280 SETTABLEKS                       R44 R43 K85 ["Text"]
      282 LOADK                            R45 K93 ["%*-title"]
      283 MOVE                             R47 R20
      284 NAMECALL                         R45 R45 K25 ["format"]
      286 CALL                             R45 2 1
      287 MOVE                             R44 R45
      288 SETTABLEKS                       R44 R43 K37 ["testId"]
      290 CALL                             R41 2 1
      291 SETTABLEKS                       R41 R40 K83 ["Header"]
      293 GETUPVAL                         R41 2
      294 GETTABLEKS                       R41 R41 K26 ["createElement"]
      296 GETUPVAL                         R42 10
      297 DUPTABLE                         R43 K96 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      298 DUPTABLE                         R44 K98 [{"Renderer"}]
      299 GETUPVAL                         R45 2
      300 GETTABLEKS                       R45 R45 K26 ["createElement"]
      302 GETUPVAL                         R46 12
      303 DUPTABLE                         R47 K104 [{"controls", "values", "dropdownDisplayTextByValue", "onControlChanged", "debugName"}]
      304 SETTABLEKS                       R15 R47 K99 ["controls"]
      306 GETTABLEKS                       R48 R0 K100 ["values"]
      308 SETTABLEKS                       R48 R47 K100 ["values"]
      310 SETTABLEKS                       R19 R47 K101 ["dropdownDisplayTextByValue"]
      312 GETTABLEKS                       R48 R0 K102 ["onControlChanged"]
      314 SETTABLEKS                       R48 R47 K102 ["onControlChanged"]
      316 GETTABLEKS                       R48 R1 K22 ["Name"]
      318 SETTABLEKS                       R48 R47 K103 ["debugName"]
      320 CALL                             R45 2 1
      321 SETTABLEKS                       R45 R44 K97 ["Renderer"]
      323 CALL                             R41 3 1
      324 SETTABLEKS                       R41 R40 K14 ["Controls"]
      326 CALL                             R37 3 1
      327 SETTABLEKS                       R37 R36 K79 ["PanelBody"]
      329 CALL                             R33 3 1
      330 SETTABLEKS                       R33 R32 K31 ["Content"]
      332 GETTABLEKS                       R34 R0 K9 ["onApply"]
      334 JUMPIFNOTEQKNIL                  R34 ; [+9]
      336 GETTABLEKS                       R34 R0 K105 ["onReset"]
      338 JUMPIFNOTEQKNIL                  R34 ; [+5]
      340 GETTABLEKS                       R34 R0 K10 ["onRequestSave"]
      342 JUMPIFEQKNIL                     R34 ; [+54]
      344 GETUPVAL                         R33 2
      345 GETTABLEKS                       R33 R33 K26 ["createElement"]
      347 GETUPVAL                         R34 13
      348 DUPTABLE                         R35 K111 [{["LayoutOrder"] = 2, ["hasPendingChanges"], ["onApply"], ["onReset"], ["isResetDisabled"], ["onRequestSave"], ["isSaveDisabled"], ["activeSavedPreset"], ["onDelete"], ["testId"]}]
      349 GETTABLEKS                       R36 R0 K106 ["hasPendingChanges"]
      351 SETTABLEKS                       R36 R35 K106 ["hasPendingChanges"]
      353 JUMPIFEQKNIL                     R9 ; [+3]
      355 MOVE                             R36 R13
      356 JUMP                             ; [+1]
      357 LOADNIL                          R36
      358 SETTABLEKS                       R36 R35 K9 ["onApply"]
      360 GETTABLEKS                       R36 R0 K105 ["onReset"]
      362 SETTABLEKS                       R36 R35 K105 ["onReset"]
      364 GETTABLEKS                       R36 R0 K107 ["isResetDisabled"]
      366 SETTABLEKS                       R36 R35 K107 ["isResetDisabled"]
      368 JUMPIFEQKNIL                     R10 ; [+3]
      370 MOVE                             R36 R14
      371 JUMP                             ; [+1]
      372 LOADNIL                          R36
      373 SETTABLEKS                       R36 R35 K10 ["onRequestSave"]
      375 GETTABLEKS                       R36 R0 K108 ["isSaveDisabled"]
      377 SETTABLEKS                       R36 R35 K108 ["isSaveDisabled"]
      379 GETTABLEKS                       R36 R0 K109 ["activeSavedPreset"]
      381 SETTABLEKS                       R36 R35 K109 ["activeSavedPreset"]
      383 GETTABLEKS                       R36 R0 K110 ["onDelete"]
      385 SETTABLEKS                       R36 R35 K110 ["onDelete"]
      387 LOADK                            R37 K112 ["%*-footer"]
      388 MOVE                             R39 R20
      389 NAMECALL                         R37 R37 K25 ["format"]
      391 CALL                             R37 2 1
      392 MOVE                             R36 R37
      393 SETTABLEKS                       R36 R35 K37 ["testId"]
      395 CALL                             R33 2 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R33
      398 SETTABLEKS                       R33 R32 K75 ["Footer"]
      400 CALL                             R29 3 1
      401 SETTABLEKS                       R29 R28 K65 ["Body"]
      403 CALL                             R25 3 1
      404 SETTABLEKS                       R25 R24 K31 ["Content"]
      406 CALL                             R21 3 -1
      407 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
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
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ControlRenderer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["networkLocalization"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K12 ["SimulatorFooter"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETIMPORT                        R7 K1 [script]
       52 GETTABLEKS                       R7 R7 K9 ["Parent"]
       54 GETTABLEKS                       R7 R7 K13 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K14 ["Src"]
       61 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K16 ["useLocalization"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Bin"]
       70 GETTABLEKS                       R9 R9 K18 ["Common"]
       72 GETTABLEKS                       R9 R9 K19 ["defineLuaFlags"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R2 K20 ["Chip"]
       77 GETTABLEKS                       R10 R2 K21 ["Popover"]
       79 GETTABLEKS                       R11 R2 K22 ["Enums"]
       81 GETTABLEKS                       R11 R11 K23 ["PopoverAlign"]
       83 GETTABLEKS                       R12 R2 K22 ["Enums"]
       85 GETTABLEKS                       R12 R12 K24 ["PopoverSide"]
       87 GETTABLEKS                       R13 R2 K22 ["Enums"]
       89 GETTABLEKS                       R13 R13 K25 ["Radius"]
       91 GETTABLEKS                       R14 R2 K26 ["Text"]
       93 GETTABLEKS                       R15 R2 K27 ["View"]
       95 DUPCLOSURE                       R16 K28 [PROTO_0]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R16
       98 DUPCLOSURE                       R17 K29 [PROTO_6]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R5
      113 RETURN                           R17 1
