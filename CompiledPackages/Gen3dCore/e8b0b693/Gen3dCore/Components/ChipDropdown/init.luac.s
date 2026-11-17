PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["find"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["items"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["value"]
        5 JUMPIFEQ                         R0 R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["onValueChange"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["find"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["items"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETTABLEKS                       R2 R1 K2 ["renderSubmenu"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"id", "text", "isDisabled", "isChecked", "hasSubmenu"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["text"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETTABLEKS                       R2 R0 K2 ["isDisabled"]
       11 SETTABLEKS                       R2 R1 K2 ["isDisabled"]
       13 GETTABLEKS                       R3 R0 K0 ["id"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["value"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K3 ["isChecked"]
       24 GETTABLEKS                       R3 R0 K7 ["renderSubmenu"]
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R1 K4 ["hasSubmenu"]
       32 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K3 ["useEventCallback"]
       22 NEWCLOSURE                       R8 P1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K3 ["useEventCallback"]
       29 NEWCLOSURE                       R9 P2
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R0
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K3 ["useEventCallback"]
       36 NEWCLOSURE                       R10 P3
       37 CAPTURE                          VAL R5
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K3 ["useEventCallback"]
       42 NEWCLOSURE                       R11 P4
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R8
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 3
       49 GETTABLEKS                       R11 R11 K3 ["useEventCallback"]
       51 NEWCLOSURE                       R12 P5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CALL                             R11 1 1
       56 GETTABLEKS                       R13 R0 K4 ["value"]
       58 GETUPVAL                         R14 2
       59 GETTABLEKS                       R14 R14 K5 ["find"]
       61 GETTABLEKS                       R15 R0 K6 ["items"]
       63 NEWCLOSURE                       R16 P6
       64 CAPTURE                          VAL R13
       65 CALL                             R14 2 1
       66 MOVE                             R12 R14
       67 JUMPIFEQKNIL                     R4 ; [+10]
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R13 R13 K5 ["find"]
       72 GETTABLEKS                       R14 R0 K6 ["items"]
       74 NEWCLOSURE                       R15 P6
       75 CAPTURE                          VAL R4
       76 CALL                             R13 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R13
       79 GETUPVAL                         R14 2
       80 GETTABLEKS                       R14 R14 K7 ["map"]
       82 GETTABLEKS                       R15 R0 K6 ["items"]
       84 NEWCLOSURE                       R16 P7
       85 CAPTURE                          VAL R0
       86 CALL                             R14 2 1
       87 LOADNIL                          R15
       88 JUMPIFNOT                        R13 ; [+13]
       89 GETTABLEKS                       R16 R13 K8 ["renderSubmenu"]
       91 JUMPIFNOT                        R16 ; [+10]
       92 GETTABLEKS                       R16 R13 K8 ["renderSubmenu"]
       94 DUPTABLE                         R17 K11 [{"back", "select"}]
       95 SETTABLEKS                       R9 R17 K9 ["back"]
       97 SETTABLEKS                       R8 R17 K10 ["select"]
       99 CALL                             R16 1 1
      100 MOVE                             R15 R16
      101 JUMP                             ; [+24]
      102 GETUPVAL                         R16 1
      103 GETTABLEKS                       R16 R16 K12 ["createElement"]
      105 GETUPVAL                         R17 4
      106 DUPTABLE                         R18 K15 [{"items", "onActivated", "testId"}]
      107 SETTABLEKS                       R14 R18 K6 ["items"]
      109 SETTABLEKS                       R10 R18 K13 ["onActivated"]
      111 GETTABLEKS                       R20 R0 K14 ["testId"]
      113 JUMPIFNOT                        R20 ; [+7]
      114 LOADK                            R19 K16 ["%*--menu"]
      115 GETTABLEKS                       R21 R0 K14 ["testId"]
      117 NAMECALL                         R19 R19 K17 ["format"]
      119 CALL                             R19 2 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R19
      122 SETTABLEKS                       R19 R18 K14 ["testId"]
      124 CALL                             R16 2 1
      125 MOVE                             R15 R16
      126 GETUPVAL                         R16 1
      127 GETTABLEKS                       R16 R16 K12 ["createElement"]
      129 GETUPVAL                         R17 0
      130 GETTABLEKS                       R17 R17 K18 ["Popover"]
      132 GETTABLEKS                       R17 R17 K19 ["Root"]
      134 DUPTABLE                         R18 K21 [{"isOpen"}]
      135 SETTABLEKS                       R2 R18 K20 ["isOpen"]
      137 DUPTABLE                         R19 K24 [{"Anchor", "Content"}]
      138 GETUPVAL                         R20 1
      139 GETTABLEKS                       R20 R20 K12 ["createElement"]
      141 GETUPVAL                         R21 0
      142 GETTABLEKS                       R21 R21 K18 ["Popover"]
      144 GETTABLEKS                       R21 R21 K22 ["Anchor"]
      146 DUPTABLE                         R22 K26 [{"LayoutOrder"}]
      147 GETTABLEKS                       R23 R0 K25 ["LayoutOrder"]
      149 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      151 DUPTABLE                         R23 K28 [{"Chip"}]
      152 GETUPVAL                         R24 1
      153 GETTABLEKS                       R24 R24 K12 ["createElement"]
      155 GETUPVAL                         R25 0
      156 GETTABLEKS                       R25 R25 K27 ["Chip"]
      158 DUPTABLE                         R26 K34 [{"text", "trailing", "isChecked", "isDisabled", "size", "onActivated", "testId"}]
      159 GETTABLEKS                       R28 R0 K29 ["text"]
      161 JUMPIFEQKNIL                     R28 ; [+4]
      163 GETTABLEKS                       R27 R0 K29 ["text"]
      165 JUMP                             ; [+5]
      166 JUMPIFNOT                        R12 ; [+3]
      167 GETTABLEKS                       R27 R12 K29 ["text"]
      169 JUMP                             ; [+1]
      170 LOADK                            R27 K35 [""]
      171 SETTABLEKS                       R27 R26 K29 ["text"]
      173 GETUPVAL                         R27 0
      174 GETTABLEKS                       R27 R27 K36 ["Enums"]
      176 GETTABLEKS                       R27 R27 K37 ["IconName"]
      178 GETTABLEKS                       R27 R27 K38 ["ChevronSmallDown"]
      180 SETTABLEKS                       R27 R26 K30 ["trailing"]
      182 SETTABLEKS                       R2 R26 K31 ["isChecked"]
      184 GETTABLEKS                       R27 R0 K32 ["isDisabled"]
      186 SETTABLEKS                       R27 R26 K32 ["isDisabled"]
      188 GETUPVAL                         R27 0
      189 GETTABLEKS                       R27 R27 K36 ["Enums"]
      191 GETTABLEKS                       R27 R27 K39 ["ChipSize"]
      193 GETTABLEKS                       R27 R27 K40 ["Small"]
      195 SETTABLEKS                       R27 R26 K33 ["size"]
      197 SETTABLEKS                       R11 R26 K13 ["onActivated"]
      199 GETTABLEKS                       R27 R0 K14 ["testId"]
      201 SETTABLEKS                       R27 R26 K14 ["testId"]
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K27 ["Chip"]
      206 CALL                             R20 3 1
      207 SETTABLEKS                       R20 R19 K22 ["Anchor"]
      209 GETUPVAL                         R20 1
      210 GETTABLEKS                       R20 R20 K12 ["createElement"]
      212 GETUPVAL                         R21 0
      213 GETTABLEKS                       R21 R21 K18 ["Popover"]
      215 GETTABLEKS                       R21 R21 K23 ["Content"]
      217 DUPTABLE                         R22 K48 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      218 DUPTABLE                         R23 K51 [{"position", "offset"}]
      219 GETUPVAL                         R24 0
      220 GETTABLEKS                       R24 R24 K36 ["Enums"]
      222 GETTABLEKS                       R24 R24 K52 ["PopoverSide"]
      224 GETTABLEKS                       R24 R24 K53 ["Bottom"]
      226 SETTABLEKS                       R24 R23 K49 ["position"]
      228 GETTABLEKS                       R25 R1 K54 ["Stroke"]
      230 GETTABLEKS                       R25 R25 K55 ["Standard"]
      232 GETTABLEKS                       R26 R1 K56 ["Padding"]
      234 GETTABLEKS                       R26 R26 K40 ["Small"]
      236 ADD                              R24 R25 R26
      237 SETTABLEKS                       R24 R23 K50 ["offset"]
      239 SETTABLEKS                       R23 R22 K41 ["side"]
      241 GETUPVAL                         R23 0
      242 GETTABLEKS                       R23 R23 K36 ["Enums"]
      244 GETTABLEKS                       R23 R23 K57 ["PopoverAlign"]
      246 GETTABLEKS                       R23 R23 K58 ["Start"]
      248 SETTABLEKS                       R23 R22 K42 ["align"]
      250 SETTABLEKS                       R7 R22 K45 ["onPressedOutside"]
      252 GETTABLEKS                       R23 R1 K59 ["Color"]
      254 GETTABLEKS                       R23 R23 K60 ["Surface"]
      256 GETTABLEKS                       R23 R23 K61 ["Surface_200"]
      258 SETTABLEKS                       R23 R22 K46 ["backgroundStyle"]
      260 GETUPVAL                         R23 0
      261 GETTABLEKS                       R23 R23 K36 ["Enums"]
      263 GETTABLEKS                       R23 R23 K62 ["Radius"]
      265 GETTABLEKS                       R23 R23 K63 ["Medium"]
      267 SETTABLEKS                       R23 R22 K47 ["radius"]
      269 MOVE                             R23 R15
      270 CALL                             R20 3 1
      271 SETTABLEKS                       R20 R19 K23 ["Content"]
      273 CALL                             R16 3 -1
      274 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K11 ["ChipDropdownMenu"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K12 [PROTO_8]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 GETTABLEKS                       R8 R4 K13 ["memo"]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 -1
       46 RETURN                           R8 -1
