PROTO_0:
        0 JUMPIFEQKN                       R0 K0 [-1] ; [+9]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["handler"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["component"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["value"]
        2 NAMECALL                         R3 R3 K1 ["getValue"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["FoundationColorPickerPartialHSV"]
        8 JUMPIFNOT                        R4 ; [+43]
        9 JUMPIFNOTEQKNIL                  R3 ; [+42]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 GETUPVAL                         R5 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["join"]
       18 DUPTABLE                         R7 K13 [{[1] = -1, ["onChanged"], ["controlsVariant"], ["minimum"], ["maximum"], ["step"], ["precision"], ["formatAsString"]}]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R8 R7 K6 ["onChanged"]
       23 SETTABLEKS                       R1 R7 K7 ["controlsVariant"]
       25 GETTABLEKS                       R9 R0 K8 ["minimum"]
       27 ORK                              R8 R9 K14 [0]
       28 SETTABLEKS                       R8 R7 K8 ["minimum"]
       30 GETTABLEKS                       R9 R0 K9 ["maximum"]
       32 ORK                              R8 R9 K15 [255]
       33 SETTABLEKS                       R8 R7 K9 ["maximum"]
       35 GETTABLEKS                       R9 R0 K10 ["step"]
       37 ORK                              R8 R9 K16 [1]
       38 SETTABLEKS                       R8 R7 K10 ["step"]
       40 GETTABLEKS                       R9 R0 K11 ["precision"]
       42 ORK                              R8 R9 K14 [0]
       43 SETTABLEKS                       R8 R7 K11 ["precision"]
       45 DUPCLOSURE                       R8 K17 [PROTO_1]
       46 SETTABLEKS                       R8 R7 K12 ["formatAsString"]
       48 MOVE                             R8 R2
       49 CALL                             R6 2 -1
       50 CALL                             R4 -1 -1
       51 RETURN                           R4 -1
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K3 ["createElement"]
       55 GETUPVAL                         R5 2
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R6 R6 K4 ["join"]
       59 DUPTABLE                         R7 K18 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision"}]
       60 SETTABLEKS                       R3 R7 K0 ["value"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R8 R7 K6 ["onChanged"]
       66 SETTABLEKS                       R1 R7 K7 ["controlsVariant"]
       68 GETTABLEKS                       R9 R0 K8 ["minimum"]
       70 ORK                              R8 R9 K14 [0]
       71 SETTABLEKS                       R8 R7 K8 ["minimum"]
       73 GETTABLEKS                       R9 R0 K9 ["maximum"]
       75 ORK                              R8 R9 K15 [255]
       76 SETTABLEKS                       R8 R7 K9 ["maximum"]
       78 GETTABLEKS                       R9 R0 K10 ["step"]
       80 ORK                              R8 R9 K16 [1]
       81 SETTABLEKS                       R8 R7 K10 ["step"]
       83 GETTABLEKS                       R9 R0 K11 ["precision"]
       85 ORK                              R8 R9 K14 [0]
       86 SETTABLEKS                       R8 R7 K11 ["precision"]
       88 MOVE                             R8 R2
       89 CALL                             R6 2 -1
       90 CALL                             R4 -1 -1
       91 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R6 R1 K0 ["key"]
        2 NAMECALL                         R6 R6 K1 ["lower"]
        4 CALL                             R6 1 1
        5 JUMPIFNOTEQ                      R3 R6 ; [+3]
        7 LOADK                            R5 K2 [""]
        8 JUMP                             ; [+10]
        9 LOADK                            R6 K3 ["-%*"]
       10 GETTABLEKS                       R8 R1 K0 ["key"]
       12 NAMECALL                         R8 R8 K1 ["lower"]
       14 CALL                             R8 1 1
       15 NAMECALL                         R6 R6 K4 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 DUPTABLE                         R6 K10 [{["size"], ["label"] = "", ["width"], ["LayoutOrder"], ["testId"]}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K11 ["XSmall"]
       23 SETTABLEKS                       R7 R6 K5 ["size"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K12 ["FoundationColorPickerDesignUpdate"]
       28 JUMPIFNOT                        R8 ; [+6]
       29 GETIMPORT                        R7 K15 [UDim.new]
       31 LOADN                            R8 1
       32 LOADN                            R9 0
       33 CALL                             R7 2 1
       34 JUMP                             ; [+11]
       35 GETTABLEKS                       R7 R1 K7 ["width"]
       37 JUMPIF                           R7 ; [+8]
       38 GETIMPORT                        R7 K15 [UDim.new]
       40 LOADN                            R8 0
       41 GETTABLEKS                       R9 R0 K16 ["Size"]
       43 GETTABLEKS                       R9 R9 K17 ["Size_1500"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K7 ["width"]
       48 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       50 LOADK                            R8 K18 ["%*-%*%*"]
       51 MOVE                             R10 R4
       52 MOVE                             R11 R3
       53 MOVE                             R12 R5
       54 NAMECALL                         R8 R8 K4 ["format"]
       56 CALL                             R8 4 1
       57 MOVE                             R7 R8
       58 SETTABLEKS                       R7 R6 K9 ["testId"]
       60 GETTABLEKS                       R7 R1 K0 ["key"]
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R8 R8 K19 ["Hex"]
       65 JUMPIFNOTEQ                      R7 R8 ; [+88]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K12 ["FoundationColorPickerDesignUpdate"]
       70 JUMPIFNOT                        R7 ; [+55]
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K20 ["createElement"]
       74 GETUPVAL                         R8 4
       75 DUPTABLE                         R9 K23 [{["tag"] = "grow-1 size-0-full", ["LayoutOrder"]}]
       76 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
       78 DUPTABLE                         R10 K25 [{"Input"}]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K20 ["createElement"]
       82 GETUPVAL                         R12 5
       83 DUPTABLE                         R13 K29 [{["text"], ["onChanged"], ["placeholder"], ["size"], ["label"] = "", ["width"], ["testId"]}]
       84 GETTABLEKS                       R14 R1 K30 ["value"]
       86 NAMECALL                         R14 R14 K31 ["getValue"]
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K26 ["text"]
       91 NEWCLOSURE                       R14 P0
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R14 R13 K27 ["onChanged"]
       95 GETTABLEKS                       R15 R1 K28 ["placeholder"]
       97 ORK                              R14 R15 K32 ["#000000"]
       98 SETTABLEKS                       R14 R13 K28 ["placeholder"]
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K11 ["XSmall"]
      103 SETTABLEKS                       R14 R13 K5 ["size"]
      105 GETIMPORT                        R14 K15 [UDim.new]
      107 LOADN                            R15 1
      108 LOADN                            R16 0
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K7 ["width"]
      112 LOADK                            R15 K33 ["%*-%*"]
      113 MOVE                             R17 R4
      114 MOVE                             R18 R3
      115 NAMECALL                         R15 R15 K4 ["format"]
      117 CALL                             R15 3 1
      118 MOVE                             R14 R15
      119 SETTABLEKS                       R14 R13 K9 ["testId"]
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K24 ["Input"]
      124 CALL                             R7 3 -1
      125 RETURN                           R7 -1
      126 GETUPVAL                         R7 3
      127 GETTABLEKS                       R7 R7 K20 ["createElement"]
      129 GETUPVAL                         R8 5
      130 GETUPVAL                         R9 6
      131 GETTABLEKS                       R9 R9 K34 ["join"]
      133 DUPTABLE                         R10 K35 [{"text", "onChanged", "placeholder"}]
      134 GETTABLEKS                       R11 R1 K30 ["value"]
      136 NAMECALL                         R11 R11 K31 ["getValue"]
      138 CALL                             R11 1 1
      139 SETTABLEKS                       R11 R10 K26 ["text"]
      141 NEWCLOSURE                       R11 P1
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R11 R10 K27 ["onChanged"]
      145 GETTABLEKS                       R12 R1 K28 ["placeholder"]
      147 ORK                              R11 R12 K36 ["0"]
      148 SETTABLEKS                       R11 R10 K28 ["placeholder"]
      150 MOVE                             R11 R6
      151 CALL                             R9 2 -1
      152 CALL                             R7 -1 -1
      153 RETURN                           R7 -1
      154 GETUPVAL                         R7 1
      155 GETTABLEKS                       R7 R7 K12 ["FoundationColorPickerDesignUpdate"]
      157 JUMPIFNOT                        R7 ; [+19]
      158 GETUPVAL                         R7 3
      159 GETTABLEKS                       R7 R7 K20 ["createElement"]
      161 GETUPVAL                         R8 4
      162 DUPTABLE                         R9 K23 [{["tag"] = "grow-1 size-0-full", ["LayoutOrder"]}]
      163 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
      165 DUPTABLE                         R10 K25 [{"Input"}]
      166 GETUPVAL                         R11 7
      167 MOVE                             R12 R1
      168 GETUPVAL                         R13 8
      169 GETTABLEKS                       R13 R13 K37 ["None"]
      171 MOVE                             R14 R6
      172 CALL                             R11 3 1
      173 SETTABLEKS                       R11 R10 K24 ["Input"]
      175 CALL                             R7 3 -1
      176 RETURN                           R7 -1
      177 GETUPVAL                         R7 7
      178 MOVE                             R8 R1
      179 GETUPVAL                         R9 8
      180 GETTABLEKS                       R9 R9 K38 ["Stacked"]
      182 MOVE                             R10 R6
      183 CALL                             R7 3 -1
      184 RETURN                           R7 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onColorChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onColorChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isPartialHSV"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 DUPTABLE                         R1 K6 [{["r"] = , ["g"] = , ["b"] = }]
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["FoundationColorPickerPartialHSV"]
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K7 ["toColor3"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 JUMP                             ; [+1]
       22 MOVE                             R1 R0
       23 DUPTABLE                         R2 K8 [{"r", "g", "b"}]
       24 GETTABLEKS                       R5 R1 K10 ["R"]
       26 MULK                             R4 R5 K9 [255]
       27 FASTCALL1                        MATH_ROUND R4 ; [+2]
       28 GETIMPORT                        R3 K13 [math.round]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K2 ["r"]
       33 GETTABLEKS                       R5 R1 K14 ["G"]
       35 MULK                             R4 R5 K9 [255]
       36 FASTCALL1                        MATH_ROUND R4 ; [+2]
       37 GETIMPORT                        R3 K13 [math.round]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K4 ["g"]
       42 GETTABLEKS                       R5 R1 K15 ["B"]
       44 MULK                             R4 R5 K9 [255]
       45 FASTCALL1                        MATH_ROUND R4 ; [+2]
       46 GETIMPORT                        R3 K13 [math.round]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K5 ["b"]
       51 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+15]
       11 DUPTABLE                         R1 K7 [{"h", "s", "v"}]
       12 GETTABLEKS                       R2 R0 K8 ["H"]
       14 SETTABLEKS                       R2 R1 K4 ["h"]
       16 GETTABLEKS                       R2 R0 K9 ["S"]
       18 SETTABLEKS                       R2 R1 K5 ["s"]
       20 GETTABLEKS                       R2 R0 K10 ["V"]
       22 SETTABLEKS                       R2 R1 K6 ["v"]
       24 RETURN                           R1 1
       25 NAMECALL                         R1 R0 K11 ["ToHSV"]
       27 CALL                             R1 1 3
       28 DUPTABLE                         R4 K7 [{"h", "s", "v"}]
       29 MULK                             R6 R1 K12 [360]
       30 FASTCALL1                        MATH_ROUND R6 ; [+2]
       31 GETIMPORT                        R5 K15 [math.round]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K4 ["h"]
       36 MULK                             R6 R2 K16 [100]
       37 FASTCALL1                        MATH_ROUND R6 ; [+2]
       38 GETIMPORT                        R5 K15 [math.round]
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R4 K5 ["s"]
       43 MULK                             R6 R3 K16 [100]
       44 FASTCALL1                        MATH_ROUND R6 ; [+2]
       45 GETIMPORT                        R5 K15 [math.round]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K6 ["v"]
       50 RETURN                           R4 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["r"]
        2 JUMPIFEQKNIL                     R1 ; [+20]
        4 GETTABLEKS                       R1 R0 K1 ["g"]
        6 JUMPIFEQKNIL                     R1 ; [+16]
        8 GETTABLEKS                       R1 R0 K2 ["b"]
       10 JUMPIFEQKNIL                     R1 ; [+12]
       12 GETIMPORT                        R1 K5 [string.format]
       14 LOADK                            R2 K6 ["#%02X%02X%02X"]
       15 GETTABLEKS                       R3 R0 K0 ["r"]
       17 GETTABLEKS                       R4 R0 K1 ["g"]
       19 GETTABLEKS                       R5 R0 K2 ["b"]
       21 CALL                             R1 4 -1
       22 RETURN                           R1 -1
       23 LOADK                            R1 K7 [""]
       24 RETURN                           R1 1

PROTO_11:
        0 LOADN                            R4 0
        1 LOADN                            R5 255
        2 FASTCALL3                        MATH_CLAMP R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [math.clamp]
        7 CALL                             R2 3 1
        8 GETIMPORT                        R3 K5 [table.clone]
       10 GETUPVAL                         R4 0
       11 NAMECALL                         R4 R4 K6 ["getValue"]
       13 CALL                             R4 1 -1
       14 CALL                             R3 -1 1
       15 SETTABLE                         R2 R3 R1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["FoundationColorPickerPartialHSV"]
       19 JUMPIFNOT                        R4 ; [+13]
       20 GETTABLEKS                       R4 R3 K8 ["r"]
       22 JUMPIFEQKNIL                     R4 ; [+9]
       24 GETTABLEKS                       R4 R3 K9 ["g"]
       26 JUMPIFEQKNIL                     R4 ; [+5]
       28 GETTABLEKS                       R4 R3 K10 ["b"]
       30 JUMPIFNOTEQKNIL                  R4 ; [+2]
       32 RETURN                           R0 0
       33 GETIMPORT                        R4 K13 [Color3.fromRGB]
       35 GETTABLEKS                       R5 R3 K8 ["r"]
       37 GETTABLEKS                       R6 R3 K9 ["g"]
       39 GETTABLEKS                       R7 R3 K10 ["b"]
       41 CALL                             R4 3 1
       42 GETUPVAL                         R5 2
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K3 ["getValue"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["FoundationColorPickerPartialHSV"]
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETTABLE                         R3 R2 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+4]
       14 JUMPIFNOTEQKN                    R0 K5 [0] ; [+2]
       16 RETURN                           R0 0
       17 LOADN                            R5 0
       18 JUMPIFNOTEQKS                    R1 K6 ["h"] ; [+3]
       20 LOADN                            R6 360
       21 JUMP                             ; [+1]
       22 LOADN                            R6 100
       23 FASTCALL3                        MATH_CLAMP R0 R5 R6
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K9 [math.clamp]
       28 CALL                             R3 3 1
       29 SETTABLE                         R3 R2 R1
       30 GETIMPORT                        R4 K12 [Color3.fromHSV]
       32 GETTABLEKS                       R6 R2 K6 ["h"]
       34 DIVK                             R5 R6 K13 [360]
       35 GETTABLEKS                       R8 R2 K15 ["s"]
       37 ORK                              R7 R8 K14 [100]
       38 DIVK                             R6 R7 K14 [100]
       39 GETTABLEKS                       R9 R2 K16 ["v"]
       41 ORK                              R8 R9 K14 [100]
       42 DIVK                             R7 R8 K14 [100]
       43 CALL                             R4 3 1
       44 GETUPVAL                         R5 2
       45 MOVE                             R6 R4
       46 CALL                             R5 1 0
       47 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["#"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 NAMECALL                         R1 R1 K3 ["upper"]
        7 CALL                             R1 1 1
        8 LOADK                            R4 K4 ["^%x%x%x%x%x%x$"]
        9 NAMECALL                         R2 R1 K5 ["match"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+45]
       13 LOADN                            R5 1
       14 LOADN                            R6 2
       15 NAMECALL                         R3 R1 K6 ["sub"]
       17 CALL                             R3 3 1
       18 FASTCALL2K                       TONUMBER R3 K7 ; [+4]
       20 LOADK                            R4 K7 [16]
       21 GETIMPORT                        R2 K9 [tonumber]
       23 CALL                             R2 2 1
       24 LOADN                            R6 3
       25 LOADN                            R7 4
       26 NAMECALL                         R4 R1 K6 ["sub"]
       28 CALL                             R4 3 1
       29 FASTCALL2K                       TONUMBER R4 K7 ; [+4]
       31 LOADK                            R5 K7 [16]
       32 GETIMPORT                        R3 K9 [tonumber]
       34 CALL                             R3 2 1
       35 LOADN                            R7 5
       36 LOADN                            R8 6
       37 NAMECALL                         R5 R1 K6 ["sub"]
       39 CALL                             R5 3 1
       40 FASTCALL2K                       TONUMBER R5 K7 ; [+4]
       42 LOADK                            R6 K7 [16]
       43 GETIMPORT                        R4 K9 [tonumber]
       45 CALL                             R4 2 1
       46 JUMPIFNOT                        R2 ; [+11]
       47 JUMPIFNOT                        R3 ; [+10]
       48 JUMPIFNOT                        R4 ; [+9]
       49 GETIMPORT                        R5 K12 [Color3.fromRGB]
       51 MOVE                             R6 R2
       52 MOVE                             R7 R3
       53 MOVE                             R8 R4
       54 CALL                             R5 3 1
       55 GETUPVAL                         R6 0
       56 MOVE                             R7 R5
       57 CALL                             R6 1 0
       58 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["RGB"]
        6 SETTABLEKS                       R2 R1 K0 ["id"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["RGB"]
       11 SETTABLEKS                       R2 R1 K1 ["text"]
       13 DUPTABLE                         R2 K2 [{"id", "text"}]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["HSV"]
       17 SETTABLEKS                       R3 R2 K0 ["id"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["HSV"]
       22 SETTABLEKS                       R3 R2 K1 ["text"]
       24 DUPTABLE                         R3 K2 [{"id", "text"}]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["Hex"]
       28 SETTABLEKS                       R4 R3 K0 ["id"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["Hex"]
       33 SETTABLEKS                       R4 R3 K1 ["text"]
       35 DUPTABLE                         R4 K2 [{"id", "text"}]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K6 ["Brick"]
       39 SETTABLEKS                       R5 R4 K0 ["id"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K6 ["Brick"]
       44 SETTABLEKS                       R5 R4 K1 ["text"]
       46 SETLIST                          R0 R1 4 [1]
       48 GETUPVAL                         R1 1
       49 JUMPIFNOT                        R1 ; [+18]
       50 LOADN                            R3 2
       51 DUPTABLE                         R4 K2 [{"id", "text"}]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K7 ["RGBA"]
       55 SETTABLEKS                       R5 R4 K0 ["id"]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K7 ["RGBA"]
       60 SETTABLEKS                       R5 R4 K1 ["text"]
       62 FASTCALL3                        TABLE_INSERT R0 R3 R4
       64 MOVE                             R2 R0
       65 GETIMPORT                        R1 K10 [table.insert]
       67 CALL                             R1 3 0
       68 GETUPVAL                         R1 2
       69 JUMPIF                           R1 ; [+1]
       70 RETURN                           R0 1
       71 NEWTABLE                         R2 0 0
       73 MOVE                             R3 R0
       74 LOADNIL                          R4
       75 LOADNIL                          R5
       76 FORGPREP                         R3
       77 GETTABLEKS                       R8 R7 K0 ["id"]
       79 MOVE                             R9 R1
       80 LOADNIL                          R10
       81 LOADNIL                          R11
       82 FORGPREP                         R9
       83 LOADB                            R14 1
       84 JUMPIFEQ                         R8 R13 ; [+14]
       86 LOADB                            R14 0
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K7 ["RGBA"]
       90 JUMPIFNOTEQ                      R8 R15 ; [+8]
       92 LOADB                            R14 0
       93 GETUPVAL                         R15 0
       94 GETTABLEKS                       R15 R15 K3 ["RGB"]
       96 JUMPIFNOTEQ                      R13 R15 ; [+2]
       98 GETUPVAL                         R14 1
       99 JUMPIFNOT                        R14 ; [+8]
      100 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      102 MOVE                             R16 R2
      103 MOVE                             R17 R7
      104 GETIMPORT                        R15 K10 [table.insert]
      106 CALL                             R15 2 0
      107 JUMP                             ; [+2]
      108 FORGLOOP                         R9 2 ; [-26]
      110 FORGLOOP                         R3 2 ; [-34]
      112 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RGBA"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+14]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+11]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["onModeChanged"]
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K1 ["onModeChanged"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K2 ["RGB"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Brick"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+62]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["FoundationColorPickerDesignUpdate"]
        9 JUMPIFNOT                        R0 ; [+55]
       10 DUPTABLE                         R0 K3 [{"BrickColorName"}]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K4 ["createElement"]
       14 GETUPVAL                         R2 4
       15 DUPTABLE                         R3 K9 [{["tag"] = "grow-1 size-0-full", ["LayoutOrder"] = 1}]
       16 DUPTABLE                         R4 K11 [{"Input"}]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["createElement"]
       20 GETUPVAL                         R6 5
       21 DUPTABLE                         R7 K21 [{["text"], ["onChanged"], ["isDisabled"] = True, ["size"], ["label"] = "", ["width"], ["testId"]}]
       22 GETIMPORT                        R8 K24 [BrickColor.new]
       24 GETUPVAL                         R9 6
       25 NAMECALL                         R9 R9 K25 ["getValue"]
       27 CALL                             R9 1 -1
       28 CALL                             R8 -1 1
       29 GETTABLEKS                       R8 R8 K26 ["Name"]
       31 SETTABLEKS                       R8 R7 K12 ["text"]
       33 DUPCLOSURE                       R8 K27 [PROTO_17]
       34 SETTABLEKS                       R8 R7 K13 ["onChanged"]
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R8 R8 K28 ["XSmall"]
       39 SETTABLEKS                       R8 R7 K16 ["size"]
       41 GETIMPORT                        R8 K30 [UDim.new]
       43 LOADN                            R9 1
       44 LOADN                            R10 0
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K19 ["width"]
       48 LOADK                            R9 K31 ["%*-brick-name"]
       49 GETUPVAL                         R11 8
       50 GETTABLEKS                       R11 R11 K20 ["testId"]
       52 NAMECALL                         R9 R9 K32 ["format"]
       54 CALL                             R9 2 1
       55 MOVE                             R8 R9
       56 SETTABLEKS                       R8 R7 K20 ["testId"]
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K10 ["Input"]
       61 CALL                             R1 3 1
       62 SETTABLEKS                       R1 R0 K2 ["BrickColorName"]
       64 RETURN                           R0 1
       65 LOADNIL                          R0
       66 RETURN                           R0 1
       67 GETUPVAL                         R0 9
       68 GETTABLEKS                       R0 R0 K33 ["createInputConfigs"]
       70 GETUPVAL                         R1 10
       71 GETUPVAL                         R2 11
       72 GETUPVAL                         R3 12
       73 GETUPVAL                         R4 13
       74 GETUPVAL                         R5 14
       75 GETUPVAL                         R6 15
       76 GETUPVAL                         R7 16
       77 GETUPVAL                         R8 17
       78 GETUPVAL                         R9 18
       79 CALL                             R0 9 1
       80 GETUPVAL                         R2 0
       81 GETTABLE                         R1 R0 R2
       82 JUMPIF                           R1 ; [+2]
       83 LOADNIL                          R2
       84 RETURN                           R2 1
       85 NEWTABLE                         R2 0 0
       87 GETIMPORT                        R3 K35 [ipairs]
       89 MOVE                             R4 R1
       90 CALL                             R3 1 3
       91 FORGPREP_INEXT                   R3
       92 GETTABLEKS                       R9 R7 K36 ["key"]
       94 LOADK                            R10 K10 ["Input"]
       95 CONCAT                           R8 R9 R10
       96 GETUPVAL                         R9 19
       97 GETUPVAL                         R10 18
       98 MOVE                             R11 R7
       99 MOVE                             R12 R6
      100 GETUPVAL                         R13 0
      101 NAMECALL                         R13 R13 K37 ["lower"]
      103 CALL                             R13 1 1
      104 GETUPVAL                         R14 8
      105 GETTABLEKS                       R14 R14 K20 ["testId"]
      107 CALL                             R9 5 1
      108 SETTABLE                         R9 R2 R8
      109 FORGLOOP                         R3 2 [inext] ; [-18]
      111 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["availableModes"]
        2 JUMPIF                           R1 ; [+16]
        3 NEWTABLE                         R1 0 4
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["RGB"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["HSV"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Hex"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["Brick"]
       17 SETLIST                          R1 R2 4 [1]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 2
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R2 K5 ["mode"]
       27 JUMPIF                           R4 ; [+3]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K1 ["RGB"]
       31 GETTABLEKS                       R5 R2 K6 ["color"]
       33 GETTABLEKS                       R6 R2 K7 ["alpha"]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R9 0 1
       42 GETTABLEKS                       R10 R2 K9 ["onColorChanged"]
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETTABLEKS                       R8 R2 K10 ["onAlphaChanged"]
       49 GETTABLEKS                       R10 R2 K10 ["onAlphaChanged"]
       51 JUMPIFNOTEQKNIL                  R10 ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 DUPCLOSURE                       R12 K11 [PROTO_8]
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 NAMECALL                         R10 R5 K12 ["map"]
       60 CALL                             R10 2 1
       61 DUPCLOSURE                       R13 K13 [PROTO_9]
       62 CAPTURE                          UPVAL U5
       63 NAMECALL                         R11 R5 K12 ["map"]
       65 CALL                             R11 2 1
       66 DUPCLOSURE                       R14 K14 [PROTO_10]
       67 NAMECALL                         R12 R10 K12 ["map"]
       69 CALL                             R12 2 1
       70 GETUPVAL                         R13 4
       71 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       73 NEWCLOSURE                       R14 P4
       74 CAPTURE                          VAL R10
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R7
       77 NEWTABLE                         R15 0 2
       79 MOVE                             R16 R10
       80 MOVE                             R17 R7
       81 SETLIST                          R15 R16 2 [1]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       87 NEWCLOSURE                       R15 P5
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R16 0 1
       91 MOVE                             R17 R8
       92 SETLIST                          R16 R17 1 [1]
       94 CALL                             R14 2 1
       95 GETUPVAL                         R15 4
       96 GETTABLEKS                       R15 R15 K8 ["useCallback"]
       98 NEWCLOSURE                       R16 P6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          VAL R7
      102 NEWTABLE                         R17 0 2
      104 MOVE                             R18 R11
      105 MOVE                             R19 R7
      106 SETLIST                          R17 R18 2 [1]
      108 CALL                             R15 2 1
      109 GETUPVAL                         R16 4
      110 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      112 NEWCLOSURE                       R17 P7
      113 CAPTURE                          VAL R7
      114 NEWTABLE                         R18 0 1
      116 MOVE                             R19 R7
      117 SETLIST                          R18 R19 1 [1]
      119 CALL                             R16 2 1
      120 GETUPVAL                         R17 4
      121 GETTABLEKS                       R17 R17 K15 ["useMemo"]
      123 NEWCLOSURE                       R18 P8
      124 CAPTURE                          UPVAL U0
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R1
      127 NEWTABLE                         R19 0 1
      129 MOVE                             R20 R9
      130 SETLIST                          R19 R20 1 [1]
      132 CALL                             R17 2 1
      133 GETUPVAL                         R18 4
      134 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      136 NEWCLOSURE                       R19 P9
      137 CAPTURE                          VAL R4
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R2
      141 NEWTABLE                         R20 0 2
      143 MOVE                             R21 R4
      144 MOVE                             R22 R9
      145 SETLIST                          R20 R21 2 [1]
      147 CALL                             R18 2 0
      148 NEWCLOSURE                       R18 P10
      149 CAPTURE                          VAL R4
      150 CAPTURE                          UPVAL U0
      151 CAPTURE                          UPVAL U5
      152 CAPTURE                          UPVAL U4
      153 CAPTURE                          UPVAL U7
      154 CAPTURE                          UPVAL U8
      155 CAPTURE                          VAL R5
      156 CAPTURE                          UPVAL U9
      157 CAPTURE                          VAL R2
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R3
      168 CAPTURE                          UPVAL U11
      169 GETUPVAL                         R19 5
      170 GETTABLEKS                       R19 R19 K17 ["FoundationColorPickerDesignUpdate"]
      172 JUMPIFNOT                        R19 ; [+65]
      173 GETUPVAL                         R19 4
      174 GETTABLEKS                       R19 R19 K18 ["createElement"]
      176 GETUPVAL                         R20 7
      177 GETUPVAL                         R21 12
      178 MOVE                             R22 R2
      179 DUPTABLE                         R23 K21 [{["tag"] = "row gap-xsmall size-full-600"}]
      180 CALL                             R21 2 1
      181 GETUPVAL                         R22 13
      182 GETTABLEKS                       R22 R22 K22 ["join"]
      184 DUPTABLE                         R23 K24 [{"ModeDropdown"}]
      185 LENGTH                           R25 R17
      186 LOADN                            R26 1
      187 JUMPIFNOTLT                      R26 R25 ; [+42]
      189 GETUPVAL                         R24 4
      190 GETTABLEKS                       R24 R24 K18 ["createElement"]
      192 GETUPVAL                         R25 14
      193 GETTABLEKS                       R25 R25 K25 ["Root"]
      195 DUPTABLE                         R26 K34 [{["items"], ["value"], ["onItemChanged"], ["size"], ["label"] = "", ["width"], ["testId"]}]
      196 SETTABLEKS                       R17 R26 K26 ["items"]
      198 SETTABLEKS                       R4 R26 K27 ["value"]
      200 NEWCLOSURE                       R27 P11
      201 CAPTURE                          VAL R2
      202 SETTABLEKS                       R27 R26 K28 ["onItemChanged"]
      204 GETUPVAL                         R27 9
      205 GETTABLEKS                       R27 R27 K35 ["XSmall"]
      207 SETTABLEKS                       R27 R26 K29 ["size"]
      209 GETIMPORT                        R27 K38 [UDim.new]
      211 LOADN                            R28 0
      212 GETTABLEKS                       R29 R3 K39 ["Size"]
      214 GETTABLEKS                       R29 R29 K40 ["Size_1600"]
      216 CALL                             R27 2 1
      217 SETTABLEKS                       R27 R26 K32 ["width"]
      219 LOADK                            R28 K41 ["%*--mode-dropdown"]
      220 GETTABLEKS                       R30 R2 K33 ["testId"]
      222 NAMECALL                         R28 R28 K42 ["format"]
      224 CALL                             R28 2 1
      225 MOVE                             R27 R28
      226 SETTABLEKS                       R27 R26 K33 ["testId"]
      228 CALL                             R24 2 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R24
      231 SETTABLEKS                       R24 R23 K23 ["ModeDropdown"]
      233 MOVE                             R24 R18
      234 CALL                             R24 0 1
      235 CALL                             R22 2 -1
      236 CALL                             R19 -1 -1
      237 RETURN                           R19 -1
      238 GETUPVAL                         R19 4
      239 GETTABLEKS                       R19 R19 K18 ["createElement"]
      241 GETUPVAL                         R20 7
      242 GETUPVAL                         R21 12
      243 MOVE                             R22 R2
      244 DUPTABLE                         R23 K44 [{["tag"] = "row gap-small auto-xy align-y-center"}]
      245 CALL                             R21 2 1
      246 DUPTABLE                         R22 K46 [{"ModeDropdown", "Inputs"}]
      247 LENGTH                           R24 R17
      248 LOADN                            R25 1
      249 JUMPIFNOTLT                      R25 R24 ; [+42]
      251 GETUPVAL                         R23 4
      252 GETTABLEKS                       R23 R23 K18 ["createElement"]
      254 GETUPVAL                         R24 14
      255 GETTABLEKS                       R24 R24 K25 ["Root"]
      257 DUPTABLE                         R25 K34 [{["items"], ["value"], ["onItemChanged"], ["size"], ["label"] = "", ["width"], ["testId"]}]
      258 SETTABLEKS                       R17 R25 K26 ["items"]
      260 SETTABLEKS                       R4 R25 K27 ["value"]
      262 NEWCLOSURE                       R26 P12
      263 CAPTURE                          VAL R2
      264 SETTABLEKS                       R26 R25 K28 ["onItemChanged"]
      266 GETUPVAL                         R26 9
      267 GETTABLEKS                       R26 R26 K35 ["XSmall"]
      269 SETTABLEKS                       R26 R25 K29 ["size"]
      271 GETIMPORT                        R26 K38 [UDim.new]
      273 LOADN                            R27 0
      274 GETTABLEKS                       R28 R3 K39 ["Size"]
      276 GETTABLEKS                       R28 R28 K47 ["Size_2000"]
      278 CALL                             R26 2 1
      279 SETTABLEKS                       R26 R25 K32 ["width"]
      281 LOADK                            R27 K41 ["%*--mode-dropdown"]
      282 GETTABLEKS                       R29 R2 K33 ["testId"]
      284 NAMECALL                         R27 R27 K42 ["format"]
      286 CALL                             R27 2 1
      287 MOVE                             R26 R27
      288 SETTABLEKS                       R26 R25 K33 ["testId"]
      290 CALL                             R23 2 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R23
      293 SETTABLEKS                       R23 R22 K23 ["ModeDropdown"]
      295 GETUPVAL                         R23 4
      296 GETTABLEKS                       R23 R23 K18 ["createElement"]
      298 GETUPVAL                         R24 7
      299 DUPTABLE                         R25 K49 [{["tag"] = "row gap-small auto-xy"}]
      300 MOVE                             R26 R18
      301 CALL                             R26 0 1
      302 CALL                             R23 3 1
      303 SETTABLEKS                       R23 R22 K45 ["Inputs"]
      305 CALL                             R19 3 -1
      306 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Dropdown"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["NumberInput"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["TextInput"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["ColorInputMode"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Enums"]
       72 GETTABLEKS                       R12 R12 K18 ["NumberInputControlsVariant"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Utility"]
       79 GETTABLEKS                       R13 R13 K20 ["Flags"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["ColorPicker"]
       88 GETTABLEKS                       R14 R14 K22 ["colorInputUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Components"]
       95 GETTABLEKS                       R15 R15 K21 ["ColorPicker"]
       97 GETTABLEKS                       R15 R15 K23 ["colorUtils"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K19 ["Utility"]
      104 GETTABLEKS                       R16 R16 K24 ["withCommonProps"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K19 ["Utility"]
      111 GETTABLEKS                       R17 R17 K25 ["withDefaults"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K26 ["Providers"]
      118 GETTABLEKS                       R18 R18 K27 ["Style"]
      120 GETTABLEKS                       R18 R18 K28 ["Tokens"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETTABLEKS                       R19 R0 K26 ["Providers"]
      127 GETTABLEKS                       R19 R19 K27 ["Style"]
      129 GETTABLEKS                       R19 R19 K29 ["useTokens"]
      131 CALL                             R18 1 1
      132 DUPCLOSURE                       R19 K30 [PROTO_3]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R2
      137 DUPCLOSURE                       R20 K31 [PROTO_6]
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R11
      147 DUPTABLE                         R21 K33 [{"alpha"}]
      148 GETTABLEKS                       R22 R3 K34 ["createBinding"]
      150 LOADN                            R23 1
      151 CALL                             R22 1 1
      152 SETTABLEKS                       R22 R21 K32 ["alpha"]
      154 DUPCLOSURE                       R22 K35 [PROTO_21]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R5
      170 RETURN                           R22 1
