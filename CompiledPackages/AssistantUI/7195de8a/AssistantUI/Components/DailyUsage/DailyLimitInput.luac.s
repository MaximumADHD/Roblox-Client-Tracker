PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%D"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"NoLimit"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["CreditMetering"]
        3 LOADK                            R4 K0 ["NoLimit"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NoLimit"]
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLE                      R0 R1 ; [+3]
        4 LOADK                            R0 K0 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETIMPORT                        R0 K3 [string.format]
       10 LOADK                            R1 K4 ["%d"]
       11 GETUPVAL                         R2 0
       12 CALL                             R0 2 1
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K5 ["formatAmount"]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 1
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 GETUPVAL                         R0 2
       19 LOADNIL                          R1
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R0 ; [+3]
        6 MOVE                             R2 R0
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+18]
        8 GETIMPORT                        R1 K4 [table.find]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+11]
       14 GETUPVAL                         R3 1
       15 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K6 [table.insert]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R1 K8 [table.sort]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 NEWTABLE                         R1 0 1
       27 DUPTABLE                         R2 K13 [{["id"] = "none", ["text"], ["isChecked"]}]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K14 ["NoLimit"]
       31 SETTABLEKS                       R3 R2 K11 ["text"]
       33 GETUPVAL                         R4 1
       34 LOADN                            R5 0
       35 JUMPIFLE                         R4 R5 ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R2 K12 ["isChecked"]
       41 SETLIST                          R1 R2 1 [1]
       43 MOVE                             R2 R0
       44 LOADNIL                          R3
       45 LOADNIL                          R4
       46 FORGPREP                         R2
       47 DUPTABLE                         R9 K15 [{"id", "text", "isChecked"}]
       48 SETTABLEKS                       R6 R9 K9 ["id"]
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R10 R10 K16 ["formatAmount"]
       53 MOVE                             R11 R6
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K11 ["text"]
       57 GETUPVAL                         R11 1
       58 JUMPIFEQ                         R6 R11 ; [+2]
       60 LOADB                            R10 0 +1
       61 LOADB                            R10 1
       62 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       64 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       66 MOVE                             R8 R1
       67 GETIMPORT                        R7 K6 [table.insert]
       69 CALL                             R7 2 0
       70 FORGLOOP                         R2 2 ; [-24]
       72 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKS                    R0 K0 ["none"] ; [+3]
        5 LOADN                            R2 0
        6 JUMP                             ; [+6]
        7 FASTCALL1                        TONUMBER R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K3 [tonumber]
       11 CALL                             R3 1 1
       12 ORK                              R2 R3 K1 [0]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [string.gsub]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K3 ["%D"]
        5 LOADK                            R5 K4 [""]
        6 CALL                             R2 3 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 FASTCALL1                        TONUMBER R3 ; [+2]
        6 GETIMPORT                        R2 K2 [tonumber]
        8 CALL                             R2 1 1
        9 ORK                              R1 R2 K0 [0]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 3
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R1
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R0 R2 ; [+11]
        4 LOADN                            R3 100
        5 GETUPVAL                         R5 0
        6 SUBK                             R4 R5 K0 [500]
        7 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        9 GETIMPORT                        R2 K3 [math.max]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 JUMP                             ; [+2]
       14 GETUPVAL                         R2 0
       15 ADDK                             R1 R2 K0 [500]
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 SETTABLEKS                       R1 R2 K4 ["current"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["current"]
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETIMPORT                        R2 K7 [task.cancel]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K4 ["current"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 3
       33 GETIMPORT                        R3 K9 [task.delay]
       35 LOADK                            R4 K10 [0.4]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          REF R1
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K4 ["current"]
       43 CLOSEUPVALS                      R1
       44 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["current"]
       17 JUMPIFEQKNIL                     R0 ; [+10]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K0 ["current"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 NOT                              R1 R2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 -1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 ADDK                             R0 R1 K0 [500]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R0 R1 K1 ["current"]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["current"]
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETIMPORT                        R1 K4 [task.cancel]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["current"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 3
       20 GETIMPORT                        R2 K6 [task.delay]
       22 LOADK                            R3 K7 [0.4]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          REF R0
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R1 K1 ["current"]
       30 CLOSEUPVALS                      R0
       31 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["limit"]
        8 GETTABLEKS                       R3 R0 K2 ["isDisabled"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R3 R0 K3 ["onLimitChanged"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R1 ; [+3]
       20 MOVE                             R4 R1
       21 JUMP                             ; [+1]
       22 LOADN                            R4 0
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K4 ["useState"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K5 ["useRef"]
       31 LOADNIL                          R8
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K5 ["useRef"]
       36 LOADNIL                          R9
       37 CALL                             R8 1 1
       38 JUMPIFEQKNIL                     R5 ; [+3]
       40 MOVE                             R9 R5
       41 JUMP                             ; [+1]
       42 MOVE                             R9 R4
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K4 ["useState"]
       46 LOADB                            R11 0
       47 CALL                             R10 1 2
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K4 ["useState"]
       51 LOADB                            R13 0
       52 CALL                             R12 1 2
       53 GETUPVAL                         R14 1
       54 GETTABLEKS                       R14 R14 K5 ["useRef"]
       56 LOADNIL                          R15
       57 CALL                             R14 1 1
       58 GETUPVAL                         R15 1
       59 GETTABLEKS                       R15 R15 K6 ["useMemo"]
       61 DUPCLOSURE                       R16 K7 [PROTO_1]
       62 CAPTURE                          UPVAL U2
       63 NEWTABLE                         R17 0 1
       65 GETUPVAL                         R18 2
       66 GETTABLEKS                       R18 R18 K8 ["locale"]
       68 SETLIST                          R17 R18 1 [1]
       70 CALL                             R15 2 1
       71 GETUPVAL                         R16 1
       72 GETTABLEKS                       R16 R16 K6 ["useMemo"]
       74 NEWCLOSURE                       R17 P1
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R12
       77 CAPTURE                          UPVAL U3
       78 NEWTABLE                         R18 0 2
       80 MOVE                             R19 R9
       81 MOVE                             R20 R12
       82 SETLIST                          R18 R19 2 [1]
       84 CALL                             R16 2 1
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R17 R17 K4 ["useState"]
       88 MOVE                             R18 R16
       89 CALL                             R17 1 2
       90 GETUPVAL                         R19 1
       91 GETTABLEKS                       R19 R19 K9 ["useEffect"]
       93 NEWCLOSURE                       R20 P2
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R16
       96 NEWTABLE                         R21 0 1
       98 MOVE                             R22 R16
       99 SETLIST                          R21 R22 1 [1]
      101 CALL                             R19 2 0
      102 GETUPVAL                         R19 1
      103 GETTABLEKS                       R19 R19 K10 ["useCallback"]
      105 NEWCLOSURE                       R20 P3
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 NEWTABLE                         R21 0 0
      111 CALL                             R19 2 1
      112 GETUPVAL                         R20 1
      113 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      115 NEWCLOSURE                       R21 P4
      116 CAPTURE                          VAL R19
      117 CAPTURE                          VAL R3
      118 NEWTABLE                         R22 0 2
      120 MOVE                             R23 R19
      121 MOVE                             R24 R3
      122 SETLIST                          R22 R23 2 [1]
      124 CALL                             R20 2 1
      125 GETUPVAL                         R21 1
      126 GETTABLEKS                       R21 R21 K5 ["useRef"]
      128 LOADNIL                          R22
      129 CALL                             R21 1 1
      130 SETTABLEKS                       R20 R21 K11 ["current"]
      132 GETUPVAL                         R22 1
      133 GETTABLEKS                       R22 R22 K6 ["useMemo"]
      135 NEWCLOSURE                       R23 P5
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R15
      139 CAPTURE                          UPVAL U3
      140 NEWTABLE                         R24 0 2
      142 MOVE                             R25 R9
      143 GETTABLEKS                       R26 R15 K12 ["NoLimit"]
      145 SETLIST                          R24 R25 2 [1]
      147 CALL                             R22 2 1
      148 GETUPVAL                         R23 1
      149 GETTABLEKS                       R23 R23 K10 ["useCallback"]
      151 NEWCLOSURE                       R24 P6
      152 CAPTURE                          VAL R11
      153 NEWTABLE                         R25 0 0
      155 CALL                             R23 2 1
      156 GETUPVAL                         R24 1
      157 GETTABLEKS                       R24 R24 K10 ["useCallback"]
      159 NEWCLOSURE                       R25 P7
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R20
      162 NEWTABLE                         R26 0 2
      164 MOVE                             R27 R23
      165 MOVE                             R28 R20
      166 SETLIST                          R26 R27 2 [1]
      168 CALL                             R24 2 1
      169 GETUPVAL                         R25 1
      170 GETTABLEKS                       R25 R25 K10 ["useCallback"]
      172 NEWCLOSURE                       R26 P8
      173 CAPTURE                          VAL R18
      174 NEWTABLE                         R27 0 0
      176 CALL                             R25 2 1
      177 GETUPVAL                         R26 1
      178 GETTABLEKS                       R26 R26 K10 ["useCallback"]
      180 NEWCLOSURE                       R27 P9
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R17
      184 NEWTABLE                         R28 0 2
      186 MOVE                             R29 R20
      187 MOVE                             R30 R17
      188 SETLIST                          R28 R29 2 [1]
      190 CALL                             R26 2 1
      191 GETUPVAL                         R27 1
      192 GETTABLEKS                       R27 R27 K10 ["useCallback"]
      194 NEWCLOSURE                       R28 P10
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R13
      199 NEWTABLE                         R29 0 3
      201 MOVE                             R30 R19
      202 MOVE                             R31 R23
      203 MOVE                             R32 R2
      204 SETLIST                          R29 R30 3 [1]
      206 CALL                             R27 2 1
      207 NEWCLOSURE                       R28 P11
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R20
      213 GETUPVAL                         R29 1
      214 GETTABLEKS                       R29 R29 K9 ["useEffect"]
      216 NEWCLOSURE                       R30 P12
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R21
      220 NEWTABLE                         R31 0 0
      222 CALL                             R29 2 0
      223 GETUPVAL                         R29 5
      224 GETUPVAL                         R30 6
      225 DUPTABLE                         R31 K16 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"]}]
      226 GETTABLEKS                       R32 R0 K15 ["LayoutOrder"]
      228 SETTABLEKS                       R32 R31 K15 ["LayoutOrder"]
      230 DUPTABLE                         R32 K20 [{"InputContainer", "DecreaseButton", "IncreaseButton"}]
      231 GETUPVAL                         R33 5
      232 GETUPVAL                         R34 6
      233 DUPTABLE                         R35 K24 [{["tag"] = "auto-xy", ["ref"], ["LayoutOrder"] = 1}]
      234 SETTABLEKS                       R14 R35 K22 ["ref"]
      236 DUPTABLE                         R36 K27 [{"LimitInput", "LimitMenu"}]
      237 GETUPVAL                         R37 5
      238 GETUPVAL                         R38 7
      239 DUPTABLE                         R39 K40 [{["label"] = "", ["size"], ["width"], ["text"], ["placeholder"], ["leadingIcon"], ["isDisabled"], ["iconTrailing"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["onReturnPressed"]}]
      240 GETUPVAL                         R40 8
      241 GETTABLEKS                       R40 R40 K41 ["Small"]
      243 SETTABLEKS                       R40 R39 K30 ["size"]
      245 GETIMPORT                        R40 K44 [UDim.new]
      247 LOADN                            R41 0
      248 LOADN                            R42 130
      249 CALL                             R40 2 1
      250 SETTABLEKS                       R40 R39 K31 ["width"]
      252 SETTABLEKS                       R17 R39 K32 ["text"]
      254 GETTABLEKS                       R40 R15 K12 ["NoLimit"]
      256 SETTABLEKS                       R40 R39 K33 ["placeholder"]
      258 GETUPVAL                         R40 9
      259 GETTABLEKS                       R40 R40 K45 ["Robux"]
      261 SETTABLEKS                       R40 R39 K34 ["leadingIcon"]
      263 SETTABLEKS                       R2 R39 K2 ["isDisabled"]
      265 DUPTABLE                         R40 K48 [{"name", "onActivated"}]
      266 JUMPIFNOT                        R10 ; [+4]
      267 GETUPVAL                         R41 9
      268 GETTABLEKS                       R41 R41 K49 ["ChevronSmallUp"]
      270 JUMP                             ; [+3]
      271 GETUPVAL                         R41 9
      272 GETTABLEKS                       R41 R41 K50 ["ChevronSmallDown"]
      274 SETTABLEKS                       R41 R40 K46 ["name"]
      276 NEWCLOSURE                       R41 P13
      277 CAPTURE                          VAL R2
      278 CAPTURE                          VAL R11
      279 CAPTURE                          VAL R10
      280 SETTABLEKS                       R41 R40 K47 ["onActivated"]
      282 SETTABLEKS                       R40 R39 K35 ["iconTrailing"]
      284 SETTABLEKS                       R25 R39 K36 ["onChanged"]
      286 SETTABLEKS                       R27 R39 K37 ["onFocusGained"]
      288 SETTABLEKS                       R26 R39 K38 ["onFocusLost"]
      290 SETTABLEKS                       R26 R39 K39 ["onReturnPressed"]
      292 CALL                             R37 2 1
      293 SETTABLEKS                       R37 R36 K25 ["LimitInput"]
      295 GETUPVAL                         R37 5
      296 GETUPVAL                         R38 10
      297 DUPTABLE                         R39 K57 [{"isOpen", "items", "size", "width", "side", "align", "anchorRef", "onActivated", "onPressedOutside"}]
      298 MOVE                             R40 R10
      299 JUMPIFNOT                        R40 ; [+1]
      300 NOT                              R40 R2
      301 SETTABLEKS                       R40 R39 K51 ["isOpen"]
      303 SETTABLEKS                       R22 R39 K52 ["items"]
      305 GETUPVAL                         R40 8
      306 GETTABLEKS                       R40 R40 K41 ["Small"]
      308 SETTABLEKS                       R40 R39 K30 ["size"]
      310 GETUPVAL                         R40 11
      311 SETTABLEKS                       R40 R39 K31 ["width"]
      313 GETUPVAL                         R40 12
      314 GETTABLEKS                       R40 R40 K58 ["Bottom"]
      316 SETTABLEKS                       R40 R39 K53 ["side"]
      318 GETUPVAL                         R40 13
      319 GETTABLEKS                       R40 R40 K59 ["End"]
      321 SETTABLEKS                       R40 R39 K54 ["align"]
      323 SETTABLEKS                       R14 R39 K55 ["anchorRef"]
      325 SETTABLEKS                       R24 R39 K47 ["onActivated"]
      327 SETTABLEKS                       R23 R39 K56 ["onPressedOutside"]
      329 CALL                             R37 2 1
      330 SETTABLEKS                       R37 R36 K26 ["LimitMenu"]
      332 CALL                             R33 3 1
      333 SETTABLEKS                       R33 R32 K17 ["InputContainer"]
      335 GETUPVAL                         R33 5
      336 GETUPVAL                         R34 14
      337 DUPTABLE                         R35 K64 [{["icon"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"]}]
      338 GETUPVAL                         R36 9
      339 GETTABLEKS                       R36 R36 K65 ["MinusSmall"]
      341 SETTABLEKS                       R36 R35 K60 ["icon"]
      343 GETUPVAL                         R36 15
      344 GETTABLEKS                       R36 R36 K66 ["Utility"]
      346 SETTABLEKS                       R36 R35 K61 ["variant"]
      348 GETUPVAL                         R36 8
      349 GETTABLEKS                       R36 R36 K41 ["Small"]
      351 SETTABLEKS                       R36 R35 K30 ["size"]
      353 MOVE                             R36 R2
      354 JUMPIF                           R36 ; [+5]
      355 LOADN                            R37 100
      356 JUMPIFLE                         R9 R37 ; [+2]
      358 LOADB                            R36 0 +1
      359 LOADB                            R36 1
      360 SETTABLEKS                       R36 R35 K2 ["isDisabled"]
      362 NEWCLOSURE                       R36 P14
      363 CAPTURE                          VAL R28
      364 SETTABLEKS                       R36 R35 K47 ["onActivated"]
      366 GETUPVAL                         R36 16
      367 GETTABLEKS                       R36 R36 K67 ["DailyUsage"]
      369 GETTABLEKS                       R36 R36 K68 ["LimitDecreaseButton"]
      371 SETTABLEKS                       R36 R35 K63 ["testId"]
      373 CALL                             R33 2 1
      374 SETTABLEKS                       R33 R32 K18 ["DecreaseButton"]
      376 GETUPVAL                         R33 5
      377 GETUPVAL                         R34 14
      378 DUPTABLE                         R35 K70 [{["icon"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 3, ["testId"]}]
      379 GETUPVAL                         R36 9
      380 GETTABLEKS                       R36 R36 K71 ["PlusSmall"]
      382 SETTABLEKS                       R36 R35 K60 ["icon"]
      384 GETUPVAL                         R36 15
      385 GETTABLEKS                       R36 R36 K66 ["Utility"]
      387 SETTABLEKS                       R36 R35 K61 ["variant"]
      389 GETUPVAL                         R36 8
      390 GETTABLEKS                       R36 R36 K41 ["Small"]
      392 SETTABLEKS                       R36 R35 K30 ["size"]
      394 SETTABLEKS                       R2 R35 K2 ["isDisabled"]
      396 NEWCLOSURE                       R36 P15
      397 CAPTURE                          VAL R9
      398 CAPTURE                          VAL R6
      399 CAPTURE                          VAL R8
      400 CAPTURE                          VAL R7
      401 CAPTURE                          VAL R20
      402 SETTABLEKS                       R36 R35 K47 ["onActivated"]
      404 GETUPVAL                         R36 16
      405 GETTABLEKS                       R36 R36 K67 ["DailyUsage"]
      407 GETTABLEKS                       R36 R36 K72 ["LimitIncreaseButton"]
      409 SETTABLEKS                       R36 R35 K63 ["testId"]
      411 CALL                             R33 2 1
      412 SETTABLEKS                       R33 R32 K19 ["IncreaseButton"]
      414 CALL                             R29 3 -1
      415 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Resources"]
       37 GETTABLEKS                       R6 R6 K13 ["Localization"]
       39 GETTABLEKS                       R6 R6 K14 ["Translator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K7 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["UsageFormat"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K16 ["IconButton"]
       53 GETTABLEKS                       R8 R2 K17 ["Menu"]
       55 GETTABLEKS                       R9 R2 K18 ["TextInput"]
       57 GETTABLEKS                       R10 R2 K19 ["View"]
       59 GETTABLEKS                       R11 R2 K20 ["Enums"]
       61 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       63 GETTABLEKS                       R12 R2 K20 ["Enums"]
       65 GETTABLEKS                       R12 R12 K22 ["IconName"]
       67 GETTABLEKS                       R13 R2 K20 ["Enums"]
       69 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       71 GETTABLEKS                       R14 R2 K20 ["Enums"]
       73 GETTABLEKS                       R14 R14 K24 ["PopoverAlign"]
       75 GETTABLEKS                       R15 R2 K20 ["Enums"]
       77 GETTABLEKS                       R15 R15 K25 ["PopoverSide"]
       79 GETTABLEKS                       R16 R3 K26 ["createElement"]
       81 NEWTABLE                         R17 0 3
       83 LOADN                            R18 500
       84 LOADN                            R19 2000
       85 LOADN                            R20 5000
       86 SETLIST                          R17 R18 3 [1]
       88 GETIMPORT                        R18 K29 [UDim.new]
       90 LOADN                            R19 0
       91 LOADN                            R20 130
       92 CALL                             R18 2 1
       93 DUPCLOSURE                       R19 K30 [PROTO_0]
       94 DUPCLOSURE                       R20 K31 [PROTO_19]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R17
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R4
      112 GETTABLEKS                       R21 R3 K32 ["memo"]
      114 MOVE                             R22 R20
      115 CALL                             R21 1 -1
      116 RETURN                           R21 -1
