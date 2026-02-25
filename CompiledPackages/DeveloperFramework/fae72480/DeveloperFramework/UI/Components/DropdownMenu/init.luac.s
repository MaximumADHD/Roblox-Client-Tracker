PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ref"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ref"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["props"]
        6 GETTABLEKS                       R6 R3 K2 ["menuContentSize"]
        8 GETTABLEKS                       R5 R6 K3 ["Y"]
       10 GETTABLEKS                       R6 R4 K4 ["Stylizer"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R4 K5 ["MaxHeight"]
       15 GETTABLEKS                       R9 R6 K5 ["MaxHeight"]
       17 CALL                             R7 2 1
       18 GETIMPORT                        R8 K8 [Vector2.new]
       20 CALL                             R8 0 1
       21 GETIMPORT                        R9 K8 [Vector2.new]
       23 CALL                             R9 0 1
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K9 ["ref"]
       27 GETTABLEKS                       R10 R11 K10 ["current"]
       29 JUMPIFNOT                        R10 ; [+18]
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R12 R13 K9 ["ref"]
       33 GETTABLEKS                       R11 R12 K10 ["current"]
       35 GETTABLEKS                       R10 R11 K11 ["Parent"]
       37 GETTABLEKS                       R8 R10 K12 ["AbsolutePosition"]
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R12 R13 K9 ["ref"]
       42 GETTABLEKS                       R11 R12 K10 ["current"]
       44 GETTABLEKS                       R10 R11 K11 ["Parent"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["HoveredItemIndex"]
        5 GETTABLEKS                       R4 R1 K2 ["KeyCode"]
        7 GETIMPORT                        R5 K5 [Enum.KeyCode.Down]
        9 JUMPIFNOTEQ                      R4 R5 ; [+14]
       11 GETTABLEKS                       R4 R2 K6 ["OnHoveredItemChanged"]
       13 GETTABLEKS                       R7 R2 K7 ["Items"]
       15 LENGTH                           R6 R7
       16 ADDK                             R7 R3 K8 [1]
       17 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       19 GETIMPORT                        R5 K11 [math.min]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R1 K2 ["KeyCode"]
       26 GETIMPORT                        R5 K13 [Enum.KeyCode.Up]
       28 JUMPIFNOTEQ                      R4 R5 ; [+12]
       30 GETTABLEKS                       R4 R2 K6 ["OnHoveredItemChanged"]
       32 LOADN                            R6 1
       33 SUBK                             R7 R3 K8 [1]
       34 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       36 GETIMPORT                        R5 K15 [math.max]
       38 CALL                             R5 2 1
       39 CALL                             R4 1 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R4 R1 K2 ["KeyCode"]
       43 GETIMPORT                        R5 K17 [Enum.KeyCode.Return]
       45 JUMPIFNOTEQ                      R4 R5 ; [+13]
       47 GETTABLEKS                       R4 R2 K18 ["OnItemActivated"]
       49 GETTABLEKS                       R6 R2 K7 ["Items"]
       51 GETTABLE                         R5 R6 R3
       52 CALL                             R4 1 0
       53 GETTABLEKS                       R4 R2 K19 ["OnFocusLost"]
       55 JUMPIFNOT                        R4 ; [+3]
       56 GETTABLEKS                       R4 R2 K19 ["OnFocusLost"]
       58 CALL                             R4 0 0
       59 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnHoveredItemChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnHoveredItemChanged"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["Icons"]
        5 GETTABLEKS                       R6 R4 K2 ["Stylizer"]
        7 GETTABLEKS                       R8 R4 K3 ["Variant"]
        9 JUMPIFEQKS                       R8 K4 ["modern"] ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R9 R4 K5 ["ItemHeight"]
       16 GETTABLEKS                       R10 R6 K5 ["ItemHeight"]
       18 LOADN                            R11 40
       19 CALL                             R8 3 1
       20 MOVE                             R9 R0
       21 JUMPIFNOT                        R5 ; [+2]
       22 GETTABLE                         R10 R5 R1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R13 R0
       28 GETIMPORT                        R12 K7 [typeof]
       30 CALL                             R12 1 1
       31 JUMPIFNOTEQKS                    R12 K8 ["table"] ; [+9]
       33 GETTABLEKS                       R9 R0 K9 ["Label"]
       35 GETTABLEKS                       R12 R0 K10 ["Icon"]
       37 JUMPIFNOT                        R12 ; [+7]
       38 GETTABLEKS                       R10 R0 K10 ["Icon"]
       40 JUMP                             ; [+4]
       41 DUPTABLE                         R12 K12 [{"Image"}]
       42 SETTABLEKS                       R10 R12 K11 ["Image"]
       44 MOVE                             R11 R12
       45 GETUPVAL                         R13 2
       46 GETTABLEKS                       R12 R13 K13 ["createElement"]
       48 GETUPVAL                         R13 3
       49 DUPTABLE                         R14 K20 [{"LayoutOrder", "OnClick", "OnMouseEnter", "Size", "StyleModifier", "Style"}]
       50 SETTABLEKS                       R1 R14 K14 ["LayoutOrder"]
       52 SETTABLEKS                       R2 R14 K15 ["OnClick"]
       54 GETUPVAL                         R16 4
       55 JUMPIFNOT                        R16 ; [+4]
       56 NEWCLOSURE                       R15 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R15
       61 SETTABLEKS                       R15 R14 K16 ["OnMouseEnter"]
       63 GETIMPORT                        R15 K23 [UDim2.new]
       65 LOADN                            R16 1
       66 LOADN                            R17 0
       67 LOADN                            R18 0
       68 MOVE                             R19 R8
       69 CALL                             R15 4 1
       70 SETTABLEKS                       R15 R14 K17 ["Size"]
       72 GETUPVAL                         R16 4
       73 JUMPIFNOT                        R16 ; [+5]
       74 JUMPIFNOT                        R3 ; [+4]
       75 GETUPVAL                         R16 5
       76 GETTABLEKS                       R15 R16 K24 ["Hover"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R15
       80 SETTABLEKS                       R15 R14 K18 ["StyleModifier"]
       82 JUMPIFNOT                        R7 ; [+2]
       83 LOADK                            R15 K25 ["ModernDropdown"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R15
       86 SETTABLEKS                       R15 R14 K19 ["Style"]
       88 DUPTABLE                         R15 K27 [{"ImageContainer", "Label"}]
       89 JUMPIFNOT                        R10 ; [+61]
       90 GETUPVAL                         R17 2
       91 GETTABLEKS                       R16 R17 K13 ["createElement"]
       93 GETUPVAL                         R17 6
       94 DUPTABLE                         R18 K28 [{"LayoutOrder", "Size"}]
       95 LOADN                            R19 1
       96 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
       98 GETIMPORT                        R19 K30 [UDim2.fromOffset]
      100 MOVE                             R20 R8
      101 MOVE                             R21 R8
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K17 ["Size"]
      105 DUPTABLE                         R19 K12 [{"Image"}]
      106 GETUPVAL                         R21 2
      107 GETTABLEKS                       R20 R21 K13 ["createElement"]
      109 GETUPVAL                         R21 7
      110 GETUPVAL                         R22 8
      111 DUPTABLE                         R23 K33 [{"AnchorPoint", "Position", "Size", "Style"}]
      112 GETIMPORT                        R24 K35 [Vector2.new]
      114 LOADK                            R25 K36 [0.5]
      115 LOADK                            R26 K36 [0.5]
      116 CALL                             R24 2 1
      117 SETTABLEKS                       R24 R23 K31 ["AnchorPoint"]
      119 GETIMPORT                        R24 K38 [UDim2.fromScale]
      121 LOADK                            R25 K36 [0.5]
      122 LOADK                            R26 K36 [0.5]
      123 CALL                             R24 2 1
      124 SETTABLEKS                       R24 R23 K32 ["Position"]
      126 GETIMPORT                        R24 K30 [UDim2.fromOffset]
      128 LOADN                            R25 16
      129 LOADN                            R26 16
      130 CALL                             R24 2 1
      131 SETTABLEKS                       R24 R23 K17 ["Size"]
      133 SETTABLEKS                       R11 R23 K19 ["Style"]
      135 FASTCALL1                        TYPEOF R10 ; [+3]
      136 MOVE                             R26 R10
      137 GETIMPORT                        R25 K7 [typeof]
      139 CALL                             R25 1 1
      140 JUMPIFNOTEQKS                    R25 K8 ["table"] ; [+3]
      142 MOVE                             R24 R10
      143 JUMP                             ; [+1]
      144 LOADNIL                          R24
      145 CALL                             R22 2 -1
      146 CALL                             R20 -1 1
      147 SETTABLEKS                       R20 R19 K11 ["Image"]
      149 CALL                             R16 3 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R16
      152 SETTABLEKS                       R16 R15 K26 ["ImageContainer"]
      154 GETUPVAL                         R17 2
      155 GETTABLEKS                       R16 R17 K13 ["createElement"]
      157 GETUPVAL                         R17 9
      158 GETUPVAL                         R19 10
      159 GETTABLEKS                       R18 R19 K39 ["join"]
      161 DUPTABLE                         R19 K44 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment", "TextWrapped"}]
      162 LOADN                            R20 2
      163 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      165 GETIMPORT                        R20 K23 [UDim2.new]
      167 LOADN                            R21 1
      168 JUMPIFNOT                        R10 ; [+2]
      169 MINUS                            R22 R8
      170 JUMP                             ; [+1]
      171 LOADN                            R22 0
      172 LOADN                            R23 1
      173 LOADN                            R24 0
      174 CALL                             R20 4 1
      175 SETTABLEKS                       R20 R19 K17 ["Size"]
      177 SETTABLEKS                       R9 R19 K40 ["Text"]
      179 GETIMPORT                        R20 K47 [Enum.TextTruncate.AtEnd]
      181 SETTABLEKS                       R20 R19 K41 ["TextTruncate"]
      183 GETIMPORT                        R20 K49 [Enum.TextXAlignment.Left]
      185 SETTABLEKS                       R20 R19 K42 ["TextXAlignment"]
      187 GETUPVAL                         R22 0
      188 GETTABLEKS                       R21 R22 K0 ["props"]
      190 GETTABLEKS                       R20 R21 K43 ["TextWrapped"]
      192 SETTABLEKS                       R20 R19 K43 ["TextWrapped"]
      194 GETUPVAL                         R21 11
      195 JUMPIFNOT                        R21 ; [+9]
      196 JUMPIFNOT                        R7 ; [+8]
      197 NEWTABLE                         R20 1 0
      199 GETUPVAL                         R22 12
      200 GETTABLEKS                       R21 R22 K50 ["Tag"]
      202 LOADK                            R22 K51 ["BuilderSans Muted"]
      203 SETTABLE                         R22 R20 R21
      204 JUMP                             ; [+2]
      205 NEWTABLE                         R20 0 0
      207 CALL                             R18 2 1
      208 DUPTABLE                         R19 K53 [{"Padding"}]
      209 GETUPVAL                         R21 2
      210 GETTABLEKS                       R20 R21 K13 ["createElement"]
      212 LOADK                            R21 K54 ["UIPadding"]
      213 DUPTABLE                         R22 K56 [{"PaddingLeft"}]
      214 GETIMPORT                        R23 K58 [UDim.new]
      216 LOADN                            R24 0
      217 JUMPIFNOT                        R10 ; [+2]
      218 LOADN                            R25 40
      219 JUMP                             ; [+1]
      220 LOADN                            R25 10
      221 CALL                             R23 2 1
      222 SETTABLEKS                       R23 R22 K55 ["PaddingLeft"]
      224 CALL                             R20 2 1
      225 SETTABLEKS                       R20 R19 K52 ["Padding"]
      227 CALL                             R16 3 1
      228 SETTABLEKS                       R16 R15 K9 ["Label"]
      230 CALL                             R12 3 -1
      231 RETURN                           R12 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
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
       41 GETUPVAL                         R1 3
       42 JUMPIFNOT                        R1 ; [+4]
       43 NEWCLOSURE                       R1 P3
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K13 ["onInputBegan"]
       47 NEWCLOSURE                       R1 P4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 SETTABLEKS                       R1 R0 K14 ["defaultOnRenderItem"]
       63 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
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

PROTO_8:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["changeTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnItemActivated"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["OnFocusLost"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["OnFocusLost"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["OnItemActivated"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["OnFocusLost"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["OnFocusLost"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_11:
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
       30 GETTABLEKS                       R12 R0 K0 ["state"]
       32 GETTABLEKS                       R11 R12 K10 ["menuContentSize"]
       34 GETTABLEKS                       R10 R11 K11 ["X"]
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
       73 GETUPVAL                         R21 1
       74 GETTABLEKS                       R20 R21 K26 ["createElement"]
       76 LOADK                            R21 K27 ["UIListLayout"]
       77 NEWTABLE                         R22 4 0
       79 GETIMPORT                        R23 K31 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R23 R22 K29 ["SortOrder"]
       83 GETIMPORT                        R23 K34 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R23 R22 K32 ["FillDirection"]
       87 SETTABLEKS                       R18 R22 K23 ["VerticalAlignment"]
       89 GETUPVAL                         R25 1
       90 GETTABLEKS                       R24 R25 K35 ["Change"]
       92 GETTABLEKS                       R23 R24 K36 ["AbsoluteContentSize"]
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
      117 GETUPVAL                         R31 2
      118 JUMPIFNOT                        R31 ; [+7]
      119 GETTABLEKS                       R31 R2 K42 ["HoveredItemIndex"]
      121 JUMPIFEQ                         R23 R31 ; [+2]
      123 LOADB                            R30 0 +1
      124 LOADB                            R30 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R30
      127 CALL                             R26 4 1
      128 SETTABLE                         R26 R19 R25
      129 FORGLOOP                         R20 2 [inext] ; [-25]
      131 DUPTABLE                         R20 K48 [{"UIStroke", "UICorner", "ScrollingContainer", "Container", "HoverDetector"}]
      132 JUMPIFNOT                        R5 ; [+19]
      133 GETUPVAL                         R22 1
      134 GETTABLEKS                       R21 R22 K26 ["createElement"]
      136 LOADK                            R22 K43 ["UIStroke"]
      137 DUPTABLE                         R23 K52 [{"ApplyStrokeMode", "Color", "Thickness"}]
      138 GETIMPORT                        R24 K54 [Enum.ApplyStrokeMode.Border]
      140 SETTABLEKS                       R24 R23 K49 ["ApplyStrokeMode"]
      142 GETTABLEKS                       R24 R3 K55 ["StrokeColor"]
      144 SETTABLEKS                       R24 R23 K50 ["Color"]
      146 GETTABLEKS                       R24 R3 K56 ["StrokeThickness"]
      148 SETTABLEKS                       R24 R23 K51 ["Thickness"]
      150 CALL                             R21 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R21
      153 SETTABLEKS                       R21 R20 K43 ["UIStroke"]
      155 JUMPIFNOT                        R5 ; [+11]
      156 GETUPVAL                         R22 1
      157 GETTABLEKS                       R21 R22 K26 ["createElement"]
      159 LOADK                            R22 K44 ["UICorner"]
      160 DUPTABLE                         R23 K58 [{"CornerRadius"}]
      161 GETTABLEKS                       R24 R3 K57 ["CornerRadius"]
      163 SETTABLEKS                       R24 R23 K57 ["CornerRadius"]
      165 CALL                             R21 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R21
      168 SETTABLEKS                       R21 R20 K44 ["UICorner"]
      170 JUMPIFNOT                        R17 ; [+67]
      171 GETUPVAL                         R22 1
      172 GETTABLEKS                       R21 R22 K26 ["createElement"]
      174 GETUPVAL                         R22 3
      175 GETUPVAL                         R24 4
      176 GETTABLEKS                       R23 R24 K59 ["join"]
      178 DUPTABLE                         R24 K65 [{"AutoSizeCanvas", "Size", "AutomaticSize", "Position", "CanvasSize"}]
      179 LOADB                            R25 0
      180 SETTABLEKS                       R25 R24 K60 ["AutoSizeCanvas"]
      182 GETIMPORT                        R25 K67 [UDim2.new]
      184 LOADN                            R26 1
      185 MINUS                            R28 R4
      186 MULK                             R27 R28 K68 [2]
      187 LOADN                            R28 1
      188 MINUS                            R30 R4
      189 MULK                             R29 R30 K68 [2]
      190 CALL                             R25 4 1
      191 SETTABLEKS                       R25 R24 K61 ["Size"]
      193 GETTABLEKS                       R26 R2 K9 ["UseAutoWidth"]
      195 JUMPIFNOT                        R26 ; [+3]
      196 GETIMPORT                        R25 K69 [Enum.AutomaticSize.X]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R25
      200 SETTABLEKS                       R25 R24 K62 ["AutomaticSize"]
      202 GETIMPORT                        R25 K71 [UDim2.fromOffset]
      204 MOVE                             R26 R4
      205 MOVE                             R27 R4
      206 CALL                             R25 2 1
      207 SETTABLEKS                       R25 R24 K63 ["Position"]
      209 GETIMPORT                        R25 K71 [UDim2.fromOffset]
      211 GETTABLEKS                       R27 R1 K10 ["menuContentSize"]
      213 GETTABLEKS                       R26 R27 K11 ["X"]
      215 GETTABLEKS                       R28 R1 K10 ["menuContentSize"]
      217 GETTABLEKS                       R27 R28 K20 ["Y"]
      219 CALL                             R25 2 1
      220 SETTABLEKS                       R25 R24 K64 ["CanvasSize"]
      222 GETUPVAL                         R26 5
      223 JUMPIFNOT                        R26 ; [+9]
      224 JUMPIFNOT                        R5 ; [+8]
      225 NEWTABLE                         R25 1 0
      227 GETUPVAL                         R27 6
      228 GETTABLEKS                       R26 R27 K72 ["Tag"]
      230 LOADK                            R27 K4 ["modern"]
      231 SETTABLE                         R27 R25 R26
      232 JUMP                             ; [+1]
      233 LOADNIL                          R25
      234 CALL                             R23 2 1
      235 MOVE                             R24 R19
      236 CALL                             R21 3 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R21
      239 SETTABLEKS                       R21 R20 K45 ["ScrollingContainer"]
      241 JUMPIFNOT                        R17 ; [+2]
      242 LOADNIL                          R21
      243 JUMP                             ; [+45]
      244 GETUPVAL                         R22 1
      245 GETTABLEKS                       R21 R22 K26 ["createElement"]
      247 LOADK                            R22 K73 ["Frame"]
      248 DUPTABLE                         R23 K77 [{"BorderSizePixel", "Size", "AutomaticSize", "Position", "BackgroundColor3", "BackgroundTransparency"}]
      249 LOADN                            R24 0
      250 SETTABLEKS                       R24 R23 K74 ["BorderSizePixel"]
      252 GETIMPORT                        R24 K67 [UDim2.new]
      254 LOADN                            R25 1
      255 MINUS                            R27 R4
      256 MULK                             R26 R27 K68 [2]
      257 LOADN                            R27 1
      258 MINUS                            R29 R4
      259 MULK                             R28 R29 K68 [2]
      260 CALL                             R24 4 1
      261 SETTABLEKS                       R24 R23 K61 ["Size"]
      263 GETTABLEKS                       R25 R2 K9 ["UseAutoWidth"]
      265 JUMPIFNOT                        R25 ; [+3]
      266 GETIMPORT                        R24 K69 [Enum.AutomaticSize.X]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R24
      270 SETTABLEKS                       R24 R23 K62 ["AutomaticSize"]
      272 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      274 MOVE                             R25 R4
      275 MOVE                             R26 R4
      276 CALL                             R24 2 1
      277 SETTABLEKS                       R24 R23 K63 ["Position"]
      279 SETTABLEKS                       R9 R23 K75 ["BackgroundColor3"]
      281 JUMPIFNOT                        R5 ; [+2]
      282 LOADN                            R24 1
      283 JUMP                             ; [+1]
      284 LOADN                            R24 0
      285 SETTABLEKS                       R24 R23 K76 ["BackgroundTransparency"]
      287 MOVE                             R24 R19
      288 CALL                             R21 3 1
      289 SETTABLEKS                       R21 R20 K46 ["Container"]
      291 GETUPVAL                         R22 1
      292 GETTABLEKS                       R21 R22 K26 ["createElement"]
      294 LOADK                            R22 K78 ["TextButton"]
      295 NEWTABLE                         R23 8 0
      297 LOADN                            R24 1
      298 SETTABLEKS                       R24 R23 K76 ["BackgroundTransparency"]
      300 GETIMPORT                        R24 K67 [UDim2.new]
      302 LOADN                            R25 1
      303 MINUS                            R27 R4
      304 MULK                             R26 R27 K68 [2]
      305 LOADN                            R27 1
      306 MINUS                            R29 R4
      307 MULK                             R28 R29 K68 [2]
      308 CALL                             R24 4 1
      309 SETTABLEKS                       R24 R23 K61 ["Size"]
      311 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      313 MOVE                             R25 R4
      314 MOVE                             R26 R4
      315 CALL                             R24 2 1
      316 SETTABLEKS                       R24 R23 K63 ["Position"]
      318 LOADN                            R24 1
      319 SETTABLEKS                       R24 R23 K79 ["TextTransparency"]
      321 LOADN                            R24 255
      322 SETTABLEKS                       R24 R23 K80 ["ZIndex"]
      324 GETUPVAL                         R26 1
      325 GETTABLEKS                       R25 R26 K81 ["Event"]
      327 GETTABLEKS                       R24 R25 K82 ["InputBegan"]
      329 GETUPVAL                         R26 2
      330 JUMPIFNOT                        R26 ; [+3]
      331 GETTABLEKS                       R25 R0 K83 ["onInputBegan"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R25
      335 SETTABLE                         R25 R23 R24
      336 GETUPVAL                         R26 1
      337 GETTABLEKS                       R25 R26 K81 ["Event"]
      339 GETTABLEKS                       R24 R25 K84 ["MouseEnter"]
      341 GETTABLEKS                       R25 R2 K85 ["OnMouseEnter"]
      343 SETTABLE                         R25 R23 R24
      344 GETUPVAL                         R26 1
      345 GETTABLEKS                       R25 R26 K81 ["Event"]
      347 GETTABLEKS                       R24 R25 K86 ["MouseLeave"]
      349 GETTABLEKS                       R25 R2 K87 ["OnMouseLeave"]
      351 SETTABLE                         R25 R23 R24
      352 CALL                             R21 2 1
      353 SETTABLEKS                       R21 R20 K47 ["HoverDetector"]
      355 JUMPIFNOT                        R5 ; [+28]
      356 GETUPVAL                         R22 1
      357 GETTABLEKS                       R21 R22 K26 ["createElement"]
      359 LOADK                            R22 K88 ["CanvasGroup"]
      360 DUPTABLE                         R23 K89 [{"Position", "Size", "BackgroundColor3", "BackgroundTransparency"}]
      361 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      363 MOVE                             R25 R14
      364 MOVE                             R26 R15
      365 CALL                             R24 2 1
      366 SETTABLEKS                       R24 R23 K63 ["Position"]
      368 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      370 MOVE                             R25 R10
      371 MULK                             R27 R4 K68 [2]
      372 ADD                              R26 R16 R27
      373 CALL                             R24 2 1
      374 SETTABLEKS                       R24 R23 K61 ["Size"]
      376 SETTABLEKS                       R9 R23 K75 ["BackgroundColor3"]
      378 LOADN                            R24 0
      379 SETTABLEKS                       R24 R23 K76 ["BackgroundTransparency"]
      381 MOVE                             R24 R20
      382 CALL                             R21 3 -1
      383 RETURN                           R21 -1
      384 GETUPVAL                         R22 1
      385 GETTABLEKS                       R21 R22 K26 ["createElement"]
      387 GETUPVAL                         R22 7
      388 DUPTABLE                         R23 K92 [{"Position", "Size", "Background", "BackgroundStyle"}]
      389 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      391 MOVE                             R25 R14
      392 MOVE                             R26 R15
      393 CALL                             R24 2 1
      394 SETTABLEKS                       R24 R23 K63 ["Position"]
      396 GETIMPORT                        R24 K71 [UDim2.fromOffset]
      398 MOVE                             R25 R10
      399 MULK                             R27 R4 K68 [2]
      400 ADD                              R26 R16 R27
      401 CALL                             R24 2 1
      402 SETTABLEKS                       R24 R23 K61 ["Size"]
      404 GETUPVAL                         R24 8
      405 SETTABLEKS                       R24 R23 K90 ["Background"]
      407 GETTABLEKS                       R24 R3 K91 ["BackgroundStyle"]
      409 SETTABLEKS                       R24 R23 K91 ["BackgroundStyle"]
      411 MOVE                             R24 R20
      412 CALL                             R21 3 -1
      413 RETURN                           R21 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Hide"]
        4 NOT                              R2 R3
        5 GETTABLEKS                       R3 R1 K2 ["Priority"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["createElement"]
       10 GETUPVAL                         R5 1
       11 NEWTABLE                         R6 2 0
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K4 ["Ref"]
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
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K3 ["createElement"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R7 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K14 ["SharedFlags"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K15 ["getFFlagDevFrameworkDropdownMenuHeight"]
       55 CALL                             R7 0 1
       56 GETIMPORT                        R8 K17 [game]
       58 LOADK                            R10 K18 ["DevFrameworkLimitDropdownHeight"]
       59 LOADB                            R11 0
       60 NAMECALL                         R8 R8 K19 ["DefineFastFlag"]
       62 CALL                             R8 3 1
       63 GETIMPORT                        R9 K6 [require]
       65 GETTABLEKS                       R10 R0 K20 ["Util"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R9 K21 ["prioritize"]
       70 GETTABLEKS                       R11 R9 K22 ["StyleModifier"]
       72 GETIMPORT                        R12 K6 [require]
       74 GETTABLEKS                       R14 R0 K20 ["Util"]
       76 GETTABLEKS                       R13 R14 K23 ["Typecheck"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K6 [require]
       81 GETTABLEKS                       R15 R0 K4 ["Parent"]
       83 GETTABLEKS                       R14 R15 K24 ["Dash"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R13 K25 ["join"]
       88 GETTABLEKS                       R15 R0 K2 ["UI"]
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R18 R15 K26 ["Components"]
       94 GETTABLEKS                       R17 R18 K27 ["Container"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R19 R15 K26 ["Components"]
      101 GETTABLEKS                       R18 R19 K28 ["CaptureFocus"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R20 R15 K26 ["Components"]
      108 GETTABLEKS                       R19 R20 K29 ["Image"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETTABLEKS                       R21 R15 K26 ["Components"]
      115 GETTABLEKS                       R20 R21 K30 ["ScrollingFrame"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETTABLEKS                       R22 R15 K26 ["Components"]
      122 GETTABLEKS                       R21 R22 K31 ["DEPRECATED_Button"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K6 [require]
      127 GETTABLEKS                       R23 R15 K26 ["Components"]
      129 GETTABLEKS                       R22 R23 K32 ["Pane"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R24 R15 K26 ["Components"]
      136 GETTABLEKS                       R23 R24 K33 ["RoundBox"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K6 [require]
      141 GETTABLEKS                       R25 R15 K26 ["Components"]
      143 GETTABLEKS                       R24 R25 K34 ["TextLabel"]
      145 CALL                             R23 1 1
      146 GETTABLEKS                       R24 R1 K35 ["PureComponent"]
      148 LOADK                            R26 K36 ["DropdownMenu"]
      149 NAMECALL                         R24 R24 K37 ["extend"]
      151 CALL                             R24 2 1
      152 GETTABLEKS                       R25 R12 K38 ["wrap"]
      154 MOVE                             R26 R24
      155 GETIMPORT                        R27 K1 [script]
      157 CALL                             R25 2 0
      158 DUPCLOSURE                       R25 K39 [PROTO_6]
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R25 R24 K40 ["init"]
      174 DUPCLOSURE                       R25 K41 [PROTO_7]
      175 SETTABLEKS                       R25 R24 K42 ["didUpdate"]
      177 DUPCLOSURE                       R25 K43 [PROTO_8]
      178 SETTABLEKS                       R25 R24 K44 ["willUnmount"]
      180 DUPCLOSURE                       R25 K45 [PROTO_11]
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R22
      190 SETTABLEKS                       R25 R24 K46 ["renderMenu"]
      192 DUPCLOSURE                       R25 K47 [PROTO_12]
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 SETTABLEKS                       R25 R24 K48 ["render"]
      198 MOVE                             R25 R3
      199 DUPTABLE                         R26 K51 [{"Focus", "Stylizer"}]
      200 GETTABLEKS                       R27 R2 K49 ["Focus"]
      202 SETTABLEKS                       R27 R26 K49 ["Focus"]
      204 GETTABLEKS                       R27 R2 K50 ["Stylizer"]
      206 SETTABLEKS                       R27 R26 K50 ["Stylizer"]
      208 CALL                             R25 1 1
      209 MOVE                             R26 R24
      210 CALL                             R25 1 1
      211 MOVE                             R24 R25
      212 RETURN                           R24 1
