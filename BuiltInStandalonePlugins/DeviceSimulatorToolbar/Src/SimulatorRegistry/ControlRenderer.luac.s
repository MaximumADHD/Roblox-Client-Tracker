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
       57 SETTABLEKS                       R13 R12 K25 ["auto-none text-no-wrap text-truncate-end text-label-small text-align-x-left text-align-y-center"]
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
        8 JUMPIF                           R1 ; [+9]
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETUPVAL                         R1 3
       12 JUMPIFEQ                         R0 R1 ; [+5]
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

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
       40 JUMPIFNOTEQ                      R15 R16 ; [+138]
       42 GETUPVAL                         R15 1
       43 GETTABLEKS                       R15 R15 K8 ["makeDropdownItems"]
       45 MOVE                             R16 R0
       46 MOVE                             R17 R1
       47 MOVE                             R18 R11
       48 CALL                             R15 3 1
       49 GETTABLEKS                       R17 R15 K9 ["hasValue"]
       51 NOT                              R16 R17
       52 JUMPIF                           R16 ; [+1]
       53 NOT                              R16 R13
       54 GETTABLEKS                       R17 R0 K10 ["BundledControls"]
       56 GETUPVAL                         R18 3
       57 DUPTABLE                         R19 K16 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
       58 JUMPIFEQKNIL                     R17 ; [+7]
       60 LENGTH                           R21 R17
       61 LOADN                            R22 0
       62 JUMPIFNOTLT                      R22 R21 ; [+3]
       64 LOADN                            R20 1
       65 JUMP                             ; [+1]
       66 MOVE                             R20 R4
       67 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
       69 GETTABLEKS                       R20 R0 K17 ["Label"]
       71 SETTABLEKS                       R20 R19 K12 ["label"]
       73 SETTABLEKS                       R14 R19 K13 ["isNested"]
       75 SETTABLEKS                       R12 R19 K14 ["testId"]
       77 DUPTABLE                         R20 K19 [{"Control"}]
       78 GETUPVAL                         R21 4
       79 GETTABLEKS                       R21 R21 K20 ["createElement"]
       81 GETUPVAL                         R22 5
       82 GETTABLEKS                       R22 R22 K7 ["Dropdown"]
       84 GETTABLEKS                       R22 R22 K21 ["Root"]
       86 DUPTABLE                         R23 K30 [{["size"], ["label"] = "", ["items"], ["value"], ["placeholder"], ["onItemChanged"], ["isDisabled"], ["width"], ["testId"]}]
       87 GETUPVAL                         R24 6
       88 GETTABLEKS                       R24 R24 K31 ["XSmall"]
       90 SETTABLEKS                       R24 R23 K22 ["size"]
       92 GETTABLEKS                       R24 R15 K24 ["items"]
       94 SETTABLEKS                       R24 R23 K24 ["items"]
       96 GETTABLEKS                       R24 R15 K25 ["value"]
       98 SETTABLEKS                       R24 R23 K25 ["value"]
      100 GETTABLEKS                       R24 R15 K26 ["placeholder"]
      102 SETTABLEKS                       R24 R23 K26 ["placeholder"]
      104 NEWCLOSURE                       R24 P0
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R1
      109 SETTABLEKS                       R24 R23 K27 ["onItemChanged"]
      111 SETTABLEKS                       R16 R23 K28 ["isDisabled"]
      113 GETIMPORT                        R24 K34 [UDim.new]
      115 LOADN                            R25 1
      116 LOADN                            R26 0
      117 CALL                             R24 2 1
      118 SETTABLEKS                       R24 R23 K29 ["width"]
      120 SETTABLEKS                       R12 R23 K14 ["testId"]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R20 K18 ["Control"]
      125 SETTABLEKS                       R20 R19 K15 ["input"]
      127 CALL                             R18 1 1
      128 JUMPIFEQKNIL                     R17 ; [+4]
      130 LENGTH                           R19 R17
      131 JUMPIFNOTEQKN                    R19 K35 [0] ; [+2]
      133 RETURN                           R18 1
      134 GETUPVAL                         R19 4
      135 GETTABLEKS                       R19 R19 K20 ["createElement"]
      137 GETUPVAL                         R20 5
      138 GETTABLEKS                       R20 R20 K36 ["View"]
      140 DUPTABLE                         R21 K39 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      141 SETTABLEKS                       R4 R21 K11 ["LayoutOrder"]
      143 LOADK                            R23 K40 ["%*-bundle"]
      144 MOVE                             R25 R12
      145 NAMECALL                         R23 R23 K41 ["format"]
      147 CALL                             R23 2 1
      148 MOVE                             R22 R23
      149 SETTABLEKS                       R22 R21 K14 ["testId"]
      151 DUPTABLE                         R22 K44 [{"Preset", "Controls"}]
      152 SETTABLEKS                       R18 R22 K42 ["Preset"]
      154 GETUPVAL                         R23 4
      155 GETTABLEKS                       R23 R23 K20 ["createElement"]
      157 GETUPVAL                         R24 5
      158 GETTABLEKS                       R24 R24 K36 ["View"]
      160 DUPTABLE                         R25 K47 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      161 DUPTABLE                         R26 K49 [{"Children"}]
      162 GETUPVAL                         R27 7
      163 MOVE                             R28 R17
      164 MOVE                             R29 R2
      165 ADDK                             R30 R3 K50 [1]
      166 MOVE                             R31 R5
      167 MOVE                             R32 R6
      168 MOVE                             R33 R7
      169 MOVE                             R34 R8
      170 MOVE                             R35 R9
      171 CALL                             R27 8 1
      172 SETTABLEKS                       R27 R26 K48 ["Children"]
      174 CALL                             R23 3 1
      175 SETTABLEKS                       R23 R22 K43 ["Controls"]
      177 CALL                             R19 3 -1
      178 RETURN                           R19 -1
      179 GETTABLEKS                       R15 R0 K6 ["Type"]
      181 GETUPVAL                         R16 2
      182 GETTABLEKS                       R16 R16 K51 ["Slider"]
      184 JUMPIFNOTEQ                      R15 R16 ; [+120]
      186 GETUPVAL                         R15 1
      187 GETTABLEKS                       R15 R15 K52 ["resolveNumber"]
      189 MOVE                             R16 R11
      190 GETTABLEKS                       R17 R0 K53 ["Min"]
      192 CALL                             R15 2 2
      193 GETTABLEKS                       R18 R0 K54 ["Unit"]
      195 ORK                              R17 R18 K23 [""]
      196 NOT                              R18 R16
      197 JUMPIF                           R18 ; [+1]
      198 NOT                              R18 R13
      199 GETUPVAL                         R19 3
      200 DUPTABLE                         R20 K56 [{"LayoutOrder", "label", "isNested", "testId", "slotTestId", "input"}]
      201 SETTABLEKS                       R4 R20 K11 ["LayoutOrder"]
      203 GETTABLEKS                       R21 R0 K17 ["Label"]
      205 SETTABLEKS                       R21 R20 K12 ["label"]
      207 SETTABLEKS                       R14 R20 K13 ["isNested"]
      209 SETTABLEKS                       R12 R20 K14 ["testId"]
      211 SETTABLEKS                       R12 R20 K55 ["slotTestId"]
      213 DUPTABLE                         R21 K58 [{"Control", "Value"}]
      214 GETUPVAL                         R22 4
      215 GETTABLEKS                       R22 R22 K20 ["createElement"]
      217 GETUPVAL                         R23 5
      218 GETTABLEKS                       R23 R23 K51 ["Slider"]
      220 DUPTABLE                         R24 K62 [{["LayoutOrder"] = 1, ["size"], ["width"], ["range"], ["value"], ["step"], ["onValueChanged"], ["isDisabled"], ["testId"]}]
      221 GETUPVAL                         R25 6
      222 GETTABLEKS                       R25 R25 K31 ["XSmall"]
      224 SETTABLEKS                       R25 R24 K22 ["size"]
      226 GETIMPORT                        R25 K34 [UDim.new]
      228 LOADN                            R26 1
      229 LOADN                            R27 -50
      230 CALL                             R25 2 1
      231 SETTABLEKS                       R25 R24 K29 ["width"]
      233 GETIMPORT                        R25 K64 [NumberRange.new]
      235 GETTABLEKS                       R26 R0 K53 ["Min"]
      237 GETTABLEKS                       R27 R0 K65 ["Max"]
      239 CALL                             R25 2 1
      240 SETTABLEKS                       R25 R24 K59 ["range"]
      242 SETTABLEKS                       R15 R24 K25 ["value"]
      244 GETTABLEKS                       R25 R0 K66 ["Step"]
      246 SETTABLEKS                       R25 R24 K60 ["step"]
      248 NEWCLOSURE                       R25 P1
      249 CAPTURE                          VAL R18
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          VAL R6
      252 CAPTURE                          VAL R1
      253 SETTABLEKS                       R25 R24 K61 ["onValueChanged"]
      255 SETTABLEKS                       R18 R24 K28 ["isDisabled"]
      257 LOADK                            R26 K67 ["%*-input"]
      258 MOVE                             R28 R12
      259 NAMECALL                         R26 R26 K41 ["format"]
      261 CALL                             R26 2 1
      262 MOVE                             R25 R26
      263 SETTABLEKS                       R25 R24 K14 ["testId"]
      265 CALL                             R22 2 1
      266 SETTABLEKS                       R22 R21 K18 ["Control"]
      268 GETUPVAL                         R22 4
      269 GETTABLEKS                       R22 R22 K20 ["createElement"]
      271 GETUPVAL                         R23 5
      272 GETTABLEKS                       R23 R23 K68 ["Text"]
      274 DUPTABLE                         R24 K71 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-label-small text-align-x-right text-align-y-center", ["testId"]}]
      275 GETUPVAL                         R25 8
      276 MOVE                             R26 R15
      277 MOVE                             R27 R17
      278 GETTABLEKS                       R28 R0 K72 ["Precision"]
      280 CALL                             R25 3 1
      281 SETTABLEKS                       R25 R24 K68 ["Text"]
      283 GETIMPORT                        R25 K75 [UDim2.fromOffset]
      285 LOADN                            R26 46
      286 LOADN                            R27 24
      287 CALL                             R25 2 1
      288 SETTABLEKS                       R25 R24 K69 ["Size"]
      290 LOADK                            R26 K76 ["%*-value"]
      291 MOVE                             R28 R12
      292 NAMECALL                         R26 R26 K41 ["format"]
      294 CALL                             R26 2 1
      295 MOVE                             R25 R26
      296 SETTABLEKS                       R25 R24 K14 ["testId"]
      298 CALL                             R22 2 1
      299 SETTABLEKS                       R22 R21 K57 ["Value"]
      301 SETTABLEKS                       R21 R20 K15 ["input"]
      303 CALL                             R19 1 -1
      304 RETURN                           R19 -1
      305 GETTABLEKS                       R15 R0 K6 ["Type"]
      307 GETUPVAL                         R16 2
      308 GETTABLEKS                       R16 R16 K77 ["NumberField"]
      310 JUMPIFNOTEQ                      R15 R16 ; [+170]
      312 GETUPVAL                         R15 1
      313 GETTABLEKS                       R15 R15 K52 ["resolveNumber"]
      315 MOVE                             R16 R11
      316 LOADN                            R17 0
      317 CALL                             R15 2 2
      318 GETTABLEKS                       R18 R0 K54 ["Unit"]
      320 ORK                              R17 R18 K23 [""]
      321 NOT                              R18 R16
      322 JUMPIF                           R18 ; [+1]
      323 NOT                              R18 R13
      324 GETUPVAL                         R19 3
      325 DUPTABLE                         R20 K16 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      326 SETTABLEKS                       R4 R20 K11 ["LayoutOrder"]
      328 GETTABLEKS                       R21 R0 K17 ["Label"]
      330 SETTABLEKS                       R21 R20 K12 ["label"]
      332 SETTABLEKS                       R14 R20 K13 ["isNested"]
      334 SETTABLEKS                       R12 R20 K14 ["testId"]
      336 DUPTABLE                         R21 K19 [{"Control"}]
      337 GETUPVAL                         R22 4
      338 GETTABLEKS                       R22 R22 K20 ["createElement"]
      340 GETUPVAL                         R23 5
      341 GETTABLEKS                       R23 R23 K36 ["View"]
      343 DUPTABLE                         R24 K79 [{"backgroundStyle", "Size", "testId"}]
      344 DUPTABLE                         R25 K81 [{["Transparency"] = 1}]
      345 SETTABLEKS                       R25 R24 K78 ["backgroundStyle"]
      347 GETIMPORT                        R25 K82 [UDim2.new]
      349 LOADN                            R26 1
      350 LOADN                            R27 0
      351 LOADN                            R28 0
      352 LOADN                            R29 24
      353 CALL                             R25 4 1
      354 SETTABLEKS                       R25 R24 K69 ["Size"]
      356 LOADK                            R26 K83 ["%*-field"]
      357 MOVE                             R28 R12
      358 NAMECALL                         R26 R26 K41 ["format"]
      360 CALL                             R26 2 1
      361 MOVE                             R25 R26
      362 SETTABLEKS                       R25 R24 K14 ["testId"]
      364 DUPTABLE                         R25 K85 [{"Input", "Unit"}]
      365 GETUPVAL                         R26 4
      366 GETTABLEKS                       R26 R26 K20 ["createElement"]
      368 GETUPVAL                         R27 5
      369 GETTABLEKS                       R27 R27 K86 ["NumberInput"]
      371 DUPTABLE                         R28 K92 [{["size"], ["label"] = "", ["value"], ["minimum"], ["maximum"], ["precision"], ["step"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["width"], ["testId"]}]
      372 GETUPVAL                         R29 6
      373 GETTABLEKS                       R29 R29 K31 ["XSmall"]
      375 SETTABLEKS                       R29 R28 K22 ["size"]
      377 SETTABLEKS                       R15 R28 K25 ["value"]
      379 GETTABLEKS                       R29 R0 K53 ["Min"]
      381 SETTABLEKS                       R29 R28 K87 ["minimum"]
      383 GETTABLEKS                       R29 R0 K65 ["Max"]
      385 SETTABLEKS                       R29 R28 K88 ["maximum"]
      387 GETTABLEKS                       R29 R0 K72 ["Precision"]
      389 SETTABLEKS                       R29 R28 K89 ["precision"]
      391 GETTABLEKS                       R29 R0 K66 ["Step"]
      393 SETTABLEKS                       R29 R28 K60 ["step"]
      395 NEWCLOSURE                       R29 P2
      396 CAPTURE                          VAL R18
      397 CAPTURE                          UPVAL U1
      398 CAPTURE                          UPVAL U9
      399 CAPTURE                          VAL R9
      400 CAPTURE                          VAL R1
      401 CAPTURE                          VAL R15
      402 CAPTURE                          VAL R6
      403 SETTABLEKS                       R29 R28 K90 ["onChanged"]
      405 NEWCLOSURE                       R29 P3
      406 CAPTURE                          VAL R9
      407 CAPTURE                          VAL R1
      408 CAPTURE                          VAL R18
      409 CAPTURE                          VAL R15
      410 CAPTURE                          VAL R6
      411 SETTABLEKS                       R29 R28 K91 ["onFocusLost"]
      413 SETTABLEKS                       R18 R28 K28 ["isDisabled"]
      415 GETIMPORT                        R29 K34 [UDim.new]
      417 LOADN                            R30 1
      418 LOADN                            R31 0
      419 CALL                             R29 2 1
      420 SETTABLEKS                       R29 R28 K29 ["width"]
      422 SETTABLEKS                       R12 R28 K14 ["testId"]
      424 CALL                             R26 2 1
      425 SETTABLEKS                       R26 R25 K84 ["Input"]
      427 JUMPIFNOTEQKS                    R17 K23 [""] ; [+3]
      429 LOADNIL                          R26
      430 JUMP                             ; [+41]
      431 GETUPVAL                         R26 4
      432 GETTABLEKS                       R26 R26 K20 ["createElement"]
      434 GETUPVAL                         R27 5
      435 GETTABLEKS                       R27 R27 K68 ["Text"]
      437 DUPTABLE                         R28 K97 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["ZIndex"] = 2, ["tag"] = "auto-none text-no-wrap text-body-small content-muted text-align-x-right text-align-y-center", ["testId"]}]
      438 GETIMPORT                        R29 K99 [Vector2.new]
      440 LOADN                            R30 1
      441 LOADN                            R31 0
      442 CALL                             R29 2 1
      443 SETTABLEKS                       R29 R28 K93 ["AnchorPoint"]
      445 GETIMPORT                        R29 K82 [UDim2.new]
      447 LOADN                            R30 1
      448 LOADN                            R31 -8
      449 LOADN                            R32 0
      450 LOADN                            R33 0
      451 CALL                             R29 4 1
      452 SETTABLEKS                       R29 R28 K94 ["Position"]
      454 GETIMPORT                        R29 K75 [UDim2.fromOffset]
      456 LOADN                            R30 32
      457 LOADN                            R31 24
      458 CALL                             R29 2 1
      459 SETTABLEKS                       R29 R28 K69 ["Size"]
      461 SETTABLEKS                       R17 R28 K68 ["Text"]
      463 LOADK                            R30 K100 ["%*-unit"]
      464 MOVE                             R32 R12
      465 NAMECALL                         R30 R30 K41 ["format"]
      467 CALL                             R30 2 1
      468 MOVE                             R29 R30
      469 SETTABLEKS                       R29 R28 K14 ["testId"]
      471 CALL                             R26 2 1
      472 SETTABLEKS                       R26 R25 K54 ["Unit"]
      474 CALL                             R22 3 1
      475 SETTABLEKS                       R22 R21 K18 ["Control"]
      477 SETTABLEKS                       R21 R20 K15 ["input"]
      479 CALL                             R19 1 -1
      480 RETURN                           R19 -1
      481 GETTABLEKS                       R15 R0 K6 ["Type"]
      483 GETUPVAL                         R16 2
      484 GETTABLEKS                       R16 R16 K101 ["Toggle"]
      486 JUMPIFNOTEQ                      R15 R16 ; [+53]
      488 GETUPVAL                         R15 1
      489 GETTABLEKS                       R15 R15 K102 ["resolveBoolean"]
      491 MOVE                             R16 R11
      492 CALL                             R15 1 2
      493 NOT                              R17 R16
      494 JUMPIF                           R17 ; [+1]
      495 NOT                              R17 R13
      496 GETUPVAL                         R18 3
      497 DUPTABLE                         R19 K16 [{"LayoutOrder", "label", "isNested", "testId", "input"}]
      498 SETTABLEKS                       R4 R19 K11 ["LayoutOrder"]
      500 GETTABLEKS                       R20 R0 K17 ["Label"]
      502 SETTABLEKS                       R20 R19 K12 ["label"]
      504 SETTABLEKS                       R14 R19 K13 ["isNested"]
      506 SETTABLEKS                       R12 R19 K14 ["testId"]
      508 DUPTABLE                         R20 K19 [{"Control"}]
      509 GETUPVAL                         R21 4
      510 GETTABLEKS                       R21 R21 K20 ["createElement"]
      512 GETUPVAL                         R22 5
      513 GETTABLEKS                       R22 R22 K101 ["Toggle"]
      515 DUPTABLE                         R23 K105 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["isDisabled"], ["testId"]}]
      516 GETUPVAL                         R24 6
      517 GETTABLEKS                       R24 R24 K31 ["XSmall"]
      519 SETTABLEKS                       R24 R23 K22 ["size"]
      521 SETTABLEKS                       R15 R23 K103 ["isChecked"]
      523 NEWCLOSURE                       R24 P4
      524 CAPTURE                          VAL R17
      525 CAPTURE                          VAL R6
      526 CAPTURE                          VAL R1
      527 SETTABLEKS                       R24 R23 K104 ["onActivated"]
      529 SETTABLEKS                       R17 R23 K28 ["isDisabled"]
      531 SETTABLEKS                       R12 R23 K14 ["testId"]
      533 CALL                             R21 2 1
      534 SETTABLEKS                       R21 R20 K18 ["Control"]
      536 SETTABLEKS                       R20 R19 K15 ["input"]
      538 CALL                             R18 1 -1
      539 RETURN                           R18 -1
      540 GETTABLEKS                       R15 R0 K6 ["Type"]
      542 GETUPVAL                         R16 2
      543 GETTABLEKS                       R16 R16 K106 ["Section"]
      545 JUMPIFNOTEQ                      R15 R16 ; [+172]
      547 GETTABLEKS                       R16 R0 K107 ["Collapsible"]
      549 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      551 LOADB                            R15 0 +1
      552 LOADB                            R15 1
      553 MOVE                             R16 R15
      554 JUMPIFNOT                        R16 ; [+5]
      555 GETTABLE                         R17 R7 R1
      556 JUMPIFEQKB                       R17 TRUE ; [+2]
      558 LOADB                            R16 0 +1
      559 LOADB                            R16 1
      560 GETUPVAL                         R17 4
      561 GETTABLEKS                       R17 R17 K20 ["createElement"]
      563 GETUPVAL                         R18 5
      564 GETTABLEKS                       R18 R18 K36 ["View"]
      566 DUPTABLE                         R19 K39 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"]}]
      567 SETTABLEKS                       R4 R19 K11 ["LayoutOrder"]
      569 SETTABLEKS                       R12 R19 K14 ["testId"]
      571 DUPTABLE                         R20 K109 [{"Header", "Controls"}]
      572 GETUPVAL                         R21 4
      573 GETTABLEKS                       R21 R21 K20 ["createElement"]
      575 GETUPVAL                         R22 5
      576 GETTABLEKS                       R22 R22 K36 ["View"]
      578 DUPTABLE                         R23 K111 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xxsmall size-full-0 auto-y", ["onActivated"], ["testId"]}]
      579 JUMPIFNOT                        R15 ; [+4]
      580 NEWCLOSURE                       R24 P5
      581 CAPTURE                          VAL R8
      582 CAPTURE                          VAL R1
      583 JUMP                             ; [+1]
      584 LOADNIL                          R24
      585 SETTABLEKS                       R24 R23 K104 ["onActivated"]
      587 LOADK                            R25 K112 ["%*-header"]
      588 MOVE                             R27 R12
      589 NAMECALL                         R25 R25 K41 ["format"]
      591 CALL                             R25 2 1
      592 MOVE                             R24 R25
      593 SETTABLEKS                       R24 R23 K14 ["testId"]
      595 DUPTABLE                         R24 K114 [{"Chevron", "Label"}]
      596 JUMPIFNOT                        R15 ; [+46]
      597 GETUPVAL                         R25 4
      598 GETTABLEKS                       R25 R25 K20 ["createElement"]
      600 GETUPVAL                         R26 5
      601 GETTABLEKS                       R26 R26 K36 ["View"]
      603 DUPTABLE                         R27 K116 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      604 GETIMPORT                        R28 K75 [UDim2.fromOffset]
      606 LOADN                            R29 12
      607 LOADN                            R30 12
      608 CALL                             R28 2 1
      609 SETTABLEKS                       R28 R27 K69 ["Size"]
      611 DUPTABLE                         R28 K118 [{"Icon"}]
      612 GETUPVAL                         R29 4
      613 GETTABLEKS                       R29 R29 K20 ["createElement"]
      615 GETUPVAL                         R30 5
      616 GETTABLEKS                       R30 R30 K117 ["Icon"]
      618 DUPTABLE                         R31 K120 [{"name", "size", "testId"}]
      619 JUMPIFNOT                        R16 ; [+2]
      620 LOADK                            R32 K121 ["chevron-small-right"]
      621 JUMP                             ; [+1]
      622 LOADK                            R32 K122 ["chevron-small-down"]
      623 SETTABLEKS                       R32 R31 K119 ["name"]
      625 GETUPVAL                         R32 10
      626 GETTABLEKS                       R32 R32 K31 ["XSmall"]
      628 SETTABLEKS                       R32 R31 K22 ["size"]
      630 LOADK                            R33 K123 ["%*-chevron"]
      631 MOVE                             R35 R12
      632 NAMECALL                         R33 R33 K41 ["format"]
      634 CALL                             R33 2 1
      635 MOVE                             R32 R33
      636 SETTABLEKS                       R32 R31 K14 ["testId"]
      638 CALL                             R29 2 1
      639 SETTABLEKS                       R29 R28 K117 ["Icon"]
      641 CALL                             R25 3 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R25
      644 SETTABLEKS                       R25 R24 K113 ["Chevron"]
      646 GETUPVAL                         R25 4
      647 GETTABLEKS                       R25 R25 K20 ["createElement"]
      649 GETUPVAL                         R26 5
      650 GETTABLEKS                       R26 R26 K68 ["Text"]
      652 DUPTABLE                         R27 K125 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-none text-no-wrap text-truncate-end text-label-medium text-align-x-left text-align-y-center", ["testId"]}]
      653 GETTABLEKS                       R28 R0 K17 ["Label"]
      655 SETTABLEKS                       R28 R27 K68 ["Text"]
      657 JUMPIFNOT                        R15 ; [+8]
      658 GETIMPORT                        R28 K82 [UDim2.new]
      660 LOADN                            R29 1
      661 LOADN                            R30 -14
      662 LOADN                            R31 0
      663 LOADN                            R32 24
      664 CALL                             R28 4 1
      665 JUMP                             ; [+7]
      666 GETIMPORT                        R28 K82 [UDim2.new]
      668 LOADN                            R29 1
      669 LOADN                            R30 0
      670 LOADN                            R31 0
      671 LOADN                            R32 24
      672 CALL                             R28 4 1
      673 SETTABLEKS                       R28 R27 K69 ["Size"]
      675 LOADK                            R29 K126 ["%*-label"]
      676 MOVE                             R31 R12
      677 NAMECALL                         R29 R29 K41 ["format"]
      679 CALL                             R29 2 1
      680 MOVE                             R28 R29
      681 SETTABLEKS                       R28 R27 K14 ["testId"]
      683 CALL                             R25 2 1
      684 SETTABLEKS                       R25 R24 K17 ["Label"]
      686 CALL                             R21 3 1
      687 SETTABLEKS                       R21 R20 K108 ["Header"]
      689 JUMPIFNOT                        R16 ; [+2]
      690 LOADNIL                          R21
      691 JUMP                             ; [+22]
      692 GETUPVAL                         R21 4
      693 GETTABLEKS                       R21 R21 K20 ["createElement"]
      695 GETUPVAL                         R22 5
      696 GETTABLEKS                       R22 R22 K36 ["View"]
      698 DUPTABLE                         R23 K47 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      699 DUPTABLE                         R24 K49 [{"Children"}]
      700 GETUPVAL                         R25 7
      701 GETTABLEKS                       R26 R0 K43 ["Controls"]
      703 MOVE                             R27 R2
      704 ADDK                             R28 R3 K50 [1]
      705 MOVE                             R29 R5
      706 MOVE                             R30 R6
      707 MOVE                             R31 R7
      708 MOVE                             R32 R8
      709 MOVE                             R33 R9
      710 CALL                             R25 8 1
      711 SETTABLEKS                       R25 R24 K48 ["Children"]
      713 CALL                             R21 3 1
      714 SETTABLEKS                       R21 R20 K43 ["Controls"]
      716 CALL                             R17 3 -1
      717 RETURN                           R17 -1
      718 LOADNIL                          R15
      719 RETURN                           R15 1

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
       69 GETTABLEKS                       R10 R10 K20 ["OnChangeCallbackReason"]
       71 DUPCLOSURE                       R11 K21 [PROTO_0]
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R12 K22 [PROTO_2]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 DUPCLOSURE                       R13 K23 [PROTO_3]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R1
       80 LOADNIL                          R14
       81 NEWCLOSURE                       R15 P3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R9
       89 CAPTURE                          REF R14
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R14 K24 [PROTO_11]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R1
       98 NEWCLOSURE                       R16 P5
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          REF R14
      102 CAPTURE                          VAL R4
      103 CLOSEUPVALS                      R14
      104 RETURN                           R16 1
