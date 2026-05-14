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
        5 JUMPIFNOTEQKNIL                  R3 ; [+45]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K3 ["join"]
       14 DUPTABLE                         R7 K11 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision", "formatAsString"}]
       15 LOADN                            R8 255
       16 SETTABLEKS                       R8 R7 K0 ["value"]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R8 R7 K4 ["onChanged"]
       22 SETTABLEKS                       R1 R7 K5 ["controlsVariant"]
       24 GETTABLEKS                       R9 R0 K6 ["minimum"]
       26 ORK                              R8 R9 K12 [0]
       27 SETTABLEKS                       R8 R7 K6 ["minimum"]
       29 GETTABLEKS                       R9 R0 K7 ["maximum"]
       31 ORK                              R8 R9 K13 [255]
       32 SETTABLEKS                       R8 R7 K7 ["maximum"]
       34 GETTABLEKS                       R9 R0 K8 ["step"]
       36 ORK                              R8 R9 K14 [1]
       37 SETTABLEKS                       R8 R7 K8 ["step"]
       39 GETTABLEKS                       R9 R0 K9 ["precision"]
       41 ORK                              R8 R9 K12 [0]
       42 SETTABLEKS                       R8 R7 K9 ["precision"]
       44 DUPCLOSURE                       R8 K15 [PROTO_1]
       45 SETTABLEKS                       R8 R7 K10 ["formatAsString"]
       47 MOVE                             R8 R2
       48 CALL                             R6 2 -1
       49 CALL                             R4 -1 -1
       50 RETURN                           R4 -1
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K2 ["createElement"]
       54 GETUPVAL                         R5 1
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K3 ["join"]
       58 DUPTABLE                         R7 K16 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision"}]
       59 SETTABLEKS                       R3 R7 K0 ["value"]
       61 NEWCLOSURE                       R8 P2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R8 R7 K4 ["onChanged"]
       65 SETTABLEKS                       R1 R7 K5 ["controlsVariant"]
       67 GETTABLEKS                       R9 R0 K6 ["minimum"]
       69 ORK                              R8 R9 K12 [0]
       70 SETTABLEKS                       R8 R7 K6 ["minimum"]
       72 GETTABLEKS                       R9 R0 K7 ["maximum"]
       74 ORK                              R8 R9 K13 [255]
       75 SETTABLEKS                       R8 R7 K7 ["maximum"]
       77 GETTABLEKS                       R9 R0 K8 ["step"]
       79 ORK                              R8 R9 K14 [1]
       80 SETTABLEKS                       R8 R7 K8 ["step"]
       82 GETTABLEKS                       R9 R0 K9 ["precision"]
       84 ORK                              R8 R9 K12 [0]
       85 SETTABLEKS                       R8 R7 K9 ["precision"]
       87 MOVE                             R8 R2
       88 CALL                             R6 2 -1
       89 CALL                             R4 -1 -1
       90 RETURN                           R4 -1

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
       19 DUPTABLE                         R6 K10 [{"size", "label", "width", "LayoutOrder", "testId"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K11 ["XSmall"]
       23 SETTABLEKS                       R7 R6 K5 ["size"]
       25 LOADK                            R7 K2 [""]
       26 SETTABLEKS                       R7 R6 K6 ["label"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K12 ["FoundationColorPickerDesignUpdate"]
       31 JUMPIFNOT                        R8 ; [+6]
       32 GETIMPORT                        R7 K15 [UDim.new]
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 CALL                             R7 2 1
       37 JUMP                             ; [+11]
       38 GETTABLEKS                       R7 R1 K7 ["width"]
       40 JUMPIF                           R7 ; [+8]
       41 GETIMPORT                        R7 K15 [UDim.new]
       43 LOADN                            R8 0
       44 GETTABLEKS                       R9 R0 K16 ["Size"]
       46 GETTABLEKS                       R9 R9 K17 ["Size_1500"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K7 ["width"]
       51 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       53 LOADK                            R8 K18 ["%*-%*%*"]
       54 MOVE                             R10 R4
       55 MOVE                             R11 R3
       56 MOVE                             R12 R5
       57 NAMECALL                         R8 R8 K4 ["format"]
       59 CALL                             R8 4 1
       60 MOVE                             R7 R8
       61 SETTABLEKS                       R7 R6 K9 ["testId"]
       63 GETTABLEKS                       R7 R1 K0 ["key"]
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K19 ["Hex"]
       68 JUMPIFNOTEQ                      R7 R8 ; [+94]
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R7 R7 K12 ["FoundationColorPickerDesignUpdate"]
       73 JUMPIFNOT                        R7 ; [+61]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K20 ["createElement"]
       77 GETUPVAL                         R8 4
       78 DUPTABLE                         R9 K22 [{"tag", "LayoutOrder"}]
       79 LOADK                            R10 K23 ["grow-1 size-0-full"]
       80 SETTABLEKS                       R10 R9 K21 ["tag"]
       82 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
       84 DUPTABLE                         R10 K25 [{"Input"}]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R11 R11 K20 ["createElement"]
       88 GETUPVAL                         R12 5
       89 DUPTABLE                         R13 K29 [{"text", "onChanged", "placeholder", "size", "label", "width", "testId"}]
       90 GETTABLEKS                       R14 R1 K30 ["value"]
       92 NAMECALL                         R14 R14 K31 ["getValue"]
       94 CALL                             R14 1 1
       95 SETTABLEKS                       R14 R13 K26 ["text"]
       97 NEWCLOSURE                       R14 P0
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R14 R13 K27 ["onChanged"]
      101 GETTABLEKS                       R15 R1 K28 ["placeholder"]
      103 ORK                              R14 R15 K32 ["#000000"]
      104 SETTABLEKS                       R14 R13 K28 ["placeholder"]
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R14 R14 K11 ["XSmall"]
      109 SETTABLEKS                       R14 R13 K5 ["size"]
      111 LOADK                            R14 K2 [""]
      112 SETTABLEKS                       R14 R13 K6 ["label"]
      114 GETIMPORT                        R14 K15 [UDim.new]
      116 LOADN                            R15 1
      117 LOADN                            R16 0
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K7 ["width"]
      121 LOADK                            R15 K33 ["%*-%*"]
      122 MOVE                             R17 R4
      123 MOVE                             R18 R3
      124 NAMECALL                         R15 R15 K4 ["format"]
      126 CALL                             R15 3 1
      127 MOVE                             R14 R15
      128 SETTABLEKS                       R14 R13 K9 ["testId"]
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K24 ["Input"]
      133 CALL                             R7 3 -1
      134 RETURN                           R7 -1
      135 GETUPVAL                         R7 3
      136 GETTABLEKS                       R7 R7 K20 ["createElement"]
      138 GETUPVAL                         R8 5
      139 GETUPVAL                         R9 6
      140 GETTABLEKS                       R9 R9 K34 ["join"]
      142 DUPTABLE                         R10 K35 [{"text", "onChanged", "placeholder"}]
      143 GETTABLEKS                       R11 R1 K30 ["value"]
      145 NAMECALL                         R11 R11 K31 ["getValue"]
      147 CALL                             R11 1 1
      148 SETTABLEKS                       R11 R10 K26 ["text"]
      150 NEWCLOSURE                       R11 P1
      151 CAPTURE                          VAL R1
      152 SETTABLEKS                       R11 R10 K27 ["onChanged"]
      154 GETTABLEKS                       R12 R1 K28 ["placeholder"]
      156 ORK                              R11 R12 K36 ["0"]
      157 SETTABLEKS                       R11 R10 K28 ["placeholder"]
      159 MOVE                             R11 R6
      160 CALL                             R9 2 -1
      161 CALL                             R7 -1 -1
      162 RETURN                           R7 -1
      163 GETUPVAL                         R7 1
      164 GETTABLEKS                       R7 R7 K12 ["FoundationColorPickerDesignUpdate"]
      166 JUMPIFNOT                        R7 ; [+22]
      167 GETUPVAL                         R7 3
      168 GETTABLEKS                       R7 R7 K20 ["createElement"]
      170 GETUPVAL                         R8 4
      171 DUPTABLE                         R9 K22 [{"tag", "LayoutOrder"}]
      172 LOADK                            R10 K23 ["grow-1 size-0-full"]
      173 SETTABLEKS                       R10 R9 K21 ["tag"]
      175 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
      177 DUPTABLE                         R10 K25 [{"Input"}]
      178 GETUPVAL                         R11 7
      179 MOVE                             R12 R1
      180 GETUPVAL                         R13 8
      181 GETTABLEKS                       R13 R13 K37 ["None"]
      183 MOVE                             R14 R6
      184 CALL                             R11 3 1
      185 SETTABLEKS                       R11 R10 K24 ["Input"]
      187 CALL                             R7 3 -1
      188 RETURN                           R7 -1
      189 GETUPVAL                         R7 7
      190 MOVE                             R8 R1
      191 GETUPVAL                         R9 8
      192 GETTABLEKS                       R9 R9 K38 ["Stacked"]
      194 MOVE                             R10 R6
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["isPartialHSV"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 DUPTABLE                         R1 K4 [{"r", "g", "b"}]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K1 ["r"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K2 ["g"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K3 ["b"]
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["toColor3"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 DUPTABLE                         R2 K4 [{"r", "g", "b"}]
       23 GETTABLEKS                       R5 R1 K7 ["R"]
       25 MULK                             R4 R5 K6 [255]
       26 FASTCALL1                        MATH_ROUND R4 ; [+2]
       27 GETIMPORT                        R3 K10 [math.round]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K1 ["r"]
       32 GETTABLEKS                       R5 R1 K11 ["G"]
       34 MULK                             R4 R5 K6 [255]
       35 FASTCALL1                        MATH_ROUND R4 ; [+2]
       36 GETIMPORT                        R3 K10 [math.round]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K2 ["g"]
       41 GETTABLEKS                       R5 R1 K12 ["B"]
       43 MULK                             R4 R5 K6 [255]
       44 FASTCALL1                        MATH_ROUND R4 ; [+2]
       45 GETIMPORT                        R3 K10 [math.round]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K3 ["b"]
       50 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+15]
        7 DUPTABLE                         R1 K6 [{"h", "s", "v"}]
        8 GETTABLEKS                       R2 R0 K7 ["H"]
       10 SETTABLEKS                       R2 R1 K3 ["h"]
       12 GETTABLEKS                       R2 R0 K8 ["S"]
       14 SETTABLEKS                       R2 R1 K4 ["s"]
       16 GETTABLEKS                       R2 R0 K9 ["V"]
       18 SETTABLEKS                       R2 R1 K5 ["v"]
       20 RETURN                           R1 1
       21 NAMECALL                         R1 R0 K10 ["ToHSV"]
       23 CALL                             R1 1 3
       24 DUPTABLE                         R4 K6 [{"h", "s", "v"}]
       25 MULK                             R6 R1 K11 [360]
       26 FASTCALL1                        MATH_ROUND R6 ; [+2]
       27 GETIMPORT                        R5 K14 [math.round]
       29 CALL                             R5 1 1
       30 SETTABLEKS                       R5 R4 K3 ["h"]
       32 MULK                             R6 R2 K15 [100]
       33 FASTCALL1                        MATH_ROUND R6 ; [+2]
       34 GETIMPORT                        R5 K14 [math.round]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K4 ["s"]
       39 MULK                             R6 R3 K15 [100]
       40 FASTCALL1                        MATH_ROUND R6 ; [+2]
       41 GETIMPORT                        R5 K14 [math.round]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K5 ["v"]
       46 RETURN                           R4 1

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
       16 GETTABLEKS                       R4 R3 K7 ["r"]
       18 JUMPIFEQKNIL                     R4 ; [+9]
       20 GETTABLEKS                       R4 R3 K8 ["g"]
       22 JUMPIFEQKNIL                     R4 ; [+5]
       24 GETTABLEKS                       R4 R3 K9 ["b"]
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 RETURN                           R0 0
       29 GETIMPORT                        R4 K12 [Color3.fromRGB]
       31 GETTABLEKS                       R5 R3 K7 ["r"]
       33 GETTABLEKS                       R6 R3 K8 ["g"]
       35 GETTABLEKS                       R7 R3 K9 ["b"]
       37 CALL                             R4 3 1
       38 GETUPVAL                         R5 1
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

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
        7 GETTABLE                         R3 R2 R1
        8 JUMPIFNOTEQKNIL                  R3 ; [+4]
       10 JUMPIFNOTEQKN                    R0 K4 [0] ; [+2]
       12 RETURN                           R0 0
       13 LOADN                            R5 0
       14 JUMPIFNOTEQKS                    R1 K5 ["h"] ; [+3]
       16 LOADN                            R6 104
       17 JUMP                             ; [+1]
       18 LOADN                            R6 100
       19 FASTCALL3                        MATH_CLAMP R0 R5 R6
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K8 [math.clamp]
       24 CALL                             R3 3 1
       25 SETTABLE                         R3 R2 R1
       26 GETIMPORT                        R4 K11 [Color3.fromHSV]
       28 GETTABLEKS                       R6 R2 K5 ["h"]
       30 DIVK                             R5 R6 K12 [360]
       31 GETTABLEKS                       R8 R2 K14 ["s"]
       33 ORK                              R7 R8 K13 [100]
       34 DIVK                             R6 R7 K13 [100]
       35 GETTABLEKS                       R9 R2 K15 ["v"]
       37 ORK                              R8 R9 K13 [100]
       38 DIVK                             R7 R8 K13 [100]
       39 CALL                             R4 3 1
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 RETURN                           R0 0

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
        4 JUMPIFNOTEQ                      R0 R1 ; [+74]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["FoundationColorPickerDesignUpdate"]
        9 JUMPIFNOT                        R0 ; [+67]
       10 DUPTABLE                         R0 K3 [{"BrickColorName"}]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K4 ["createElement"]
       14 GETUPVAL                         R2 4
       15 DUPTABLE                         R3 K7 [{"tag", "LayoutOrder"}]
       16 LOADK                            R4 K8 ["grow-1 size-0-full"]
       17 SETTABLEKS                       R4 R3 K5 ["tag"]
       19 LOADN                            R4 1
       20 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       22 DUPTABLE                         R4 K10 [{"Input"}]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["createElement"]
       26 GETUPVAL                         R6 5
       27 DUPTABLE                         R7 K18 [{"text", "onChanged", "isDisabled", "size", "label", "width", "testId"}]
       28 GETIMPORT                        R8 K21 [BrickColor.new]
       30 GETUPVAL                         R9 6
       31 NAMECALL                         R9 R9 K22 ["getValue"]
       33 CALL                             R9 1 -1
       34 CALL                             R8 -1 1
       35 GETTABLEKS                       R8 R8 K23 ["Name"]
       37 SETTABLEKS                       R8 R7 K11 ["text"]
       39 DUPCLOSURE                       R8 K24 [PROTO_17]
       40 SETTABLEKS                       R8 R7 K12 ["onChanged"]
       42 LOADB                            R8 1
       43 SETTABLEKS                       R8 R7 K13 ["isDisabled"]
       45 GETUPVAL                         R8 7
       46 GETTABLEKS                       R8 R8 K25 ["XSmall"]
       48 SETTABLEKS                       R8 R7 K14 ["size"]
       50 LOADK                            R8 K26 [""]
       51 SETTABLEKS                       R8 R7 K15 ["label"]
       53 GETIMPORT                        R8 K28 [UDim.new]
       55 LOADN                            R9 1
       56 LOADN                            R10 0
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K16 ["width"]
       60 LOADK                            R9 K29 ["%*-brick-name"]
       61 GETUPVAL                         R11 8
       62 GETTABLEKS                       R11 R11 K17 ["testId"]
       64 NAMECALL                         R9 R9 K30 ["format"]
       66 CALL                             R9 2 1
       67 MOVE                             R8 R9
       68 SETTABLEKS                       R8 R7 K17 ["testId"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K9 ["Input"]
       73 CALL                             R1 3 1
       74 SETTABLEKS                       R1 R0 K2 ["BrickColorName"]
       76 RETURN                           R0 1
       77 LOADNIL                          R0
       78 RETURN                           R0 1
       79 GETUPVAL                         R0 9
       80 GETTABLEKS                       R0 R0 K31 ["createInputConfigs"]
       82 GETUPVAL                         R1 10
       83 GETUPVAL                         R2 11
       84 GETUPVAL                         R3 12
       85 GETUPVAL                         R4 13
       86 GETUPVAL                         R5 14
       87 GETUPVAL                         R6 15
       88 GETUPVAL                         R7 16
       89 GETUPVAL                         R8 17
       90 GETUPVAL                         R9 18
       91 CALL                             R0 9 1
       92 GETUPVAL                         R2 0
       93 GETTABLE                         R1 R0 R2
       94 JUMPIF                           R1 ; [+2]
       95 LOADNIL                          R2
       96 RETURN                           R2 1
       97 NEWTABLE                         R2 0 0
       99 GETIMPORT                        R3 K33 [ipairs]
      101 MOVE                             R4 R1
      102 CALL                             R3 1 3
      103 FORGPREP_INEXT                   R3
      104 GETTABLEKS                       R9 R7 K34 ["key"]
      106 LOADK                            R10 K9 ["Input"]
      107 CONCAT                           R8 R9 R10
      108 GETUPVAL                         R9 19
      109 GETUPVAL                         R10 18
      110 MOVE                             R11 R7
      111 MOVE                             R12 R6
      112 GETUPVAL                         R13 0
      113 NAMECALL                         R13 R13 K35 ["lower"]
      115 CALL                             R13 1 1
      116 GETUPVAL                         R14 8
      117 GETTABLEKS                       R14 R14 K17 ["testId"]
      119 CALL                             R9 5 1
      120 SETTABLE                         R9 R2 R8
      121 FORGLOOP                         R3 2 [inext] ; [-18]
      123 RETURN                           R2 1

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
       57 NAMECALL                         R10 R5 K12 ["map"]
       59 CALL                             R10 2 1
       60 DUPCLOSURE                       R13 K13 [PROTO_9]
       61 NAMECALL                         R11 R5 K12 ["map"]
       63 CALL                             R11 2 1
       64 DUPCLOSURE                       R14 K14 [PROTO_10]
       65 NAMECALL                         R12 R10 K12 ["map"]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       71 NEWCLOSURE                       R14 P4
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R15 0 2
       76 MOVE                             R16 R10
       77 MOVE                             R17 R7
       78 SETLIST                          R15 R16 2 [1]
       80 CALL                             R13 2 1
       81 GETUPVAL                         R14 4
       82 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       84 NEWCLOSURE                       R15 P5
       85 CAPTURE                          VAL R8
       86 NEWTABLE                         R16 0 1
       88 MOVE                             R17 R8
       89 SETLIST                          R16 R17 1 [1]
       91 CALL                             R14 2 1
       92 GETUPVAL                         R15 4
       93 GETTABLEKS                       R15 R15 K8 ["useCallback"]
       95 NEWCLOSURE                       R16 P6
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R17 0 2
      100 MOVE                             R18 R11
      101 MOVE                             R19 R7
      102 SETLIST                          R17 R18 2 [1]
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 4
      106 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      108 NEWCLOSURE                       R17 P7
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 1
      112 MOVE                             R19 R7
      113 SETLIST                          R18 R19 1 [1]
      115 CALL                             R16 2 1
      116 GETUPVAL                         R17 4
      117 GETTABLEKS                       R17 R17 K15 ["useMemo"]
      119 NEWCLOSURE                       R18 P8
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R1
      123 NEWTABLE                         R19 0 1
      125 MOVE                             R20 R9
      126 SETLIST                          R19 R20 1 [1]
      128 CALL                             R17 2 1
      129 GETUPVAL                         R18 4
      130 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      132 NEWCLOSURE                       R19 P9
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U0
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R2
      137 NEWTABLE                         R20 0 2
      139 MOVE                             R21 R4
      140 MOVE                             R22 R9
      141 SETLIST                          R20 R21 2 [1]
      143 CALL                             R18 2 0
      144 NEWCLOSURE                       R18 P10
      145 CAPTURE                          VAL R4
      146 CAPTURE                          UPVAL U0
      147 CAPTURE                          UPVAL U6
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U7
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R5
      152 CAPTURE                          UPVAL U9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          UPVAL U10
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R3
      164 CAPTURE                          UPVAL U11
      165 GETUPVAL                         R19 6
      166 GETTABLEKS                       R19 R19 K17 ["FoundationColorPickerDesignUpdate"]
      168 JUMPIFNOT                        R19 ; [+71]
      169 GETUPVAL                         R19 4
      170 GETTABLEKS                       R19 R19 K18 ["createElement"]
      172 GETUPVAL                         R20 7
      173 GETUPVAL                         R21 12
      174 MOVE                             R22 R2
      175 DUPTABLE                         R23 K20 [{"tag"}]
      176 LOADK                            R24 K21 ["row gap-xsmall size-full-600"]
      177 SETTABLEKS                       R24 R23 K19 ["tag"]
      179 CALL                             R21 2 1
      180 GETUPVAL                         R22 13
      181 GETTABLEKS                       R22 R22 K22 ["join"]
      183 DUPTABLE                         R23 K24 [{"ModeDropdown"}]
      184 LENGTH                           R25 R17
      185 LOADN                            R26 1
      186 JUMPIFNOTLT                      R26 R25 ; [+45]
      188 GETUPVAL                         R24 4
      189 GETTABLEKS                       R24 R24 K18 ["createElement"]
      191 GETUPVAL                         R25 14
      192 GETTABLEKS                       R25 R25 K25 ["Root"]
      194 DUPTABLE                         R26 K33 [{"items", "value", "onItemChanged", "size", "label", "width", "testId"}]
      195 SETTABLEKS                       R17 R26 K26 ["items"]
      197 SETTABLEKS                       R4 R26 K27 ["value"]
      199 NEWCLOSURE                       R27 P11
      200 CAPTURE                          VAL R2
      201 SETTABLEKS                       R27 R26 K28 ["onItemChanged"]
      203 GETUPVAL                         R27 9
      204 GETTABLEKS                       R27 R27 K34 ["XSmall"]
      206 SETTABLEKS                       R27 R26 K29 ["size"]
      208 LOADK                            R27 K35 [""]
      209 SETTABLEKS                       R27 R26 K30 ["label"]
      211 GETIMPORT                        R27 K38 [UDim.new]
      213 LOADN                            R28 0
      214 GETTABLEKS                       R29 R3 K39 ["Size"]
      216 GETTABLEKS                       R29 R29 K40 ["Size_1600"]
      218 CALL                             R27 2 1
      219 SETTABLEKS                       R27 R26 K31 ["width"]
      221 LOADK                            R28 K41 ["%*--mode-dropdown"]
      222 GETTABLEKS                       R30 R2 K32 ["testId"]
      224 NAMECALL                         R28 R28 K42 ["format"]
      226 CALL                             R28 2 1
      227 MOVE                             R27 R28
      228 SETTABLEKS                       R27 R26 K32 ["testId"]
      230 CALL                             R24 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R24
      233 SETTABLEKS                       R24 R23 K23 ["ModeDropdown"]
      235 MOVE                             R24 R18
      236 CALL                             R24 0 1
      237 CALL                             R22 2 -1
      238 CALL                             R19 -1 -1
      239 RETURN                           R19 -1
      240 GETUPVAL                         R19 4
      241 GETTABLEKS                       R19 R19 K18 ["createElement"]
      243 GETUPVAL                         R20 7
      244 GETUPVAL                         R21 12
      245 MOVE                             R22 R2
      246 DUPTABLE                         R23 K20 [{"tag"}]
      247 LOADK                            R24 K43 ["row align-y-center gap-small auto-xy"]
      248 SETTABLEKS                       R24 R23 K19 ["tag"]
      250 CALL                             R21 2 1
      251 DUPTABLE                         R22 K45 [{"ModeDropdown", "Inputs"}]
      252 LENGTH                           R24 R17
      253 LOADN                            R25 1
      254 JUMPIFNOTLT                      R25 R24 ; [+45]
      256 GETUPVAL                         R23 4
      257 GETTABLEKS                       R23 R23 K18 ["createElement"]
      259 GETUPVAL                         R24 14
      260 GETTABLEKS                       R24 R24 K25 ["Root"]
      262 DUPTABLE                         R25 K33 [{"items", "value", "onItemChanged", "size", "label", "width", "testId"}]
      263 SETTABLEKS                       R17 R25 K26 ["items"]
      265 SETTABLEKS                       R4 R25 K27 ["value"]
      267 NEWCLOSURE                       R26 P12
      268 CAPTURE                          VAL R2
      269 SETTABLEKS                       R26 R25 K28 ["onItemChanged"]
      271 GETUPVAL                         R26 9
      272 GETTABLEKS                       R26 R26 K34 ["XSmall"]
      274 SETTABLEKS                       R26 R25 K29 ["size"]
      276 LOADK                            R26 K35 [""]
      277 SETTABLEKS                       R26 R25 K30 ["label"]
      279 GETIMPORT                        R26 K38 [UDim.new]
      281 LOADN                            R27 0
      282 GETTABLEKS                       R28 R3 K39 ["Size"]
      284 GETTABLEKS                       R28 R28 K46 ["Size_2000"]
      286 CALL                             R26 2 1
      287 SETTABLEKS                       R26 R25 K31 ["width"]
      289 LOADK                            R27 K41 ["%*--mode-dropdown"]
      290 GETTABLEKS                       R29 R2 K32 ["testId"]
      292 NAMECALL                         R27 R27 K42 ["format"]
      294 CALL                             R27 2 1
      295 MOVE                             R26 R27
      296 SETTABLEKS                       R26 R25 K32 ["testId"]
      298 CALL                             R23 2 1
      299 JUMP                             ; [+1]
      300 LOADNIL                          R23
      301 SETTABLEKS                       R23 R22 K23 ["ModeDropdown"]
      303 GETUPVAL                         R23 4
      304 GETTABLEKS                       R23 R23 K18 ["createElement"]
      306 GETUPVAL                         R24 7
      307 DUPTABLE                         R25 K20 [{"tag"}]
      308 LOADK                            R26 K47 ["row gap-small auto-xy"]
      309 SETTABLEKS                       R26 R25 K19 ["tag"]
      311 MOVE                             R26 R18
      312 CALL                             R26 0 1
      313 CALL                             R23 3 1
      314 SETTABLEKS                       R23 R22 K44 ["Inputs"]
      316 CALL                             R19 3 -1
      317 RETURN                           R19 -1

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
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R2
      136 DUPCLOSURE                       R20 K31 [PROTO_6]
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R11
      146 DUPTABLE                         R21 K33 [{"alpha"}]
      147 GETTABLEKS                       R22 R3 K34 ["createBinding"]
      149 LOADN                            R23 1
      150 CALL                             R22 1 1
      151 SETTABLEKS                       R22 R21 K32 ["alpha"]
      153 DUPCLOSURE                       R22 K35 [PROTO_21]
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R5
      169 RETURN                           R22 1
