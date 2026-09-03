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

PROTO_5:
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
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 SETTABLE                         R0 R2 R3
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["FocusLost"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 5
       25 JUMPIFNOTEQ                      R0 R2 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R3 3
       30 GETUPVAL                         R4 4
       31 LOADNIL                          R5
       32 SETTABLE                         R5 R3 R4
       33 MOVE                             R3 R2
       34 GETUPVAL                         R4 4
       35 MOVE                             R5 R0
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R1 2
        8 JUMPIF                           R1 ; [+40]
        9 JUMPIFEQKNIL                     R0 ; [+39]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K0 ["Min"]
       15 JUMPIFEQKNIL                     R2 ; [+11]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K0 ["Min"]
       20 FASTCALL2                        MATH_MAX R1 R4 ; [+4]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K3 [math.max]
       25 CALL                             R2 2 1
       26 MOVE                             R1 R2
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K4 ["Max"]
       30 JUMPIFEQKNIL                     R2 ; [+11]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K4 ["Max"]
       35 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K6 [math.min]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 GETUPVAL                         R2 4
       43 JUMPIFEQ                         R1 R2 ; [+5]
       45 GETUPVAL                         R2 5
       46 GETUPVAL                         R3 1
       47 MOVE                             R4 R1
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R10 R10 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R10 0 1
        4 JUMPIF                           R10 ; [+2]
        5 LOADNIL                          R10
        6 RETURN                           R10 1
        7 GETTABLEKS                       R12 R5 K1 ["values"]
        9 FASTCALL1                        TYPE R12 ; [+2]
       10 GETIMPORT                        R11 K3 [type]
       12 CALL                             R11 1 1
       13 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+4]
       15 GETTABLEKS                       R10 R5 K1 ["values"]
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R10 0 0
       20 GETTABLE                         R11 R10 R1
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K5 ["makeControlTestId"]
       24 MOVE                             R13 R1
       25 CALL                             R12 1 1
       26 JUMPIFNOTEQKNIL                  R6 ; [+2]
       28 LOADB                            R13 0 +1
       29 LOADB                            R13 1
       30 LOADN                            R15 0
       31 JUMPIFLT                         R15 R3 ; [+2]
       33 LOADB                            R14 0 +1
       34 LOADB                            R14 1
       35 GETTABLEKS                       R15 R0 K6 ["Type"]
       37 GETUPVAL                         R16 2
       38 GETTABLEKS                       R16 R16 K7 ["Dropdown"]
       40 JUMPIFNOTEQ                      R15 R16 ; [+153]
       42 GETTABLEKS                       R16 R5 K8 ["dropdownDisplayTextByValue"]
       44 JUMPIFEQKNIL                     R16 ; [+5]
       46 GETTABLEKS                       R16 R5 K8 ["dropdownDisplayTextByValue"]
       48 GETTABLE                         R15 R16 R1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R15
       51 GETUPVAL                         R16 1
       52 GETTABLEKS                       R16 R16 K9 ["makeDropdownItems"]
       54 MOVE                             R17 R0
       55 MOVE                             R18 R1
       56 MOVE                             R19 R11
       57 MOVE                             R20 R15
       58 CALL                             R16 4 1
       59 GETTABLEKS                       R18 R16 K10 ["hasValue"]
       61 NOT                              R17 R18
       62 JUMPIF                           R17 ; [+1]
       63 NOT                              R17 R13
       64 GETTABLEKS                       R18 R0 K11 ["BundledControls"]
       66 LOADB                            R19 0
       67 JUMPIFEQKNIL                     R18 ; [+7]
       69 LENGTH                           R20 R18
       70 LOADN                            R21 0
       71 JUMPIFLT                         R21 R20 ; [+2]
       73 LOADB                            R19 0 +1
       74 LOADB                            R19 1
       75 GETUPVAL                         R20 3
       76 DUPTABLE                         R21 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
       77 JUMPIFNOT                        R19 ; [+2]
       78 LOADN                            R22 1
       79 JUMP                             ; [+1]
       80 MOVE                             R22 R4
       81 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
       83 GETTABLEKS                       R22 R0 K18 ["Label"]
       85 SETTABLEKS                       R22 R21 K13 ["label"]
       87 OR                               R22 R14 R19
       88 SETTABLEKS                       R22 R21 K14 ["isNested"]
       90 SETTABLEKS                       R12 R21 K15 ["testId"]
       92 DUPTABLE                         R22 K20 [{"Control"}]
       93 GETUPVAL                         R23 4
       94 GETTABLEKS                       R23 R23 K21 ["createElement"]
       96 GETUPVAL                         R24 5
       97 GETTABLEKS                       R24 R24 K7 ["Dropdown"]
       99 GETTABLEKS                       R24 R24 K22 ["Root"]
      101 DUPTABLE                         R25 K31 [{["size"], ["label"] = "", ["items"], ["value"], ["placeholder"], ["onItemChanged"], ["isDisabled"], ["width"], ["testId"]}]
      102 GETUPVAL                         R26 6
      103 GETTABLEKS                       R26 R26 K32 ["XSmall"]
      105 SETTABLEKS                       R26 R25 K23 ["size"]
      107 GETTABLEKS                       R26 R16 K25 ["items"]
      109 SETTABLEKS                       R26 R25 K25 ["items"]
      111 GETTABLEKS                       R26 R16 K26 ["value"]
      113 SETTABLEKS                       R26 R25 K26 ["value"]
      115 GETTABLEKS                       R26 R16 K27 ["placeholder"]
      117 SETTABLEKS                       R26 R25 K27 ["placeholder"]
      119 NEWCLOSURE                       R26 P0
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R26 R25 K28 ["onItemChanged"]
      126 SETTABLEKS                       R17 R25 K29 ["isDisabled"]
      128 GETIMPORT                        R26 K35 [UDim.new]
      130 LOADN                            R27 1
      131 LOADN                            R28 0
      132 CALL                             R26 2 1
      133 SETTABLEKS                       R26 R25 K30 ["width"]
      135 SETTABLEKS                       R12 R25 K15 ["testId"]
      137 CALL                             R23 2 1
      138 SETTABLEKS                       R23 R22 K19 ["Control"]
      140 SETTABLEKS                       R22 R21 K16 ["input"]
      142 CALL                             R20 1 1
      143 JUMPIFEQKNIL                     R18 ; [+4]
      145 LENGTH                           R21 R18
      146 JUMPIFNOTEQKN                    R21 K36 [0] ; [+2]
      148 RETURN                           R20 1
      149 GETUPVAL                         R21 4
      150 GETTABLEKS                       R21 R21 K21 ["createElement"]
      152 GETUPVAL                         R22 5
      153 GETTABLEKS                       R22 R22 K37 ["View"]
      155 DUPTABLE                         R23 K40 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      156 SETTABLEKS                       R4 R23 K12 ["LayoutOrder"]
      158 LOADK                            R25 K41 ["%*-bundle"]
      159 MOVE                             R27 R12
      160 NAMECALL                         R25 R25 K42 ["format"]
      162 CALL                             R25 2 1
      163 MOVE                             R24 R25
      164 SETTABLEKS                       R24 R23 K15 ["testId"]
      166 DUPTABLE                         R24 K45 [{"Preset", "Controls"}]
      167 SETTABLEKS                       R20 R24 K43 ["Preset"]
      169 GETUPVAL                         R25 4
      170 GETTABLEKS                       R25 R25 K21 ["createElement"]
      172 GETUPVAL                         R26 5
      173 GETTABLEKS                       R26 R26 K37 ["View"]
      175 DUPTABLE                         R27 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      176 DUPTABLE                         R28 K50 [{"Children"}]
      177 GETUPVAL                         R29 7
      178 MOVE                             R30 R18
      179 MOVE                             R31 R2
      180 ADDK                             R32 R3 K51 [1]
      181 MOVE                             R33 R5
      182 MOVE                             R34 R6
      183 MOVE                             R35 R7
      184 MOVE                             R36 R8
      185 MOVE                             R37 R9
      186 CALL                             R29 8 1
      187 SETTABLEKS                       R29 R28 K49 ["Children"]
      189 CALL                             R25 3 1
      190 SETTABLEKS                       R25 R24 K44 ["Controls"]
      192 CALL                             R21 3 -1
      193 RETURN                           R21 -1
      194 GETTABLEKS                       R15 R0 K6 ["Type"]
      196 GETUPVAL                         R16 2
      197 GETTABLEKS                       R16 R16 K52 ["Slider"]
      199 JUMPIFNOTEQ                      R15 R16 ; [+120]
      201 GETUPVAL                         R15 1
      202 GETTABLEKS                       R15 R15 K53 ["resolveNumber"]
      204 MOVE                             R16 R11
      205 GETTABLEKS                       R17 R0 K54 ["Min"]
      207 CALL                             R15 2 2
      208 GETTABLEKS                       R18 R0 K55 ["Unit"]
      210 ORK                              R17 R18 K24 [""]
      211 NOT                              R18 R16
      212 JUMPIF                           R18 ; [+1]
      213 NOT                              R18 R13
      214 GETUPVAL                         R19 3
      215 DUPTABLE                         R20 K57 [{"LayoutOrder", "label", "isNested", "testId", "slotTestId", "input"}]
      216 SETTABLEKS                       R4 R20 K12 ["LayoutOrder"]
      218 GETTABLEKS                       R21 R0 K18 ["Label"]
      220 SETTABLEKS                       R21 R20 K13 ["label"]
      222 SETTABLEKS                       R14 R20 K14 ["isNested"]
      224 SETTABLEKS                       R12 R20 K15 ["testId"]
      226 SETTABLEKS                       R12 R20 K56 ["slotTestId"]
      228 DUPTABLE                         R21 K59 [{"Control", "Value"}]
      229 GETUPVAL                         R22 4
      230 GETTABLEKS                       R22 R22 K21 ["createElement"]
      232 GETUPVAL                         R23 5
      233 GETTABLEKS                       R23 R23 K52 ["Slider"]
      235 DUPTABLE                         R24 K63 [{["LayoutOrder"] = 1, ["size"], ["width"], ["range"], ["value"], ["step"], ["onValueChanged"], ["isDisabled"], ["testId"]}]
      236 GETUPVAL                         R25 6
      237 GETTABLEKS                       R25 R25 K32 ["XSmall"]
      239 SETTABLEKS                       R25 R24 K23 ["size"]
      241 GETIMPORT                        R25 K35 [UDim.new]
      243 LOADN                            R26 1
      244 LOADN                            R27 -50
      245 CALL                             R25 2 1
      246 SETTABLEKS                       R25 R24 K30 ["width"]
      248 GETIMPORT                        R25 K65 [NumberRange.new]
      250 GETTABLEKS                       R26 R0 K54 ["Min"]
      252 GETTABLEKS                       R27 R0 K66 ["Max"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K60 ["range"]
      257 SETTABLEKS                       R15 R24 K26 ["value"]
      259 GETTABLEKS                       R25 R0 K67 ["Step"]
      261 SETTABLEKS                       R25 R24 K61 ["step"]
      263 NEWCLOSURE                       R25 P1
      264 CAPTURE                          VAL R18
      265 CAPTURE                          UPVAL U1
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R1
      268 SETTABLEKS                       R25 R24 K62 ["onValueChanged"]
      270 SETTABLEKS                       R18 R24 K29 ["isDisabled"]
      272 LOADK                            R26 K68 ["%*-input"]
      273 MOVE                             R28 R12
      274 NAMECALL                         R26 R26 K42 ["format"]
      276 CALL                             R26 2 1
      277 MOVE                             R25 R26
      278 SETTABLEKS                       R25 R24 K15 ["testId"]
      280 CALL                             R22 2 1
      281 SETTABLEKS                       R22 R21 K19 ["Control"]
      283 GETUPVAL                         R22 4
      284 GETTABLEKS                       R22 R22 K21 ["createElement"]
      286 GETUPVAL                         R23 5
      287 GETTABLEKS                       R23 R23 K69 ["Text"]
      289 DUPTABLE                         R24 K72 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-label-small text-align-x-right text-align-y-center", ["testId"]}]
      290 GETUPVAL                         R25 8
      291 MOVE                             R26 R15
      292 MOVE                             R27 R17
      293 GETTABLEKS                       R28 R0 K73 ["Precision"]
      295 CALL                             R25 3 1
      296 SETTABLEKS                       R25 R24 K69 ["Text"]
      298 GETIMPORT                        R25 K76 [UDim2.fromOffset]
      300 LOADN                            R26 46
      301 LOADN                            R27 24
      302 CALL                             R25 2 1
      303 SETTABLEKS                       R25 R24 K70 ["Size"]
      305 LOADK                            R26 K77 ["%*-value"]
      306 MOVE                             R28 R12
      307 NAMECALL                         R26 R26 K42 ["format"]
      309 CALL                             R26 2 1
      310 MOVE                             R25 R26
      311 SETTABLEKS                       R25 R24 K15 ["testId"]
      313 CALL                             R22 2 1
      314 SETTABLEKS                       R22 R21 K58 ["Value"]
      316 SETTABLEKS                       R21 R20 K16 ["input"]
      318 CALL                             R19 1 -1
      319 RETURN                           R19 -1
      320 GETTABLEKS                       R15 R0 K6 ["Type"]
      322 GETUPVAL                         R16 2
      323 GETTABLEKS                       R16 R16 K78 ["NumberField"]
      325 JUMPIFNOTEQ                      R15 R16 ; [+176]
      327 GETUPVAL                         R15 1
      328 GETTABLEKS                       R15 R15 K53 ["resolveNumber"]
      330 MOVE                             R16 R11
      331 LOADN                            R17 0
      332 CALL                             R15 2 2
      333 GETTABLEKS                       R18 R0 K55 ["Unit"]
      335 ORK                              R17 R18 K24 [""]
      336 NOT                              R18 R16
      337 JUMPIF                           R18 ; [+1]
      338 NOT                              R18 R13
      339 GETUPVAL                         R19 3
      340 DUPTABLE                         R20 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      341 SETTABLEKS                       R4 R20 K12 ["LayoutOrder"]
      343 GETTABLEKS                       R21 R0 K18 ["Label"]
      345 SETTABLEKS                       R21 R20 K13 ["label"]
      347 SETTABLEKS                       R14 R20 K14 ["isNested"]
      349 SETTABLEKS                       R12 R20 K15 ["testId"]
      351 DUPTABLE                         R21 K20 [{"Control"}]
      352 GETUPVAL                         R22 4
      353 GETTABLEKS                       R22 R22 K21 ["createElement"]
      355 GETUPVAL                         R23 5
      356 GETTABLEKS                       R23 R23 K37 ["View"]
      358 DUPTABLE                         R24 K80 [{"backgroundStyle", "Size", "testId"}]
      359 DUPTABLE                         R25 K82 [{["Transparency"] = 1}]
      360 SETTABLEKS                       R25 R24 K79 ["backgroundStyle"]
      362 GETIMPORT                        R25 K83 [UDim2.new]
      364 LOADN                            R26 1
      365 LOADN                            R27 0
      366 LOADN                            R28 0
      367 LOADN                            R29 24
      368 CALL                             R25 4 1
      369 SETTABLEKS                       R25 R24 K70 ["Size"]
      371 LOADK                            R26 K84 ["%*-field"]
      372 MOVE                             R28 R12
      373 NAMECALL                         R26 R26 K42 ["format"]
      375 CALL                             R26 2 1
      376 MOVE                             R25 R26
      377 SETTABLEKS                       R25 R24 K15 ["testId"]
      379 DUPTABLE                         R25 K86 [{"Input", "Unit"}]
      380 GETUPVAL                         R26 4
      381 GETTABLEKS                       R26 R26 K21 ["createElement"]
      383 GETUPVAL                         R27 5
      384 GETTABLEKS                       R27 R27 K87 ["NumberInput"]
      386 DUPTABLE                         R28 K96 [{["size"], ["label"] = "", ["controlsVariant"], ["hasControls"] = False, ["value"], ["minimum"], ["maximum"], ["precision"], ["step"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["width"], ["testId"]}]
      387 GETUPVAL                         R29 6
      388 GETTABLEKS                       R29 R29 K32 ["XSmall"]
      390 SETTABLEKS                       R29 R28 K23 ["size"]
      392 GETUPVAL                         R29 9
      393 GETTABLEKS                       R29 R29 K97 ["None"]
      395 SETTABLEKS                       R29 R28 K88 ["controlsVariant"]
      397 SETTABLEKS                       R15 R28 K26 ["value"]
      399 GETTABLEKS                       R29 R0 K54 ["Min"]
      401 SETTABLEKS                       R29 R28 K91 ["minimum"]
      403 GETTABLEKS                       R29 R0 K66 ["Max"]
      405 SETTABLEKS                       R29 R28 K92 ["maximum"]
      407 GETTABLEKS                       R29 R0 K73 ["Precision"]
      409 SETTABLEKS                       R29 R28 K93 ["precision"]
      411 GETTABLEKS                       R29 R0 K67 ["Step"]
      413 SETTABLEKS                       R29 R28 K61 ["step"]
      415 NEWCLOSURE                       R29 P2
      416 CAPTURE                          VAL R18
      417 CAPTURE                          UPVAL U1
      418 CAPTURE                          UPVAL U10
      419 CAPTURE                          VAL R9
      420 CAPTURE                          VAL R1
      421 CAPTURE                          VAL R15
      422 CAPTURE                          VAL R6
      423 SETTABLEKS                       R29 R28 K94 ["onChanged"]
      425 NEWCLOSURE                       R29 P3
      426 CAPTURE                          VAL R9
      427 CAPTURE                          VAL R1
      428 CAPTURE                          VAL R18
      429 CAPTURE                          VAL R0
      430 CAPTURE                          VAL R15
      431 CAPTURE                          VAL R6
      432 SETTABLEKS                       R29 R28 K95 ["onFocusLost"]
      434 SETTABLEKS                       R18 R28 K29 ["isDisabled"]
      436 GETIMPORT                        R29 K35 [UDim.new]
      438 LOADN                            R30 1
      439 LOADN                            R31 0
      440 CALL                             R29 2 1
      441 SETTABLEKS                       R29 R28 K30 ["width"]
      443 SETTABLEKS                       R12 R28 K15 ["testId"]
      445 CALL                             R26 2 1
      446 SETTABLEKS                       R26 R25 K85 ["Input"]
      448 JUMPIFNOTEQKS                    R17 K24 [""] ; [+3]
      450 LOADNIL                          R26
      451 JUMP                             ; [+41]
      452 GETUPVAL                         R26 4
      453 GETTABLEKS                       R26 R26 K21 ["createElement"]
      455 GETUPVAL                         R27 5
      456 GETTABLEKS                       R27 R27 K69 ["Text"]
      458 DUPTABLE                         R28 K102 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["ZIndex"] = 2, ["tag"] = "auto-none text-no-wrap text-body-small content-muted text-align-x-right text-align-y-center", ["testId"]}]
      459 GETIMPORT                        R29 K104 [Vector2.new]
      461 LOADN                            R30 1
      462 LOADN                            R31 0
      463 CALL                             R29 2 1
      464 SETTABLEKS                       R29 R28 K98 ["AnchorPoint"]
      466 GETIMPORT                        R29 K83 [UDim2.new]
      468 LOADN                            R30 1
      469 LOADN                            R31 -8
      470 LOADN                            R32 0
      471 LOADN                            R33 0
      472 CALL                             R29 4 1
      473 SETTABLEKS                       R29 R28 K99 ["Position"]
      475 GETIMPORT                        R29 K76 [UDim2.fromOffset]
      477 LOADN                            R30 32
      478 LOADN                            R31 24
      479 CALL                             R29 2 1
      480 SETTABLEKS                       R29 R28 K70 ["Size"]
      482 SETTABLEKS                       R17 R28 K69 ["Text"]
      484 LOADK                            R30 K105 ["%*-unit"]
      485 MOVE                             R32 R12
      486 NAMECALL                         R30 R30 K42 ["format"]
      488 CALL                             R30 2 1
      489 MOVE                             R29 R30
      490 SETTABLEKS                       R29 R28 K15 ["testId"]
      492 CALL                             R26 2 1
      493 SETTABLEKS                       R26 R25 K55 ["Unit"]
      495 CALL                             R22 3 1
      496 SETTABLEKS                       R22 R21 K19 ["Control"]
      498 SETTABLEKS                       R21 R20 K16 ["input"]
      500 CALL                             R19 1 -1
      501 RETURN                           R19 -1
      502 GETTABLEKS                       R15 R0 K6 ["Type"]
      504 GETUPVAL                         R16 2
      505 GETTABLEKS                       R16 R16 K106 ["Toggle"]
      507 JUMPIFNOTEQ                      R15 R16 ; [+53]
      509 GETUPVAL                         R15 1
      510 GETTABLEKS                       R15 R15 K107 ["resolveBoolean"]
      512 MOVE                             R16 R11
      513 CALL                             R15 1 2
      514 NOT                              R17 R16
      515 JUMPIF                           R17 ; [+1]
      516 NOT                              R17 R13
      517 GETUPVAL                         R18 3
      518 DUPTABLE                         R19 K17 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      519 SETTABLEKS                       R4 R19 K12 ["LayoutOrder"]
      521 GETTABLEKS                       R20 R0 K18 ["Label"]
      523 SETTABLEKS                       R20 R19 K13 ["label"]
      525 SETTABLEKS                       R14 R19 K14 ["isNested"]
      527 SETTABLEKS                       R12 R19 K15 ["testId"]
      529 DUPTABLE                         R20 K20 [{"Control"}]
      530 GETUPVAL                         R21 4
      531 GETTABLEKS                       R21 R21 K21 ["createElement"]
      533 GETUPVAL                         R22 5
      534 GETTABLEKS                       R22 R22 K106 ["Toggle"]
      536 DUPTABLE                         R23 K110 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["isDisabled"], ["testId"]}]
      537 GETUPVAL                         R24 6
      538 GETTABLEKS                       R24 R24 K32 ["XSmall"]
      540 SETTABLEKS                       R24 R23 K23 ["size"]
      542 SETTABLEKS                       R15 R23 K108 ["isChecked"]
      544 NEWCLOSURE                       R24 P4
      545 CAPTURE                          VAL R17
      546 CAPTURE                          VAL R6
      547 CAPTURE                          VAL R1
      548 SETTABLEKS                       R24 R23 K109 ["onActivated"]
      550 SETTABLEKS                       R17 R23 K29 ["isDisabled"]
      552 SETTABLEKS                       R12 R23 K15 ["testId"]
      554 CALL                             R21 2 1
      555 SETTABLEKS                       R21 R20 K19 ["Control"]
      557 SETTABLEKS                       R20 R19 K16 ["input"]
      559 CALL                             R18 1 -1
      560 RETURN                           R18 -1
      561 GETTABLEKS                       R15 R0 K6 ["Type"]
      563 GETUPVAL                         R16 2
      564 GETTABLEKS                       R16 R16 K111 ["Section"]
      566 JUMPIFNOTEQ                      R15 R16 ; [+216]
      568 GETTABLEKS                       R16 R0 K112 ["Collapsible"]
      570 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      572 LOADB                            R15 0 +1
      573 LOADB                            R15 1
      574 MOVE                             R16 R15
      575 JUMPIFNOT                        R16 ; [+5]
      576 GETTABLE                         R17 R7 R1
      577 JUMPIFEQKB                       R17 TRUE ; [+2]
      579 LOADB                            R16 0 +1
      580 LOADB                            R16 1
      581 GETUPVAL                         R17 4
      582 GETTABLEKS                       R17 R17 K21 ["createElement"]
      584 GETUPVAL                         R18 5
      585 GETTABLEKS                       R18 R18 K37 ["View"]
      587 DUPTABLE                         R19 K40 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      588 SETTABLEKS                       R4 R19 K12 ["LayoutOrder"]
      590 SETTABLEKS                       R12 R19 K15 ["testId"]
      592 DUPTABLE                         R20 K114 [{"Header", "Controls"}]
      593 GETUPVAL                         R21 4
      594 GETTABLEKS                       R21 R21 K21 ["createElement"]
      596 GETUPVAL                         R22 5
      597 GETTABLEKS                       R22 R22 K37 ["View"]
      599 DUPTABLE                         R23 K116 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-x-small", ["onActivated"], ["testId"]}]
      600 JUMPIFNOT                        R15 ; [+4]
      601 NEWCLOSURE                       R24 P5
      602 CAPTURE                          VAL R8
      603 CAPTURE                          VAL R1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R24
      606 SETTABLEKS                       R24 R23 K109 ["onActivated"]
      608 LOADK                            R25 K117 ["%*-header"]
      609 MOVE                             R27 R12
      610 NAMECALL                         R25 R25 K42 ["format"]
      612 CALL                             R25 2 1
      613 MOVE                             R24 R25
      614 SETTABLEKS                       R24 R23 K15 ["testId"]
      616 DUPTABLE                         R24 K119 [{"Wrapper"}]
      617 GETUPVAL                         R25 4
      618 GETTABLEKS                       R25 R25 K21 ["createElement"]
      620 GETUPVAL                         R26 5
      621 GETTABLEKS                       R26 R26 K37 ["View"]
      623 DUPTABLE                         R27 K121 [{["tag"] = "row size-full-0 auto-y padding-x-xsmall"}]
      624 DUPTABLE                         R28 K123 [{"Content"}]
      625 GETUPVAL                         R29 4
      626 GETTABLEKS                       R29 R29 K21 ["createElement"]
      628 GETUPVAL                         R30 5
      629 GETTABLEKS                       R30 R30 K37 ["View"]
      631 DUPTABLE                         R31 K124 [{"Size"}]
      632 GETIMPORT                        R32 K83 [UDim2.new]
      634 LOADN                            R33 1
      635 LOADN                            R34 0
      636 LOADN                            R35 0
      637 LOADN                            R36 24
      638 CALL                             R32 4 1
      639 SETTABLEKS                       R32 R31 K70 ["Size"]
      641 DUPTABLE                         R32 K126 [{"Chevron", "Label"}]
      642 JUMPIFNOT                        R15 ; [+68]
      643 GETUPVAL                         R33 4
      644 GETTABLEKS                       R33 R33 K21 ["createElement"]
      646 GETUPVAL                         R34 5
      647 GETTABLEKS                       R34 R34 K37 ["View"]
      649 DUPTABLE                         R35 K128 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"]}]
      650 GETIMPORT                        R36 K104 [Vector2.new]
      652 LOADN                            R37 0
      653 LOADK                            R38 K129 [0.5]
      654 CALL                             R36 2 1
      655 SETTABLEKS                       R36 R35 K98 ["AnchorPoint"]
      657 GETIMPORT                        R36 K131 [UDim2.fromScale]
      659 LOADN                            R37 0
      660 LOADK                            R38 K129 [0.5]
      661 CALL                             R36 2 1
      662 SETTABLEKS                       R36 R35 K99 ["Position"]
      664 GETIMPORT                        R36 K76 [UDim2.fromOffset]
      666 LOADN                            R37 16
      667 LOADN                            R38 24
      668 CALL                             R36 2 1
      669 SETTABLEKS                       R36 R35 K70 ["Size"]
      671 LOADK                            R37 K132 ["%*-toggle"]
      672 MOVE                             R39 R12
      673 NAMECALL                         R37 R37 K42 ["format"]
      675 CALL                             R37 2 1
      676 MOVE                             R36 R37
      677 SETTABLEKS                       R36 R35 K15 ["testId"]
      679 DUPTABLE                         R36 K134 [{"Icon"}]
      680 GETUPVAL                         R37 4
      681 GETTABLEKS                       R37 R37 K21 ["createElement"]
      683 GETUPVAL                         R38 5
      684 GETTABLEKS                       R38 R38 K133 ["Icon"]
      686 DUPTABLE                         R39 K136 [{"name", "size", "testId"}]
      687 JUMPIFNOT                        R16 ; [+2]
      688 LOADK                            R40 K137 ["caret-small-right"]
      689 JUMP                             ; [+1]
      690 LOADK                            R40 K138 ["caret-small-down"]
      691 SETTABLEKS                       R40 R39 K135 ["name"]
      693 GETUPVAL                         R40 11
      694 GETTABLEKS                       R40 R40 K139 ["Medium"]
      696 SETTABLEKS                       R40 R39 K23 ["size"]
      698 LOADK                            R41 K140 ["%*-chevron"]
      699 MOVE                             R43 R12
      700 NAMECALL                         R41 R41 K42 ["format"]
      702 CALL                             R41 2 1
      703 MOVE                             R40 R41
      704 SETTABLEKS                       R40 R39 K15 ["testId"]
      706 CALL                             R37 2 1
      707 SETTABLEKS                       R37 R36 K133 ["Icon"]
      709 CALL                             R33 3 1
      710 JUMP                             ; [+1]
      711 LOADNIL                          R33
      712 SETTABLEKS                       R33 R32 K125 ["Chevron"]
      714 GETUPVAL                         R33 4
      715 GETTABLEKS                       R33 R33 K21 ["createElement"]
      717 GETUPVAL                         R34 5
      718 GETTABLEKS                       R34 R34 K69 ["Text"]
      720 DUPTABLE                         R35 K142 [{["Text"], ["Size"], ["tag"] = "auto-none padding-left-xlarge text-no-wrap text-truncate-end text-label-small content-emphasis text-align-x-left text-align-y-center", ["testId"]}]
      721 GETTABLEKS                       R36 R0 K18 ["Label"]
      723 SETTABLEKS                       R36 R35 K69 ["Text"]
      725 GETIMPORT                        R36 K83 [UDim2.new]
      727 LOADN                            R37 1
      728 LOADN                            R38 0
      729 LOADN                            R39 0
      730 LOADN                            R40 24
      731 CALL                             R36 4 1
      732 SETTABLEKS                       R36 R35 K70 ["Size"]
      734 LOADK                            R37 K143 ["%*-label"]
      735 MOVE                             R39 R12
      736 NAMECALL                         R37 R37 K42 ["format"]
      738 CALL                             R37 2 1
      739 MOVE                             R36 R37
      740 SETTABLEKS                       R36 R35 K15 ["testId"]
      742 CALL                             R33 2 1
      743 SETTABLEKS                       R33 R32 K18 ["Label"]
      745 CALL                             R29 3 1
      746 SETTABLEKS                       R29 R28 K122 ["Content"]
      748 CALL                             R25 3 1
      749 SETTABLEKS                       R25 R24 K118 ["Wrapper"]
      751 CALL                             R21 3 1
      752 SETTABLEKS                       R21 R20 K113 ["Header"]
      754 JUMPIFNOT                        R16 ; [+2]
      755 LOADNIL                          R21
      756 JUMP                             ; [+22]
      757 GETUPVAL                         R21 4
      758 GETTABLEKS                       R21 R21 K21 ["createElement"]
      760 GETUPVAL                         R22 5
      761 GETTABLEKS                       R22 R22 K37 ["View"]
      763 DUPTABLE                         R23 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      764 DUPTABLE                         R24 K50 [{"Children"}]
      765 GETUPVAL                         R25 7
      766 GETTABLEKS                       R26 R0 K44 ["Controls"]
      768 MOVE                             R27 R2
      769 ADDK                             R28 R3 K51 [1]
      770 MOVE                             R29 R5
      771 MOVE                             R30 R6
      772 MOVE                             R31 R7
      773 MOVE                             R32 R8
      774 MOVE                             R33 R9
      775 CALL                             R25 8 1
      776 SETTABLEKS                       R25 R24 K49 ["Children"]
      778 CALL                             R21 3 1
      779 SETTABLEKS                       R21 R20 K44 ["Controls"]
      781 CALL                             R17 3 -1
      782 RETURN                           R17 -1
      783 LOADNIL                          R15
      784 RETURN                           R15 1

PROTO_11:
        0 NEWTABLE                         R8 0 0
        2 MOVE                             R9 R0
        3 LOADNIL                          R10
        4 LOADNIL                          R11
        5 FORGPREP                         R9
        6 GETUPVAL                         R14 0
        7 GETTABLEKS                       R14 R14 K0 ["makeControlPath"]
        9 MOVE                             R15 R1
       10 MOVE                             R16 R12
       11 CALL                             R14 2 1
       12 GETUPVAL                         R15 0
       13 GETTABLEKS                       R15 R15 K1 ["makeControlKey"]
       15 MOVE                             R16 R13
       16 MOVE                             R17 R14
       17 CALL                             R15 2 1
       18 GETUPVAL                         R16 1
       19 MOVE                             R17 R13
       20 MOVE                             R18 R15
       21 MOVE                             R19 R14
       22 MOVE                             R20 R2
       23 MOVE                             R21 R12
       24 MOVE                             R22 R3
       25 MOVE                             R23 R4
       26 MOVE                             R24 R5
       27 MOVE                             R25 R6
       28 MOVE                             R26 R7
       29 CALL                             R16 10 1
       30 SETTABLE                         R16 R8 R15
       31 FORGLOOP                         R9 2 ; [-26]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K2 ["createElement"]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K3 ["View"]
       39 DUPTABLE                         R11 K7 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
       40 JUMPIFNOT                        R1 ; [+11]
       41 LOADK                            R13 K8 ["%*-controls"]
       42 GETUPVAL                         R15 0
       43 GETTABLEKS                       R15 R15 K9 ["makeControlTestId"]
       45 MOVE                             R16 R1
       46 CALL                             R15 1 1
       47 NAMECALL                         R13 R13 K10 ["format"]
       49 CALL                             R13 2 1
       50 MOVE                             R12 R13
       51 JUMP                             ; [+1]
       52 LOADK                            R12 K11 ["simulator-controls"]
       53 SETTABLEKS                       R12 R11 K6 ["testId"]
       55 MOVE                             R12 R8
       56 CALL                             R9 3 -1
       57 RETURN                           R9 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
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
       14 GETTABLEKS                       R3 R3 K2 ["useRef"]
       16 NEWTABLE                         R4 0 0
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R6 R0 K4 ["controls"]
       30 LOADNIL                          R7
       31 LOADN                            R8 0
       32 MOVE                             R9 R0
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       36 CALL                             R11 0 1
       37 JUMPIF                           R11 ; [+2]
       38 LOADNIL                          R10
       39 JUMP                             ; [+13]
       40 GETTABLEKS                       R11 R0 K5 ["onControlChanged"]
       42 JUMPIFNOTEQKNIL                  R11 ; [+3]
       44 LOADNIL                          R10
       45 JUMP                             ; [+7]
       46 GETTABLEKS                       R12 R0 K7 ["debugName"]
       48 ORK                              R11 R12 K6 ["ControlRenderer"]
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R0
       53 MOVE                             R11 R1
       54 MOVE                             R12 R4
       55 GETTABLEKS                       R13 R3 K8 ["current"]
       57 CALL                             R5 8 -1
       58 RETURN                           R5 -1

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
       84 LOADNIL                          R15
       85 NEWCLOSURE                       R16 P3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R9
       93 CAPTURE                          REF R15
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R15 K25 [PROTO_11]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 NEWCLOSURE                       R17 P5
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          REF R15
      107 CAPTURE                          VAL R4
      108 CLOSEUPVALS                      R15
      109 RETURN                           R17 1
