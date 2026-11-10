PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ref"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFEQKNIL                     R1 ; [+19]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K5 [{"menuContentSize", "absolutePosition", "absoluteSize"}]
        9 GETTABLEKS                       R5 R0 K6 ["AbsoluteContentSize"]
       11 SETTABLEKS                       R5 R4 K2 ["menuContentSize"]
       13 GETTABLEKS                       R5 R1 K7 ["AbsolutePosition"]
       15 SETTABLEKS                       R5 R4 K3 ["absolutePosition"]
       17 GETTABLEKS                       R5 R1 K8 ["AbsoluteSize"]
       19 SETTABLEKS                       R5 R4 K4 ["absoluteSize"]
       21 NAMECALL                         R2 R2 K9 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 0
       26 DUPTABLE                         R4 K10 [{"menuContentSize"}]
       27 GETTABLEKS                       R5 R0 K6 ["AbsoluteContentSize"]
       29 SETTABLEKS                       R5 R4 K2 ["menuContentSize"]
       31 NAMECALL                         R2 R2 K9 ["setState"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ref"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFEQKNIL                     R0 ; [+14]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K4 [{"absolutePosition", "absoluteSize"}]
        9 GETTABLEKS                       R4 R0 K5 ["AbsolutePosition"]
       11 SETTABLEKS                       R4 R3 K2 ["absolutePosition"]
       13 GETTABLEKS                       R4 R0 K6 ["AbsoluteSize"]
       15 SETTABLEKS                       R4 R3 K3 ["absoluteSize"]
       17 NAMECALL                         R1 R1 K7 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["props"]
        6 GETTABLEKS                       R5 R3 K2 ["menuContentSize"]
        8 GETTABLEKS                       R5 R5 K3 ["Y"]
       10 GETTABLEKS                       R6 R4 K4 ["Stylizer"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R4 K5 ["MaxHeight"]
       15 GETTABLEKS                       R9 R6 K5 ["MaxHeight"]
       17 CALL                             R7 2 1
       18 GETIMPORT                        R8 K8 [Vector2.new]
       20 CALL                             R8 0 1
       21 GETIMPORT                        R9 K8 [Vector2.new]
       23 CALL                             R9 0 1
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K9 ["ref"]
       27 GETTABLEKS                       R10 R10 K10 ["current"]
       29 JUMPIFNOT                        R10 ; [+18]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K9 ["ref"]
       33 GETTABLEKS                       R10 R10 K10 ["current"]
       35 GETTABLEKS                       R10 R10 K11 ["Parent"]
       37 GETTABLEKS                       R8 R10 K12 ["AbsolutePosition"]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K9 ["ref"]
       42 GETTABLEKS                       R10 R10 K10 ["current"]
       44 GETTABLEKS                       R10 R10 K11 ["Parent"]
       46 GETTABLEKS                       R9 R10 K13 ["AbsoluteSize"]
       48 GETTABLEKS                       R10 R3 K14 ["absoluteSize"]
       50 GETTABLEKS                       R11 R0 K13 ["AbsoluteSize"]
       52 GETTABLEKS                       R12 R0 K12 ["AbsolutePosition"]
       54 LOADNIL                          R13
       55 LOADNIL                          R14
       56 GETTABLEKS                       R15 R4 K15 ["DropFromSide"]
       58 GETTABLEKS                       R20 R8 K16 ["X"]
       60 GETTABLEKS                       R21 R2 K16 ["X"]
       62 ADD                              R19 R20 R21
       63 ADD                              R18 R19 R1
       64 JUMPIFNOT                        R15 ; [+3]
       65 GETTABLEKS                       R19 R10 K16 ["X"]
       67 JUMP                             ; [+1]
       68 LOADN                            R19 0
       69 ADD                              R17 R18 R19
       70 GETTABLEKS                       R18 R11 K16 ["X"]
       72 JUMPIFLE                         R17 R18 ; [+2]
       74 LOADB                            R16 0 +1
       75 LOADB                            R16 1
       76 JUMPIFNOT                        R16 ; [+12]
       77 GETTABLEKS                       R18 R8 K16 ["X"]
       79 GETTABLEKS                       R19 R2 K16 ["X"]
       81 ADD                              R17 R18 R19
       82 JUMPIFNOT                        R15 ; [+3]
       83 GETTABLEKS                       R18 R10 K16 ["X"]
       85 JUMP                             ; [+1]
       86 LOADN                            R18 0
       87 ADD                              R13 R17 R18
       88 JUMP                             ; [+12]
       89 GETTABLEKS                       R19 R8 K16 ["X"]
       91 JUMPIFNOT                        R15 ; [+2]
       92 LOADN                            R20 0
       93 JUMP                             ; [+2]
       94 GETTABLEKS                       R20 R10 K16 ["X"]
       96 ADD                              R18 R19 R20
       97 GETTABLEKS                       R19 R2 K16 ["X"]
       99 ADD                              R17 R18 R19
      100 SUB                              R13 R17 R1
      101 GETTABLEKS                       R21 R8 K3 ["Y"]
      103 JUMPIFNOT                        R15 ; [+2]
      104 LOADN                            R22 0
      105 JUMP                             ; [+2]
      106 GETTABLEKS                       R22 R9 K3 ["Y"]
      108 ADD                              R20 R21 R22
      109 GETTABLEKS                       R21 R2 K3 ["Y"]
      111 ADD                              R19 R20 R21
      112 FASTCALL2                        MATH_MIN R5 R7 ; [+5]
      114 MOVE                             R21 R5
      115 MOVE                             R22 R7
      116 GETIMPORT                        R20 K19 [math.min]
      118 CALL                             R20 2 1
      119 ADD                              R18 R19 R20
      120 GETTABLEKS                       R19 R11 K3 ["Y"]
      122 JUMPIFLT                         R18 R19 ; [+2]
      124 LOADB                            R17 0 +1
      125 LOADB                            R17 1
      126 GETTABLEKS                       R22 R8 K3 ["Y"]
      128 GETTABLEKS                       R23 R2 K3 ["Y"]
      130 SUB                              R21 R22 R23
      131 SUB                              R20 R21 R7
      132 JUMPIFNOT                        R15 ; [+3]
      133 GETTABLEKS                       R21 R9 K3 ["Y"]
      135 JUMP                             ; [+1]
      136 LOADN                            R21 0
      137 ADD                              R19 R20 R21
      138 LOADN                            R20 0
      139 JUMPIFLT                         R20 R19 ; [+2]
      141 LOADB                            R18 0 +1
      142 LOADB                            R18 1
      143 GETIMPORT                        R19 K23 [Enum.VerticalAlignment.Bottom]
      145 JUMPIF                           R17 ; [+1]
      146 JUMPIFNOT                        R18 ; [+3]
      147 JUMPIF                           R17 ; [+2]
      148 GETIMPORT                        R19 K25 [Enum.VerticalAlignment.Top]
      150 LOADNIL                          R20
      151 GETIMPORT                        R21 K23 [Enum.VerticalAlignment.Bottom]
      153 JUMPIFNOTEQ                      R19 R21 ; [+15]
      155 GETTABLEKS                       R22 R8 K3 ["Y"]
      157 JUMPIFNOT                        R15 ; [+2]
      158 LOADN                            R23 0
      159 JUMP                             ; [+2]
      160 GETTABLEKS                       R23 R9 K3 ["Y"]
      162 ADD                              R21 R22 R23
      163 GETTABLEKS                       R22 R2 K3 ["Y"]
      165 ADD                              R14 R21 R22
      166 GETIMPORT                        R20 K25 [Enum.VerticalAlignment.Top]
      168 JUMP                             ; [+21]
      169 FASTCALL2                        MATH_MIN R5 R7 ; [+5]
      171 MOVE                             R22 R5
      172 MOVE                             R23 R7
      173 GETIMPORT                        R21 K19 [math.min]
      175 CALL                             R21 2 1
      176 GETTABLEKS                       R24 R8 K3 ["Y"]
      178 GETTABLEKS                       R25 R2 K3 ["Y"]
      180 SUB                              R23 R24 R25
      181 SUB                              R22 R23 R21
      182 JUMPIFNOT                        R15 ; [+3]
      183 GETTABLEKS                       R23 R9 K3 ["Y"]
      185 JUMP                             ; [+1]
      186 LOADN                            R23 0
      187 ADD                              R14 R22 R23
      188 GETIMPORT                        R20 K23 [Enum.VerticalAlignment.Bottom]
      190 GETTABLEKS                       R21 R12 K3 ["Y"]
      192 SUB                              R14 R14 R21
      193 GETTABLEKS                       R21 R12 K16 ["X"]
      195 SUB                              R13 R13 R21
      196 GETUPVAL                         R21 2
      197 JUMPIFNOT                        R21 ; [+9]
      198 GETTABLEKS                       R22 R11 K3 ["Y"]
      200 SUB                              R21 R22 R14
      201 JUMPIFNOTLT                      R21 R7 ; [+13]
      203 GETTABLEKS                       R21 R11 K3 ["Y"]
      205 SUB                              R7 R21 R14
      206 JUMP                             ; [+8]
      207 GETTABLEKS                       R22 R11 K3 ["Y"]
      209 SUB                              R21 R22 R14
      210 JUMPIFNOTLT                      R21 R5 ; [+4]
      212 GETTABLEKS                       R21 R11 K3 ["Y"]
      214 SUB                              R7 R21 R14
      215 JUMPIFLT                         R7 R5 ; [+2]
      217 LOADB                            R21 0 +1
      218 LOADB                            R21 1
      219 DUPTABLE                         R22 K28 [{"X", "Y", "Height", "NeedsScrollingFrame", "VerticalAlignment"}]
      220 SETTABLEKS                       R13 R22 K16 ["X"]
      222 SETTABLEKS                       R14 R22 K3 ["Y"]
      224 FASTCALL2                        MATH_MIN R5 R7 ; [+5]
      226 MOVE                             R24 R5
      227 MOVE                             R25 R7
      228 GETIMPORT                        R23 K19 [math.min]
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K26 ["Height"]
      233 SETTABLEKS                       R21 R22 K27 ["NeedsScrollingFrame"]
      235 SETTABLEKS                       R20 R22 K21 ["VerticalAlignment"]
      237 RETURN                           R22 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Icons"]
        5 GETTABLEKS                       R5 R3 K2 ["Stylizer"]
        7 GETTABLEKS                       R7 R3 K3 ["Variant"]
        9 JUMPIFEQKS                       R7 K4 ["modern"] ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R8 R3 K5 ["ItemHeight"]
       16 GETTABLEKS                       R9 R5 K5 ["ItemHeight"]
       18 LOADN                            R10 40
       19 CALL                             R7 3 1
       20 MOVE                             R8 R0
       21 JUMPIFNOT                        R4 ; [+2]
       22 GETTABLE                         R9 R4 R1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 LOADB                            R11 0
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R13 R0
       29 GETIMPORT                        R12 K7 [typeof]
       31 CALL                             R12 1 1
       32 JUMPIFNOTEQKS                    R12 K8 ["table"] ; [+15]
       34 GETTABLEKS                       R8 R0 K9 ["Label"]
       36 GETTABLEKS                       R12 R0 K10 ["Icon"]
       38 JUMPIFNOT                        R12 ; [+2]
       39 GETTABLEKS                       R9 R0 K10 ["Icon"]
       41 GETTABLEKS                       R12 R0 K11 ["Disabled"]
       43 JUMPIFEQKB                       R12 TRUE ; [+2]
       45 LOADB                            R11 0 +1
       46 LOADB                            R11 1
       47 JUMP                             ; [+4]
       48 DUPTABLE                         R12 K13 [{"Image"}]
       49 SETTABLEKS                       R9 R12 K12 ["Image"]
       51 MOVE                             R10 R12
       52 GETUPVAL                         R13 2
       53 JUMPIFNOT                        R13 ; [+3]
       54 JUMPIFNOT                        R6 ; [+2]
       55 LOADK                            R12 K14 ["BuilderSans Muted"]
       56 JUMP                             ; [+1]
       57 LOADK                            R12 K15 [""]
       58 JUMPIFNOT                        R11 ; [+3]
       59 MOVE                             R13 R12
       60 LOADK                            R14 K16 [" Disabled"]
       61 CONCAT                           R12 R13 R14
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R13 R13 K17 ["createElement"]
       65 GETUPVAL                         R14 4
       66 DUPTABLE                         R15 K22 [{"LayoutOrder", "OnClick", "Size", "Style"}]
       67 SETTABLEKS                       R1 R15 K18 ["LayoutOrder"]
       69 JUMPIFNOT                        R11 ; [+2]
       70 DUPCLOSURE                       R16 K23 [PROTO_3]
       71 JUMP                             ; [+1]
       72 MOVE                             R16 R2
       73 SETTABLEKS                       R16 R15 K19 ["OnClick"]
       75 GETIMPORT                        R16 K26 [UDim2.new]
       77 LOADN                            R17 1
       78 LOADN                            R18 0
       79 LOADN                            R19 0
       80 MOVE                             R20 R7
       81 CALL                             R16 4 1
       82 SETTABLEKS                       R16 R15 K20 ["Size"]
       84 JUMPIFNOT                        R6 ; [+2]
       85 LOADK                            R16 K27 ["ModernDropdown"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R16
       88 SETTABLEKS                       R16 R15 K21 ["Style"]
       90 DUPTABLE                         R16 K29 [{"ImageContainer", "Label"}]
       91 JUMPIFNOT                        R9 ; [+58]
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R17 R17 K17 ["createElement"]
       95 GETUPVAL                         R18 5
       96 DUPTABLE                         R19 K31 [{["LayoutOrder"] = 1, ["Size"]}]
       97 GETIMPORT                        R20 K33 [UDim2.fromOffset]
       99 MOVE                             R21 R7
      100 MOVE                             R22 R7
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K20 ["Size"]
      104 DUPTABLE                         R20 K13 [{"Image"}]
      105 GETUPVAL                         R21 3
      106 GETTABLEKS                       R21 R21 K17 ["createElement"]
      108 GETUPVAL                         R22 6
      109 GETUPVAL                         R23 7
      110 DUPTABLE                         R24 K36 [{"AnchorPoint", "Position", "Size", "Style"}]
      111 GETIMPORT                        R25 K38 [Vector2.new]
      113 LOADK                            R26 K39 [0.5]
      114 LOADK                            R27 K39 [0.5]
      115 CALL                             R25 2 1
      116 SETTABLEKS                       R25 R24 K34 ["AnchorPoint"]
      118 GETIMPORT                        R25 K41 [UDim2.fromScale]
      120 LOADK                            R26 K39 [0.5]
      121 LOADK                            R27 K39 [0.5]
      122 CALL                             R25 2 1
      123 SETTABLEKS                       R25 R24 K35 ["Position"]
      125 GETIMPORT                        R25 K33 [UDim2.fromOffset]
      127 LOADN                            R26 16
      128 LOADN                            R27 16
      129 CALL                             R25 2 1
      130 SETTABLEKS                       R25 R24 K20 ["Size"]
      132 SETTABLEKS                       R10 R24 K21 ["Style"]
      134 FASTCALL1                        TYPEOF R9 ; [+3]
      135 MOVE                             R27 R9
      136 GETIMPORT                        R26 K7 [typeof]
      138 CALL                             R26 1 1
      139 JUMPIFNOTEQKS                    R26 K8 ["table"] ; [+3]
      141 MOVE                             R25 R9
      142 JUMP                             ; [+1]
      143 LOADNIL                          R25
      144 CALL                             R23 2 -1
      145 CALL                             R21 -1 1
      146 SETTABLEKS                       R21 R20 K12 ["Image"]
      148 CALL                             R17 3 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R17
      151 SETTABLEKS                       R17 R16 K28 ["ImageContainer"]
      153 GETUPVAL                         R17 3
      154 GETTABLEKS                       R17 R17 K17 ["createElement"]
      156 GETUPVAL                         R18 8
      157 GETUPVAL                         R19 9
      158 GETTABLEKS                       R19 R19 K42 ["join"]
      160 DUPTABLE                         R20 K48 [{["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextWrapped"]}]
      161 GETIMPORT                        R21 K26 [UDim2.new]
      163 LOADN                            R22 1
      164 JUMPIFNOT                        R9 ; [+2]
      165 MINUS                            R23 R7
      166 JUMP                             ; [+1]
      167 LOADN                            R23 0
      168 LOADN                            R24 1
      169 LOADN                            R25 0
      170 CALL                             R21 4 1
      171 SETTABLEKS                       R21 R20 K20 ["Size"]
      173 SETTABLEKS                       R8 R20 K44 ["Text"]
      175 GETIMPORT                        R21 K51 [Enum.TextTruncate.AtEnd]
      177 SETTABLEKS                       R21 R20 K45 ["TextTruncate"]
      179 GETIMPORT                        R21 K53 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R21 R20 K46 ["TextXAlignment"]
      183 GETUPVAL                         R21 0
      184 GETTABLEKS                       R21 R21 K0 ["props"]
      186 GETTABLEKS                       R21 R21 K47 ["TextWrapped"]
      188 SETTABLEKS                       R21 R20 K47 ["TextWrapped"]
      190 JUMPIFEQKS                       R12 K15 [""] ; [+8]
      192 NEWTABLE                         R21 1 0
      194 GETUPVAL                         R22 10
      195 GETTABLEKS                       R22 R22 K54 ["Tag"]
      197 SETTABLE                         R12 R21 R22
      198 JUMP                             ; [+2]
      199 NEWTABLE                         R21 0 0
      201 CALL                             R19 2 1
      202 DUPTABLE                         R20 K56 [{"Padding"}]
      203 GETUPVAL                         R21 3
      204 GETTABLEKS                       R21 R21 K17 ["createElement"]
      206 LOADK                            R22 K57 ["UIPadding"]
      207 DUPTABLE                         R23 K59 [{"PaddingLeft"}]
      208 GETIMPORT                        R24 K61 [UDim.new]
      210 LOADN                            R25 0
      211 JUMPIFNOT                        R9 ; [+2]
      212 LOADN                            R26 40
      213 JUMP                             ; [+1]
      214 LOADN                            R26 10
      215 CALL                             R24 2 1
      216 SETTABLEKS                       R24 R23 K58 ["PaddingLeft"]
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K55 ["Padding"]
      221 CALL                             R17 3 1
      222 SETTABLEKS                       R17 R16 K9 ["Label"]
      224 CALL                             R13 3 -1
      225 RETURN                           R13 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K4 [{"absoluteSize", "menuContentSize"}]
        7 GETIMPORT                        R2 K7 [Vector2.new]
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K2 ["absoluteSize"]
       14 GETIMPORT                        R2 K7 [Vector2.new]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K3 ["menuContentSize"]
       21 SETTABLEKS                       R1 R0 K8 ["state"]
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K9 ["recalculateContentSize"]
       27 NEWCLOSURE                       R1 P1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["reposition"]
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R1 R0 K11 ["getPositionAndSize"]
       37 NEWTABLE                         R1 0 0
       39 SETTABLEKS                       R1 R0 K12 ["changeTokens"]
       41 NEWCLOSURE                       R1 P3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 SETTABLEKS                       R1 R0 K13 ["defaultOnRenderItem"]
       55 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R0 K2 ["addedListeners"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R0 K2 ["addedListeners"]
       12 GETTABLEKS                       R2 R1 K3 ["Parent"]
       14 JUMPIFNOT                        R2 ; [+30]
       15 GETTABLEKS                       R4 R0 K4 ["changeTokens"]
       17 LOADK                            R7 K5 ["AbsoluteSize"]
       18 NAMECALL                         R5 R2 K6 ["GetPropertyChangedSignal"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R7 R0 K7 ["reposition"]
       23 NAMECALL                         R5 R5 K8 ["Connect"]
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K11 [table.insert]
       29 CALL                             R3 -1 0
       30 GETTABLEKS                       R4 R0 K4 ["changeTokens"]
       32 LOADK                            R7 K12 ["AbsolutePosition"]
       33 NAMECALL                         R5 R2 K6 ["GetPropertyChangedSignal"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R7 R0 K7 ["reposition"]
       38 NAMECALL                         R5 R5 K8 ["Connect"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R3 K11 [table.insert]
       44 CALL                             R3 -1 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["changeTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnItemActivated"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["OnFocusLost"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["OnFocusLost"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["OnItemActivated"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["OnFocusLost"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["OnFocusLost"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        6 LOADN                            R4 1
        7 GETTABLEKS                       R6 R2 K3 ["Variant"]
        9 JUMPIFEQKS                       R6 K4 ["modern"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 JUMPIFNOT                        R5 ; [+1]
       14 LOADN                            R4 0
       15 GETTABLEKS                       R6 R2 K5 ["Items"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R8 R2 K6 ["OnRenderItem"]
       20 GETTABLEKS                       R9 R0 K7 ["defaultOnRenderItem"]
       22 CALL                             R7 2 1
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R2
       25 GETTABLEKS                       R9 R3 K8 ["BackgroundColor"]
       27 GETTABLEKS                       R11 R2 K9 ["UseAutoWidth"]
       29 JUMPIFNOT                        R11 ; [+7]
       30 GETTABLEKS                       R10 R0 K0 ["state"]
       32 GETTABLEKS                       R10 R10 K10 ["menuContentSize"]
       34 GETTABLEKS                       R10 R10 K11 ["X"]
       36 JUMP                             ; [+5]
       37 GETTABLEKS                       R10 R2 K12 ["Width"]
       39 JUMPIF                           R10 ; [+2]
       40 GETTABLEKS                       R10 R3 K12 ["Width"]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R12 R3 K13 ["Offset"]
       45 GETIMPORT                        R13 K16 [Vector2.new]
       47 LOADN                            R14 0
       48 LOADN                            R15 0
       49 CALL                             R13 2 -1
       50 CALL                             R11 -1 1
       51 GETTABLEKS                       R12 R2 K17 ["Focus"]
       53 NAMECALL                         R12 R12 K18 ["get"]
       55 CALL                             R12 1 1
       56 GETTABLEKS                       R13 R0 K19 ["getPositionAndSize"]
       58 MOVE                             R14 R12
       59 MOVE                             R15 R10
       60 MOVE                             R16 R11
       61 CALL                             R13 3 1
       62 GETTABLEKS                       R14 R13 K11 ["X"]
       64 GETTABLEKS                       R15 R13 K20 ["Y"]
       66 GETTABLEKS                       R16 R13 K21 ["Height"]
       68 GETTABLEKS                       R17 R13 K22 ["NeedsScrollingFrame"]
       70 GETTABLEKS                       R18 R13 K23 ["VerticalAlignment"]
       72 DUPTABLE                         R19 K25 [{"Layout"}]
       73 GETUPVAL                         R20 1
       74 GETTABLEKS                       R20 R20 K26 ["createElement"]
       76 LOADK                            R21 K27 ["UIListLayout"]
       77 NEWTABLE                         R22 4 0
       79 GETIMPORT                        R23 K31 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R23 R22 K29 ["SortOrder"]
       83 GETIMPORT                        R23 K34 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R23 R22 K32 ["FillDirection"]
       87 SETTABLEKS                       R18 R22 K23 ["VerticalAlignment"]
       89 GETUPVAL                         R23 1
       90 GETTABLEKS                       R23 R23 K35 ["Change"]
       92 GETTABLEKS                       R23 R23 K36 ["AbsoluteContentSize"]
       94 GETTABLEKS                       R24 R0 K37 ["recalculateContentSize"]
       96 SETTABLE                         R24 R22 R23
       97 CALL                             R20 2 1
       98 SETTABLEKS                       R20 R19 K24 ["Layout"]
      100 GETIMPORT                        R20 K39 [ipairs]
      102 MOVE                             R21 R6
      103 CALL                             R20 1 3
      104 FORGPREP_INEXT                   R20
      105 FASTCALL1                        TOSTRING R23 ; [+3]
      106 MOVE                             R26 R23
      107 GETIMPORT                        R25 K41 [tostring]
      109 CALL                             R25 1 1
      110 MOVE                             R26 R7
      111 MOVE                             R27 R24
      112 MOVE                             R28 R23
      113 NEWCLOSURE                       R29 P1
      114 CAPTURE                          VAL R24
      115 CAPTURE                          VAL R23
      116 CAPTURE                          VAL R2
      117 LOADNIL                          R30
      118 CALL                             R26 4 1
      119 SETTABLE                         R26 R19 R25
      120 FORGLOOP                         R20 2 [inext] ; [-16]
      122 DUPTABLE                         R20 K47 [{"UIStroke", "UICorner", "ScrollingContainer", "Container", "HoverDetector"}]
      123 JUMPIFNOT                        R5 ; [+19]
      124 GETUPVAL                         R21 1
      125 GETTABLEKS                       R21 R21 K26 ["createElement"]
      127 LOADK                            R22 K42 ["UIStroke"]
      128 DUPTABLE                         R23 K51 [{"ApplyStrokeMode", "Color", "Thickness"}]
      129 GETIMPORT                        R24 K53 [Enum.ApplyStrokeMode.Border]
      131 SETTABLEKS                       R24 R23 K48 ["ApplyStrokeMode"]
      133 GETTABLEKS                       R24 R3 K54 ["StrokeColor"]
      135 SETTABLEKS                       R24 R23 K49 ["Color"]
      137 GETTABLEKS                       R24 R3 K55 ["StrokeThickness"]
      139 SETTABLEKS                       R24 R23 K50 ["Thickness"]
      141 CALL                             R21 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R21
      144 SETTABLEKS                       R21 R20 K42 ["UIStroke"]
      146 JUMPIFNOT                        R5 ; [+11]
      147 GETUPVAL                         R21 1
      148 GETTABLEKS                       R21 R21 K26 ["createElement"]
      150 LOADK                            R22 K43 ["UICorner"]
      151 DUPTABLE                         R23 K57 [{"CornerRadius"}]
      152 GETTABLEKS                       R24 R3 K56 ["CornerRadius"]
      154 SETTABLEKS                       R24 R23 K56 ["CornerRadius"]
      156 CALL                             R21 2 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R21
      159 SETTABLEKS                       R21 R20 K43 ["UICorner"]
      161 JUMPIFNOT                        R17 ; [+64]
      162 GETUPVAL                         R21 1
      163 GETTABLEKS                       R21 R21 K26 ["createElement"]
      165 GETUPVAL                         R22 2
      166 GETUPVAL                         R23 3
      167 GETTABLEKS                       R23 R23 K58 ["join"]
      169 DUPTABLE                         R24 K65 [{["AutoSizeCanvas"] = False, ["Size"], ["AutomaticSize"], ["Position"], ["CanvasSize"]}]
      170 GETIMPORT                        R25 K67 [UDim2.new]
      172 LOADN                            R26 1
      173 MINUS                            R28 R4
      174 MULK                             R27 R28 K68 [2]
      175 LOADN                            R28 1
      176 MINUS                            R30 R4
      177 MULK                             R29 R30 K68 [2]
      178 CALL                             R25 4 1
      179 SETTABLEKS                       R25 R24 K61 ["Size"]
      181 GETTABLEKS                       R26 R2 K9 ["UseAutoWidth"]
      183 JUMPIFNOT                        R26 ; [+3]
      184 GETIMPORT                        R25 K69 [Enum.AutomaticSize.X]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R25
      188 SETTABLEKS                       R25 R24 K62 ["AutomaticSize"]
      190 GETIMPORT                        R25 K71 [UDim2.fromOffset]
      192 MOVE                             R26 R4
      193 MOVE                             R27 R4
      194 CALL                             R25 2 1
      195 SETTABLEKS                       R25 R24 K63 ["Position"]
      197 GETIMPORT                        R25 K71 [UDim2.fromOffset]
      199 GETTABLEKS                       R26 R1 K10 ["menuContentSize"]
      201 GETTABLEKS                       R26 R26 K11 ["X"]
      203 GETTABLEKS                       R27 R1 K10 ["menuContentSize"]
      205 GETTABLEKS                       R27 R27 K20 ["Y"]
      207 CALL                             R25 2 1
      208 SETTABLEKS                       R25 R24 K64 ["CanvasSize"]
      210 GETUPVAL                         R26 4
      211 JUMPIFNOT                        R26 ; [+9]
      212 JUMPIFNOT                        R5 ; [+8]
      213 NEWTABLE                         R25 1 0
      215 GETUPVAL                         R26 5
      216 GETTABLEKS                       R26 R26 K72 ["Tag"]
      218 LOADK                            R27 K4 ["modern"]
      219 SETTABLE                         R27 R25 R26
      220 JUMP                             ; [+1]
      221 LOADNIL                          R25
      222 CALL                             R23 2 1
      223 MOVE                             R24 R19
      224 CALL                             R21 3 1
      225 JUMP                             ; [+1]
      226 LOADNIL                          R21
      227 SETTABLEKS                       R21 R20 K44 ["ScrollingContainer"]
      229 JUMPIFNOT                        R17 ; [+2]
      230 LOADNIL                          R21
      231 JUMP                             ; [+42]
      232 GETUPVAL                         R21 1
      233 GETTABLEKS                       R21 R21 K26 ["createElement"]
      235 LOADK                            R22 K73 ["Frame"]
      236 DUPTABLE                         R23 K78 [{["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"], ["Position"], ["BackgroundColor3"], ["BackgroundTransparency"]}]
      237 GETIMPORT                        R24 K67 [UDim2.new]
      239 LOADN                            R25 1
      240 MINUS                            R27 R4
      241 MULK                             R26 R27 K68 [2]
      242 LOADN                            R27 1
      243 MINUS                            R29 R4
      244 MULK                             R28 R29 K68 [2]
      245 CALL                             R24 4 1
      246 SETTABLEKS                       R24 R23 K61 ["Size"]
      248 GETTABLEKS                       R25 R2 K9 ["UseAutoWidth"]
      250 JUMPIFNOT                        R25 ; [+3]
      251 GETIMPORT                        R24 K69 [Enum.AutomaticSize.X]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R24
      255 SETTABLEKS                       R24 R23 K62 ["AutomaticSize"]
      257 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      259 MOVE                             R25 R4
      260 MOVE                             R26 R4
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K63 ["Position"]
      264 SETTABLEKS                       R9 R23 K76 ["BackgroundColor3"]
      266 JUMPIFNOT                        R5 ; [+2]
      267 LOADN                            R24 1
      268 JUMP                             ; [+1]
      269 LOADN                            R24 0
      270 SETTABLEKS                       R24 R23 K77 ["BackgroundTransparency"]
      272 MOVE                             R24 R19
      273 CALL                             R21 3 1
      274 SETTABLEKS                       R21 R20 K45 ["Container"]
      276 GETUPVAL                         R21 1
      277 GETTABLEKS                       R21 R21 K26 ["createElement"]
      279 LOADK                            R22 K79 ["TextButton"]
      280 NEWTABLE                         R23 8 0
      282 LOADN                            R24 1
      283 SETTABLEKS                       R24 R23 K77 ["BackgroundTransparency"]
      285 GETIMPORT                        R24 K67 [UDim2.new]
      287 LOADN                            R25 1
      288 MINUS                            R27 R4
      289 MULK                             R26 R27 K68 [2]
      290 LOADN                            R27 1
      291 MINUS                            R29 R4
      292 MULK                             R28 R29 K68 [2]
      293 CALL                             R24 4 1
      294 SETTABLEKS                       R24 R23 K61 ["Size"]
      296 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      298 MOVE                             R25 R4
      299 MOVE                             R26 R4
      300 CALL                             R24 2 1
      301 SETTABLEKS                       R24 R23 K63 ["Position"]
      303 LOADN                            R24 1
      304 SETTABLEKS                       R24 R23 K80 ["TextTransparency"]
      306 LOADN                            R24 -1
      307 SETTABLEKS                       R24 R23 K81 ["ZIndex"]
      309 GETUPVAL                         R24 1
      310 GETTABLEKS                       R24 R24 K82 ["Event"]
      312 GETTABLEKS                       R24 R24 K83 ["MouseEnter"]
      314 GETTABLEKS                       R25 R2 K84 ["OnMouseEnter"]
      316 SETTABLE                         R25 R23 R24
      317 GETUPVAL                         R24 1
      318 GETTABLEKS                       R24 R24 K82 ["Event"]
      320 GETTABLEKS                       R24 R24 K85 ["MouseLeave"]
      322 GETTABLEKS                       R25 R2 K86 ["OnMouseLeave"]
      324 SETTABLE                         R25 R23 R24
      325 CALL                             R21 2 1
      326 SETTABLEKS                       R21 R20 K46 ["HoverDetector"]
      328 JUMPIFNOT                        R5 ; [+25]
      329 GETUPVAL                         R21 1
      330 GETTABLEKS                       R21 R21 K26 ["createElement"]
      332 LOADK                            R22 K87 ["CanvasGroup"]
      333 DUPTABLE                         R23 K88 [{["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
      334 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      336 MOVE                             R25 R14
      337 MOVE                             R26 R15
      338 CALL                             R24 2 1
      339 SETTABLEKS                       R24 R23 K63 ["Position"]
      341 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      343 MOVE                             R25 R10
      344 MULK                             R27 R4 K68 [2]
      345 ADD                              R26 R16 R27
      346 CALL                             R24 2 1
      347 SETTABLEKS                       R24 R23 K61 ["Size"]
      349 SETTABLEKS                       R9 R23 K76 ["BackgroundColor3"]
      351 MOVE                             R24 R20
      352 CALL                             R21 3 -1
      353 RETURN                           R21 -1
      354 GETUPVAL                         R21 1
      355 GETTABLEKS                       R21 R21 K26 ["createElement"]
      357 GETUPVAL                         R22 6
      358 DUPTABLE                         R23 K91 [{"Position", "Size", "Background", "BackgroundStyle"}]
      359 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      361 MOVE                             R25 R14
      362 MOVE                             R26 R15
      363 CALL                             R24 2 1
      364 SETTABLEKS                       R24 R23 K63 ["Position"]
      366 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      368 MOVE                             R25 R10
      369 MULK                             R27 R4 K68 [2]
      370 ADD                              R26 R16 R27
      371 CALL                             R24 2 1
      372 SETTABLEKS                       R24 R23 K61 ["Size"]
      374 GETUPVAL                         R24 7
      375 SETTABLEKS                       R24 R23 K89 ["Background"]
      377 GETTABLEKS                       R24 R3 K90 ["BackgroundStyle"]
      379 SETTABLEKS                       R24 R23 K90 ["BackgroundStyle"]
      381 MOVE                             R24 R20
      382 CALL                             R21 3 -1
      383 RETURN                           R21 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Hide"]
        4 NOT                              R2 R3
        5 GETTABLEKS                       R3 R1 K2 ["Priority"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["createElement"]
       10 GETUPVAL                         R5 1
       11 NEWTABLE                         R6 2 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["Ref"]
       16 GETTABLEKS                       R8 R0 K5 ["ref"]
       18 SETTABLE                         R8 R6 R7
       19 GETIMPORT                        R7 K8 [UDim2.fromScale]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K9 ["Size"]
       26 DUPTABLE                         R7 K11 [{"PortalToRoot"}]
       27 MOVE                             R8 R2
       28 JUMPIFNOT                        R8 ; [+20]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K3 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K13 [{"OnFocusLost", "Priority"}]
       34 GETTABLEKS                       R11 R1 K12 ["OnFocusLost"]
       36 SETTABLEKS                       R11 R10 K12 ["OnFocusLost"]
       38 SETTABLEKS                       R3 R10 K2 ["Priority"]
       40 DUPTABLE                         R11 K15 [{"Menu"}]
       41 MOVE                             R12 R2
       42 JUMPIFNOT                        R12 ; [+3]
       43 NAMECALL                         R12 R0 K16 ["renderMenu"]
       45 CALL                             R12 1 1
       46 SETTABLEKS                       R12 R11 K14 ["Menu"]
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K10 ["PortalToRoot"]
       51 CALL                             R4 3 -1
       52 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K15 [game]
       50 LOADK                            R8 K16 ["DevFrameworkLimitDropdownHeight"]
       51 LOADB                            R9 0
       52 NAMECALL                         R6 R6 K17 ["DefineFastFlag"]
       54 CALL                             R6 3 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K18 ["Util"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K19 ["prioritize"]
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K18 ["Util"]
       66 GETTABLEKS                       R10 R10 K20 ["Typecheck"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K4 ["Parent"]
       73 GETTABLEKS                       R11 R11 K21 ["Dash"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R11 R10 K22 ["join"]
       78 GETTABLEKS                       R12 R0 K2 ["UI"]
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R12 K23 ["Components"]
       84 GETTABLEKS                       R14 R14 K24 ["Container"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R12 K23 ["Components"]
       91 GETTABLEKS                       R15 R15 K25 ["CaptureFocus"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R12 K23 ["Components"]
       98 GETTABLEKS                       R16 R16 K26 ["Image"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R12 K23 ["Components"]
      105 GETTABLEKS                       R17 R17 K27 ["ScrollingFrame"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R12 K23 ["Components"]
      112 GETTABLEKS                       R18 R18 K28 ["DEPRECATED_Button"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K6 [require]
      117 GETTABLEKS                       R19 R12 K23 ["Components"]
      119 GETTABLEKS                       R19 R19 K29 ["Pane"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K6 [require]
      124 GETTABLEKS                       R20 R12 K23 ["Components"]
      126 GETTABLEKS                       R20 R20 K30 ["RoundBox"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K6 [require]
      131 GETTABLEKS                       R21 R12 K23 ["Components"]
      133 GETTABLEKS                       R21 R21 K31 ["TextLabel"]
      135 CALL                             R20 1 1
      136 GETTABLEKS                       R21 R1 K32 ["PureComponent"]
      138 LOADK                            R23 K33 ["DropdownMenu"]
      139 NAMECALL                         R21 R21 K34 ["extend"]
      141 CALL                             R21 2 1
      142 GETTABLEKS                       R22 R9 K35 ["wrap"]
      144 MOVE                             R23 R21
      145 GETIMPORT                        R24 K1 [script]
      147 CALL                             R22 2 0
      148 DUPCLOSURE                       R22 K36 [PROTO_5]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R22 R21 K37 ["init"]
      162 DUPCLOSURE                       R22 K38 [PROTO_6]
      163 SETTABLEKS                       R22 R21 K39 ["didUpdate"]
      165 DUPCLOSURE                       R22 K40 [PROTO_7]
      166 SETTABLEKS                       R22 R21 K41 ["willUnmount"]
      168 DUPCLOSURE                       R22 K42 [PROTO_10]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R19
      177 SETTABLEKS                       R22 R21 K43 ["renderMenu"]
      179 DUPCLOSURE                       R22 K44 [PROTO_11]
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R14
      183 SETTABLEKS                       R22 R21 K45 ["render"]
      185 MOVE                             R22 R3
      186 DUPTABLE                         R23 K48 [{"Focus", "Stylizer"}]
      187 GETTABLEKS                       R24 R2 K46 ["Focus"]
      189 SETTABLEKS                       R24 R23 K46 ["Focus"]
      191 GETTABLEKS                       R24 R2 K47 ["Stylizer"]
      193 SETTABLEKS                       R24 R23 K47 ["Stylizer"]
      195 CALL                             R22 1 1
      196 MOVE                             R23 R21
      197 CALL                             R22 1 1
      198 MOVE                             R21 R22
      199 RETURN                           R21 1
