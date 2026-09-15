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
       72 LOADK                            R16 K31 ["%*-field"]
       73 MOVE                             R18 R9
       74 NAMECALL                         R16 R16 K32 ["format"]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K13 ["testId"]
       79 DUPTABLE                         R16 K34 [{"Input", "Unit"}]
       80 GETUPVAL                         R17 1
       81 GETTABLEKS                       R17 R17 K20 ["createElement"]
       83 GETUPVAL                         R18 3
       84 GETTABLEKS                       R18 R18 K35 ["NumberInput"]
       86 DUPTABLE                         R19 K50 [{["size"], ["label"] = "", ["controlsVariant"], ["hasControls"] = False, ["hasError"], ["value"], ["minimum"], ["maximum"], ["precision"], ["step"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["width"], ["testId"]}]
       87 GETUPVAL                         R20 4
       88 GETTABLEKS                       R20 R20 K51 ["XSmall"]
       90 SETTABLEKS                       R20 R19 K36 ["size"]
       92 GETUPVAL                         R20 5
       93 GETTABLEKS                       R20 R20 K52 ["None"]
       95 SETTABLEKS                       R20 R19 K37 ["controlsVariant"]
       97 SETTABLEKS                       R7 R19 K40 ["hasError"]
       99 SETTABLEKS                       R2 R19 K41 ["value"]
      101 GETTABLEKS                       R20 R1 K53 ["Min"]
      103 SETTABLEKS                       R20 R19 K42 ["minimum"]
      105 GETTABLEKS                       R20 R1 K54 ["Max"]
      107 SETTABLEKS                       R20 R19 K43 ["maximum"]
      109 GETTABLEKS                       R20 R1 K55 ["Precision"]
      111 SETTABLEKS                       R20 R19 K44 ["precision"]
      113 GETTABLEKS                       R20 R1 K56 ["Step"]
      115 SETTABLEKS                       R20 R19 K45 ["step"]
      117 NEWCLOSURE                       R20 P0
      118 CAPTURE                          VAL R5
      119 CAPTURE                          UPVAL U0
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R20 R19 K46 ["onChanged"]
      128 NEWCLOSURE                       R20 P1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R20 R19 K47 ["onFocusLost"]
      137 SETTABLEKS                       R5 R19 K48 ["isDisabled"]
      139 GETIMPORT                        R20 K58 [UDim.new]
      141 LOADN                            R21 1
      142 LOADN                            R22 0
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K49 ["width"]
      146 SETTABLEKS                       R9 R19 K13 ["testId"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K33 ["Input"]
      151 JUMPIFNOTEQKS                    R4 K3 [""] ; [+3]
      153 LOADNIL                          R17
      154 JUMP                             ; [+40]
      155 GETUPVAL                         R17 1
      156 GETTABLEKS                       R17 R17 K20 ["createElement"]
      158 GETUPVAL                         R18 3
      159 GETTABLEKS                       R18 R18 K59 ["Text"]
      161 DUPTABLE                         R19 K66 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["ZIndex"] = 2, ["tag"] = "auto-none text-no-wrap text-body-small content-muted text-align-x-right text-align-y-center", ["testId"]}]
      162 GETIMPORT                        R20 K68 [Vector2.new]
      164 LOADN                            R21 1
      165 LOADN                            R22 0
      166 CALL                             R20 2 1
      167 SETTABLEKS                       R20 R19 K60 ["AnchorPoint"]
      169 GETIMPORT                        R20 K30 [UDim2.new]
      171 LOADN                            R21 1
      172 LOADN                            R22 -8
      173 LOADN                            R23 0
      174 LOADN                            R24 0
      175 CALL                             R20 4 1
      176 SETTABLEKS                       R20 R19 K61 ["Position"]
      178 GETIMPORT                        R20 K70 [UDim2.fromOffset]
      180 LOADN                            R21 32
      181 LOADN                            R22 24
      182 CALL                             R20 2 1
      183 SETTABLEKS                       R20 R19 K23 ["Size"]
      185 SETTABLEKS                       R4 R19 K59 ["Text"]
      187 LOADK                            R20 K71 ["%*-unit"]
      188 MOVE                             R22 R9
      189 NAMECALL                         R20 R20 K32 ["format"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K13 ["testId"]
      194 CALL                             R17 2 1
      195 SETTABLEKS                       R17 R16 K4 ["Unit"]
      197 CALL                             R13 3 1
      198 SETTABLEKS                       R13 R12 K18 ["Control"]
      200 SETTABLEKS                       R12 R11 K14 ["input"]
      202 CALL                             R10 1 -1
      203 RETURN                           R10 -1

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
       40 JUMPIFNOTEQ                      R14 R15 ; [+151]
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
      158 LOADK                            R23 K41 ["%*-bundle"]
      159 MOVE                             R25 R11
      160 NAMECALL                         R23 R23 K42 ["format"]
      162 CALL                             R23 2 1
      163 SETTABLEKS                       R23 R22 K15 ["testId"]
      165 DUPTABLE                         R23 K45 [{"Preset", "Controls"}]
      166 SETTABLEKS                       R19 R23 K43 ["Preset"]
      168 GETUPVAL                         R24 4
      169 GETTABLEKS                       R24 R24 K21 ["createElement"]
      171 GETUPVAL                         R25 5
      172 GETTABLEKS                       R25 R25 K37 ["View"]
      174 DUPTABLE                         R26 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      175 DUPTABLE                         R27 K50 [{"Children"}]
      176 GETUPVAL                         R28 7
      177 MOVE                             R29 R17
      178 MOVE                             R30 R2
      179 ADDK                             R31 R3 K51 [1]
      180 MOVE                             R32 R5
      181 MOVE                             R33 R6
      182 MOVE                             R34 R7
      183 MOVE                             R35 R8
      184 CALL                             R28 7 1
      185 SETTABLEKS                       R28 R27 K49 ["Children"]
      187 CALL                             R24 3 1
      188 SETTABLEKS                       R24 R23 K44 ["Controls"]
      190 CALL                             R20 3 -1
      191 RETURN                           R20 -1
      192 GETTABLEKS                       R14 R0 K6 ["Type"]
      194 GETUPVAL                         R15 2
      195 GETTABLEKS                       R15 R15 K52 ["Slider"]
      197 JUMPIFNOTEQ                      R14 R15 ; [+118]
      199 GETUPVAL                         R14 1
      200 GETTABLEKS                       R14 R14 K53 ["resolveNumber"]
      202 MOVE                             R15 R10
      203 GETTABLEKS                       R16 R0 K54 ["Min"]
      205 CALL                             R14 2 2
      206 GETTABLEKS                       R17 R0 K55 ["Unit"]
      208 ORK                              R16 R17 K24 [""]
      209 NOT                              R17 R15
      210 JUMPIF                           R17 ; [+1]
      211 NOT                              R17 R12
      212 GETUPVAL                         R18 3
      213 DUPTABLE                         R19 K57 [{"LayoutOrder", "label", "isNested", "testId", "slotTestId", "input"}]
      214 SETTABLEKS                       R4 R19 K12 ["LayoutOrder"]
      216 GETTABLEKS                       R20 R0 K18 ["Label"]
      218 SETTABLEKS                       R20 R19 K13 ["label"]
      220 SETTABLEKS                       R13 R19 K14 ["isNested"]
      222 SETTABLEKS                       R11 R19 K15 ["testId"]
      224 SETTABLEKS                       R11 R19 K56 ["slotTestId"]
      226 DUPTABLE                         R20 K59 [{"Control", "Value"}]
      227 GETUPVAL                         R21 4
      228 GETTABLEKS                       R21 R21 K21 ["createElement"]
      230 GETUPVAL                         R22 5
      231 GETTABLEKS                       R22 R22 K52 ["Slider"]
      233 DUPTABLE                         R23 K63 [{["LayoutOrder"] = 1, ["size"], ["width"], ["range"], ["value"], ["step"], ["onValueChanged"], ["isDisabled"], ["testId"]}]
      234 GETUPVAL                         R24 6
      235 GETTABLEKS                       R24 R24 K32 ["XSmall"]
      237 SETTABLEKS                       R24 R23 K23 ["size"]
      239 GETIMPORT                        R24 K35 [UDim.new]
      241 LOADN                            R25 1
      242 LOADN                            R26 -50
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K30 ["width"]
      246 GETIMPORT                        R24 K65 [NumberRange.new]
      248 GETTABLEKS                       R25 R0 K54 ["Min"]
      250 GETTABLEKS                       R26 R0 K66 ["Max"]
      252 CALL                             R24 2 1
      253 SETTABLEKS                       R24 R23 K60 ["range"]
      255 SETTABLEKS                       R14 R23 K26 ["value"]
      257 GETTABLEKS                       R24 R0 K67 ["Step"]
      259 SETTABLEKS                       R24 R23 K61 ["step"]
      261 NEWCLOSURE                       R24 P1
      262 CAPTURE                          VAL R17
      263 CAPTURE                          UPVAL U1
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R1
      266 SETTABLEKS                       R24 R23 K62 ["onValueChanged"]
      268 SETTABLEKS                       R17 R23 K29 ["isDisabled"]
      270 LOADK                            R24 K68 ["%*-input"]
      271 MOVE                             R26 R11
      272 NAMECALL                         R24 R24 K42 ["format"]
      274 CALL                             R24 2 1
      275 SETTABLEKS                       R24 R23 K15 ["testId"]
      277 CALL                             R21 2 1
      278 SETTABLEKS                       R21 R20 K19 ["Control"]
      280 GETUPVAL                         R21 4
      281 GETTABLEKS                       R21 R21 K21 ["createElement"]
      283 GETUPVAL                         R22 5
      284 GETTABLEKS                       R22 R22 K69 ["Text"]
      286 DUPTABLE                         R23 K72 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-label-small text-align-x-right text-align-y-center", ["testId"]}]
      287 GETUPVAL                         R24 8
      288 MOVE                             R25 R14
      289 MOVE                             R26 R16
      290 GETTABLEKS                       R27 R0 K73 ["Precision"]
      292 CALL                             R24 3 1
      293 SETTABLEKS                       R24 R23 K69 ["Text"]
      295 GETIMPORT                        R24 K76 [UDim2.fromOffset]
      297 LOADN                            R25 46
      298 LOADN                            R26 24
      299 CALL                             R24 2 1
      300 SETTABLEKS                       R24 R23 K70 ["Size"]
      302 LOADK                            R24 K77 ["%*-value"]
      303 MOVE                             R26 R11
      304 NAMECALL                         R24 R24 K42 ["format"]
      306 CALL                             R24 2 1
      307 SETTABLEKS                       R24 R23 K15 ["testId"]
      309 CALL                             R21 2 1
      310 SETTABLEKS                       R21 R20 K58 ["Value"]
      312 SETTABLEKS                       R20 R19 K16 ["input"]
      314 CALL                             R18 1 -1
      315 RETURN                           R18 -1
      316 GETTABLEKS                       R14 R0 K6 ["Type"]
      318 GETUPVAL                         R15 2
      319 GETTABLEKS                       R15 R15 K78 ["NumberField"]
      321 JUMPIFNOTEQ                      R14 R15 ; [+20]
      323 GETUPVAL                         R14 4
      324 GETTABLEKS                       R14 R14 K21 ["createElement"]
      326 GETUPVAL                         R15 9
      327 DUPTABLE                         R16 K84 [{"control", "path", "layoutOrder", "isNested", "runtimeValue", "onControlChanged"}]
      328 SETTABLEKS                       R0 R16 K79 ["control"]
      330 SETTABLEKS                       R1 R16 K80 ["path"]
      332 SETTABLEKS                       R4 R16 K81 ["layoutOrder"]
      334 SETTABLEKS                       R13 R16 K14 ["isNested"]
      336 SETTABLEKS                       R10 R16 K82 ["runtimeValue"]
      338 SETTABLEKS                       R6 R16 K83 ["onControlChanged"]
      340 CALL                             R14 2 -1
      341 RETURN                           R14 -1
      342 GETTABLEKS                       R14 R0 K6 ["Type"]
      344 GETUPVAL                         R15 2
      345 GETTABLEKS                       R15 R15 K85 ["Toggle"]
      347 JUMPIFNOTEQ                      R14 R15 ; [+53]
      349 GETUPVAL                         R14 1
      350 GETTABLEKS                       R14 R14 K86 ["resolveBoolean"]
      352 MOVE                             R15 R10
      353 CALL                             R14 1 2
      354 NOT                              R16 R15
      355 JUMPIF                           R16 ; [+1]
      356 NOT                              R16 R12
      357 GETUPVAL                         R17 3
      358 DUPTABLE                         R18 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      359 SETTABLEKS                       R4 R18 K12 ["LayoutOrder"]
      361 GETTABLEKS                       R19 R0 K18 ["Label"]
      363 SETTABLEKS                       R19 R18 K13 ["label"]
      365 SETTABLEKS                       R13 R18 K14 ["isNested"]
      367 SETTABLEKS                       R11 R18 K15 ["testId"]
      369 DUPTABLE                         R19 K20 [{"Control"}]
      370 GETUPVAL                         R20 4
      371 GETTABLEKS                       R20 R20 K21 ["createElement"]
      373 GETUPVAL                         R21 5
      374 GETTABLEKS                       R21 R21 K85 ["Toggle"]
      376 DUPTABLE                         R22 K89 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["isDisabled"], ["testId"]}]
      377 GETUPVAL                         R23 6
      378 GETTABLEKS                       R23 R23 K32 ["XSmall"]
      380 SETTABLEKS                       R23 R22 K23 ["size"]
      382 SETTABLEKS                       R14 R22 K87 ["isChecked"]
      384 NEWCLOSURE                       R23 P2
      385 CAPTURE                          VAL R16
      386 CAPTURE                          VAL R6
      387 CAPTURE                          VAL R1
      388 SETTABLEKS                       R23 R22 K88 ["onActivated"]
      390 SETTABLEKS                       R16 R22 K29 ["isDisabled"]
      392 SETTABLEKS                       R11 R22 K15 ["testId"]
      394 CALL                             R20 2 1
      395 SETTABLEKS                       R20 R19 K19 ["Control"]
      397 SETTABLEKS                       R19 R18 K16 ["input"]
      399 CALL                             R17 1 -1
      400 RETURN                           R17 -1
      401 GETTABLEKS                       R14 R0 K6 ["Type"]
      403 GETUPVAL                         R15 2
      404 GETTABLEKS                       R15 R15 K90 ["Section"]
      406 JUMPIFNOTEQ                      R14 R15 ; [+211]
      408 GETTABLEKS                       R15 R0 K91 ["Collapsible"]
      410 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
      412 LOADB                            R14 0 +1
      413 LOADB                            R14 1
      414 MOVE                             R15 R14
      415 JUMPIFNOT                        R15 ; [+5]
      416 GETTABLE                         R16 R7 R1
      417 JUMPIFEQKB                       R16 TRUE ; [+2]
      419 LOADB                            R15 0 +1
      420 LOADB                            R15 1
      421 GETUPVAL                         R16 4
      422 GETTABLEKS                       R16 R16 K21 ["createElement"]
      424 GETUPVAL                         R17 5
      425 GETTABLEKS                       R17 R17 K37 ["View"]
      427 DUPTABLE                         R18 K40 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      428 SETTABLEKS                       R4 R18 K12 ["LayoutOrder"]
      430 SETTABLEKS                       R11 R18 K15 ["testId"]
      432 DUPTABLE                         R19 K93 [{"Header", "Controls"}]
      433 GETUPVAL                         R20 4
      434 GETTABLEKS                       R20 R20 K21 ["createElement"]
      436 GETUPVAL                         R21 5
      437 GETTABLEKS                       R21 R21 K37 ["View"]
      439 DUPTABLE                         R22 K95 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-x-small", ["onActivated"], ["testId"]}]
      440 JUMPIFNOT                        R14 ; [+4]
      441 NEWCLOSURE                       R23 P3
      442 CAPTURE                          VAL R8
      443 CAPTURE                          VAL R1
      444 JUMP                             ; [+1]
      445 LOADNIL                          R23
      446 SETTABLEKS                       R23 R22 K88 ["onActivated"]
      448 LOADK                            R23 K96 ["%*-header"]
      449 MOVE                             R25 R11
      450 NAMECALL                         R23 R23 K42 ["format"]
      452 CALL                             R23 2 1
      453 SETTABLEKS                       R23 R22 K15 ["testId"]
      455 DUPTABLE                         R23 K98 [{"Wrapper"}]
      456 GETUPVAL                         R24 4
      457 GETTABLEKS                       R24 R24 K21 ["createElement"]
      459 GETUPVAL                         R25 5
      460 GETTABLEKS                       R25 R25 K37 ["View"]
      462 DUPTABLE                         R26 K100 [{["tag"] = "row size-full-0 auto-y padding-x-xsmall"}]
      463 DUPTABLE                         R27 K102 [{"Content"}]
      464 GETUPVAL                         R28 4
      465 GETTABLEKS                       R28 R28 K21 ["createElement"]
      467 GETUPVAL                         R29 5
      468 GETTABLEKS                       R29 R29 K37 ["View"]
      470 DUPTABLE                         R30 K103 [{"Size"}]
      471 GETIMPORT                        R31 K104 [UDim2.new]
      473 LOADN                            R32 1
      474 LOADN                            R33 0
      475 LOADN                            R34 0
      476 LOADN                            R35 24
      477 CALL                             R31 4 1
      478 SETTABLEKS                       R31 R30 K70 ["Size"]
      480 DUPTABLE                         R31 K106 [{"Chevron", "Label"}]
      481 JUMPIFNOT                        R14 ; [+66]
      482 GETUPVAL                         R32 4
      483 GETTABLEKS                       R32 R32 K21 ["createElement"]
      485 GETUPVAL                         R33 5
      486 GETTABLEKS                       R33 R33 K37 ["View"]
      488 DUPTABLE                         R34 K110 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"]}]
      489 GETIMPORT                        R35 K112 [Vector2.new]
      491 LOADN                            R36 0
      492 LOADK                            R37 K113 [0.5]
      493 CALL                             R35 2 1
      494 SETTABLEKS                       R35 R34 K107 ["AnchorPoint"]
      496 GETIMPORT                        R35 K115 [UDim2.fromScale]
      498 LOADN                            R36 0
      499 LOADK                            R37 K113 [0.5]
      500 CALL                             R35 2 1
      501 SETTABLEKS                       R35 R34 K108 ["Position"]
      503 GETIMPORT                        R35 K76 [UDim2.fromOffset]
      505 LOADN                            R36 16
      506 LOADN                            R37 24
      507 CALL                             R35 2 1
      508 SETTABLEKS                       R35 R34 K70 ["Size"]
      510 LOADK                            R35 K116 ["%*-toggle"]
      511 MOVE                             R37 R11
      512 NAMECALL                         R35 R35 K42 ["format"]
      514 CALL                             R35 2 1
      515 SETTABLEKS                       R35 R34 K15 ["testId"]
      517 DUPTABLE                         R35 K118 [{"Icon"}]
      518 GETUPVAL                         R36 4
      519 GETTABLEKS                       R36 R36 K21 ["createElement"]
      521 GETUPVAL                         R37 5
      522 GETTABLEKS                       R37 R37 K117 ["Icon"]
      524 DUPTABLE                         R38 K120 [{"name", "size", "testId"}]
      525 JUMPIFNOT                        R15 ; [+2]
      526 LOADK                            R39 K121 ["caret-small-right"]
      527 JUMP                             ; [+1]
      528 LOADK                            R39 K122 ["caret-small-down"]
      529 SETTABLEKS                       R39 R38 K119 ["name"]
      531 GETUPVAL                         R39 10
      532 GETTABLEKS                       R39 R39 K123 ["Medium"]
      534 SETTABLEKS                       R39 R38 K23 ["size"]
      536 LOADK                            R39 K124 ["%*-chevron"]
      537 MOVE                             R41 R11
      538 NAMECALL                         R39 R39 K42 ["format"]
      540 CALL                             R39 2 1
      541 SETTABLEKS                       R39 R38 K15 ["testId"]
      543 CALL                             R36 2 1
      544 SETTABLEKS                       R36 R35 K117 ["Icon"]
      546 CALL                             R32 3 1
      547 JUMP                             ; [+1]
      548 LOADNIL                          R32
      549 SETTABLEKS                       R32 R31 K105 ["Chevron"]
      551 GETUPVAL                         R32 4
      552 GETTABLEKS                       R32 R32 K21 ["createElement"]
      554 GETUPVAL                         R33 5
      555 GETTABLEKS                       R33 R33 K69 ["Text"]
      557 DUPTABLE                         R34 K126 [{["Text"], ["Size"], ["tag"] = "auto-none padding-left-xlarge text-no-wrap text-truncate-end text-label-small content-emphasis text-align-x-left text-align-y-center", ["testId"]}]
      558 GETTABLEKS                       R35 R0 K18 ["Label"]
      560 SETTABLEKS                       R35 R34 K69 ["Text"]
      562 GETIMPORT                        R35 K104 [UDim2.new]
      564 LOADN                            R36 1
      565 LOADN                            R37 0
      566 LOADN                            R38 0
      567 LOADN                            R39 24
      568 CALL                             R35 4 1
      569 SETTABLEKS                       R35 R34 K70 ["Size"]
      571 LOADK                            R35 K127 ["%*-label"]
      572 MOVE                             R37 R11
      573 NAMECALL                         R35 R35 K42 ["format"]
      575 CALL                             R35 2 1
      576 SETTABLEKS                       R35 R34 K15 ["testId"]
      578 CALL                             R32 2 1
      579 SETTABLEKS                       R32 R31 K18 ["Label"]
      581 CALL                             R28 3 1
      582 SETTABLEKS                       R28 R27 K101 ["Content"]
      584 CALL                             R24 3 1
      585 SETTABLEKS                       R24 R23 K97 ["Wrapper"]
      587 CALL                             R20 3 1
      588 SETTABLEKS                       R20 R19 K92 ["Header"]
      590 JUMPIFNOT                        R15 ; [+2]
      591 LOADNIL                          R20
      592 JUMP                             ; [+21]
      593 GETUPVAL                         R20 4
      594 GETTABLEKS                       R20 R20 K21 ["createElement"]
      596 GETUPVAL                         R21 5
      597 GETTABLEKS                       R21 R21 K37 ["View"]
      599 DUPTABLE                         R22 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      600 DUPTABLE                         R23 K50 [{"Children"}]
      601 GETUPVAL                         R24 7
      602 GETTABLEKS                       R25 R0 K44 ["Controls"]
      604 MOVE                             R26 R2
      605 ADDK                             R27 R3 K51 [1]
      606 MOVE                             R28 R5
      607 MOVE                             R29 R6
      608 MOVE                             R30 R7
      609 MOVE                             R31 R8
      610 CALL                             R24 7 1
      611 SETTABLEKS                       R24 R23 K49 ["Children"]
      613 CALL                             R20 3 1
      614 SETTABLEKS                       R20 R19 K44 ["Controls"]
      616 CALL                             R16 3 -1
      617 RETURN                           R16 -1
      618 LOADNIL                          R14
      619 RETURN                           R14 1

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
