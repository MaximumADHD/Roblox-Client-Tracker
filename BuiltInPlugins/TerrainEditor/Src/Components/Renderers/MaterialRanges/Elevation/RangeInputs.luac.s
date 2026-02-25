PROTO_0:
        0 JUMPIFNOT                        R0 ; [+24]
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [tonumber]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["OnChanged"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["Unit"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K4 ["Percentage"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+3]
       18 DIVK                             R3 R1 K5 [100]
       19 JUMP                             ; [+1]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 2
       23 LOADB                            R3 0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Editable"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETTABLEKS                       R4 R0 K0 ["Unit"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["Percentage"]
        8 JUMPIFNOTEQ                      R4 R5 ; [+5]
       10 GETTABLEKS                       R4 R0 K3 ["Value"]
       12 MULK                             R3 R4 K2 [100]
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R3 R0 K3 ["Value"]
       16 JUMPIFNOT                        R1 ; [+42]
       17 GETTABLEKS                       R4 R0 K4 ["Editable"]
       19 JUMPIFNOT                        R4 ; [+39]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K5 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K11 [{"AnchorPoint", "OnFocusLost", "Position", "Size", "Text"}]
       25 GETIMPORT                        R7 K14 [Vector2.new]
       27 LOADN                            R8 0
       28 LOADK                            R9 K15 [0.5]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R7 R6 K7 ["OnFocusLost"]
       38 GETTABLEKS                       R7 R0 K8 ["Position"]
       40 SETTABLEKS                       R7 R6 K8 ["Position"]
       42 GETTABLEKS                       R7 R0 K9 ["Size"]
       44 SETTABLEKS                       R7 R6 K9 ["Size"]
       46 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       47 MOVE                             R9 R3
       48 GETIMPORT                        R8 K18 [math.floor]
       50 CALL                             R8 1 1
       51 FASTCALL1                        TOSTRING R8 ; [+2]
       52 GETIMPORT                        R7 K20 [tostring]
       54 CALL                             R7 1 1
       55 SETTABLEKS                       R7 R6 K10 ["Text"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R4 R5 K5 ["createElement"]
       62 GETUPVAL                         R5 4
       63 DUPTABLE                         R6 K22 [{"AnchorPoint", "OnClick", "Position", "Size"}]
       64 GETIMPORT                        R7 K14 [Vector2.new]
       66 LOADN                            R8 0
       67 LOADK                            R9 K15 [0.5]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R7 R6 K21 ["OnClick"]
       76 GETTABLEKS                       R7 R0 K8 ["Position"]
       78 SETTABLEKS                       R7 R6 K8 ["Position"]
       80 GETTABLEKS                       R7 R0 K9 ["Size"]
       82 SETTABLEKS                       R7 R6 K9 ["Size"]
       84 DUPTABLE                         R7 K24 [{"Label"}]
       85 GETUPVAL                         R9 2
       86 GETTABLEKS                       R8 R9 K5 ["createElement"]
       88 GETUPVAL                         R9 5
       89 DUPTABLE                         R10 K25 [{"Text"}]
       90 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       91 MOVE                             R13 R3
       92 GETIMPORT                        R12 K18 [math.floor]
       94 CALL                             R12 1 1
       95 FASTCALL1                        TOSTRING R12 ; [+2]
       96 GETIMPORT                        R11 K20 [tostring]
       98 CALL                             R11 1 1
       99 SETTABLEKS                       R11 R10 K10 ["Text"]
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K23 ["Label"]
      104 CALL                             R4 3 -1
      105 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R2 K2 [{"Min"}]
        4 SETTABLEKS                       R0 R2 K1 ["Min"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R2 K2 [{"MinHeight"}]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 FASTCALL3                        MATH_CLAMP R0 R5 R6
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K5 [math.clamp]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["MinHeight"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R2 K2 [{"MaxHeight"}]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 FASTCALL3                        MATH_CLAMP R0 R5 R6
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K5 [math.clamp]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["MaxHeight"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R2 K2 [{"Max"}]
        4 SETTABLEKS                       R0 R2 K1 ["Max"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ElevationRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Max"]
        7 GETTABLEKS                       R3 R0 K3 ["Min"]
        9 GETTABLEKS                       R4 R0 K4 ["MaxHeight"]
       11 GETTABLEKS                       R5 R0 K5 ["MinHeight"]
       13 SUB                              R6 R2 R3
       14 GETTABLEKS                       R10 R1 K7 ["SliderSize"]
       16 GETTABLEKS                       R9 R10 K8 ["Y"]
       18 GETTABLEKS                       R8 R9 K9 ["Offset"]
       20 SUBK                             R7 R8 K6 [20]
       21 GETTABLEKS                       R10 R1 K10 ["TextBoxSize"]
       23 GETTABLEKS                       R9 R10 K8 ["Y"]
       25 GETTABLEKS                       R8 R9 K9 ["Offset"]
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 JUMPIFNOT                        R5 ; [+30]
       30 JUMPIFNOT                        R4 ; [+29]
       31 DIV                              R12 R4 R6
       32 SUBRK                            R11 R11 K12 [0]
       33 MUL                              R9 R11 R7
       34 DIV                              R12 R5 R6
       35 SUBRK                            R11 R11 K12 [0]
       36 MUL                              R10 R11 R7
       37 SUBK                             R12 R9 K12 [0]
       38 JUMPIFLT                         R12 R8 ; [+2]
       40 LOADB                            R11 0 +1
       41 LOADB                            R11 1
       42 SUB                              R13 R7 R10
       43 JUMPIFLT                         R13 R8 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 JUMPIFNOT                        R11 ; [+6]
       48 LOADN                            R13 0
       49 ADD                              R9 R13 R8
       50 SUB                              R13 R10 R9
       51 JUMPIFNOTLT                      R13 R8 ; [+2]
       53 ADD                              R10 R9 R8
       54 JUMPIFNOT                        R12 ; [+5]
       55 SUB                              R10 R7 R8
       56 SUB                              R13 R10 R9
       57 JUMPIFNOTLT                      R13 R8 ; [+2]
       59 SUB                              R9 R10 R8
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R11 R12 K13 ["createElement"]
       63 LOADK                            R12 K14 ["Frame"]
       64 DUPTABLE                         R13 K17 [{"BackgroundTransparency", "Size"}]
       65 LOADN                            R14 1
       66 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
       68 GETIMPORT                        R14 K20 [UDim2.fromOffset]
       70 GETTABLEKS                       R17 R1 K10 ["TextBoxSize"]
       72 GETTABLEKS                       R16 R17 K21 ["X"]
       74 GETTABLEKS                       R15 R16 K9 ["Offset"]
       76 GETTABLEKS                       R18 R1 K7 ["SliderSize"]
       78 GETTABLEKS                       R17 R18 K8 ["Y"]
       80 GETTABLEKS                       R16 R17 K9 ["Offset"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K16 ["Size"]
       85 DUPTABLE                         R14 K22 [{"Min", "MinHeight", "MaxHeight", "Max"}]
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R15 R16 K13 ["createElement"]
       89 GETUPVAL                         R16 2
       90 DUPTABLE                         R17 K28 [{"Editable", "OnChanged", "Position", "Size", "Unit", "Value"}]
       91 GETTABLEKS                       R19 R0 K26 ["Unit"]
       93 GETUPVAL                         R21 3
       94 GETTABLEKS                       R20 R21 K29 ["Stud"]
       96 JUMPIFEQ                         R19 R20 ; [+2]
       98 LOADB                            R18 0 +1
       99 LOADB                            R18 1
      100 SETTABLEKS                       R18 R17 K23 ["Editable"]
      102 NEWCLOSURE                       R18 P0
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R18 R17 K24 ["OnChanged"]
      106 GETIMPORT                        R18 K31 [UDim2.new]
      108 LOADN                            R19 0
      109 LOADN                            R20 0
      110 LOADN                            R21 0
      111 MOVE                             R22 R7
      112 CALL                             R18 4 1
      113 SETTABLEKS                       R18 R17 K25 ["Position"]
      115 GETTABLEKS                       R18 R1 K10 ["TextBoxSize"]
      117 SETTABLEKS                       R18 R17 K16 ["Size"]
      119 GETTABLEKS                       R18 R0 K26 ["Unit"]
      121 SETTABLEKS                       R18 R17 K26 ["Unit"]
      123 SETTABLEKS                       R3 R17 K27 ["Value"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K3 ["Min"]
      128 JUMPIFNOT                        R4 ; [+36]
      129 JUMPIFNOT                        R5 ; [+35]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R15 R16 K13 ["createElement"]
      133 GETUPVAL                         R16 2
      134 DUPTABLE                         R17 K28 [{"Editable", "OnChanged", "Position", "Size", "Unit", "Value"}]
      135 LOADB                            R18 1
      136 SETTABLEKS                       R18 R17 K23 ["Editable"]
      138 NEWCLOSURE                       R18 P1
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 SETTABLEKS                       R18 R17 K24 ["OnChanged"]
      144 GETIMPORT                        R18 K31 [UDim2.new]
      146 LOADN                            R19 0
      147 LOADN                            R20 0
      148 LOADN                            R21 0
      149 MOVE                             R22 R10
      150 CALL                             R18 4 1
      151 SETTABLEKS                       R18 R17 K25 ["Position"]
      153 GETTABLEKS                       R18 R1 K10 ["TextBoxSize"]
      155 SETTABLEKS                       R18 R17 K16 ["Size"]
      157 GETTABLEKS                       R18 R0 K26 ["Unit"]
      159 SETTABLEKS                       R18 R17 K26 ["Unit"]
      161 SETTABLEKS                       R5 R17 K27 ["Value"]
      163 CALL                             R15 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R15
      166 SETTABLEKS                       R15 R14 K5 ["MinHeight"]
      168 JUMPIFNOT                        R4 ; [+36]
      169 JUMPIFNOT                        R5 ; [+35]
      170 GETUPVAL                         R16 1
      171 GETTABLEKS                       R15 R16 K13 ["createElement"]
      173 GETUPVAL                         R16 2
      174 DUPTABLE                         R17 K28 [{"Editable", "OnChanged", "Position", "Size", "Unit", "Value"}]
      175 LOADB                            R18 1
      176 SETTABLEKS                       R18 R17 K23 ["Editable"]
      178 NEWCLOSURE                       R18 P2
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R18 R17 K24 ["OnChanged"]
      184 GETIMPORT                        R18 K31 [UDim2.new]
      186 LOADN                            R19 0
      187 LOADN                            R20 0
      188 LOADN                            R21 0
      189 MOVE                             R22 R9
      190 CALL                             R18 4 1
      191 SETTABLEKS                       R18 R17 K25 ["Position"]
      193 GETTABLEKS                       R18 R1 K10 ["TextBoxSize"]
      195 SETTABLEKS                       R18 R17 K16 ["Size"]
      197 GETTABLEKS                       R18 R0 K26 ["Unit"]
      199 SETTABLEKS                       R18 R17 K26 ["Unit"]
      201 SETTABLEKS                       R4 R17 K27 ["Value"]
      203 CALL                             R15 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R15
      206 SETTABLEKS                       R15 R14 K4 ["MaxHeight"]
      208 GETUPVAL                         R16 1
      209 GETTABLEKS                       R15 R16 K13 ["createElement"]
      211 GETUPVAL                         R16 2
      212 DUPTABLE                         R17 K28 [{"Editable", "OnChanged", "Position", "Size", "Unit", "Value"}]
      213 GETTABLEKS                       R19 R0 K26 ["Unit"]
      215 GETUPVAL                         R21 3
      216 GETTABLEKS                       R20 R21 K29 ["Stud"]
      218 JUMPIFEQ                         R19 R20 ; [+2]
      220 LOADB                            R18 0 +1
      221 LOADB                            R18 1
      222 SETTABLEKS                       R18 R17 K23 ["Editable"]
      224 NEWCLOSURE                       R18 P3
      225 CAPTURE                          VAL R0
      226 SETTABLEKS                       R18 R17 K24 ["OnChanged"]
      228 GETIMPORT                        R18 K31 [UDim2.new]
      230 LOADN                            R19 0
      231 LOADN                            R20 0
      232 LOADN                            R21 0
      233 LOADN                            R22 0
      234 CALL                             R18 4 1
      235 SETTABLEKS                       R18 R17 K25 ["Position"]
      237 GETTABLEKS                       R18 R1 K10 ["TextBoxSize"]
      239 SETTABLEKS                       R18 R17 K16 ["Size"]
      241 GETTABLEKS                       R18 R0 K26 ["Unit"]
      243 SETTABLEKS                       R18 R17 K26 ["Unit"]
      245 SETTABLEKS                       R2 R17 K27 ["Value"]
      247 CALL                             R15 2 1
      248 SETTABLEKS                       R15 R14 K2 ["Max"]
      250 CALL                             R11 3 -1
      251 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useState"]
       23 GETTABLEKS                       R5 R1 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R1 K12 ["UI"]
       29 GETTABLEKS                       R5 R6 K13 ["Pane"]
       31 GETTABLEKS                       R7 R1 K12 ["UI"]
       33 GETTABLEKS                       R6 R7 K14 ["TextInput"]
       35 GETTABLEKS                       R8 R1 K12 ["UI"]
       37 GETTABLEKS                       R7 R8 K15 ["TextLabel"]
       39 GETTABLEKS                       R9 R1 K16 ["Util"]
       41 GETTABLEKS                       R8 R9 K17 ["LayoutOrderIterator"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R12 R0 K18 ["Src"]
       47 GETTABLEKS                       R11 R12 K19 ["Resources"]
       49 GETTABLEKS                       R10 R11 K20 ["Theme"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R12 R0 K18 ["Src"]
       56 GETTABLEKS                       R11 R12 K21 ["Types"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R10 K22 ["MaterialUnit"]
       61 DUPCLOSURE                       R12 K23 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R7
       68 DUPCLOSURE                       R13 K24 [PROTO_7]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R11
       73 RETURN                           R13 1
