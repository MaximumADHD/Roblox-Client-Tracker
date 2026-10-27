PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADK                            R3 K1 [""]
        6 RETURN                           R3 1
        7 JUMPIFEQKNIL                     R2 ; [+11]
        9 GETIMPORT                        R3 K4 [string.format]
       11 LOADK                            R4 K5 ["%%.%*f"]
       12 MOVE                             R6 R2
       13 NAMECALL                         R4 R4 K3 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R5 R0
       17 CALL                             R3 2 1
       18 JUMP                             ; [+21]
       19 JUMPIFNOTEQKS                    R1 K6 ["%"] ; [+7]
       21 GETIMPORT                        R3 K4 [string.format]
       23 LOADK                            R4 K7 ["%.2f"]
       24 MOVE                             R5 R0
       25 CALL                             R3 2 1
       26 JUMP                             ; [+13]
       27 JUMPIFEQKS                       R1 K1 [""] ; [+7]
       29 GETIMPORT                        R3 K4 [string.format]
       31 LOADK                            R4 K8 ["%g"]
       32 MOVE                             R5 R0
       33 CALL                             R3 2 1
       34 JUMP                             ; [+5]
       35 FASTCALL1                        TOSTRING R0 ; [+3]
       36 MOVE                             R4 R0
       37 GETIMPORT                        R3 K10 [tostring]
       39 CALL                             R3 1 1
       40 JUMPIFNOTEQKS                    R1 K6 ["%"] ; [+7]
       42 LOADK                            R4 K11 ["%*%%"]
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R4 K3 ["format"]
       46 CALL                             R4 2 1
       47 RETURN                           R4 1
       48 JUMPIFEQKS                       R1 K1 [""] ; [+8]
       50 LOADK                            R4 K12 ["%* %*"]
       51 MOVE                             R6 R3
       52 MOVE                             R7 R1
       53 NAMECALL                         R4 R4 K3 ["format"]
       55 CALL                             R4 3 1
       56 RETURN                           R4 1
       57 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
       10 CALL                             R2 0 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K2 ["disabledControlIds"]
       17 JUMPIFEQKNIL                     R3 ; [+8]
       19 GETTABLEKS                       R4 R0 K2 ["disabledControlIds"]
       21 GETTABLE                         R3 R4 R1
       22 JUMPIFEQKB                       R3 TRUE ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["safeCall"]
        3 LOADK                            R3 K1 ["%* control %*"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 3 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["onControlChanged"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 CALL                             R2 4 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["onControlChanged"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R0 K3 ["debugName"]
       15 ORK                              R1 R2 K2 ["ControlRenderer"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["View"]
       13 DUPTABLE                         R3 K7 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-small padding-top-xsmall", ["testId"]}]
       14 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       16 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       18 LOADK                            R4 K8 ["%*-row"]
       19 GETTABLEKS                       R6 R0 K6 ["testId"]
       21 NAMECALL                         R4 R4 K9 ["format"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K6 ["testId"]
       26 DUPTABLE                         R4 K11 [{"Wrapper"}]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K1 ["createElement"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K2 ["View"]
       33 DUPTABLE                         R7 K13 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-x-xsmall"}]
       34 DUPTABLE                         R8 K16 [{"Label", "Input"}]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K1 ["createElement"]
       38 GETUPVAL                         R10 2
       39 GETTABLEKS                       R10 R10 K17 ["Text"]
       41 DUPTABLE                         R11 K20 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["tag"], ["testId"]}]
       42 GETTABLEKS                       R12 R0 K21 ["label"]
       44 SETTABLEKS                       R12 R11 K17 ["Text"]
       46 GETIMPORT                        R12 K24 [UDim2.fromOffset]
       48 LOADN                            R13 96
       49 LOADN                            R14 24
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K19 ["Size"]
       53 NEWTABLE                         R12 2 0
       55 LOADB                            R13 1
       56 SETTABLEKS                       R13 R12 K25 ["auto-none text-no-wrap text-truncate-end text-body-small content-default text-align-x-left text-align-y-center"]
       58 GETTABLEKS                       R13 R0 K26 ["isNested"]
       60 SETTABLEKS                       R13 R12 K27 ["padding-left-xlarge"]
       62 SETTABLEKS                       R12 R11 K4 ["tag"]
       64 LOADK                            R12 K28 ["%*-label"]
       65 GETTABLEKS                       R14 R0 K6 ["testId"]
       67 NAMECALL                         R12 R12 K9 ["format"]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K6 ["testId"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K14 ["Label"]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K1 ["createElement"]
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R10 R10 K2 ["View"]
       81 DUPTABLE                         R11 K31 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-x-right align-y-center gap-xsmall auto-y", ["testId"]}]
       82 GETIMPORT                        R12 K24 [UDim2.fromOffset]
       84 LOADN                            R13 180
       85 LOADN                            R14 0
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K19 ["Size"]
       89 GETTABLEKS                       R12 R0 K32 ["slotTestId"]
       91 SETTABLEKS                       R12 R11 K6 ["testId"]
       93 GETTABLEKS                       R12 R0 K33 ["input"]
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R9 R8 K15 ["Input"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K10 ["Wrapper"]
      101 CALL                             R1 3 -1
      102 RETURN                           R1 -1

PROTO_5:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 LOADB                            R3 1
        3 JUMPIFLT                         R0 R1 ; [+8]
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R2 ; [+5]
        8 JUMPIFLT                         R2 R0 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["isNumber"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["Keyboard"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+25]
       14 GETUPVAL                         R2 3
       15 SETTABLEKS                       R0 R2 K2 ["current"]
       17 GETUPVAL                         R2 4
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K3 ["Min"]
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K4 ["Max"]
       24 JUMPIFEQKNIL                     R4 ; [+4]
       26 LOADB                            R3 1
       27 JUMPIFLT                         R0 R4 ; [+8]
       29 LOADB                            R3 0
       30 JUMPIFEQKNIL                     R5 ; [+5]
       32 JUMPIFLT                         R5 R0 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K5 ["FocusLost"]
       41 JUMPIFNOTEQ                      R1 R2 ; [+2]
       43 RETURN                           R0 0
       44 GETUPVAL                         R2 6
       45 JUMPIFNOTEQ                      R0 R2 ; [+2]
       47 RETURN                           R0 0
       48 GETUPVAL                         R2 7
       49 GETTABLEKS                       R2 R2 K6 ["onControlChanged"]
       51 GETUPVAL                         R3 3
       52 LOADNIL                          R4
       53 SETTABLEKS                       R4 R3 K2 ["current"]
       55 GETUPVAL                         R3 4
       56 LOADB                            R4 0
       57 CALL                             R3 1 0
       58 MOVE                             R3 R2
       59 GETUPVAL                         R4 7
       60 GETTABLEKS                       R4 R4 K7 ["path"]
       62 MOVE                             R5 R0
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 JUMPIF                           R1 ; [+45]
       12 JUMPIFEQKNIL                     R0 ; [+44]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["Min"]
       18 JUMPIFEQKNIL                     R2 ; [+11]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K1 ["Min"]
       23 FASTCALL2                        MATH_MAX R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K4 [math.max]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K5 ["Max"]
       33 JUMPIFEQKNIL                     R2 ; [+11]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K5 ["Max"]
       38 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       40 MOVE                             R3 R1
       41 GETIMPORT                        R2 K7 [math.min]
       43 CALL                             R2 2 1
       44 MOVE                             R1 R2
       45 GETUPVAL                         R2 4
       46 JUMPIFEQ                         R1 R2 ; [+10]
       48 GETUPVAL                         R2 5
       49 GETTABLEKS                       R2 R2 K8 ["onControlChanged"]
       51 MOVE                             R3 R2
       52 GETUPVAL                         R4 5
       53 GETTABLEKS                       R4 R4 K9 ["path"]
       55 MOVE                             R5 R1
       56 CALL                             R3 2 0
       57 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["control"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["resolveNumber"]
        5 GETTABLEKS                       R3 R0 K2 ["runtimeValue"]
        7 LOADN                            R4 0
        8 CALL                             R2 2 2
        9 GETTABLEKS                       R5 R1 K4 ["Unit"]
       11 ORK                              R4 R5 K3 [""]
       12 NOT                              R5 R3
       13 JUMPIF                           R5 ; [+7]
       14 LOADB                            R5 1
       15 GETTABLEKS                       R6 R0 K5 ["onControlChanged"]
       17 JUMPIFEQKNIL                     R6 ; [+3]
       19 GETTABLEKS                       R5 R0 K6 ["isPresentationDisabled"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["useRef"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K8 ["useState"]
       29 LOADB                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K9 ["makeControlTestId"]
       34 GETTABLEKS                       R10 R0 K10 ["path"]
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 2
       38 DUPTABLE                         R11 K16 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
       39 GETTABLEKS                       R12 R0 K17 ["layoutOrder"]
       41 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       43 GETTABLEKS                       R12 R1 K18 ["Label"]
       45 SETTABLEKS                       R12 R11 K12 ["label"]
       47 GETTABLEKS                       R12 R0 K13 ["isNested"]
       49 SETTABLEKS                       R12 R11 K13 ["isNested"]
       51 SETTABLEKS                       R9 R11 K14 ["testId"]
       53 DUPTABLE                         R12 K20 [{"Control"}]
       54 GETUPVAL                         R13 1
       55 GETTABLEKS                       R13 R13 K21 ["createElement"]
       57 GETUPVAL                         R14 3
       58 GETTABLEKS                       R14 R14 K22 ["View"]
       60 DUPTABLE                         R15 K25 [{"backgroundStyle", "Size", "testId"}]
       61 DUPTABLE                         R16 K28 [{["Transparency"] = 1}]
       62 SETTABLEKS                       R16 R15 K23 ["backgroundStyle"]
       64 GETIMPORT                        R16 K31 [UDim2.new]
       66 LOADN                            R17 1
       67 LOADN                            R18 0
       68 LOADN                            R19 0
       69 LOADN                            R20 24
       70 CALL                             R16 4 1
       71 SETTABLEKS                       R16 R15 K24 ["Size"]
       73 LOADK                            R16 K32 ["%*-field"]
       74 MOVE                             R18 R9
       75 NAMECALL                         R16 R16 K33 ["format"]
       77 CALL                             R16 2 1
       78 SETTABLEKS                       R16 R15 K14 ["testId"]
       80 DUPTABLE                         R16 K35 [{"Input", "Unit"}]
       81 GETUPVAL                         R17 1
       82 GETTABLEKS                       R17 R17 K21 ["createElement"]
       84 GETUPVAL                         R18 3
       85 GETTABLEKS                       R18 R18 K36 ["NumberInput"]
       87 DUPTABLE                         R19 K51 [{["size"], ["label"] = "", ["controlsVariant"], ["hasControls"] = False, ["hasError"], ["value"], ["minimum"], ["maximum"], ["precision"], ["step"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["width"], ["testId"]}]
       88 GETUPVAL                         R20 4
       89 GETTABLEKS                       R20 R20 K52 ["XSmall"]
       91 SETTABLEKS                       R20 R19 K37 ["size"]
       93 GETUPVAL                         R20 5
       94 GETTABLEKS                       R20 R20 K53 ["None"]
       96 SETTABLEKS                       R20 R19 K38 ["controlsVariant"]
       98 SETTABLEKS                       R7 R19 K41 ["hasError"]
      100 SETTABLEKS                       R2 R19 K42 ["value"]
      102 GETTABLEKS                       R20 R1 K54 ["Min"]
      104 SETTABLEKS                       R20 R19 K43 ["minimum"]
      106 GETTABLEKS                       R20 R1 K55 ["Max"]
      108 SETTABLEKS                       R20 R19 K44 ["maximum"]
      110 GETTABLEKS                       R20 R1 K56 ["Precision"]
      112 SETTABLEKS                       R20 R19 K45 ["precision"]
      114 GETTABLEKS                       R20 R1 K57 ["Step"]
      116 SETTABLEKS                       R20 R19 K46 ["step"]
      118 NEWCLOSURE                       R20 P0
      119 CAPTURE                          VAL R5
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R20 R19 K47 ["onChanged"]
      129 NEWCLOSURE                       R20 P1
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R20 R19 K48 ["onFocusLost"]
      138 SETTABLEKS                       R5 R19 K49 ["isDisabled"]
      140 GETIMPORT                        R20 K59 [UDim.new]
      142 LOADN                            R21 1
      143 LOADN                            R22 0
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K50 ["width"]
      147 SETTABLEKS                       R9 R19 K14 ["testId"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K34 ["Input"]
      152 JUMPIFNOTEQKS                    R4 K3 [""] ; [+3]
      154 LOADNIL                          R17
      155 JUMP                             ; [+40]
      156 GETUPVAL                         R17 1
      157 GETTABLEKS                       R17 R17 K21 ["createElement"]
      159 GETUPVAL                         R18 3
      160 GETTABLEKS                       R18 R18 K60 ["Text"]
      162 DUPTABLE                         R19 K67 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["ZIndex"] = 2, ["tag"] = "auto-none text-no-wrap text-body-small content-muted text-align-x-right text-align-y-center", ["testId"]}]
      163 GETIMPORT                        R20 K69 [Vector2.new]
      165 LOADN                            R21 1
      166 LOADN                            R22 0
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K61 ["AnchorPoint"]
      170 GETIMPORT                        R20 K31 [UDim2.new]
      172 LOADN                            R21 1
      173 LOADN                            R22 -8
      174 LOADN                            R23 0
      175 LOADN                            R24 0
      176 CALL                             R20 4 1
      177 SETTABLEKS                       R20 R19 K62 ["Position"]
      179 GETIMPORT                        R20 K71 [UDim2.fromOffset]
      181 LOADN                            R21 32
      182 LOADN                            R22 24
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K24 ["Size"]
      186 SETTABLEKS                       R4 R19 K60 ["Text"]
      188 LOADK                            R20 K72 ["%*-unit"]
      189 MOVE                             R22 R9
      190 NAMECALL                         R20 R20 K33 ["format"]
      192 CALL                             R20 2 1
      193 SETTABLEKS                       R20 R19 K14 ["testId"]
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K4 ["Unit"]
      198 CALL                             R13 3 1
      199 SETTABLEKS                       R13 R12 K19 ["Control"]
      201 SETTABLEKS                       R12 R11 K15 ["input"]
      203 CALL                             R10 1 -1
      204 RETURN                           R10 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+7]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [type]
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["itemIdToValue"]
       13 GETTABLE                         R1 R2 R0
       14 JUMPIFEQKNIL                     R1 ; [+5]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["isNumber"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+11]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [type]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K2 ["boolean"] ; [+5]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R9 0 1
        4 JUMPIF                           R9 ; [+2]
        5 LOADNIL                          R9
        6 RETURN                           R9 1
        7 GETTABLEKS                       R11 R5 K1 ["values"]
        9 FASTCALL1                        TYPE R11 ; [+2]
       10 GETIMPORT                        R10 K3 [type]
       12 CALL                             R10 1 1
       13 JUMPIFNOTEQKS                    R10 K4 ["table"] ; [+4]
       15 GETTABLEKS                       R9 R5 K1 ["values"]
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R9 0 0
       20 GETTABLE                         R10 R9 R1
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K5 ["makeControlTestId"]
       24 MOVE                             R12 R1
       25 CALL                             R11 1 1
       26 JUMPIFNOTEQKNIL                  R6 ; [+2]
       28 LOADB                            R12 0 +1
       29 LOADB                            R12 1
       30 LOADN                            R14 0
       31 JUMPIFLT                         R14 R3 ; [+2]
       33 LOADB                            R13 0 +1
       34 LOADB                            R13 1
       35 GETTABLEKS                       R14 R0 K6 ["Type"]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R15 R15 K7 ["Dropdown"]
       40 JUMPIFNOTEQ                      R14 R15 ; [+178]
       42 GETTABLEKS                       R15 R5 K8 ["dropdownDisplayTextByValue"]
       44 JUMPIFEQKNIL                     R15 ; [+5]
       46 GETTABLEKS                       R15 R5 K8 ["dropdownDisplayTextByValue"]
       48 GETTABLE                         R14 R15 R1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R14
       51 GETUPVAL                         R15 1
       52 GETTABLEKS                       R15 R15 K9 ["makeDropdownItems"]
       54 MOVE                             R16 R0
       55 MOVE                             R17 R1
       56 MOVE                             R18 R10
       57 MOVE                             R19 R14
       58 CALL                             R15 4 1
       59 GETTABLEKS                       R17 R15 K10 ["hasValue"]
       61 NOT                              R16 R17
       62 JUMPIF                           R16 ; [+28]
       63 NOT                              R16 R12
       64 JUMPIF                           R16 ; [+26]
       65 GETUPVAL                         R17 0
       66 GETTABLEKS                       R17 R17 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       68 CALL                             R17 0 1
       69 JUMPIF                           R17 ; [+2]
       70 LOADB                            R16 0
       71 JUMP                             ; [+19]
       72 GETUPVAL                         R17 0
       73 GETTABLEKS                       R17 R17 K11 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
       75 CALL                             R17 0 1
       76 JUMPIF                           R17 ; [+2]
       77 LOADB                            R16 0
       78 JUMP                             ; [+12]
       79 LOADB                            R16 0
       80 GETTABLEKS                       R17 R5 K12 ["disabledControlIds"]
       82 JUMPIFEQKNIL                     R17 ; [+8]
       84 GETTABLEKS                       R18 R5 K12 ["disabledControlIds"]
       86 GETTABLE                         R17 R18 R1
       87 JUMPIFEQKB                       R17 TRUE ; [+2]
       89 LOADB                            R16 0 +1
       90 LOADB                            R16 1
       91 GETTABLEKS                       R17 R0 K13 ["BundledControls"]
       93 LOADB                            R18 0
       94 JUMPIFEQKNIL                     R17 ; [+7]
       96 LENGTH                           R19 R17
       97 LOADN                            R20 0
       98 JUMPIFLT                         R20 R19 ; [+2]
      100 LOADB                            R18 0 +1
      101 LOADB                            R18 1
      102 GETUPVAL                         R19 3
      103 DUPTABLE                         R20 K19 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      104 JUMPIFNOT                        R18 ; [+2]
      105 LOADN                            R21 1
      106 JUMP                             ; [+1]
      107 MOVE                             R21 R4
      108 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      110 GETTABLEKS                       R21 R0 K20 ["Label"]
      112 SETTABLEKS                       R21 R20 K15 ["label"]
      114 OR                               R21 R13 R18
      115 SETTABLEKS                       R21 R20 K16 ["isNested"]
      117 SETTABLEKS                       R11 R20 K17 ["testId"]
      119 DUPTABLE                         R21 K22 [{"Control"}]
      120 GETUPVAL                         R22 4
      121 GETTABLEKS                       R22 R22 K23 ["createElement"]
      123 GETUPVAL                         R23 5
      124 GETTABLEKS                       R23 R23 K7 ["Dropdown"]
      126 GETTABLEKS                       R23 R23 K24 ["Root"]
      128 DUPTABLE                         R24 K33 [{["size"], ["label"] = "", ["items"], ["value"], ["placeholder"], ["onItemChanged"], ["isDisabled"], ["width"], ["testId"]}]
      129 GETUPVAL                         R25 6
      130 GETTABLEKS                       R25 R25 K34 ["XSmall"]
      132 SETTABLEKS                       R25 R24 K25 ["size"]
      134 GETTABLEKS                       R25 R15 K27 ["items"]
      136 SETTABLEKS                       R25 R24 K27 ["items"]
      138 GETTABLEKS                       R25 R15 K28 ["value"]
      140 SETTABLEKS                       R25 R24 K28 ["value"]
      142 GETTABLEKS                       R25 R15 K29 ["placeholder"]
      144 SETTABLEKS                       R25 R24 K29 ["placeholder"]
      146 NEWCLOSURE                       R25 P0
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R1
      151 SETTABLEKS                       R25 R24 K30 ["onItemChanged"]
      153 SETTABLEKS                       R16 R24 K31 ["isDisabled"]
      155 GETIMPORT                        R25 K37 [UDim.new]
      157 LOADN                            R26 1
      158 LOADN                            R27 0
      159 CALL                             R25 2 1
      160 SETTABLEKS                       R25 R24 K32 ["width"]
      162 SETTABLEKS                       R11 R24 K17 ["testId"]
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K21 ["Control"]
      167 SETTABLEKS                       R21 R20 K18 ["input"]
      169 CALL                             R19 1 1
      170 JUMPIFEQKNIL                     R17 ; [+4]
      172 LENGTH                           R20 R17
      173 JUMPIFNOTEQKN                    R20 K38 [0] ; [+2]
      175 RETURN                           R19 1
      176 GETUPVAL                         R20 4
      177 GETTABLEKS                       R20 R20 K23 ["createElement"]
      179 GETUPVAL                         R21 5
      180 GETTABLEKS                       R21 R21 K39 ["View"]
      182 DUPTABLE                         R22 K42 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      183 SETTABLEKS                       R4 R22 K14 ["LayoutOrder"]
      185 LOADK                            R23 K43 ["%*-bundle"]
      186 MOVE                             R25 R11
      187 NAMECALL                         R23 R23 K44 ["format"]
      189 CALL                             R23 2 1
      190 SETTABLEKS                       R23 R22 K17 ["testId"]
      192 DUPTABLE                         R23 K47 [{"Preset", "Controls"}]
      193 SETTABLEKS                       R19 R23 K45 ["Preset"]
      195 GETUPVAL                         R24 4
      196 GETTABLEKS                       R24 R24 K23 ["createElement"]
      198 GETUPVAL                         R25 5
      199 GETTABLEKS                       R25 R25 K39 ["View"]
      201 DUPTABLE                         R26 K50 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      202 DUPTABLE                         R27 K52 [{"Children"}]
      203 GETUPVAL                         R28 7
      204 MOVE                             R29 R17
      205 MOVE                             R30 R2
      206 ADDK                             R31 R3 K53 [1]
      207 MOVE                             R32 R5
      208 MOVE                             R33 R6
      209 MOVE                             R34 R7
      210 MOVE                             R35 R8
      211 CALL                             R28 7 1
      212 SETTABLEKS                       R28 R27 K51 ["Children"]
      214 CALL                             R24 3 1
      215 SETTABLEKS                       R24 R23 K46 ["Controls"]
      217 CALL                             R20 3 -1
      218 RETURN                           R20 -1
      219 GETTABLEKS                       R14 R0 K6 ["Type"]
      221 GETUPVAL                         R15 2
      222 GETTABLEKS                       R15 R15 K54 ["Slider"]
      224 JUMPIFNOTEQ                      R14 R15 ; [+145]
      226 GETUPVAL                         R14 1
      227 GETTABLEKS                       R14 R14 K55 ["resolveNumber"]
      229 MOVE                             R15 R10
      230 GETTABLEKS                       R16 R0 K56 ["Min"]
      232 CALL                             R14 2 2
      233 GETTABLEKS                       R17 R0 K57 ["Unit"]
      235 ORK                              R16 R17 K26 [""]
      236 NOT                              R17 R15
      237 JUMPIF                           R17 ; [+28]
      238 NOT                              R17 R12
      239 JUMPIF                           R17 ; [+26]
      240 GETUPVAL                         R18 0
      241 GETTABLEKS                       R18 R18 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
      243 CALL                             R18 0 1
      244 JUMPIF                           R18 ; [+2]
      245 LOADB                            R17 0
      246 JUMP                             ; [+19]
      247 GETUPVAL                         R18 0
      248 GETTABLEKS                       R18 R18 K11 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
      250 CALL                             R18 0 1
      251 JUMPIF                           R18 ; [+2]
      252 LOADB                            R17 0
      253 JUMP                             ; [+12]
      254 LOADB                            R17 0
      255 GETTABLEKS                       R18 R5 K12 ["disabledControlIds"]
      257 JUMPIFEQKNIL                     R18 ; [+8]
      259 GETTABLEKS                       R19 R5 K12 ["disabledControlIds"]
      261 GETTABLE                         R18 R19 R1
      262 JUMPIFEQKB                       R18 TRUE ; [+2]
      264 LOADB                            R17 0 +1
      265 LOADB                            R17 1
      266 GETUPVAL                         R18 3
      267 DUPTABLE                         R19 K59 [{"LayoutOrder", "label", "isNested", "testId", "slotTestId", "input"}]
      268 SETTABLEKS                       R4 R19 K14 ["LayoutOrder"]
      270 GETTABLEKS                       R20 R0 K20 ["Label"]
      272 SETTABLEKS                       R20 R19 K15 ["label"]
      274 SETTABLEKS                       R13 R19 K16 ["isNested"]
      276 SETTABLEKS                       R11 R19 K17 ["testId"]
      278 SETTABLEKS                       R11 R19 K58 ["slotTestId"]
      280 DUPTABLE                         R20 K61 [{"Control", "Value"}]
      281 GETUPVAL                         R21 4
      282 GETTABLEKS                       R21 R21 K23 ["createElement"]
      284 GETUPVAL                         R22 5
      285 GETTABLEKS                       R22 R22 K54 ["Slider"]
      287 DUPTABLE                         R23 K65 [{["LayoutOrder"] = 1, ["size"], ["width"], ["range"], ["value"], ["step"], ["onValueChanged"], ["isDisabled"], ["testId"]}]
      288 GETUPVAL                         R24 6
      289 GETTABLEKS                       R24 R24 K34 ["XSmall"]
      291 SETTABLEKS                       R24 R23 K25 ["size"]
      293 GETIMPORT                        R24 K37 [UDim.new]
      295 LOADN                            R25 1
      296 LOADN                            R26 -50
      297 CALL                             R24 2 1
      298 SETTABLEKS                       R24 R23 K32 ["width"]
      300 GETIMPORT                        R24 K67 [NumberRange.new]
      302 GETTABLEKS                       R25 R0 K56 ["Min"]
      304 GETTABLEKS                       R26 R0 K68 ["Max"]
      306 CALL                             R24 2 1
      307 SETTABLEKS                       R24 R23 K62 ["range"]
      309 SETTABLEKS                       R14 R23 K28 ["value"]
      311 GETTABLEKS                       R24 R0 K69 ["Step"]
      313 SETTABLEKS                       R24 R23 K63 ["step"]
      315 NEWCLOSURE                       R24 P1
      316 CAPTURE                          VAL R17
      317 CAPTURE                          UPVAL U1
      318 CAPTURE                          VAL R6
      319 CAPTURE                          VAL R1
      320 SETTABLEKS                       R24 R23 K64 ["onValueChanged"]
      322 SETTABLEKS                       R17 R23 K31 ["isDisabled"]
      324 LOADK                            R24 K70 ["%*-input"]
      325 MOVE                             R26 R11
      326 NAMECALL                         R24 R24 K44 ["format"]
      328 CALL                             R24 2 1
      329 SETTABLEKS                       R24 R23 K17 ["testId"]
      331 CALL                             R21 2 1
      332 SETTABLEKS                       R21 R20 K21 ["Control"]
      334 GETUPVAL                         R21 4
      335 GETTABLEKS                       R21 R21 K23 ["createElement"]
      337 GETUPVAL                         R22 5
      338 GETTABLEKS                       R22 R22 K71 ["Text"]
      340 DUPTABLE                         R23 K74 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-label-small text-align-x-right text-align-y-center", ["testId"]}]
      341 GETUPVAL                         R24 8
      342 MOVE                             R25 R14
      343 MOVE                             R26 R16
      344 GETTABLEKS                       R27 R0 K75 ["Precision"]
      346 CALL                             R24 3 1
      347 SETTABLEKS                       R24 R23 K71 ["Text"]
      349 GETIMPORT                        R24 K78 [UDim2.fromOffset]
      351 LOADN                            R25 46
      352 LOADN                            R26 24
      353 CALL                             R24 2 1
      354 SETTABLEKS                       R24 R23 K72 ["Size"]
      356 LOADK                            R24 K79 ["%*-value"]
      357 MOVE                             R26 R11
      358 NAMECALL                         R24 R24 K44 ["format"]
      360 CALL                             R24 2 1
      361 SETTABLEKS                       R24 R23 K17 ["testId"]
      363 CALL                             R21 2 1
      364 SETTABLEKS                       R21 R20 K60 ["Value"]
      366 SETTABLEKS                       R20 R19 K18 ["input"]
      368 CALL                             R18 1 -1
      369 RETURN                           R18 -1
      370 GETTABLEKS                       R14 R0 K6 ["Type"]
      372 GETUPVAL                         R15 2
      373 GETTABLEKS                       R15 R15 K80 ["NumberField"]
      375 JUMPIFNOTEQ                      R14 R15 ; [+48]
      377 GETUPVAL                         R14 4
      378 GETTABLEKS                       R14 R14 K23 ["createElement"]
      380 GETUPVAL                         R15 9
      381 DUPTABLE                         R16 K87 [{"control", "path", "layoutOrder", "isNested", "runtimeValue", "onControlChanged", "isPresentationDisabled"}]
      382 SETTABLEKS                       R0 R16 K81 ["control"]
      384 SETTABLEKS                       R1 R16 K82 ["path"]
      386 SETTABLEKS                       R4 R16 K83 ["layoutOrder"]
      388 SETTABLEKS                       R13 R16 K16 ["isNested"]
      390 SETTABLEKS                       R10 R16 K84 ["runtimeValue"]
      392 SETTABLEKS                       R6 R16 K85 ["onControlChanged"]
      394 GETUPVAL                         R18 0
      395 GETTABLEKS                       R18 R18 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
      397 CALL                             R18 0 1
      398 JUMPIF                           R18 ; [+2]
      399 LOADB                            R17 0
      400 JUMP                             ; [+19]
      401 GETUPVAL                         R18 0
      402 GETTABLEKS                       R18 R18 K11 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
      404 CALL                             R18 0 1
      405 JUMPIF                           R18 ; [+2]
      406 LOADB                            R17 0
      407 JUMP                             ; [+12]
      408 LOADB                            R17 0
      409 GETTABLEKS                       R18 R5 K12 ["disabledControlIds"]
      411 JUMPIFEQKNIL                     R18 ; [+8]
      413 GETTABLEKS                       R19 R5 K12 ["disabledControlIds"]
      415 GETTABLE                         R18 R19 R1
      416 JUMPIFEQKB                       R18 TRUE ; [+2]
      418 LOADB                            R17 0 +1
      419 LOADB                            R17 1
      420 SETTABLEKS                       R17 R16 K86 ["isPresentationDisabled"]
      422 CALL                             R14 2 -1
      423 RETURN                           R14 -1
      424 GETTABLEKS                       R14 R0 K6 ["Type"]
      426 GETUPVAL                         R15 2
      427 GETTABLEKS                       R15 R15 K88 ["Toggle"]
      429 JUMPIFNOTEQ                      R14 R15 ; [+80]
      431 GETUPVAL                         R14 1
      432 GETTABLEKS                       R14 R14 K89 ["resolveBoolean"]
      434 MOVE                             R15 R10
      435 CALL                             R14 1 2
      436 NOT                              R16 R15
      437 JUMPIF                           R16 ; [+28]
      438 NOT                              R16 R12
      439 JUMPIF                           R16 ; [+26]
      440 GETUPVAL                         R17 0
      441 GETTABLEKS                       R17 R17 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
      443 CALL                             R17 0 1
      444 JUMPIF                           R17 ; [+2]
      445 LOADB                            R16 0
      446 JUMP                             ; [+19]
      447 GETUPVAL                         R17 0
      448 GETTABLEKS                       R17 R17 K11 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
      450 CALL                             R17 0 1
      451 JUMPIF                           R17 ; [+2]
      452 LOADB                            R16 0
      453 JUMP                             ; [+12]
      454 LOADB                            R16 0
      455 GETTABLEKS                       R17 R5 K12 ["disabledControlIds"]
      457 JUMPIFEQKNIL                     R17 ; [+8]
      459 GETTABLEKS                       R18 R5 K12 ["disabledControlIds"]
      461 GETTABLE                         R17 R18 R1
      462 JUMPIFEQKB                       R17 TRUE ; [+2]
      464 LOADB                            R16 0 +1
      465 LOADB                            R16 1
      466 GETUPVAL                         R17 3
      467 DUPTABLE                         R18 K19 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      468 SETTABLEKS                       R4 R18 K14 ["LayoutOrder"]
      470 GETTABLEKS                       R19 R0 K20 ["Label"]
      472 SETTABLEKS                       R19 R18 K15 ["label"]
      474 SETTABLEKS                       R13 R18 K16 ["isNested"]
      476 SETTABLEKS                       R11 R18 K17 ["testId"]
      478 DUPTABLE                         R19 K22 [{"Control"}]
      479 GETUPVAL                         R20 4
      480 GETTABLEKS                       R20 R20 K23 ["createElement"]
      482 GETUPVAL                         R21 5
      483 GETTABLEKS                       R21 R21 K88 ["Toggle"]
      485 DUPTABLE                         R22 K92 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["isDisabled"], ["testId"]}]
      486 GETUPVAL                         R23 6
      487 GETTABLEKS                       R23 R23 K34 ["XSmall"]
      489 SETTABLEKS                       R23 R22 K25 ["size"]
      491 SETTABLEKS                       R14 R22 K90 ["isChecked"]
      493 NEWCLOSURE                       R23 P2
      494 CAPTURE                          VAL R16
      495 CAPTURE                          VAL R6
      496 CAPTURE                          VAL R1
      497 SETTABLEKS                       R23 R22 K91 ["onActivated"]
      499 SETTABLEKS                       R16 R22 K31 ["isDisabled"]
      501 SETTABLEKS                       R11 R22 K17 ["testId"]
      503 CALL                             R20 2 1
      504 SETTABLEKS                       R20 R19 K21 ["Control"]
      506 SETTABLEKS                       R19 R18 K18 ["input"]
      508 CALL                             R17 1 -1
      509 RETURN                           R17 -1
      510 GETTABLEKS                       R14 R0 K6 ["Type"]
      512 GETUPVAL                         R15 2
      513 GETTABLEKS                       R15 R15 K93 ["Section"]
      515 JUMPIFNOTEQ                      R14 R15 ; [+211]
      517 GETTABLEKS                       R15 R0 K94 ["Collapsible"]
      519 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
      521 LOADB                            R14 0 +1
      522 LOADB                            R14 1
      523 MOVE                             R15 R14
      524 JUMPIFNOT                        R15 ; [+5]
      525 GETTABLE                         R16 R7 R1
      526 JUMPIFEQKB                       R16 TRUE ; [+2]
      528 LOADB                            R15 0 +1
      529 LOADB                            R15 1
      530 GETUPVAL                         R16 4
      531 GETTABLEKS                       R16 R16 K23 ["createElement"]
      533 GETUPVAL                         R17 5
      534 GETTABLEKS                       R17 R17 K39 ["View"]
      536 DUPTABLE                         R18 K42 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      537 SETTABLEKS                       R4 R18 K14 ["LayoutOrder"]
      539 SETTABLEKS                       R11 R18 K17 ["testId"]
      541 DUPTABLE                         R19 K96 [{"Header", "Controls"}]
      542 GETUPVAL                         R20 4
      543 GETTABLEKS                       R20 R20 K23 ["createElement"]
      545 GETUPVAL                         R21 5
      546 GETTABLEKS                       R21 R21 K39 ["View"]
      548 DUPTABLE                         R22 K98 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-x-small", ["onActivated"], ["testId"]}]
      549 JUMPIFNOT                        R14 ; [+4]
      550 NEWCLOSURE                       R23 P3
      551 CAPTURE                          VAL R8
      552 CAPTURE                          VAL R1
      553 JUMP                             ; [+1]
      554 LOADNIL                          R23
      555 SETTABLEKS                       R23 R22 K91 ["onActivated"]
      557 LOADK                            R23 K99 ["%*-header"]
      558 MOVE                             R25 R11
      559 NAMECALL                         R23 R23 K44 ["format"]
      561 CALL                             R23 2 1
      562 SETTABLEKS                       R23 R22 K17 ["testId"]
      564 DUPTABLE                         R23 K101 [{"Wrapper"}]
      565 GETUPVAL                         R24 4
      566 GETTABLEKS                       R24 R24 K23 ["createElement"]
      568 GETUPVAL                         R25 5
      569 GETTABLEKS                       R25 R25 K39 ["View"]
      571 DUPTABLE                         R26 K103 [{["tag"] = "row size-full-0 auto-y padding-x-xsmall"}]
      572 DUPTABLE                         R27 K105 [{"Content"}]
      573 GETUPVAL                         R28 4
      574 GETTABLEKS                       R28 R28 K23 ["createElement"]
      576 GETUPVAL                         R29 5
      577 GETTABLEKS                       R29 R29 K39 ["View"]
      579 DUPTABLE                         R30 K106 [{"Size"}]
      580 GETIMPORT                        R31 K107 [UDim2.new]
      582 LOADN                            R32 1
      583 LOADN                            R33 0
      584 LOADN                            R34 0
      585 LOADN                            R35 24
      586 CALL                             R31 4 1
      587 SETTABLEKS                       R31 R30 K72 ["Size"]
      589 DUPTABLE                         R31 K109 [{"Chevron", "Label"}]
      590 JUMPIFNOT                        R14 ; [+66]
      591 GETUPVAL                         R32 4
      592 GETTABLEKS                       R32 R32 K23 ["createElement"]
      594 GETUPVAL                         R33 5
      595 GETTABLEKS                       R33 R33 K39 ["View"]
      597 DUPTABLE                         R34 K113 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"]}]
      598 GETIMPORT                        R35 K115 [Vector2.new]
      600 LOADN                            R36 0
      601 LOADK                            R37 K116 [0.5]
      602 CALL                             R35 2 1
      603 SETTABLEKS                       R35 R34 K110 ["AnchorPoint"]
      605 GETIMPORT                        R35 K118 [UDim2.fromScale]
      607 LOADN                            R36 0
      608 LOADK                            R37 K116 [0.5]
      609 CALL                             R35 2 1
      610 SETTABLEKS                       R35 R34 K111 ["Position"]
      612 GETIMPORT                        R35 K78 [UDim2.fromOffset]
      614 LOADN                            R36 16
      615 LOADN                            R37 24
      616 CALL                             R35 2 1
      617 SETTABLEKS                       R35 R34 K72 ["Size"]
      619 LOADK                            R35 K119 ["%*-toggle"]
      620 MOVE                             R37 R11
      621 NAMECALL                         R35 R35 K44 ["format"]
      623 CALL                             R35 2 1
      624 SETTABLEKS                       R35 R34 K17 ["testId"]
      626 DUPTABLE                         R35 K121 [{"Icon"}]
      627 GETUPVAL                         R36 4
      628 GETTABLEKS                       R36 R36 K23 ["createElement"]
      630 GETUPVAL                         R37 5
      631 GETTABLEKS                       R37 R37 K120 ["Icon"]
      633 DUPTABLE                         R38 K123 [{"name", "size", "testId"}]
      634 JUMPIFNOT                        R15 ; [+2]
      635 LOADK                            R39 K124 ["caret-small-right"]
      636 JUMP                             ; [+1]
      637 LOADK                            R39 K125 ["caret-small-down"]
      638 SETTABLEKS                       R39 R38 K122 ["name"]
      640 GETUPVAL                         R39 10
      641 GETTABLEKS                       R39 R39 K126 ["Medium"]
      643 SETTABLEKS                       R39 R38 K25 ["size"]
      645 LOADK                            R39 K127 ["%*-chevron"]
      646 MOVE                             R41 R11
      647 NAMECALL                         R39 R39 K44 ["format"]
      649 CALL                             R39 2 1
      650 SETTABLEKS                       R39 R38 K17 ["testId"]
      652 CALL                             R36 2 1
      653 SETTABLEKS                       R36 R35 K120 ["Icon"]
      655 CALL                             R32 3 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R32
      658 SETTABLEKS                       R32 R31 K108 ["Chevron"]
      660 GETUPVAL                         R32 4
      661 GETTABLEKS                       R32 R32 K23 ["createElement"]
      663 GETUPVAL                         R33 5
      664 GETTABLEKS                       R33 R33 K71 ["Text"]
      666 DUPTABLE                         R34 K129 [{["Text"], ["Size"], ["tag"] = "auto-none padding-left-xlarge text-no-wrap text-truncate-end text-label-small content-emphasis text-align-x-left text-align-y-center", ["testId"]}]
      667 GETTABLEKS                       R35 R0 K20 ["Label"]
      669 SETTABLEKS                       R35 R34 K71 ["Text"]
      671 GETIMPORT                        R35 K107 [UDim2.new]
      673 LOADN                            R36 1
      674 LOADN                            R37 0
      675 LOADN                            R38 0
      676 LOADN                            R39 24
      677 CALL                             R35 4 1
      678 SETTABLEKS                       R35 R34 K72 ["Size"]
      680 LOADK                            R35 K130 ["%*-label"]
      681 MOVE                             R37 R11
      682 NAMECALL                         R35 R35 K44 ["format"]
      684 CALL                             R35 2 1
      685 SETTABLEKS                       R35 R34 K17 ["testId"]
      687 CALL                             R32 2 1
      688 SETTABLEKS                       R32 R31 K20 ["Label"]
      690 CALL                             R28 3 1
      691 SETTABLEKS                       R28 R27 K104 ["Content"]
      693 CALL                             R24 3 1
      694 SETTABLEKS                       R24 R23 K100 ["Wrapper"]
      696 CALL                             R20 3 1
      697 SETTABLEKS                       R20 R19 K95 ["Header"]
      699 JUMPIFNOT                        R15 ; [+2]
      700 LOADNIL                          R20
      701 JUMP                             ; [+21]
      702 GETUPVAL                         R20 4
      703 GETTABLEKS                       R20 R20 K23 ["createElement"]
      705 GETUPVAL                         R21 5
      706 GETTABLEKS                       R21 R21 K39 ["View"]
      708 DUPTABLE                         R22 K50 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      709 DUPTABLE                         R23 K52 [{"Children"}]
      710 GETUPVAL                         R24 7
      711 GETTABLEKS                       R25 R0 K46 ["Controls"]
      713 MOVE                             R26 R2
      714 ADDK                             R27 R3 K53 [1]
      715 MOVE                             R28 R5
      716 MOVE                             R29 R6
      717 MOVE                             R30 R7
      718 MOVE                             R31 R8
      719 CALL                             R24 7 1
      720 SETTABLEKS                       R24 R23 K51 ["Children"]
      722 CALL                             R20 3 1
      723 SETTABLEKS                       R20 R19 K46 ["Controls"]
      725 CALL                             R16 3 -1
      726 RETURN                           R16 -1
      727 LOADNIL                          R14
      728 RETURN                           R14 1

PROTO_14:
        0 NEWTABLE                         R7 0 0
        2 MOVE                             R8 R0
        3 LOADNIL                          R9
        4 LOADNIL                          R10
        5 FORGPREP                         R8
        6 GETUPVAL                         R13 0
        7 GETTABLEKS                       R13 R13 K0 ["makeControlPath"]
        9 MOVE                             R14 R1
       10 MOVE                             R15 R11
       11 CALL                             R13 2 1
       12 GETUPVAL                         R14 0
       13 GETTABLEKS                       R14 R14 K1 ["makeControlKey"]
       15 MOVE                             R15 R12
       16 MOVE                             R16 R13
       17 CALL                             R14 2 1
       18 GETUPVAL                         R15 1
       19 MOVE                             R16 R12
       20 MOVE                             R17 R14
       21 MOVE                             R18 R13
       22 MOVE                             R19 R2
       23 MOVE                             R20 R11
       24 MOVE                             R21 R3
       25 MOVE                             R22 R4
       26 MOVE                             R23 R5
       27 MOVE                             R24 R6
       28 CALL                             R15 9 1
       29 SETTABLE                         R15 R7 R14
       30 FORGLOOP                         R8 2 ; [-25]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K2 ["createElement"]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K3 ["View"]
       38 DUPTABLE                         R10 K7 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
       39 JUMPIFNOT                        R1 ; [+10]
       40 LOADK                            R11 K8 ["%*-controls"]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K9 ["makeControlTestId"]
       44 MOVE                             R14 R1
       45 CALL                             R13 1 1
       46 NAMECALL                         R11 R11 K10 ["format"]
       48 CALL                             R11 2 1
       49 JUMP                             ; [+1]
       50 LOADK                            R11 K11 ["simulator-controls"]
       51 SETTABLEKS                       R11 R10 K6 ["testId"]
       53 MOVE                             R11 R7
       54 CALL                             R8 3 -1
       55 RETURN                           R8 -1

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["useState"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R5 R0 K3 ["controls"]
       24 LOADNIL                          R6
       25 LOADN                            R7 0
       26 MOVE                             R8 R0
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       30 CALL                             R10 0 1
       31 JUMPIF                           R10 ; [+2]
       32 LOADNIL                          R9
       33 JUMP                             ; [+13]
       34 GETTABLEKS                       R10 R0 K4 ["onControlChanged"]
       36 JUMPIFNOTEQKNIL                  R10 ; [+3]
       38 LOADNIL                          R9
       39 JUMP                             ; [+7]
       40 GETTABLEKS                       R11 R0 K6 ["debugName"]
       42 ORK                              R10 R11 K5 ["ControlRenderer"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R0
       47 MOVE                             R10 R1
       48 MOVE                             R11 R3
       49 CALL                             R4 7 -1
       50 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["controlAdapter"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["dispatch"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K12 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K13 ["Bin"]
       52 GETTABLEKS                       R7 R7 K14 ["Common"]
       54 GETTABLEKS                       R7 R7 K15 ["defineLuaFlags"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R5 K16 ["ControlType"]
       59 GETTABLEKS                       R8 R1 K17 ["Enums"]
       61 GETTABLEKS                       R8 R8 K18 ["IconSize"]
       63 GETTABLEKS                       R9 R1 K17 ["Enums"]
       65 GETTABLEKS                       R9 R9 K19 ["InputSize"]
       67 GETTABLEKS                       R10 R1 K17 ["Enums"]
       69 GETTABLEKS                       R10 R10 K20 ["NumberInputControlsVariant"]
       71 GETTABLEKS                       R11 R1 K17 ["Enums"]
       73 GETTABLEKS                       R11 R11 K21 ["OnChangeCallbackReason"]
       75 DUPCLOSURE                       R12 K22 [PROTO_0]
       76 CAPTURE                          VAL R6
       77 DUPCLOSURE                       R13 K23 [PROTO_1]
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R14 K24 [PROTO_3]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R4
       82 DUPCLOSURE                       R15 K25 [PROTO_4]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 DUPCLOSURE                       R16 K26 [PROTO_5]
       87 DUPCLOSURE                       R17 K27 [PROTO_8]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 LOADNIL                          R18
       96 NEWCLOSURE                       R19 P6
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R9
      104 CAPTURE                          REF R18
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R8
      108 DUPCLOSURE                       R18 K28 [PROTO_14]
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R1
      113 NEWCLOSURE                       R20 P8
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R2
      116 CAPTURE                          REF R18
      117 CAPTURE                          VAL R4
      118 CLOSEUPVALS                      R18
      119 RETURN                           R20 1
