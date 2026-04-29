PROTO_0:
        0 FASTCALL1                        MATH_ABS R0 ; [+3]
        1 MOVE                             R8 R0
        2 GETIMPORT                        R7 K3 [math.abs]
        4 CALL                             R7 1 1
        5 FASTCALL1                        MATH_LOG10 R7 ; [+2]
        6 GETIMPORT                        R6 K5 [math.log10]
        8 CALL                             R6 1 1
        9 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       10 GETIMPORT                        R5 K7 [math.floor]
       12 CALL                             R5 1 1
       13 ADDK                             R4 R5 K0 [1]
       14 FASTCALL1                        MATH_ABS R1 ; [+3]
       15 MOVE                             R9 R1
       16 GETIMPORT                        R8 K3 [math.abs]
       18 CALL                             R8 1 1
       19 FASTCALL1                        MATH_LOG10 R8 ; [+2]
       20 GETIMPORT                        R7 K5 [math.log10]
       22 CALL                             R7 1 1
       23 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       24 GETIMPORT                        R6 K7 [math.floor]
       26 CALL                             R6 1 1
       27 ADDK                             R5 R6 K0 [1]
       28 LOADN                            R6 1
       29 FASTCALL                         MATH_MAX ; [+2]
       30 GETIMPORT                        R3 K9 [math.max]
       32 CALL                             R3 3 1
       33 GETIMPORT                        R4 K12 [string.rep]
       35 LOADK                            R5 K13 ["9"]
       36 MOVE                             R6 R3
       37 CALL                             R4 2 1
       38 LOADN                            R5 0
       39 JUMPIFNOTLT                      R5 R2 ; [+9]
       41 MOVE                             R5 R4
       42 LOADK                            R6 K14 ["."]
       43 GETIMPORT                        R7 K12 [string.rep]
       45 LOADK                            R8 K13 ["9"]
       46 MOVE                             R9 R2
       47 CALL                             R7 2 1
       48 CONCAT                           R4 R5 R7
       49 LOADN                            R5 0
       50 JUMPIFNOTLT                      R0 R5 ; [+7]
       52 LOADK                            R5 K15 ["-%*"]
       53 MOVE                             R7 R4
       54 NAMECALL                         R5 R5 K16 ["format"]
       56 CALL                             R5 2 1
       57 MOVE                             R4 R5
       58 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Item"]
        3 GETTABLEKS                       R1 R2 K1 ["DisplayFormat"]
        5 JUMPIFEQKNIL                     R1 ; [+11]
        7 GETIMPORT                        R1 K4 [string.format]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["Item"]
       12 GETTABLEKS                       R2 R3 K1 ["DisplayFormat"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 GETIMPORT                        R1 K4 [string.format]
       19 LOADK                            R3 K5 ["%%.%*f"]
       20 GETUPVAL                         R5 1
       21 NAMECALL                         R3 R3 K3 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 MOVE                             R3 R0
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["getWidestNumberText did not produce a valid number"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 LOADN                            R6 18
       20 GETIMPORT                        R7 K9 [Enum.Font.SourceSans]
       22 GETIMPORT                        R8 K12 [Vector2.new]
       24 LOADK                            R9 K13 [∞]
       25 LOADK                            R10 K13 [∞]
       26 CALL                             R8 2 -1
       27 NAMECALL                         R3 R3 K14 ["GetTextSize"]
       29 CALL                             R3 -1 1
       30 GETTABLEKS                       R2 R3 K15 ["X"]
       32 ADDK                             R1 R2 K5 [12]
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Item"]
        3 GETTABLEKS                       R2 R3 K1 ["IncrementStep"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       11 LOADK                            R2 K2 ["Decrement with no IncrementStep"]
       12 GETIMPORT                        R0 K4 [assert]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["Item"]
       18 GETTABLEKS                       R0 R1 K5 ["OnChange"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["Item"]
       23 GETTABLEKS                       R3 R4 K6 ["Value"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["Item"]
       28 GETTABLEKS                       R4 R5 K1 ["IncrementStep"]
       30 SUB                              R2 R3 R4
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K0 ["Item"]
       34 GETTABLEKS                       R3 R4 K7 ["Min"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K0 ["Item"]
       39 GETTABLEKS                       R4 R5 K8 ["Max"]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R1 K11 [math.clamp]
       44 CALL                             R1 3 1
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Item"]
        3 GETTABLEKS                       R2 R3 K1 ["IncrementStep"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       11 LOADK                            R2 K2 ["Increment with no IncrementStep"]
       12 GETIMPORT                        R0 K4 [assert]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["Item"]
       18 GETTABLEKS                       R0 R1 K5 ["OnChange"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["Item"]
       23 GETTABLEKS                       R3 R4 K6 ["Value"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["Item"]
       28 GETTABLEKS                       R4 R5 K1 ["IncrementStep"]
       30 ADD                              R2 R3 R4
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K0 ["Item"]
       34 GETTABLEKS                       R3 R4 K7 ["Min"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K0 ["Item"]
       39 GETTABLEKS                       R4 R5 K8 ["Max"]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R1 K11 [math.clamp]
       44 CALL                             R1 3 1
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 NAMECALL                         R1 R0 K0 ["ReleaseFocus"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K2 ["Text"]
        8 LENGTH                           R2 R3
        9 ADDK                             R1 R2 K1 [1]
       10 SETTABLEKS                       R1 R0 K3 ["CursorPosition"]
       12 GETTABLEKS                       R3 R0 K2 ["Text"]
       14 LENGTH                           R2 R3
       15 MINUS                            R1 R2
       16 SETTABLEKS                       R1 R0 K4 ["SelectionStart"]
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["Text"]
        5 FASTCALL1                        TONUMBER R2 ; [+2]
        6 GETIMPORT                        R1 K2 [tonumber]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+11]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["Item"]
       15 GETTABLEKS                       R3 R4 K4 ["Value"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R0 K0 ["Text"]
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKNIL                  R1 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       27 LOADK                            R4 K5 ["Luau"]
       28 GETIMPORT                        R2 K7 [assert]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K3 ["Item"]
       34 GETTABLEKS                       R4 R5 K8 ["Min"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K3 ["Item"]
       39 GETTABLEKS                       R5 R6 K9 ["Max"]
       41 FASTCALL3                        MATH_CLAMP R1 R4 R5
       43 MOVE                             R3 R1
       44 GETIMPORT                        R2 K12 [math.clamp]
       46 CALL                             R2 3 1
       47 GETUPVAL                         R3 1
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R0 K0 ["Text"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R4 R5 K3 ["Item"]
       55 GETTABLEKS                       R3 R4 K13 ["OnChange"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 0
       59 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["IsFocused"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Text"]
        7 LOADK                            R2 K2 ["([0-9]*)%.?[0-9]*$"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["Item"]
       11 GETTABLEKS                       R3 R4 K4 ["Min"]
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R3 R4 ; [+4]
       16 LOADK                            R3 K5 ["%-?"]
       17 MOVE                             R4 R2
       18 CONCAT                           R2 R3 R4
       19 LENGTH                           R3 R1
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R3 ; [+16]
       23 LOADK                            R6 K6 ["^"]
       24 MOVE                             R7 R2
       25 CONCAT                           R5 R6 R7
       26 NAMECALL                         R3 R1 K7 ["match"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+8]
       30 LOADN                            R5 1
       31 LENGTH                           R7 R1
       32 SUBK                             R6 R7 K8 [1]
       33 NAMECALL                         R3 R1 K9 ["sub"]
       35 CALL                             R3 3 1
       36 MOVE                             R1 R3
       37 JUMPBACK                         ; [-19]
       38 SETTABLEKS                       R1 R0 K1 ["Text"]
       40 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R3 K1 ["Enabled"]
        4 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETTABLEKS                       R4 R0 K0 ["Item"]
       10 GETTABLEKS                       R3 R4 K3 ["InputPrecision"]
       12 ORK                              R2 R3 K2 [2]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 2
       21 MOVE                             R6 R2
       22 GETTABLEKS                       R8 R0 K0 ["Item"]
       24 GETTABLEKS                       R7 R8 K5 ["DisplayFormat"]
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R6 R0 K0 ["Item"]
       32 GETTABLEKS                       R5 R6 K6 ["Min"]
       34 GETTABLEKS                       R7 R0 K0 ["Item"]
       36 GETTABLEKS                       R6 R7 K7 ["Max"]
       38 MOVE                             R7 R2
       39 CALL                             R4 3 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K8 ["useMemo"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R7 0 2
       49 MOVE                             R8 R4
       50 MOVE                             R9 R3
       51 SETLIST                          R7 R8 2 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       57 NEWCLOSURE                       R7 P2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R0 K0 ["Item"]
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R9 0 1
       73 GETTABLEKS                       R10 R0 K0 ["Item"]
       75 SETLIST                          R9 R10 1 [1]
       77 CALL                             R7 2 1
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       81 NEWCLOSURE                       R9 P4
       82 CAPTURE                          VAL R1
       83 NEWTABLE                         R10 0 1
       85 MOVE                             R11 R1
       86 SETLIST                          R10 R11 1 [1]
       88 CALL                             R8 2 1
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       92 NEWCLOSURE                       R10 P5
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R11 0 3
       98 MOVE                             R12 R1
       99 GETTABLEKS                       R13 R0 K0 ["Item"]
      101 MOVE                             R14 R3
      102 SETLIST                          R11 R12 3 [1]
      104 CALL                             R9 2 1
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R10 R11 K4 ["useCallback"]
      108 NEWCLOSURE                       R11 P6
      109 CAPTURE                          VAL R0
      110 NEWTABLE                         R12 0 1
      112 GETTABLEKS                       R13 R0 K0 ["Item"]
      114 SETLIST                          R12 R13 1 [1]
      116 CALL                             R10 2 1
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R11 R12 K9 ["new"]
      120 CALL                             R11 0 1
      121 GETUPVAL                         R13 0
      122 GETTABLEKS                       R12 R13 K10 ["createElement"]
      124 LOADK                            R13 K11 ["Frame"]
      125 NEWTABLE                         R14 2 0
      127 GETTABLEKS                       R15 R0 K12 ["NextOrder"]
      129 CALL                             R15 0 1
      130 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R15 R16 K14 ["Tag"]
      135 GETUPVAL                         R16 4
      136 LOADK                            R17 K15 ["VPF-Slider"]
      137 JUMPIFNOT                        R1 ; [+2]
      138 LOADK                            R18 K16 ["VPF-Slider--Enabled"]
      139 JUMP                             ; [+1]
      140 LOADK                            R18 K17 ["VPF-Slider--Disabled"]
      141 CALL                             R16 2 1
      142 SETTABLE                         R16 R14 R15
      143 DUPTABLE                         R15 K21 [{"Icon", "Value", "Slider"}]
      144 LOADB                            R16 0
      145 GETTABLEKS                       R18 R0 K0 ["Item"]
      147 GETTABLEKS                       R17 R18 K18 ["Icon"]
      149 JUMPIFEQKNIL                     R17 ; [+60]
      151 GETUPVAL                         R17 0
      152 GETTABLEKS                       R16 R17 K10 ["createElement"]
      154 LOADK                            R17 K11 ["Frame"]
      155 NEWTABLE                         R18 2 0
      157 NAMECALL                         R19 R11 K22 ["getNextOrder"]
      159 CALL                             R19 1 1
      160 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      162 GETUPVAL                         R20 0
      163 GETTABLEKS                       R19 R20 K14 ["Tag"]
      165 LOADK                            R20 K23 ["X-Fill VPF-X-Square"]
      166 SETTABLE                         R20 R18 R19
      167 DUPTABLE                         R19 K25 [{"Tooltip", "Icon"}]
      168 LOADB                            R20 0
      169 GETTABLEKS                       R22 R0 K0 ["Item"]
      171 GETTABLEKS                       R21 R22 K24 ["Tooltip"]
      173 JUMPIFEQKNIL                     R21 ; [+19]
      175 GETUPVAL                         R21 0
      176 GETTABLEKS                       R20 R21 K10 ["createElement"]
      178 GETUPVAL                         R21 5
      179 DUPTABLE                         R22 K28 [{"Title", "Description"}]
      180 GETTABLEKS                       R24 R0 K0 ["Item"]
      182 GETTABLEKS                       R23 R24 K24 ["Tooltip"]
      184 SETTABLEKS                       R23 R22 K26 ["Title"]
      186 GETTABLEKS                       R24 R0 K0 ["Item"]
      188 GETTABLEKS                       R23 R24 K29 ["TooltipDescription"]
      190 SETTABLEKS                       R23 R22 K27 ["Description"]
      192 CALL                             R20 2 1
      193 SETTABLEKS                       R20 R19 K24 ["Tooltip"]
      195 GETUPVAL                         R21 0
      196 GETTABLEKS                       R20 R21 K10 ["createElement"]
      198 GETUPVAL                         R21 6
      199 DUPTABLE                         R22 K30 [{"Icon"}]
      200 GETTABLEKS                       R24 R0 K0 ["Item"]
      202 GETTABLEKS                       R23 R24 K18 ["Icon"]
      204 SETTABLEKS                       R23 R22 K18 ["Icon"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K18 ["Icon"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K18 ["Icon"]
      212 GETTABLEKS                       R18 R0 K0 ["Item"]
      214 GETTABLEKS                       R17 R18 K31 ["IncrementStep"]
      216 JUMPIFNOTEQKNIL                  R17 ; [+54]
      218 GETUPVAL                         R17 0
      219 GETTABLEKS                       R16 R17 K10 ["createElement"]
      221 LOADK                            R17 K32 ["TextBox"]
      222 NEWTABLE                         R18 8 0
      224 NAMECALL                         R19 R11 K22 ["getNextOrder"]
      226 CALL                             R19 1 1
      227 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      229 GETIMPORT                        R19 K34 [UDim2.new]
      231 LOADN                            R20 0
      232 MOVE                             R21 R5
      233 LOADN                            R22 1
      234 LOADN                            R23 0
      235 CALL                             R19 4 1
      236 SETTABLEKS                       R19 R18 K35 ["Size"]
      238 MOVE                             R19 R3
      239 GETTABLEKS                       R21 R0 K0 ["Item"]
      241 GETTABLEKS                       R20 R21 K19 ["Value"]
      243 CALL                             R19 1 1
      244 SETTABLEKS                       R19 R18 K36 ["Text"]
      246 GETUPVAL                         R21 0
      247 GETTABLEKS                       R20 R21 K37 ["Event"]
      249 GETTABLEKS                       R19 R20 K38 ["Focused"]
      251 SETTABLE                         R8 R18 R19
      252 GETUPVAL                         R21 0
      253 GETTABLEKS                       R20 R21 K37 ["Event"]
      255 GETTABLEKS                       R19 R20 K39 ["FocusLost"]
      257 SETTABLE                         R9 R18 R19
      258 GETUPVAL                         R21 0
      259 GETTABLEKS                       R20 R21 K40 ["Change"]
      261 GETTABLEKS                       R19 R20 K36 ["Text"]
      263 SETTABLE                         R10 R18 R19
      264 GETUPVAL                         R20 0
      265 GETTABLEKS                       R19 R20 K14 ["Tag"]
      267 LOADK                            R20 K41 ["VPF-Slider__Input"]
      268 SETTABLE                         R20 R18 R19
      269 CALL                             R16 2 1
      270 JUMP                             ; [+230]
      271 GETUPVAL                         R17 0
      272 GETTABLEKS                       R16 R17 K10 ["createElement"]
      274 LOADK                            R17 K11 ["Frame"]
      275 DUPTABLE                         R18 K42 [{"LayoutOrder", "Size"}]
      276 NAMECALL                         R19 R11 K22 ["getNextOrder"]
      278 CALL                             R19 1 1
      279 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      281 GETIMPORT                        R19 K34 [UDim2.new]
      283 LOADN                            R20 0
      284 ADDK                             R21 R5 K43 [24]
      285 LOADN                            R22 1
      286 LOADN                            R23 0
      287 CALL                             R19 4 1
      288 SETTABLEKS                       R19 R18 K35 ["Size"]
      290 DUPTABLE                         R19 K47 [{"Decrement", "Input", "Increment"}]
      291 GETUPVAL                         R21 0
      292 GETTABLEKS                       R20 R21 K10 ["createElement"]
      294 LOADK                            R21 K48 ["TextButton"]
      295 NEWTABLE                         R22 2 0
      297 GETUPVAL                         R25 0
      298 GETTABLEKS                       R24 R25 K37 ["Event"]
      300 GETTABLEKS                       R23 R24 K49 ["Activated"]
      302 JUMPIFNOT                        R1 ; [+2]
      303 MOVE                             R24 R6
      304 JUMP                             ; [+1]
      305 LOADNIL                          R24
      306 SETTABLE                         R24 R22 R23
      307 GETUPVAL                         R24 0
      308 GETTABLEKS                       R23 R24 K14 ["Tag"]
      310 LOADK                            R24 K50 ["VPF-Slider__StepButton"]
      311 SETTABLE                         R24 R22 R23
      312 DUPTABLE                         R23 K52 [{"Minus"}]
      313 GETUPVAL                         R25 0
      314 GETTABLEKS                       R24 R25 K10 ["createElement"]
      316 LOADK                            R25 K11 ["Frame"]
      317 NEWTABLE                         R26 4 0
      319 GETIMPORT                        R27 K54 [Vector2.new]
      321 LOADN                            R28 0
      322 LOADK                            R29 K55 [0.5]
      323 CALL                             R27 2 1
      324 SETTABLEKS                       R27 R26 K56 ["AnchorPoint"]
      326 GETIMPORT                        R27 K34 [UDim2.new]
      328 LOADN                            R28 0
      329 LOADN                            R29 3
      330 LOADK                            R30 K55 [0.5]
      331 LOADN                            R31 0
      332 CALL                             R27 4 1
      333 SETTABLEKS                       R27 R26 K57 ["Position"]
      335 GETUPVAL                         R28 0
      336 GETTABLEKS                       R27 R28 K14 ["Tag"]
      338 LOADK                            R28 K58 ["VPF-Slider__BarSegment"]
      339 SETTABLE                         R28 R26 R27
      340 CALL                             R24 2 1
      341 SETTABLEKS                       R24 R23 K51 ["Minus"]
      343 CALL                             R20 3 1
      344 SETTABLEKS                       R20 R19 K44 ["Decrement"]
      346 GETUPVAL                         R21 0
      347 GETTABLEKS                       R20 R21 K10 ["createElement"]
      349 LOADK                            R21 K32 ["TextBox"]
      350 NEWTABLE                         R22 8 0
      352 GETIMPORT                        R23 K60 [UDim2.fromOffset]
      354 LOADN                            R24 15
      355 LOADN                            R25 0
      356 CALL                             R23 2 1
      357 SETTABLEKS                       R23 R22 K57 ["Position"]
      359 GETIMPORT                        R23 K34 [UDim2.new]
      361 LOADN                            R24 0
      362 MOVE                             R25 R5
      363 LOADN                            R26 1
      364 LOADN                            R27 0
      365 CALL                             R23 4 1
      366 SETTABLEKS                       R23 R22 K35 ["Size"]
      368 MOVE                             R23 R3
      369 GETTABLEKS                       R25 R0 K0 ["Item"]
      371 GETTABLEKS                       R24 R25 K19 ["Value"]
      373 CALL                             R23 1 1
      374 SETTABLEKS                       R23 R22 K36 ["Text"]
      376 LOADN                            R23 2
      377 SETTABLEKS                       R23 R22 K61 ["ZIndex"]
      379 GETUPVAL                         R25 0
      380 GETTABLEKS                       R24 R25 K37 ["Event"]
      382 GETTABLEKS                       R23 R24 K38 ["Focused"]
      384 SETTABLE                         R8 R22 R23
      385 GETUPVAL                         R25 0
      386 GETTABLEKS                       R24 R25 K37 ["Event"]
      388 GETTABLEKS                       R23 R24 K39 ["FocusLost"]
      390 SETTABLE                         R9 R22 R23
      391 GETUPVAL                         R25 0
      392 GETTABLEKS                       R24 R25 K40 ["Change"]
      394 GETTABLEKS                       R23 R24 K36 ["Text"]
      396 SETTABLE                         R10 R22 R23
      397 GETUPVAL                         R24 0
      398 GETTABLEKS                       R23 R24 K14 ["Tag"]
      400 LOADK                            R24 K41 ["VPF-Slider__Input"]
      401 SETTABLE                         R24 R22 R23
      402 CALL                             R20 2 1
      403 SETTABLEKS                       R20 R19 K45 ["Input"]
      405 GETUPVAL                         R21 0
      406 GETTABLEKS                       R20 R21 K10 ["createElement"]
      408 LOADK                            R21 K48 ["TextButton"]
      409 NEWTABLE                         R22 4 0
      411 GETIMPORT                        R23 K60 [UDim2.fromOffset]
      413 ADDK                             R24 R5 K62 [10]
      414 LOADN                            R25 0
      415 CALL                             R23 2 1
      416 SETTABLEKS                       R23 R22 K57 ["Position"]
      418 GETUPVAL                         R25 0
      419 GETTABLEKS                       R24 R25 K37 ["Event"]
      421 GETTABLEKS                       R23 R24 K49 ["Activated"]
      423 JUMPIFNOT                        R1 ; [+2]
      424 MOVE                             R24 R7
      425 JUMP                             ; [+1]
      426 LOADNIL                          R24
      427 SETTABLE                         R24 R22 R23
      428 GETUPVAL                         R24 0
      429 GETTABLEKS                       R23 R24 K14 ["Tag"]
      431 LOADK                            R24 K50 ["VPF-Slider__StepButton"]
      432 SETTABLE                         R24 R22 R23
      433 DUPTABLE                         R23 K65 [{"Bar1", "Bar2"}]
      434 GETUPVAL                         R25 0
      435 GETTABLEKS                       R24 R25 K10 ["createElement"]
      437 LOADK                            R25 K11 ["Frame"]
      438 NEWTABLE                         R26 4 0
      440 GETIMPORT                        R27 K54 [Vector2.new]
      442 LOADN                            R28 1
      443 LOADK                            R29 K55 [0.5]
      444 CALL                             R27 2 1
      445 SETTABLEKS                       R27 R26 K56 ["AnchorPoint"]
      447 GETIMPORT                        R27 K34 [UDim2.new]
      449 LOADN                            R28 1
      450 LOADN                            R29 253
      451 LOADK                            R30 K55 [0.5]
      452 LOADN                            R31 0
      453 CALL                             R27 4 1
      454 SETTABLEKS                       R27 R26 K57 ["Position"]
      456 GETUPVAL                         R28 0
      457 GETTABLEKS                       R27 R28 K14 ["Tag"]
      459 LOADK                            R28 K58 ["VPF-Slider__BarSegment"]
      460 SETTABLE                         R28 R26 R27
      461 CALL                             R24 2 1
      462 SETTABLEKS                       R24 R23 K63 ["Bar1"]
      464 GETUPVAL                         R25 0
      465 GETTABLEKS                       R24 R25 K10 ["createElement"]
      467 LOADK                            R25 K11 ["Frame"]
      468 NEWTABLE                         R26 4 0
      470 GETIMPORT                        R27 K54 [Vector2.new]
      472 LOADN                            R28 1
      473 LOADK                            R29 K55 [0.5]
      474 CALL                             R27 2 1
      475 SETTABLEKS                       R27 R26 K56 ["AnchorPoint"]
      477 GETIMPORT                        R27 K34 [UDim2.new]
      479 LOADN                            R28 1
      480 LOADN                            R29 253
      481 LOADK                            R30 K55 [0.5]
      482 LOADN                            R31 0
      483 CALL                             R27 4 1
      484 SETTABLEKS                       R27 R26 K57 ["Position"]
      486 LOADN                            R27 90
      487 SETTABLEKS                       R27 R26 K66 ["Rotation"]
      489 GETUPVAL                         R28 0
      490 GETTABLEKS                       R27 R28 K14 ["Tag"]
      492 LOADK                            R28 K58 ["VPF-Slider__BarSegment"]
      493 SETTABLE                         R28 R26 R27
      494 CALL                             R24 2 1
      495 SETTABLEKS                       R24 R23 K64 ["Bar2"]
      497 CALL                             R20 3 1
      498 SETTABLEKS                       R20 R19 K46 ["Increment"]
      500 CALL                             R16 3 1
      501 SETTABLEKS                       R16 R15 K19 ["Value"]
      503 GETUPVAL                         R17 0
      504 GETTABLEKS                       R16 R17 K10 ["createElement"]
      506 LOADK                            R17 K11 ["Frame"]
      507 NEWTABLE                         R18 2 0
      509 NAMECALL                         R19 R11 K22 ["getNextOrder"]
      511 CALL                             R19 1 1
      512 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      514 GETUPVAL                         R20 0
      515 GETTABLEKS                       R19 R20 K14 ["Tag"]
      517 LOADK                            R20 K67 ["X-FitX"]
      518 SETTABLE                         R20 R18 R19
      519 GETUPVAL                         R20 0
      520 GETTABLEKS                       R19 R20 K10 ["createElement"]
      522 GETUPVAL                         R20 7
      523 DUPTABLE                         R21 K71 [{"Size", "Min", "Max", "Value", "OnValueChanged", "Disabled", "VerticalDragTolerance"}]
      524 GETIMPORT                        R22 K34 [UDim2.new]
      526 LOADN                            R23 0
      527 LOADN                            R24 145
      528 LOADN                            R25 1
      529 LOADN                            R26 0
      530 CALL                             R22 4 1
      531 SETTABLEKS                       R22 R21 K35 ["Size"]
      533 GETTABLEKS                       R23 R0 K0 ["Item"]
      535 GETTABLEKS                       R22 R23 K6 ["Min"]
      537 SETTABLEKS                       R22 R21 K6 ["Min"]
      539 GETTABLEKS                       R23 R0 K0 ["Item"]
      541 GETTABLEKS                       R22 R23 K7 ["Max"]
      543 SETTABLEKS                       R22 R21 K7 ["Max"]
      545 GETTABLEKS                       R23 R0 K0 ["Item"]
      547 GETTABLEKS                       R22 R23 K19 ["Value"]
      549 SETTABLEKS                       R22 R21 K19 ["Value"]
      551 GETTABLEKS                       R23 R0 K0 ["Item"]
      553 GETTABLEKS                       R22 R23 K72 ["OnChange"]
      555 SETTABLEKS                       R22 R21 K68 ["OnValueChanged"]
      557 NOT                              R22 R1
      558 SETTABLEKS                       R22 R21 K69 ["Disabled"]
      560 LOADN                            R22 24
      561 SETTABLEKS                       R22 R21 K70 ["VerticalDragTolerance"]
      563 CALL                             R19 2 -1
      564 CALL                             R16 -1 1
      565 SETTABLEKS                       R16 R15 K20 ["Slider"]
      567 CALL                             R12 3 -1
      568 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ViewportToolingFramework"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K13 ["Components"]
       31 GETTABLEKS                       R5 R6 K14 ["Icon"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K13 ["Components"]
       38 GETTABLEKS                       R6 R7 K15 ["Tooltip"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K16 ["Types"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R2 K17 ["UI"]
       48 GETTABLEKS                       R7 R8 K18 ["Slider"]
       50 GETTABLEKS                       R9 R2 K19 ["Util"]
       52 GETTABLEKS                       R8 R9 K20 ["LayoutOrderIterator"]
       54 GETTABLEKS                       R10 R2 K21 ["Styling"]
       56 GETTABLEKS                       R9 R10 K22 ["joinTags"]
       58 DUPCLOSURE                       R10 K23 [PROTO_0]
       59 DUPCLOSURE                       R11 K24 [PROTO_8]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 RETURN                           R11 1
