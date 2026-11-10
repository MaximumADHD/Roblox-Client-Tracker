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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["limit"]
        7 GETTABLEKS                       R3 R0 K1 ["isDisabled"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R3 R0 K2 ["onLimitChanged"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R1 ; [+3]
       19 MOVE                             R4 R1
       20 JUMP                             ; [+1]
       21 LOADN                            R4 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K3 ["useState"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K4 ["useRef"]
       30 LOADNIL                          R8
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K4 ["useRef"]
       35 LOADNIL                          R9
       36 CALL                             R8 1 1
       37 JUMPIFEQKNIL                     R5 ; [+3]
       39 MOVE                             R9 R5
       40 JUMP                             ; [+1]
       41 MOVE                             R9 R4
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K3 ["useState"]
       45 LOADB                            R11 0
       46 CALL                             R10 1 2
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K3 ["useState"]
       50 LOADB                            R13 0
       51 CALL                             R12 1 2
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R14 R14 K4 ["useRef"]
       55 LOADNIL                          R15
       56 CALL                             R14 1 1
       57 GETUPVAL                         R15 1
       58 GETTABLEKS                       R15 R15 K5 ["useMemo"]
       60 DUPCLOSURE                       R16 K6 [PROTO_1]
       61 CAPTURE                          UPVAL U2
       62 NEWTABLE                         R17 0 1
       64 GETUPVAL                         R18 2
       65 GETTABLEKS                       R18 R18 K7 ["locale"]
       67 SETLIST                          R17 R18 1 [1]
       69 CALL                             R15 2 1
       70 GETUPVAL                         R16 1
       71 GETTABLEKS                       R16 R16 K5 ["useMemo"]
       73 NEWCLOSURE                       R17 P1
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R12
       76 CAPTURE                          UPVAL U3
       77 NEWTABLE                         R18 0 2
       79 MOVE                             R19 R9
       80 MOVE                             R20 R12
       81 SETLIST                          R18 R19 2 [1]
       83 CALL                             R16 2 1
       84 GETUPVAL                         R17 1
       85 GETTABLEKS                       R17 R17 K3 ["useState"]
       87 MOVE                             R18 R16
       88 CALL                             R17 1 2
       89 GETUPVAL                         R19 1
       90 GETTABLEKS                       R19 R19 K8 ["useEffect"]
       92 NEWCLOSURE                       R20 P2
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R16
       95 NEWTABLE                         R21 0 1
       97 MOVE                             R22 R16
       98 SETLIST                          R21 R22 1 [1]
      100 CALL                             R19 2 0
      101 GETUPVAL                         R19 1
      102 GETTABLEKS                       R19 R19 K9 ["useCallback"]
      104 NEWCLOSURE                       R20 P3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R6
      108 NEWTABLE                         R21 0 0
      110 CALL                             R19 2 1
      111 GETUPVAL                         R20 1
      112 GETTABLEKS                       R20 R20 K9 ["useCallback"]
      114 NEWCLOSURE                       R21 P4
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R3
      117 NEWTABLE                         R22 0 2
      119 MOVE                             R23 R19
      120 MOVE                             R24 R3
      121 SETLIST                          R22 R23 2 [1]
      123 CALL                             R20 2 1
      124 GETUPVAL                         R21 1
      125 GETTABLEKS                       R21 R21 K4 ["useRef"]
      127 LOADNIL                          R22
      128 CALL                             R21 1 1
      129 SETTABLEKS                       R20 R21 K10 ["current"]
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R22 R22 K5 ["useMemo"]
      134 NEWCLOSURE                       R23 P5
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R15
      138 CAPTURE                          UPVAL U3
      139 NEWTABLE                         R24 0 2
      141 MOVE                             R25 R9
      142 GETTABLEKS                       R26 R15 K11 ["NoLimit"]
      144 SETLIST                          R24 R25 2 [1]
      146 CALL                             R22 2 1
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R23 R23 K9 ["useCallback"]
      150 NEWCLOSURE                       R24 P6
      151 CAPTURE                          VAL R11
      152 NEWTABLE                         R25 0 0
      154 CALL                             R23 2 1
      155 GETUPVAL                         R24 1
      156 GETTABLEKS                       R24 R24 K9 ["useCallback"]
      158 NEWCLOSURE                       R25 P7
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R20
      161 NEWTABLE                         R26 0 2
      163 MOVE                             R27 R23
      164 MOVE                             R28 R20
      165 SETLIST                          R26 R27 2 [1]
      167 CALL                             R24 2 1
      168 GETUPVAL                         R25 1
      169 GETTABLEKS                       R25 R25 K9 ["useCallback"]
      171 NEWCLOSURE                       R26 P8
      172 CAPTURE                          VAL R18
      173 NEWTABLE                         R27 0 0
      175 CALL                             R25 2 1
      176 GETUPVAL                         R26 1
      177 GETTABLEKS                       R26 R26 K9 ["useCallback"]
      179 NEWCLOSURE                       R27 P9
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R17
      183 NEWTABLE                         R28 0 2
      185 MOVE                             R29 R20
      186 MOVE                             R30 R17
      187 SETLIST                          R28 R29 2 [1]
      189 CALL                             R26 2 1
      190 GETUPVAL                         R27 1
      191 GETTABLEKS                       R27 R27 K9 ["useCallback"]
      193 NEWCLOSURE                       R28 P10
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R13
      198 NEWTABLE                         R29 0 3
      200 MOVE                             R30 R19
      201 MOVE                             R31 R23
      202 MOVE                             R32 R2
      203 SETLIST                          R29 R30 3 [1]
      205 CALL                             R27 2 1
      206 NEWCLOSURE                       R28 P11
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R20
      212 GETUPVAL                         R29 1
      213 GETTABLEKS                       R29 R29 K8 ["useEffect"]
      215 NEWCLOSURE                       R30 P12
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R21
      219 NEWTABLE                         R31 0 0
      221 CALL                             R29 2 0
      222 GETUPVAL                         R29 5
      223 GETUPVAL                         R30 6
      224 DUPTABLE                         R31 K15 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"]}]
      225 GETTABLEKS                       R32 R0 K14 ["LayoutOrder"]
      227 SETTABLEKS                       R32 R31 K14 ["LayoutOrder"]
      229 DUPTABLE                         R32 K19 [{"InputContainer", "DecreaseButton", "IncreaseButton"}]
      230 GETUPVAL                         R33 5
      231 GETUPVAL                         R34 6
      232 DUPTABLE                         R35 K23 [{["tag"] = "auto-xy", ["ref"], ["LayoutOrder"] = 1}]
      233 SETTABLEKS                       R14 R35 K21 ["ref"]
      235 DUPTABLE                         R36 K26 [{"LimitInput", "LimitMenu"}]
      236 GETUPVAL                         R37 5
      237 GETUPVAL                         R38 7
      238 DUPTABLE                         R39 K39 [{["label"] = "", ["size"], ["width"], ["text"], ["placeholder"], ["leadingIcon"], ["isDisabled"], ["iconTrailing"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["onReturnPressed"]}]
      239 GETUPVAL                         R40 8
      240 GETTABLEKS                       R40 R40 K40 ["Small"]
      242 SETTABLEKS                       R40 R39 K29 ["size"]
      244 GETIMPORT                        R40 K43 [UDim.new]
      246 LOADN                            R41 0
      247 LOADN                            R42 130
      248 CALL                             R40 2 1
      249 SETTABLEKS                       R40 R39 K30 ["width"]
      251 SETTABLEKS                       R17 R39 K31 ["text"]
      253 GETTABLEKS                       R40 R15 K11 ["NoLimit"]
      255 SETTABLEKS                       R40 R39 K32 ["placeholder"]
      257 GETUPVAL                         R40 9
      258 GETTABLEKS                       R40 R40 K44 ["Robux"]
      260 SETTABLEKS                       R40 R39 K33 ["leadingIcon"]
      262 SETTABLEKS                       R2 R39 K1 ["isDisabled"]
      264 DUPTABLE                         R40 K47 [{"name", "onActivated"}]
      265 JUMPIFNOT                        R10 ; [+4]
      266 GETUPVAL                         R41 9
      267 GETTABLEKS                       R41 R41 K48 ["ChevronSmallUp"]
      269 JUMP                             ; [+3]
      270 GETUPVAL                         R41 9
      271 GETTABLEKS                       R41 R41 K49 ["ChevronSmallDown"]
      273 SETTABLEKS                       R41 R40 K45 ["name"]
      275 NEWCLOSURE                       R41 P13
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R11
      278 CAPTURE                          VAL R10
      279 SETTABLEKS                       R41 R40 K46 ["onActivated"]
      281 SETTABLEKS                       R40 R39 K34 ["iconTrailing"]
      283 SETTABLEKS                       R25 R39 K35 ["onChanged"]
      285 SETTABLEKS                       R27 R39 K36 ["onFocusGained"]
      287 SETTABLEKS                       R26 R39 K37 ["onFocusLost"]
      289 SETTABLEKS                       R26 R39 K38 ["onReturnPressed"]
      291 CALL                             R37 2 1
      292 SETTABLEKS                       R37 R36 K24 ["LimitInput"]
      294 GETUPVAL                         R37 5
      295 GETUPVAL                         R38 10
      296 DUPTABLE                         R39 K56 [{"isOpen", "items", "size", "width", "side", "align", "anchorRef", "onActivated", "onPressedOutside"}]
      297 MOVE                             R40 R10
      298 JUMPIFNOT                        R40 ; [+1]
      299 NOT                              R40 R2
      300 SETTABLEKS                       R40 R39 K50 ["isOpen"]
      302 SETTABLEKS                       R22 R39 K51 ["items"]
      304 GETUPVAL                         R40 8
      305 GETTABLEKS                       R40 R40 K40 ["Small"]
      307 SETTABLEKS                       R40 R39 K29 ["size"]
      309 GETUPVAL                         R40 11
      310 SETTABLEKS                       R40 R39 K30 ["width"]
      312 GETUPVAL                         R40 12
      313 GETTABLEKS                       R40 R40 K57 ["Bottom"]
      315 SETTABLEKS                       R40 R39 K52 ["side"]
      317 GETUPVAL                         R40 13
      318 GETTABLEKS                       R40 R40 K58 ["End"]
      320 SETTABLEKS                       R40 R39 K53 ["align"]
      322 SETTABLEKS                       R14 R39 K54 ["anchorRef"]
      324 SETTABLEKS                       R24 R39 K46 ["onActivated"]
      326 SETTABLEKS                       R23 R39 K55 ["onPressedOutside"]
      328 CALL                             R37 2 1
      329 SETTABLEKS                       R37 R36 K25 ["LimitMenu"]
      331 CALL                             R33 3 1
      332 SETTABLEKS                       R33 R32 K16 ["InputContainer"]
      334 GETUPVAL                         R33 5
      335 GETUPVAL                         R34 14
      336 DUPTABLE                         R35 K63 [{["icon"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"]}]
      337 GETUPVAL                         R36 9
      338 GETTABLEKS                       R36 R36 K64 ["MinusSmall"]
      340 SETTABLEKS                       R36 R35 K59 ["icon"]
      342 GETUPVAL                         R36 15
      343 GETTABLEKS                       R36 R36 K65 ["Utility"]
      345 SETTABLEKS                       R36 R35 K60 ["variant"]
      347 GETUPVAL                         R36 8
      348 GETTABLEKS                       R36 R36 K40 ["Small"]
      350 SETTABLEKS                       R36 R35 K29 ["size"]
      352 MOVE                             R36 R2
      353 JUMPIF                           R36 ; [+5]
      354 LOADN                            R37 100
      355 JUMPIFLE                         R9 R37 ; [+2]
      357 LOADB                            R36 0 +1
      358 LOADB                            R36 1
      359 SETTABLEKS                       R36 R35 K1 ["isDisabled"]
      361 NEWCLOSURE                       R36 P14
      362 CAPTURE                          VAL R28
      363 SETTABLEKS                       R36 R35 K46 ["onActivated"]
      365 GETUPVAL                         R36 16
      366 GETTABLEKS                       R36 R36 K66 ["DailyUsage"]
      368 GETTABLEKS                       R36 R36 K67 ["LimitDecreaseButton"]
      370 SETTABLEKS                       R36 R35 K62 ["testId"]
      372 CALL                             R33 2 1
      373 SETTABLEKS                       R33 R32 K17 ["DecreaseButton"]
      375 GETUPVAL                         R33 5
      376 GETUPVAL                         R34 14
      377 DUPTABLE                         R35 K69 [{["icon"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 3, ["testId"]}]
      378 GETUPVAL                         R36 9
      379 GETTABLEKS                       R36 R36 K70 ["PlusSmall"]
      381 SETTABLEKS                       R36 R35 K59 ["icon"]
      383 GETUPVAL                         R36 15
      384 GETTABLEKS                       R36 R36 K65 ["Utility"]
      386 SETTABLEKS                       R36 R35 K60 ["variant"]
      388 GETUPVAL                         R36 8
      389 GETTABLEKS                       R36 R36 K40 ["Small"]
      391 SETTABLEKS                       R36 R35 K29 ["size"]
      393 SETTABLEKS                       R2 R35 K1 ["isDisabled"]
      395 NEWCLOSURE                       R36 P15
      396 CAPTURE                          VAL R9
      397 CAPTURE                          VAL R6
      398 CAPTURE                          VAL R8
      399 CAPTURE                          VAL R7
      400 CAPTURE                          VAL R20
      401 SETTABLEKS                       R36 R35 K46 ["onActivated"]
      403 GETUPVAL                         R36 16
      404 GETTABLEKS                       R36 R36 K66 ["DailyUsage"]
      406 GETTABLEKS                       R36 R36 K71 ["LimitIncreaseButton"]
      408 SETTABLEKS                       R36 R35 K62 ["testId"]
      410 CALL                             R33 2 1
      411 SETTABLEKS                       R33 R32 K18 ["IncreaseButton"]
      413 CALL                             R29 3 -1
      414 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["TestIds"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Resources"]
       32 GETTABLEKS                       R5 R5 K12 ["Localization"]
       34 GETTABLEKS                       R5 R5 K13 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["UsageFormat"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["FlagUtils"]
       50 GETTABLEKS                       R7 R7 K16 ["getIsCreditMeteringEnabled"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K17 ["IconButton"]
       55 GETTABLEKS                       R8 R1 K18 ["Menu"]
       57 GETTABLEKS                       R9 R1 K19 ["TextInput"]
       59 GETTABLEKS                       R10 R1 K20 ["View"]
       61 GETTABLEKS                       R11 R1 K21 ["Enums"]
       63 GETTABLEKS                       R11 R11 K22 ["ButtonVariant"]
       65 GETTABLEKS                       R12 R1 K21 ["Enums"]
       67 GETTABLEKS                       R12 R12 K23 ["IconName"]
       69 GETTABLEKS                       R13 R1 K21 ["Enums"]
       71 GETTABLEKS                       R13 R13 K24 ["InputSize"]
       73 GETTABLEKS                       R14 R1 K21 ["Enums"]
       75 GETTABLEKS                       R14 R14 K25 ["PopoverAlign"]
       77 GETTABLEKS                       R15 R1 K21 ["Enums"]
       79 GETTABLEKS                       R15 R15 K26 ["PopoverSide"]
       81 GETTABLEKS                       R16 R2 K27 ["createElement"]
       83 NEWTABLE                         R17 0 3
       85 LOADN                            R18 500
       86 LOADN                            R19 2000
       87 LOADN                            R20 5000
       88 SETLIST                          R17 R18 3 [1]
       90 GETIMPORT                        R18 K30 [UDim.new]
       92 LOADN                            R19 0
       93 LOADN                            R20 130
       94 CALL                             R18 2 1
       95 DUPCLOSURE                       R19 K31 [PROTO_0]
       96 DUPCLOSURE                       R20 K32 [PROTO_19]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R3
      114 GETTABLEKS                       R21 R2 K33 ["memo"]
      116 MOVE                             R22 R20
      117 CALL                             R21 1 -1
      118 RETURN                           R21 -1
