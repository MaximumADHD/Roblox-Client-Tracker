PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADK                            R3 K1 [""]
        6 RETURN                           R3 1
        7 JUMPIFEQKNIL                     R2 ; [+12]
        9 GETIMPORT                        R3 K4 [string.format]
       11 LOADK                            R5 K5 ["%%.%*f"]
       12 MOVE                             R7 R2
       13 NAMECALL                         R5 R5 K3 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 MOVE                             R5 R0
       18 CALL                             R3 2 1
       19 JUMP                             ; [+21]
       20 JUMPIFNOTEQKS                    R1 K6 ["%"] ; [+7]
       22 GETIMPORT                        R3 K4 [string.format]
       24 LOADK                            R4 K7 ["%.2f"]
       25 MOVE                             R5 R0
       26 CALL                             R3 2 1
       27 JUMP                             ; [+13]
       28 JUMPIFEQKS                       R1 K1 [""] ; [+7]
       30 GETIMPORT                        R3 K4 [string.format]
       32 LOADK                            R4 K8 ["%g"]
       33 MOVE                             R5 R0
       34 CALL                             R3 2 1
       35 JUMP                             ; [+5]
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R4 R0
       38 GETIMPORT                        R3 K10 [tostring]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R1 K6 ["%"] ; [+8]
       43 LOADK                            R5 K11 ["%*%%"]
       44 MOVE                             R7 R3
       45 NAMECALL                         R5 R5 K3 ["format"]
       47 CALL                             R5 2 1
       48 MOVE                             R4 R5
       49 RETURN                           R4 1
       50 JUMPIFEQKS                       R1 K1 [""] ; [+9]
       52 LOADK                            R5 K12 ["%* %*"]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R1
       55 NAMECALL                         R5 R5 K3 ["format"]
       57 CALL                             R5 3 1
       58 MOVE                             R4 R5
       59 RETURN                           R4 1
       60 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["safeCall"]
        3 LOADK                            R4 K1 ["%* control %*"]
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 3 1
        9 MOVE                             R3 R4
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["onControlChanged"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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
       18 LOADK                            R5 K8 ["%*-row"]
       19 GETTABLEKS                       R7 R0 K6 ["testId"]
       21 NAMECALL                         R5 R5 K9 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 SETTABLEKS                       R4 R3 K6 ["testId"]
       27 DUPTABLE                         R4 K11 [{"Wrapper"}]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K1 ["createElement"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K2 ["View"]
       34 DUPTABLE                         R7 K13 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-x-xsmall"}]
       35 DUPTABLE                         R8 K16 [{"Label", "Input"}]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K1 ["createElement"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K17 ["Text"]
       42 DUPTABLE                         R11 K20 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["tag"], ["testId"]}]
       43 GETTABLEKS                       R12 R0 K21 ["label"]
       45 SETTABLEKS                       R12 R11 K17 ["Text"]
       47 GETIMPORT                        R12 K24 [UDim2.fromOffset]
       49 LOADN                            R13 96
       50 LOADN                            R14 24
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K19 ["Size"]
       54 NEWTABLE                         R12 2 0
       56 LOADB                            R13 1
       57 SETTABLEKS                       R13 R12 K25 ["auto-none text-no-wrap text-truncate-end text-body-small content-default text-align-x-left text-align-y-center"]
       59 GETTABLEKS                       R13 R0 K26 ["isNested"]
       61 SETTABLEKS                       R13 R12 K27 ["padding-left-xlarge"]
       63 SETTABLEKS                       R12 R11 K4 ["tag"]
       65 LOADK                            R13 K28 ["%*-label"]
       66 GETTABLEKS                       R15 R0 K6 ["testId"]
       68 NAMECALL                         R13 R13 K9 ["format"]
       70 CALL                             R13 2 1
       71 MOVE                             R12 R13
       72 SETTABLEKS                       R12 R11 K6 ["testId"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K14 ["Label"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K1 ["createElement"]
       80 GETUPVAL                         R10 2
       81 GETTABLEKS                       R10 R10 K2 ["View"]
       83 DUPTABLE                         R11 K31 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-x-right align-y-center gap-xsmall auto-y", ["testId"]}]
       84 GETIMPORT                        R12 K24 [UDim2.fromOffset]
       86 LOADN                            R13 180
       87 LOADN                            R14 0
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K19 ["Size"]
       91 GETTABLEKS                       R12 R0 K32 ["slotTestId"]
       93 SETTABLEKS                       R12 R11 K6 ["testId"]
       95 GETTABLEKS                       R12 R0 K33 ["input"]
       97 CALL                             R9 3 1
       98 SETTABLEKS                       R9 R8 K15 ["Input"]
      100 CALL                             R5 3 1
      101 SETTABLEKS                       R5 R4 K10 ["Wrapper"]
      103 CALL                             R1 3 -1
      104 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 LOADB                            R3 1
        3 JUMPIFLT                         R0 R1 ; [+8]
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R2 ; [+5]
        8 JUMPIFLT                         R2 R0 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["control"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["resolveNumber"]
        5 GETTABLEKS                       R3 R0 K2 ["runtimeValue"]
        7 LOADN                            R4 0
        8 CALL                             R2 2 2
        9 GETTABLEKS                       R5 R1 K4 ["Unit"]
       11 ORK                              R4 R5 K3 [""]
       12 NOT                              R5 R3
       13 JUMPIF                           R5 ; [+6]
       14 GETTABLEKS                       R6 R0 K5 ["onControlChanged"]
       16 JUMPIFEQKNIL                     R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["useRef"]
       23 LOADNIL                          R7
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K7 ["useState"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K8 ["makeControlTestId"]
       33 GETTABLEKS                       R10 R0 K9 ["path"]
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 2
       37 DUPTABLE                         R11 K15 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
       38 GETTABLEKS                       R12 R0 K16 ["layoutOrder"]
       40 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       42 GETTABLEKS                       R12 R1 K17 ["Label"]
       44 SETTABLEKS                       R12 R11 K11 ["label"]
       46 GETTABLEKS                       R12 R0 K12 ["isNested"]
       48 SETTABLEKS                       R12 R11 K12 ["isNested"]
       50 SETTABLEKS                       R9 R11 K13 ["testId"]
       52 DUPTABLE                         R12 K19 [{"Control"}]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K20 ["createElement"]
       56 GETUPVAL                         R14 3
       57 GETTABLEKS                       R14 R14 K21 ["View"]
       59 DUPTABLE                         R15 K24 [{"backgroundStyle", "Size", "testId"}]
       60 DUPTABLE                         R16 K27 [{["Transparency"] = 1}]
       61 SETTABLEKS                       R16 R15 K22 ["backgroundStyle"]
       63 GETIMPORT                        R16 K30 [UDim2.new]
       65 LOADN                            R17 1
       66 LOADN                            R18 0
       67 LOADN                            R19 0
       68 LOADN                            R20 24
       69 CALL                             R16 4 1
       70 SETTABLEKS                       R16 R15 K23 ["Size"]
       72 LOADK                            R17 K31 ["%*-field"]
       73 MOVE                             R19 R9
       74 NAMECALL                         R17 R17 K32 ["format"]
       76 CALL                             R17 2 1
       77 MOVE                             R16 R17
       78 SETTABLEKS                       R16 R15 K13 ["testId"]
       80 DUPTABLE                         R16 K34 [{"Input", "Unit"}]
       81 GETUPVAL                         R17 1
       82 GETTABLEKS                       R17 R17 K20 ["createElement"]
       84 GETUPVAL                         R18 3
       85 GETTABLEKS                       R18 R18 K35 ["NumberInput"]
       87 DUPTABLE                         R19 K50 [{["size"], ["label"] = "", ["controlsVariant"], ["hasControls"] = False, ["hasError"], ["value"], ["minimum"], ["maximum"], ["precision"], ["step"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["width"], ["testId"]}]
       88 GETUPVAL                         R20 4
       89 GETTABLEKS                       R20 R20 K51 ["XSmall"]
       91 SETTABLEKS                       R20 R19 K36 ["size"]
       93 GETUPVAL                         R20 5
       94 GETTABLEKS                       R20 R20 K52 ["None"]
       96 SETTABLEKS                       R20 R19 K37 ["controlsVariant"]
       98 SETTABLEKS                       R7 R19 K40 ["hasError"]
      100 SETTABLEKS                       R2 R19 K41 ["value"]
      102 GETTABLEKS                       R20 R1 K53 ["Min"]
      104 SETTABLEKS                       R20 R19 K42 ["minimum"]
      106 GETTABLEKS                       R20 R1 K54 ["Max"]
      108 SETTABLEKS                       R20 R19 K43 ["maximum"]
      110 GETTABLEKS                       R20 R1 K55 ["Precision"]
      112 SETTABLEKS                       R20 R19 K44 ["precision"]
      114 GETTABLEKS                       R20 R1 K56 ["Step"]
      116 SETTABLEKS                       R20 R19 K45 ["step"]
      118 NEWCLOSURE                       R20 P0
      119 CAPTURE                          VAL R5
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R20 R19 K46 ["onChanged"]
      129 NEWCLOSURE                       R20 P1
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R20 R19 K47 ["onFocusLost"]
      138 SETTABLEKS                       R5 R19 K48 ["isDisabled"]
      140 GETIMPORT                        R20 K58 [UDim.new]
      142 LOADN                            R21 1
      143 LOADN                            R22 0
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K49 ["width"]
      147 SETTABLEKS                       R9 R19 K13 ["testId"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K33 ["Input"]
      152 JUMPIFNOTEQKS                    R4 K3 [""] ; [+3]
      154 LOADNIL                          R17
      155 JUMP                             ; [+41]
      156 GETUPVAL                         R17 1
      157 GETTABLEKS                       R17 R17 K20 ["createElement"]
      159 GETUPVAL                         R18 3
      160 GETTABLEKS                       R18 R18 K59 ["Text"]
      162 DUPTABLE                         R19 K66 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["ZIndex"] = 2, ["tag"] = "auto-none text-no-wrap text-body-small content-muted text-align-x-right text-align-y-center", ["testId"]}]
      163 GETIMPORT                        R20 K68 [Vector2.new]
      165 LOADN                            R21 1
      166 LOADN                            R22 0
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K60 ["AnchorPoint"]
      170 GETIMPORT                        R20 K30 [UDim2.new]
      172 LOADN                            R21 1
      173 LOADN                            R22 -8
      174 LOADN                            R23 0
      175 LOADN                            R24 0
      176 CALL                             R20 4 1
      177 SETTABLEKS                       R20 R19 K61 ["Position"]
      179 GETIMPORT                        R20 K70 [UDim2.fromOffset]
      181 LOADN                            R21 32
      182 LOADN                            R22 24
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K23 ["Size"]
      186 SETTABLEKS                       R4 R19 K59 ["Text"]
      188 LOADK                            R21 K71 ["%*-unit"]
      189 MOVE                             R23 R9
      190 NAMECALL                         R21 R21 K32 ["format"]
      192 CALL                             R21 2 1
      193 MOVE                             R20 R21
      194 SETTABLEKS                       R20 R19 K13 ["testId"]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K4 ["Unit"]
      199 CALL                             R13 3 1
      200 SETTABLEKS                       R13 R12 K18 ["Control"]
      202 SETTABLEKS                       R12 R11 K14 ["input"]
      204 CALL                             R10 1 -1
      205 RETURN                           R10 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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
       40 JUMPIFNOTEQ                      R14 R15 ; [+152]
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
       62 JUMPIF                           R16 ; [+1]
       63 NOT                              R16 R12
       64 GETTABLEKS                       R17 R0 K11 ["BundledControls"]
       66 LOADB                            R18 0
       67 JUMPIFEQKNIL                     R17 ; [+7]
       69 LENGTH                           R19 R17
       70 LOADN                            R20 0
       71 JUMPIFLT                         R20 R19 ; [+2]
       73 LOADB                            R18 0 +1
       74 LOADB                            R18 1
       75 GETUPVAL                         R19 3
       76 DUPTABLE                         R20 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
       77 JUMPIFNOT                        R18 ; [+2]
       78 LOADN                            R21 1
       79 JUMP                             ; [+1]
       80 MOVE                             R21 R4
       81 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
       83 GETTABLEKS                       R21 R0 K18 ["Label"]
       85 SETTABLEKS                       R21 R20 K13 ["label"]
       87 OR                               R21 R13 R18
       88 SETTABLEKS                       R21 R20 K14 ["isNested"]
       90 SETTABLEKS                       R11 R20 K15 ["testId"]
       92 DUPTABLE                         R21 K20 [{"Control"}]
       93 GETUPVAL                         R22 4
       94 GETTABLEKS                       R22 R22 K21 ["createElement"]
       96 GETUPVAL                         R23 5
       97 GETTABLEKS                       R23 R23 K7 ["Dropdown"]
       99 GETTABLEKS                       R23 R23 K22 ["Root"]
      101 DUPTABLE                         R24 K31 [{["size"], ["label"] = "", ["items"], ["value"], ["placeholder"], ["onItemChanged"], ["isDisabled"], ["width"], ["testId"]}]
      102 GETUPVAL                         R25 6
      103 GETTABLEKS                       R25 R25 K32 ["XSmall"]
      105 SETTABLEKS                       R25 R24 K23 ["size"]
      107 GETTABLEKS                       R25 R15 K25 ["items"]
      109 SETTABLEKS                       R25 R24 K25 ["items"]
      111 GETTABLEKS                       R25 R15 K26 ["value"]
      113 SETTABLEKS                       R25 R24 K26 ["value"]
      115 GETTABLEKS                       R25 R15 K27 ["placeholder"]
      117 SETTABLEKS                       R25 R24 K27 ["placeholder"]
      119 NEWCLOSURE                       R25 P0
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R25 R24 K28 ["onItemChanged"]
      126 SETTABLEKS                       R16 R24 K29 ["isDisabled"]
      128 GETIMPORT                        R25 K35 [UDim.new]
      130 LOADN                            R26 1
      131 LOADN                            R27 0
      132 CALL                             R25 2 1
      133 SETTABLEKS                       R25 R24 K30 ["width"]
      135 SETTABLEKS                       R11 R24 K15 ["testId"]
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K19 ["Control"]
      140 SETTABLEKS                       R21 R20 K16 ["input"]
      142 CALL                             R19 1 1
      143 JUMPIFEQKNIL                     R17 ; [+4]
      145 LENGTH                           R20 R17
      146 JUMPIFNOTEQKN                    R20 K36 [0] ; [+2]
      148 RETURN                           R19 1
      149 GETUPVAL                         R20 4
      150 GETTABLEKS                       R20 R20 K21 ["createElement"]
      152 GETUPVAL                         R21 5
      153 GETTABLEKS                       R21 R21 K37 ["View"]
      155 DUPTABLE                         R22 K40 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      156 SETTABLEKS                       R4 R22 K12 ["LayoutOrder"]
      158 LOADK                            R24 K41 ["%*-bundle"]
      159 MOVE                             R26 R11
      160 NAMECALL                         R24 R24 K42 ["format"]
      162 CALL                             R24 2 1
      163 MOVE                             R23 R24
      164 SETTABLEKS                       R23 R22 K15 ["testId"]
      166 DUPTABLE                         R23 K45 [{"Preset", "Controls"}]
      167 SETTABLEKS                       R19 R23 K43 ["Preset"]
      169 GETUPVAL                         R24 4
      170 GETTABLEKS                       R24 R24 K21 ["createElement"]
      172 GETUPVAL                         R25 5
      173 GETTABLEKS                       R25 R25 K37 ["View"]
      175 DUPTABLE                         R26 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      176 DUPTABLE                         R27 K50 [{"Children"}]
      177 GETUPVAL                         R28 7
      178 MOVE                             R29 R17
      179 MOVE                             R30 R2
      180 ADDK                             R31 R3 K51 [1]
      181 MOVE                             R32 R5
      182 MOVE                             R33 R6
      183 MOVE                             R34 R7
      184 MOVE                             R35 R8
      185 CALL                             R28 7 1
      186 SETTABLEKS                       R28 R27 K49 ["Children"]
      188 CALL                             R24 3 1
      189 SETTABLEKS                       R24 R23 K44 ["Controls"]
      191 CALL                             R20 3 -1
      192 RETURN                           R20 -1
      193 GETTABLEKS                       R14 R0 K6 ["Type"]
      195 GETUPVAL                         R15 2
      196 GETTABLEKS                       R15 R15 K52 ["Slider"]
      198 JUMPIFNOTEQ                      R14 R15 ; [+120]
      200 GETUPVAL                         R14 1
      201 GETTABLEKS                       R14 R14 K53 ["resolveNumber"]
      203 MOVE                             R15 R10
      204 GETTABLEKS                       R16 R0 K54 ["Min"]
      206 CALL                             R14 2 2
      207 GETTABLEKS                       R17 R0 K55 ["Unit"]
      209 ORK                              R16 R17 K24 [""]
      210 NOT                              R17 R15
      211 JUMPIF                           R17 ; [+1]
      212 NOT                              R17 R12
      213 GETUPVAL                         R18 3
      214 DUPTABLE                         R19 K57 [{"LayoutOrder", "label", "isNested", "testId", "slotTestId", "input"}]
      215 SETTABLEKS                       R4 R19 K12 ["LayoutOrder"]
      217 GETTABLEKS                       R20 R0 K18 ["Label"]
      219 SETTABLEKS                       R20 R19 K13 ["label"]
      221 SETTABLEKS                       R13 R19 K14 ["isNested"]
      223 SETTABLEKS                       R11 R19 K15 ["testId"]
      225 SETTABLEKS                       R11 R19 K56 ["slotTestId"]
      227 DUPTABLE                         R20 K59 [{"Control", "Value"}]
      228 GETUPVAL                         R21 4
      229 GETTABLEKS                       R21 R21 K21 ["createElement"]
      231 GETUPVAL                         R22 5
      232 GETTABLEKS                       R22 R22 K52 ["Slider"]
      234 DUPTABLE                         R23 K63 [{["LayoutOrder"] = 1, ["size"], ["width"], ["range"], ["value"], ["step"], ["onValueChanged"], ["isDisabled"], ["testId"]}]
      235 GETUPVAL                         R24 6
      236 GETTABLEKS                       R24 R24 K32 ["XSmall"]
      238 SETTABLEKS                       R24 R23 K23 ["size"]
      240 GETIMPORT                        R24 K35 [UDim.new]
      242 LOADN                            R25 1
      243 LOADN                            R26 -50
      244 CALL                             R24 2 1
      245 SETTABLEKS                       R24 R23 K30 ["width"]
      247 GETIMPORT                        R24 K65 [NumberRange.new]
      249 GETTABLEKS                       R25 R0 K54 ["Min"]
      251 GETTABLEKS                       R26 R0 K66 ["Max"]
      253 CALL                             R24 2 1
      254 SETTABLEKS                       R24 R23 K60 ["range"]
      256 SETTABLEKS                       R14 R23 K26 ["value"]
      258 GETTABLEKS                       R24 R0 K67 ["Step"]
      260 SETTABLEKS                       R24 R23 K61 ["step"]
      262 NEWCLOSURE                       R24 P1
      263 CAPTURE                          VAL R17
      264 CAPTURE                          UPVAL U1
      265 CAPTURE                          VAL R6
      266 CAPTURE                          VAL R1
      267 SETTABLEKS                       R24 R23 K62 ["onValueChanged"]
      269 SETTABLEKS                       R17 R23 K29 ["isDisabled"]
      271 LOADK                            R25 K68 ["%*-input"]
      272 MOVE                             R27 R11
      273 NAMECALL                         R25 R25 K42 ["format"]
      275 CALL                             R25 2 1
      276 MOVE                             R24 R25
      277 SETTABLEKS                       R24 R23 K15 ["testId"]
      279 CALL                             R21 2 1
      280 SETTABLEKS                       R21 R20 K19 ["Control"]
      282 GETUPVAL                         R21 4
      283 GETTABLEKS                       R21 R21 K21 ["createElement"]
      285 GETUPVAL                         R22 5
      286 GETTABLEKS                       R22 R22 K69 ["Text"]
      288 DUPTABLE                         R23 K72 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-label-small text-align-x-right text-align-y-center", ["testId"]}]
      289 GETUPVAL                         R24 8
      290 MOVE                             R25 R14
      291 MOVE                             R26 R16
      292 GETTABLEKS                       R27 R0 K73 ["Precision"]
      294 CALL                             R24 3 1
      295 SETTABLEKS                       R24 R23 K69 ["Text"]
      297 GETIMPORT                        R24 K76 [UDim2.fromOffset]
      299 LOADN                            R25 46
      300 LOADN                            R26 24
      301 CALL                             R24 2 1
      302 SETTABLEKS                       R24 R23 K70 ["Size"]
      304 LOADK                            R25 K77 ["%*-value"]
      305 MOVE                             R27 R11
      306 NAMECALL                         R25 R25 K42 ["format"]
      308 CALL                             R25 2 1
      309 MOVE                             R24 R25
      310 SETTABLEKS                       R24 R23 K15 ["testId"]
      312 CALL                             R21 2 1
      313 SETTABLEKS                       R21 R20 K58 ["Value"]
      315 SETTABLEKS                       R20 R19 K16 ["input"]
      317 CALL                             R18 1 -1
      318 RETURN                           R18 -1
      319 GETTABLEKS                       R14 R0 K6 ["Type"]
      321 GETUPVAL                         R15 2
      322 GETTABLEKS                       R15 R15 K78 ["NumberField"]
      324 JUMPIFNOTEQ                      R14 R15 ; [+20]
      326 GETUPVAL                         R14 4
      327 GETTABLEKS                       R14 R14 K21 ["createElement"]
      329 GETUPVAL                         R15 9
      330 DUPTABLE                         R16 K84 [{"control", "path", "layoutOrder", "isNested", "runtimeValue", "onControlChanged"}]
      331 SETTABLEKS                       R0 R16 K79 ["control"]
      333 SETTABLEKS                       R1 R16 K80 ["path"]
      335 SETTABLEKS                       R4 R16 K81 ["layoutOrder"]
      337 SETTABLEKS                       R13 R16 K14 ["isNested"]
      339 SETTABLEKS                       R10 R16 K82 ["runtimeValue"]
      341 SETTABLEKS                       R6 R16 K83 ["onControlChanged"]
      343 CALL                             R14 2 -1
      344 RETURN                           R14 -1
      345 GETTABLEKS                       R14 R0 K6 ["Type"]
      347 GETUPVAL                         R15 2
      348 GETTABLEKS                       R15 R15 K85 ["Toggle"]
      350 JUMPIFNOTEQ                      R14 R15 ; [+53]
      352 GETUPVAL                         R14 1
      353 GETTABLEKS                       R14 R14 K86 ["resolveBoolean"]
      355 MOVE                             R15 R10
      356 CALL                             R14 1 2
      357 NOT                              R16 R15
      358 JUMPIF                           R16 ; [+1]
      359 NOT                              R16 R12
      360 GETUPVAL                         R17 3
      361 DUPTABLE                         R18 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      362 SETTABLEKS                       R4 R18 K12 ["LayoutOrder"]
      364 GETTABLEKS                       R19 R0 K18 ["Label"]
      366 SETTABLEKS                       R19 R18 K13 ["label"]
      368 SETTABLEKS                       R13 R18 K14 ["isNested"]
      370 SETTABLEKS                       R11 R18 K15 ["testId"]
      372 DUPTABLE                         R19 K20 [{"Control"}]
      373 GETUPVAL                         R20 4
      374 GETTABLEKS                       R20 R20 K21 ["createElement"]
      376 GETUPVAL                         R21 5
      377 GETTABLEKS                       R21 R21 K85 ["Toggle"]
      379 DUPTABLE                         R22 K89 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["isDisabled"], ["testId"]}]
      380 GETUPVAL                         R23 6
      381 GETTABLEKS                       R23 R23 K32 ["XSmall"]
      383 SETTABLEKS                       R23 R22 K23 ["size"]
      385 SETTABLEKS                       R14 R22 K87 ["isChecked"]
      387 NEWCLOSURE                       R23 P2
      388 CAPTURE                          VAL R16
      389 CAPTURE                          VAL R6
      390 CAPTURE                          VAL R1
      391 SETTABLEKS                       R23 R22 K88 ["onActivated"]
      393 SETTABLEKS                       R16 R22 K29 ["isDisabled"]
      395 SETTABLEKS                       R11 R22 K15 ["testId"]
      397 CALL                             R20 2 1
      398 SETTABLEKS                       R20 R19 K19 ["Control"]
      400 SETTABLEKS                       R19 R18 K16 ["input"]
      402 CALL                             R17 1 -1
      403 RETURN                           R17 -1
      404 GETTABLEKS                       R14 R0 K6 ["Type"]
      406 GETUPVAL                         R15 2
      407 GETTABLEKS                       R15 R15 K90 ["Section"]
      409 JUMPIFNOTEQ                      R14 R15 ; [+215]
      411 GETTABLEKS                       R15 R0 K91 ["Collapsible"]
      413 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
      415 LOADB                            R14 0 +1
      416 LOADB                            R14 1
      417 MOVE                             R15 R14
      418 JUMPIFNOT                        R15 ; [+5]
      419 GETTABLE                         R16 R7 R1
      420 JUMPIFEQKB                       R16 TRUE ; [+2]
      422 LOADB                            R15 0 +1
      423 LOADB                            R15 1
      424 GETUPVAL                         R16 4
      425 GETTABLEKS                       R16 R16 K21 ["createElement"]
      427 GETUPVAL                         R17 5
      428 GETTABLEKS                       R17 R17 K37 ["View"]
      430 DUPTABLE                         R18 K40 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      431 SETTABLEKS                       R4 R18 K12 ["LayoutOrder"]
      433 SETTABLEKS                       R11 R18 K15 ["testId"]
      435 DUPTABLE                         R19 K93 [{"Header", "Controls"}]
      436 GETUPVAL                         R20 4
      437 GETTABLEKS                       R20 R20 K21 ["createElement"]
      439 GETUPVAL                         R21 5
      440 GETTABLEKS                       R21 R21 K37 ["View"]
      442 DUPTABLE                         R22 K95 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-x-small", ["onActivated"], ["testId"]}]
      443 JUMPIFNOT                        R14 ; [+4]
      444 NEWCLOSURE                       R23 P3
      445 CAPTURE                          VAL R8
      446 CAPTURE                          VAL R1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R23
      449 SETTABLEKS                       R23 R22 K88 ["onActivated"]
      451 LOADK                            R24 K96 ["%*-header"]
      452 MOVE                             R26 R11
      453 NAMECALL                         R24 R24 K42 ["format"]
      455 CALL                             R24 2 1
      456 MOVE                             R23 R24
      457 SETTABLEKS                       R23 R22 K15 ["testId"]
      459 DUPTABLE                         R23 K98 [{"Wrapper"}]
      460 GETUPVAL                         R24 4
      461 GETTABLEKS                       R24 R24 K21 ["createElement"]
      463 GETUPVAL                         R25 5
      464 GETTABLEKS                       R25 R25 K37 ["View"]
      466 DUPTABLE                         R26 K100 [{["tag"] = "row size-full-0 auto-y padding-x-xsmall"}]
      467 DUPTABLE                         R27 K102 [{"Content"}]
      468 GETUPVAL                         R28 4
      469 GETTABLEKS                       R28 R28 K21 ["createElement"]
      471 GETUPVAL                         R29 5
      472 GETTABLEKS                       R29 R29 K37 ["View"]
      474 DUPTABLE                         R30 K103 [{"Size"}]
      475 GETIMPORT                        R31 K104 [UDim2.new]
      477 LOADN                            R32 1
      478 LOADN                            R33 0
      479 LOADN                            R34 0
      480 LOADN                            R35 24
      481 CALL                             R31 4 1
      482 SETTABLEKS                       R31 R30 K70 ["Size"]
      484 DUPTABLE                         R31 K106 [{"Chevron", "Label"}]
      485 JUMPIFNOT                        R14 ; [+68]
      486 GETUPVAL                         R32 4
      487 GETTABLEKS                       R32 R32 K21 ["createElement"]
      489 GETUPVAL                         R33 5
      490 GETTABLEKS                       R33 R33 K37 ["View"]
      492 DUPTABLE                         R34 K110 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"]}]
      493 GETIMPORT                        R35 K112 [Vector2.new]
      495 LOADN                            R36 0
      496 LOADK                            R37 K113 [0.5]
      497 CALL                             R35 2 1
      498 SETTABLEKS                       R35 R34 K107 ["AnchorPoint"]
      500 GETIMPORT                        R35 K115 [UDim2.fromScale]
      502 LOADN                            R36 0
      503 LOADK                            R37 K113 [0.5]
      504 CALL                             R35 2 1
      505 SETTABLEKS                       R35 R34 K108 ["Position"]
      507 GETIMPORT                        R35 K76 [UDim2.fromOffset]
      509 LOADN                            R36 16
      510 LOADN                            R37 24
      511 CALL                             R35 2 1
      512 SETTABLEKS                       R35 R34 K70 ["Size"]
      514 LOADK                            R36 K116 ["%*-toggle"]
      515 MOVE                             R38 R11
      516 NAMECALL                         R36 R36 K42 ["format"]
      518 CALL                             R36 2 1
      519 MOVE                             R35 R36
      520 SETTABLEKS                       R35 R34 K15 ["testId"]
      522 DUPTABLE                         R35 K118 [{"Icon"}]
      523 GETUPVAL                         R36 4
      524 GETTABLEKS                       R36 R36 K21 ["createElement"]
      526 GETUPVAL                         R37 5
      527 GETTABLEKS                       R37 R37 K117 ["Icon"]
      529 DUPTABLE                         R38 K120 [{"name", "size", "testId"}]
      530 JUMPIFNOT                        R15 ; [+2]
      531 LOADK                            R39 K121 ["caret-small-right"]
      532 JUMP                             ; [+1]
      533 LOADK                            R39 K122 ["caret-small-down"]
      534 SETTABLEKS                       R39 R38 K119 ["name"]
      536 GETUPVAL                         R39 10
      537 GETTABLEKS                       R39 R39 K123 ["Medium"]
      539 SETTABLEKS                       R39 R38 K23 ["size"]
      541 LOADK                            R40 K124 ["%*-chevron"]
      542 MOVE                             R42 R11
      543 NAMECALL                         R40 R40 K42 ["format"]
      545 CALL                             R40 2 1
      546 MOVE                             R39 R40
      547 SETTABLEKS                       R39 R38 K15 ["testId"]
      549 CALL                             R36 2 1
      550 SETTABLEKS                       R36 R35 K117 ["Icon"]
      552 CALL                             R32 3 1
      553 JUMP                             ; [+1]
      554 LOADNIL                          R32
      555 SETTABLEKS                       R32 R31 K105 ["Chevron"]
      557 GETUPVAL                         R32 4
      558 GETTABLEKS                       R32 R32 K21 ["createElement"]
      560 GETUPVAL                         R33 5
      561 GETTABLEKS                       R33 R33 K69 ["Text"]
      563 DUPTABLE                         R34 K126 [{["Text"], ["Size"], ["tag"] = "auto-none padding-left-xlarge text-no-wrap text-truncate-end text-label-small content-emphasis text-align-x-left text-align-y-center", ["testId"]}]
      564 GETTABLEKS                       R35 R0 K18 ["Label"]
      566 SETTABLEKS                       R35 R34 K69 ["Text"]
      568 GETIMPORT                        R35 K104 [UDim2.new]
      570 LOADN                            R36 1
      571 LOADN                            R37 0
      572 LOADN                            R38 0
      573 LOADN                            R39 24
      574 CALL                             R35 4 1
      575 SETTABLEKS                       R35 R34 K70 ["Size"]
      577 LOADK                            R36 K127 ["%*-label"]
      578 MOVE                             R38 R11
      579 NAMECALL                         R36 R36 K42 ["format"]
      581 CALL                             R36 2 1
      582 MOVE                             R35 R36
      583 SETTABLEKS                       R35 R34 K15 ["testId"]
      585 CALL                             R32 2 1
      586 SETTABLEKS                       R32 R31 K18 ["Label"]
      588 CALL                             R28 3 1
      589 SETTABLEKS                       R28 R27 K101 ["Content"]
      591 CALL                             R24 3 1
      592 SETTABLEKS                       R24 R23 K97 ["Wrapper"]
      594 CALL                             R20 3 1
      595 SETTABLEKS                       R20 R19 K92 ["Header"]
      597 JUMPIFNOT                        R15 ; [+2]
      598 LOADNIL                          R20
      599 JUMP                             ; [+21]
      600 GETUPVAL                         R20 4
      601 GETTABLEKS                       R20 R20 K21 ["createElement"]
      603 GETUPVAL                         R21 5
      604 GETTABLEKS                       R21 R21 K37 ["View"]
      606 DUPTABLE                         R22 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      607 DUPTABLE                         R23 K50 [{"Children"}]
      608 GETUPVAL                         R24 7
      609 GETTABLEKS                       R25 R0 K44 ["Controls"]
      611 MOVE                             R26 R2
      612 ADDK                             R27 R3 K51 [1]
      613 MOVE                             R28 R5
      614 MOVE                             R29 R6
      615 MOVE                             R30 R7
      616 MOVE                             R31 R8
      617 CALL                             R24 7 1
      618 SETTABLEKS                       R24 R23 K49 ["Children"]
      620 CALL                             R20 3 1
      621 SETTABLEKS                       R20 R19 K44 ["Controls"]
      623 CALL                             R16 3 -1
      624 RETURN                           R16 -1
      625 LOADNIL                          R14
      626 RETURN                           R14 1

PROTO_13:
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
       39 JUMPIFNOT                        R1 ; [+11]
       40 LOADK                            R12 K8 ["%*-controls"]
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R14 R14 K9 ["makeControlTestId"]
       44 MOVE                             R15 R1
       45 CALL                             R14 1 1
       46 NAMECALL                         R12 R12 K10 ["format"]
       48 CALL                             R12 2 1
       49 MOVE                             R11 R12
       50 JUMP                             ; [+1]
       51 LOADK                            R11 K11 ["simulator-controls"]
       52 SETTABLEKS                       R11 R10 K6 ["testId"]
       54 MOVE                             R11 R7
       55 CALL                             R8 3 -1
       56 RETURN                           R8 -1

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_16:
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
       77 DUPCLOSURE                       R13 K23 [PROTO_2]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R14 K24 [PROTO_3]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 DUPCLOSURE                       R15 K25 [PROTO_4]
       85 DUPCLOSURE                       R16 K26 [PROTO_7]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R11
       93 LOADNIL                          R17
       94 NEWCLOSURE                       R18 P5
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R9
      102 CAPTURE                          REF R17
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R8
      106 DUPCLOSURE                       R17 K27 [PROTO_13]
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R1
      111 NEWCLOSURE                       R19 P7
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R2
      114 CAPTURE                          REF R17
      115 CAPTURE                          VAL R4
      116 CLOSEUPVALS                      R17
      117 RETURN                           R19 1
