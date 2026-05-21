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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
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
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnHoveredItemChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnHoveredItemChanged"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
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
       26 LOADB                            R12 0
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R14 R0
       29 GETIMPORT                        R13 K7 [typeof]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K8 ["table"] ; [+17]
       34 GETTABLEKS                       R9 R0 K9 ["Label"]
       36 GETTABLEKS                       R13 R0 K10 ["Icon"]
       38 JUMPIFNOT                        R13 ; [+2]
       39 GETTABLEKS                       R10 R0 K10 ["Icon"]
       41 GETUPVAL                         R13 2
       42 JUMPIFNOT                        R13 ; [+11]
       43 GETTABLEKS                       R13 R0 K11 ["Disabled"]
       45 JUMPIFEQKB                       R13 TRUE ; [+2]
       47 LOADB                            R12 0 +1
       48 LOADB                            R12 1
       49 JUMP                             ; [+4]
       50 DUPTABLE                         R13 K13 [{"Image"}]
       51 SETTABLEKS                       R10 R13 K12 ["Image"]
       53 MOVE                             R11 R13
       54 GETUPVAL                         R14 3
       55 JUMPIFNOT                        R14 ; [+3]
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADK                            R13 K14 ["BuilderSans Muted"]
       58 JUMP                             ; [+1]
       59 LOADK                            R13 K15 [""]
       60 GETUPVAL                         R14 2
       61 JUMPIFNOT                        R14 ; [+4]
       62 JUMPIFNOT                        R12 ; [+3]
       63 MOVE                             R14 R13
       64 LOADK                            R15 K16 [" Disabled"]
       65 CONCAT                           R13 R14 R15
       66 GETUPVAL                         R14 4
       67 GETTABLEKS                       R14 R14 K17 ["createElement"]
       69 GETUPVAL                         R15 5
       70 DUPTABLE                         R16 K24 [{"LayoutOrder", "OnClick", "OnMouseEnter", "Size", "StyleModifier", "Style"}]
       71 SETTABLEKS                       R1 R16 K18 ["LayoutOrder"]
       73 GETUPVAL                         R18 2
       74 JUMPIFNOT                        R18 ; [+3]
       75 JUMPIFNOT                        R12 ; [+2]
       76 DUPCLOSURE                       R17 K25 [PROTO_4]
       77 JUMP                             ; [+1]
       78 MOVE                             R17 R2
       79 SETTABLEKS                       R17 R16 K19 ["OnClick"]
       81 GETUPVAL                         R18 6
       82 JUMPIFNOT                        R18 ; [+4]
       83 NEWCLOSURE                       R17 P1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R17
       88 SETTABLEKS                       R17 R16 K20 ["OnMouseEnter"]
       90 GETIMPORT                        R17 K28 [UDim2.new]
       92 LOADN                            R18 1
       93 LOADN                            R19 0
       94 LOADN                            R20 0
       95 MOVE                             R21 R8
       96 CALL                             R17 4 1
       97 SETTABLEKS                       R17 R16 K21 ["Size"]
       99 GETUPVAL                         R18 6
      100 JUMPIFNOT                        R18 ; [+5]
      101 JUMPIFNOT                        R3 ; [+4]
      102 GETUPVAL                         R17 7
      103 GETTABLEKS                       R17 R17 K29 ["Hover"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R17
      107 SETTABLEKS                       R17 R16 K22 ["StyleModifier"]
      109 JUMPIFNOT                        R7 ; [+2]
      110 LOADK                            R17 K30 ["ModernDropdown"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R17
      113 SETTABLEKS                       R17 R16 K23 ["Style"]
      115 DUPTABLE                         R17 K32 [{"ImageContainer", "Label"}]
      116 JUMPIFNOT                        R10 ; [+61]
      117 GETUPVAL                         R18 4
      118 GETTABLEKS                       R18 R18 K17 ["createElement"]
      120 GETUPVAL                         R19 8
      121 DUPTABLE                         R20 K33 [{"LayoutOrder", "Size"}]
      122 LOADN                            R21 1
      123 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      125 GETIMPORT                        R21 K35 [UDim2.fromOffset]
      127 MOVE                             R22 R8
      128 MOVE                             R23 R8
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K21 ["Size"]
      132 DUPTABLE                         R21 K13 [{"Image"}]
      133 GETUPVAL                         R22 4
      134 GETTABLEKS                       R22 R22 K17 ["createElement"]
      136 GETUPVAL                         R23 9
      137 GETUPVAL                         R24 10
      138 DUPTABLE                         R25 K38 [{"AnchorPoint", "Position", "Size", "Style"}]
      139 GETIMPORT                        R26 K40 [Vector2.new]
      141 LOADK                            R27 K41 [0.5]
      142 LOADK                            R28 K41 [0.5]
      143 CALL                             R26 2 1
      144 SETTABLEKS                       R26 R25 K36 ["AnchorPoint"]
      146 GETIMPORT                        R26 K43 [UDim2.fromScale]
      148 LOADK                            R27 K41 [0.5]
      149 LOADK                            R28 K41 [0.5]
      150 CALL                             R26 2 1
      151 SETTABLEKS                       R26 R25 K37 ["Position"]
      153 GETIMPORT                        R26 K35 [UDim2.fromOffset]
      155 LOADN                            R27 16
      156 LOADN                            R28 16
      157 CALL                             R26 2 1
      158 SETTABLEKS                       R26 R25 K21 ["Size"]
      160 SETTABLEKS                       R11 R25 K23 ["Style"]
      162 FASTCALL1                        TYPEOF R10 ; [+3]
      163 MOVE                             R28 R10
      164 GETIMPORT                        R27 K7 [typeof]
      166 CALL                             R27 1 1
      167 JUMPIFNOTEQKS                    R27 K8 ["table"] ; [+3]
      169 MOVE                             R26 R10
      170 JUMP                             ; [+1]
      171 LOADNIL                          R26
      172 CALL                             R24 2 -1
      173 CALL                             R22 -1 1
      174 SETTABLEKS                       R22 R21 K12 ["Image"]
      176 CALL                             R18 3 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R18
      179 SETTABLEKS                       R18 R17 K31 ["ImageContainer"]
      181 GETUPVAL                         R18 4
      182 GETTABLEKS                       R18 R18 K17 ["createElement"]
      184 GETUPVAL                         R19 11
      185 GETUPVAL                         R20 12
      186 GETTABLEKS                       R20 R20 K44 ["join"]
      188 DUPTABLE                         R21 K49 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment", "TextWrapped"}]
      189 LOADN                            R22 2
      190 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      192 GETIMPORT                        R22 K28 [UDim2.new]
      194 LOADN                            R23 1
      195 JUMPIFNOT                        R10 ; [+2]
      196 MINUS                            R24 R8
      197 JUMP                             ; [+1]
      198 LOADN                            R24 0
      199 LOADN                            R25 1
      200 LOADN                            R26 0
      201 CALL                             R22 4 1
      202 SETTABLEKS                       R22 R21 K21 ["Size"]
      204 SETTABLEKS                       R9 R21 K45 ["Text"]
      206 GETIMPORT                        R22 K52 [Enum.TextTruncate.AtEnd]
      208 SETTABLEKS                       R22 R21 K46 ["TextTruncate"]
      210 GETIMPORT                        R22 K54 [Enum.TextXAlignment.Left]
      212 SETTABLEKS                       R22 R21 K47 ["TextXAlignment"]
      214 GETUPVAL                         R22 0
      215 GETTABLEKS                       R22 R22 K0 ["props"]
      217 GETTABLEKS                       R22 R22 K48 ["TextWrapped"]
      219 SETTABLEKS                       R22 R21 K48 ["TextWrapped"]
      221 JUMPIFEQKS                       R13 K15 [""] ; [+8]
      223 NEWTABLE                         R22 1 0
      225 GETUPVAL                         R23 13
      226 GETTABLEKS                       R23 R23 K55 ["Tag"]
      228 SETTABLE                         R13 R22 R23
      229 JUMP                             ; [+2]
      230 NEWTABLE                         R22 0 0
      232 CALL                             R20 2 1
      233 DUPTABLE                         R21 K57 [{"Padding"}]
      234 GETUPVAL                         R22 4
      235 GETTABLEKS                       R22 R22 K17 ["createElement"]
      237 LOADK                            R23 K58 ["UIPadding"]
      238 DUPTABLE                         R24 K60 [{"PaddingLeft"}]
      239 GETIMPORT                        R25 K62 [UDim.new]
      241 LOADN                            R26 0
      242 JUMPIFNOT                        R10 ; [+2]
      243 LOADN                            R27 40
      244 JUMP                             ; [+1]
      245 LOADN                            R27 10
      246 CALL                             R25 2 1
      247 SETTABLEKS                       R25 R24 K59 ["PaddingLeft"]
      249 CALL                             R22 2 1
      250 SETTABLEKS                       R22 R21 K56 ["Padding"]
      252 CALL                             R18 3 1
      253 SETTABLEKS                       R18 R17 K9 ["Label"]
      255 CALL                             R14 3 -1
      256 RETURN                           R14 -1

PROTO_7:
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
       41 GETUPVAL                         R1 3
       42 JUMPIFNOT                        R1 ; [+4]
       43 NEWCLOSURE                       R1 P3
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K13 ["onInputBegan"]
       47 NEWCLOSURE                       R1 P4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          UPVAL U13
       62 SETTABLEKS                       R1 R0 K14 ["defaultOnRenderItem"]
       64 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["changeTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
      133 GETUPVAL                         R21 1
      134 GETTABLEKS                       R21 R21 K26 ["createElement"]
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
      156 GETUPVAL                         R21 1
      157 GETTABLEKS                       R21 R21 K26 ["createElement"]
      159 LOADK                            R22 K44 ["UICorner"]
      160 DUPTABLE                         R23 K58 [{"CornerRadius"}]
      161 GETTABLEKS                       R24 R3 K57 ["CornerRadius"]
      163 SETTABLEKS                       R24 R23 K57 ["CornerRadius"]
      165 CALL                             R21 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R21
      168 SETTABLEKS                       R21 R20 K44 ["UICorner"]
      170 JUMPIFNOT                        R17 ; [+67]
      171 GETUPVAL                         R21 1
      172 GETTABLEKS                       R21 R21 K26 ["createElement"]
      174 GETUPVAL                         R22 3
      175 GETUPVAL                         R23 4
      176 GETTABLEKS                       R23 R23 K59 ["join"]
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
      211 GETTABLEKS                       R26 R1 K10 ["menuContentSize"]
      213 GETTABLEKS                       R26 R26 K11 ["X"]
      215 GETTABLEKS                       R27 R1 K10 ["menuContentSize"]
      217 GETTABLEKS                       R27 R27 K20 ["Y"]
      219 CALL                             R25 2 1
      220 SETTABLEKS                       R25 R24 K64 ["CanvasSize"]
      222 GETUPVAL                         R26 5
      223 JUMPIFNOT                        R26 ; [+9]
      224 JUMPIFNOT                        R5 ; [+8]
      225 NEWTABLE                         R25 1 0
      227 GETUPVAL                         R26 6
      228 GETTABLEKS                       R26 R26 K72 ["Tag"]
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
      244 GETUPVAL                         R21 1
      245 GETTABLEKS                       R21 R21 K26 ["createElement"]
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
      291 GETUPVAL                         R21 1
      292 GETTABLEKS                       R21 R21 K26 ["createElement"]
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
      324 GETUPVAL                         R24 1
      325 GETTABLEKS                       R24 R24 K81 ["Event"]
      327 GETTABLEKS                       R24 R24 K82 ["InputBegan"]
      329 GETUPVAL                         R26 2
      330 JUMPIFNOT                        R26 ; [+3]
      331 GETTABLEKS                       R25 R0 K83 ["onInputBegan"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R25
      335 SETTABLE                         R25 R23 R24
      336 GETUPVAL                         R24 1
      337 GETTABLEKS                       R24 R24 K81 ["Event"]
      339 GETTABLEKS                       R24 R24 K84 ["MouseEnter"]
      341 GETTABLEKS                       R25 R2 K85 ["OnMouseEnter"]
      343 SETTABLE                         R25 R23 R24
      344 GETUPVAL                         R24 1
      345 GETTABLEKS                       R24 R24 K81 ["Event"]
      347 GETTABLEKS                       R24 R24 K86 ["MouseLeave"]
      349 GETTABLEKS                       R25 R2 K87 ["OnMouseLeave"]
      351 SETTABLE                         R25 R23 R24
      352 CALL                             R21 2 1
      353 SETTABLEKS                       R21 R20 K47 ["HoverDetector"]
      355 JUMPIFNOT                        R5 ; [+28]
      356 GETUPVAL                         R21 1
      357 GETTABLEKS                       R21 R21 K26 ["createElement"]
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
      384 GETUPVAL                         R21 1
      385 GETTABLEKS                       R21 R21 K26 ["createElement"]
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

PROTO_13:
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
       63 GETTABLEKS                       R9 R6 K20 ["getFFlagDevFrameworkDropdownItemDisabled"]
       65 CALL                             R9 0 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R11 R0 K21 ["Util"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R10 K22 ["prioritize"]
       73 GETTABLEKS                       R12 R10 K23 ["StyleModifier"]
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K21 ["Util"]
       79 GETTABLEKS                       R14 R14 K24 ["Typecheck"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K4 ["Parent"]
       86 GETTABLEKS                       R15 R15 K25 ["Dash"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R14 K26 ["join"]
       91 GETTABLEKS                       R16 R0 K2 ["UI"]
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R16 K27 ["Components"]
       97 GETTABLEKS                       R18 R18 K28 ["Container"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETTABLEKS                       R19 R16 K27 ["Components"]
      104 GETTABLEKS                       R19 R19 K29 ["CaptureFocus"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K6 [require]
      109 GETTABLEKS                       R20 R16 K27 ["Components"]
      111 GETTABLEKS                       R20 R20 K30 ["Image"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K6 [require]
      116 GETTABLEKS                       R21 R16 K27 ["Components"]
      118 GETTABLEKS                       R21 R21 K31 ["ScrollingFrame"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K6 [require]
      123 GETTABLEKS                       R22 R16 K27 ["Components"]
      125 GETTABLEKS                       R22 R22 K32 ["DEPRECATED_Button"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K6 [require]
      130 GETTABLEKS                       R23 R16 K27 ["Components"]
      132 GETTABLEKS                       R23 R23 K33 ["Pane"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K6 [require]
      137 GETTABLEKS                       R24 R16 K27 ["Components"]
      139 GETTABLEKS                       R24 R24 K34 ["RoundBox"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K6 [require]
      144 GETTABLEKS                       R25 R16 K27 ["Components"]
      146 GETTABLEKS                       R25 R25 K35 ["TextLabel"]
      148 CALL                             R24 1 1
      149 GETTABLEKS                       R25 R1 K36 ["PureComponent"]
      151 LOADK                            R27 K37 ["DropdownMenu"]
      152 NAMECALL                         R25 R25 K38 ["extend"]
      154 CALL                             R25 2 1
      155 GETTABLEKS                       R26 R13 K39 ["wrap"]
      157 MOVE                             R27 R25
      158 GETIMPORT                        R28 K1 [script]
      160 CALL                             R26 2 0
      161 DUPCLOSURE                       R26 K40 [PROTO_7]
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R4
      176 SETTABLEKS                       R26 R25 K41 ["init"]
      178 DUPCLOSURE                       R26 K42 [PROTO_8]
      179 SETTABLEKS                       R26 R25 K43 ["didUpdate"]
      181 DUPCLOSURE                       R26 K44 [PROTO_9]
      182 SETTABLEKS                       R26 R25 K45 ["willUnmount"]
      184 DUPCLOSURE                       R26 K46 [PROTO_12]
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R23
      194 SETTABLEKS                       R26 R25 K47 ["renderMenu"]
      196 DUPCLOSURE                       R26 K48 [PROTO_13]
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R18
      200 SETTABLEKS                       R26 R25 K49 ["render"]
      202 MOVE                             R26 R3
      203 DUPTABLE                         R27 K52 [{"Focus", "Stylizer"}]
      204 GETTABLEKS                       R28 R2 K50 ["Focus"]
      206 SETTABLEKS                       R28 R27 K50 ["Focus"]
      208 GETTABLEKS                       R28 R2 K51 ["Stylizer"]
      210 SETTABLEKS                       R28 R27 K51 ["Stylizer"]
      212 CALL                             R26 1 1
      213 MOVE                             R27 R25
      214 CALL                             R26 1 1
      215 MOVE                             R25 R26
      216 RETURN                           R25 1
