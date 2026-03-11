PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKN                       R0 K0 [-1] ; [+9]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["handler"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["component"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
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
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K11 ["XSmall"]
       23 SETTABLEKS                       R7 R6 K5 ["size"]
       25 LOADK                            R7 K2 [""]
       26 SETTABLEKS                       R7 R6 K6 ["label"]
       28 GETTABLEKS                       R7 R1 K7 ["width"]
       30 JUMPIF                           R7 ; [+8]
       31 GETIMPORT                        R7 K14 [UDim.new]
       33 LOADN                            R8 0
       34 GETTABLEKS                       R10 R0 K15 ["Size"]
       36 GETTABLEKS                       R9 R10 K16 ["Size_1500"]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K7 ["width"]
       41 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       43 LOADK                            R8 K17 ["%*-%*%*"]
       44 MOVE                             R10 R4
       45 MOVE                             R11 R3
       46 MOVE                             R12 R5
       47 NAMECALL                         R8 R8 K4 ["format"]
       49 CALL                             R8 4 1
       50 MOVE                             R7 R8
       51 SETTABLEKS                       R7 R6 K9 ["testId"]
       53 GETTABLEKS                       R7 R1 K0 ["key"]
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R8 R9 K18 ["Hex"]
       58 JUMPIFNOTEQ                      R7 R8 ; [+29]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R7 R8 K19 ["createElement"]
       63 GETUPVAL                         R8 3
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R9 R10 K20 ["join"]
       67 DUPTABLE                         R10 K24 [{"text", "onChanged", "placeholder"}]
       68 GETTABLEKS                       R11 R1 K25 ["value"]
       70 NAMECALL                         R11 R11 K26 ["getValue"]
       72 CALL                             R11 1 1
       73 SETTABLEKS                       R11 R10 K21 ["text"]
       75 NEWCLOSURE                       R11 P0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R11 R10 K22 ["onChanged"]
       79 GETTABLEKS                       R12 R1 K23 ["placeholder"]
       81 ORK                              R11 R12 K27 ["0"]
       82 SETTABLEKS                       R11 R10 K23 ["placeholder"]
       84 MOVE                             R11 R6
       85 CALL                             R9 2 -1
       86 CALL                             R7 -1 -1
       87 RETURN                           R7 -1
       88 GETTABLEKS                       R7 R1 K25 ["value"]
       90 NAMECALL                         R7 R7 K26 ["getValue"]
       92 CALL                             R7 1 1
       93 GETUPVAL                         R9 5
       94 GETTABLEKS                       R8 R9 K28 ["FoundationColorPickerPartialHSV"]
       96 JUMPIFNOT                        R8 ; [+49]
       97 JUMPIFNOTEQKNIL                  R7 ; [+48]
       99 GETUPVAL                         R9 2
      100 GETTABLEKS                       R8 R9 K19 ["createElement"]
      102 GETUPVAL                         R9 6
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R10 R11 K20 ["join"]
      106 DUPTABLE                         R11 K35 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision", "formatAsString"}]
      107 LOADN                            R12 255
      108 SETTABLEKS                       R12 R11 K25 ["value"]
      110 NEWCLOSURE                       R12 P1
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R12 R11 K22 ["onChanged"]
      114 GETUPVAL                         R13 7
      115 GETTABLEKS                       R12 R13 K36 ["Stacked"]
      117 SETTABLEKS                       R12 R11 K29 ["controlsVariant"]
      119 GETTABLEKS                       R13 R1 K30 ["minimum"]
      121 ORK                              R12 R13 K37 [0]
      122 SETTABLEKS                       R12 R11 K30 ["minimum"]
      124 GETTABLEKS                       R13 R1 K31 ["maximum"]
      126 ORK                              R12 R13 K38 [255]
      127 SETTABLEKS                       R12 R11 K31 ["maximum"]
      129 GETTABLEKS                       R13 R1 K32 ["step"]
      131 ORK                              R12 R13 K39 [1]
      132 SETTABLEKS                       R12 R11 K32 ["step"]
      134 GETTABLEKS                       R13 R1 K33 ["precision"]
      136 ORK                              R12 R13 K37 [0]
      137 SETTABLEKS                       R12 R11 K33 ["precision"]
      139 DUPCLOSURE                       R12 K40 [PROTO_2]
      140 SETTABLEKS                       R12 R11 K34 ["formatAsString"]
      142 MOVE                             R12 R6
      143 CALL                             R10 2 -1
      144 CALL                             R8 -1 -1
      145 RETURN                           R8 -1
      146 GETUPVAL                         R9 2
      147 GETTABLEKS                       R8 R9 K19 ["createElement"]
      149 GETUPVAL                         R9 6
      150 GETUPVAL                         R11 4
      151 GETTABLEKS                       R10 R11 K20 ["join"]
      153 DUPTABLE                         R11 K41 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision"}]
      154 SETTABLEKS                       R7 R11 K25 ["value"]
      156 NEWCLOSURE                       R12 P3
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R12 R11 K22 ["onChanged"]
      160 GETUPVAL                         R13 7
      161 GETTABLEKS                       R12 R13 K36 ["Stacked"]
      163 SETTABLEKS                       R12 R11 K29 ["controlsVariant"]
      165 GETTABLEKS                       R13 R1 K30 ["minimum"]
      167 ORK                              R12 R13 K37 [0]
      168 SETTABLEKS                       R12 R11 K30 ["minimum"]
      170 GETTABLEKS                       R13 R1 K31 ["maximum"]
      172 ORK                              R12 R13 K38 [255]
      173 SETTABLEKS                       R12 R11 K31 ["maximum"]
      175 GETTABLEKS                       R13 R1 K32 ["step"]
      177 ORK                              R12 R13 K39 [1]
      178 SETTABLEKS                       R12 R11 K32 ["step"]
      180 GETTABLEKS                       R13 R1 K33 ["precision"]
      182 ORK                              R12 R13 K37 [0]
      183 SETTABLEKS                       R12 R11 K33 ["precision"]
      185 MOVE                             R12 R6
      186 CALL                             R10 2 -1
      187 CALL                             R8 -1 -1
      188 RETURN                           R8 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onColorChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onColorChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+17]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["isPartialHSV"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+11]
       10 DUPTABLE                         R1 K5 [{"r", "g", "b"}]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K2 ["r"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K3 ["g"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K4 ["b"]
       20 RETURN                           R1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["FoundationColorPickerPartialHSV"]
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K6 ["toColor3"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 JUMP                             ; [+1]
       31 MOVE                             R1 R0
       32 DUPTABLE                         R2 K5 [{"r", "g", "b"}]
       33 GETTABLEKS                       R5 R1 K8 ["R"]
       35 MULK                             R4 R5 K7 [255]
       36 FASTCALL1                        MATH_ROUND R4 ; [+2]
       37 GETIMPORT                        R3 K11 [math.round]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K2 ["r"]
       42 GETTABLEKS                       R5 R1 K12 ["G"]
       44 MULK                             R4 R5 K7 [255]
       45 FASTCALL1                        MATH_ROUND R4 ; [+2]
       46 GETIMPORT                        R3 K11 [math.round]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K3 ["g"]
       51 GETTABLEKS                       R5 R1 K13 ["B"]
       53 MULK                             R4 R5 K7 [255]
       54 FASTCALL1                        MATH_ROUND R4 ; [+2]
       55 GETIMPORT                        R3 K11 [math.round]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R2 K4 ["b"]
       60 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationColorPickerPartialHSV"]
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

PROTO_8:
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

PROTO_9:
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
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K7 ["FoundationColorPickerPartialHSV"]
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K3 ["getValue"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K4 ["FoundationColorPickerPartialHSV"]
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETTABLE                         R3 R2 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+4]
       14 JUMPIFNOTEQKN                    R0 K5 [0] ; [+2]
       16 RETURN                           R0 0
       17 LOADN                            R5 0
       18 JUMPIFNOTEQKS                    R1 K6 ["h"] ; [+3]
       20 LOADN                            R6 104
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

PROTO_12:
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

PROTO_13:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K3 ["RGB"]
        6 SETTABLEKS                       R2 R1 K0 ["id"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["RGB"]
       11 SETTABLEKS                       R2 R1 K1 ["text"]
       13 DUPTABLE                         R2 K2 [{"id", "text"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["HSV"]
       17 SETTABLEKS                       R3 R2 K0 ["id"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["HSV"]
       22 SETTABLEKS                       R3 R2 K1 ["text"]
       24 DUPTABLE                         R3 K2 [{"id", "text"}]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K5 ["Hex"]
       28 SETTABLEKS                       R4 R3 K0 ["id"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K5 ["Hex"]
       33 SETTABLEKS                       R4 R3 K1 ["text"]
       35 DUPTABLE                         R4 K2 [{"id", "text"}]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K6 ["Brick"]
       39 SETTABLEKS                       R5 R4 K0 ["id"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K6 ["Brick"]
       44 SETTABLEKS                       R5 R4 K1 ["text"]
       46 SETLIST                          R0 R1 4 [1]
       48 GETUPVAL                         R1 1
       49 JUMPIFNOT                        R1 ; [+18]
       50 LOADN                            R3 2
       51 DUPTABLE                         R4 K2 [{"id", "text"}]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K7 ["RGBA"]
       55 SETTABLEKS                       R5 R4 K0 ["id"]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K7 ["RGBA"]
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
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R15 R16 K7 ["RGBA"]
       90 JUMPIFNOTEQ                      R8 R15 ; [+8]
       92 LOADB                            R14 0
       93 GETUPVAL                         R16 0
       94 GETTABLEKS                       R15 R16 K3 ["RGB"]
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["RGBA"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+14]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+11]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["onModeChanged"]
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K1 ["onModeChanged"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["RGB"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Brick"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["createInputConfigs"]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETUPVAL                         R3 5
       13 GETUPVAL                         R4 6
       14 GETUPVAL                         R5 7
       15 GETUPVAL                         R6 8
       16 GETUPVAL                         R7 9
       17 GETUPVAL                         R8 10
       18 GETUPVAL                         R9 11
       19 CALL                             R0 9 1
       20 GETUPVAL                         R2 0
       21 GETTABLE                         R1 R0 R2
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 NEWTABLE                         R2 0 0
       26 GETIMPORT                        R3 K3 [ipairs]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 3
       30 FORGPREP_INEXT                   R3
       31 GETTABLEKS                       R9 R7 K4 ["key"]
       33 LOADK                            R10 K5 ["Input"]
       34 CONCAT                           R8 R9 R10
       35 GETUPVAL                         R9 12
       36 GETUPVAL                         R10 11
       37 MOVE                             R11 R7
       38 MOVE                             R12 R6
       39 GETUPVAL                         R13 0
       40 NAMECALL                         R13 R13 K6 ["lower"]
       42 CALL                             R13 1 1
       43 GETUPVAL                         R15 13
       44 GETTABLEKS                       R14 R15 K7 ["testId"]
       46 CALL                             R9 5 1
       47 SETTABLE                         R9 R2 R8
       48 FORGLOOP                         R3 2 [inext] ; [-18]
       50 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onModeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onModeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["availableModes"]
        2 JUMPIF                           R1 ; [+16]
        3 NEWTABLE                         R1 0 4
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["RGB"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["HSV"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["Hex"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["Brick"]
       17 SETLIST                          R1 R2 4 [1]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 2
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R2 K5 ["mode"]
       27 JUMPIF                           R4 ; [+3]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K1 ["RGB"]
       31 GETTABLEKS                       R5 R2 K6 ["color"]
       33 GETTABLEKS                       R6 R2 K7 ["alpha"]
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R7 R8 K8 ["useCallback"]
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
       55 DUPCLOSURE                       R12 K11 [PROTO_6]
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 NAMECALL                         R10 R5 K12 ["map"]
       60 CALL                             R10 2 1
       61 DUPCLOSURE                       R13 K13 [PROTO_7]
       62 CAPTURE                          UPVAL U5
       63 NAMECALL                         R11 R5 K12 ["map"]
       65 CALL                             R11 2 1
       66 DUPCLOSURE                       R14 K14 [PROTO_8]
       67 NAMECALL                         R12 R10 K12 ["map"]
       69 CALL                             R12 2 1
       70 GETUPVAL                         R14 4
       71 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       73 NEWCLOSURE                       R14 P4
       74 CAPTURE                          VAL R10
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R7
       77 NEWTABLE                         R15 0 2
       79 MOVE                             R16 R10
       80 MOVE                             R17 R7
       81 SETLIST                          R15 R16 2 [1]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       87 NEWCLOSURE                       R15 P5
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R16 0 1
       91 MOVE                             R17 R8
       92 SETLIST                          R16 R17 1 [1]
       94 CALL                             R14 2 1
       95 GETUPVAL                         R16 4
       96 GETTABLEKS                       R15 R16 K8 ["useCallback"]
       98 NEWCLOSURE                       R16 P6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          VAL R7
      102 NEWTABLE                         R17 0 2
      104 MOVE                             R18 R11
      105 MOVE                             R19 R7
      106 SETLIST                          R17 R18 2 [1]
      108 CALL                             R15 2 1
      109 GETUPVAL                         R17 4
      110 GETTABLEKS                       R16 R17 K8 ["useCallback"]
      112 NEWCLOSURE                       R17 P7
      113 CAPTURE                          VAL R7
      114 NEWTABLE                         R18 0 1
      116 MOVE                             R19 R7
      117 SETLIST                          R18 R19 1 [1]
      119 CALL                             R16 2 1
      120 GETUPVAL                         R18 4
      121 GETTABLEKS                       R17 R18 K15 ["useMemo"]
      123 NEWCLOSURE                       R18 P8
      124 CAPTURE                          UPVAL U0
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R1
      127 NEWTABLE                         R19 0 1
      129 MOVE                             R20 R9
      130 SETLIST                          R19 R20 1 [1]
      132 CALL                             R17 2 1
      133 GETUPVAL                         R19 4
      134 GETTABLEKS                       R18 R19 K16 ["useEffect"]
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
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U8
      162 CAPTURE                          VAL R2
      163 GETUPVAL                         R20 4
      164 GETTABLEKS                       R19 R20 K17 ["createElement"]
      166 GETUPVAL                         R20 9
      167 GETUPVAL                         R21 10
      168 MOVE                             R22 R2
      169 DUPTABLE                         R23 K19 [{"tag"}]
      170 LOADK                            R24 K20 ["row gap-small auto-xy align-y-center"]
      171 SETTABLEKS                       R24 R23 K18 ["tag"]
      173 CALL                             R21 2 1
      174 DUPTABLE                         R22 K23 [{"ModeDropdown", "Inputs"}]
      175 LENGTH                           R24 R17
      176 LOADN                            R25 1
      177 JUMPIFNOTLT                      R25 R24 ; [+45]
      179 GETUPVAL                         R24 4
      180 GETTABLEKS                       R23 R24 K17 ["createElement"]
      182 GETUPVAL                         R25 11
      183 GETTABLEKS                       R24 R25 K24 ["Root"]
      185 DUPTABLE                         R25 K32 [{"items", "value", "onItemChanged", "size", "label", "width", "testId"}]
      186 SETTABLEKS                       R17 R25 K25 ["items"]
      188 SETTABLEKS                       R4 R25 K26 ["value"]
      190 NEWCLOSURE                       R26 P11
      191 CAPTURE                          VAL R2
      192 SETTABLEKS                       R26 R25 K27 ["onItemChanged"]
      194 GETUPVAL                         R27 12
      195 GETTABLEKS                       R26 R27 K33 ["XSmall"]
      197 SETTABLEKS                       R26 R25 K28 ["size"]
      199 LOADK                            R26 K34 [""]
      200 SETTABLEKS                       R26 R25 K29 ["label"]
      202 GETIMPORT                        R26 K37 [UDim.new]
      204 LOADN                            R27 0
      205 GETTABLEKS                       R29 R3 K38 ["Size"]
      207 GETTABLEKS                       R28 R29 K39 ["Size_2000"]
      209 CALL                             R26 2 1
      210 SETTABLEKS                       R26 R25 K30 ["width"]
      212 LOADK                            R27 K40 ["%*--mode-dropdown"]
      213 GETTABLEKS                       R29 R2 K31 ["testId"]
      215 NAMECALL                         R27 R27 K41 ["format"]
      217 CALL                             R27 2 1
      218 MOVE                             R26 R27
      219 SETTABLEKS                       R26 R25 K31 ["testId"]
      221 CALL                             R23 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R23
      224 SETTABLEKS                       R23 R22 K21 ["ModeDropdown"]
      226 GETUPVAL                         R24 4
      227 GETTABLEKS                       R23 R24 K17 ["createElement"]
      229 GETUPVAL                         R24 9
      230 DUPTABLE                         R25 K19 [{"tag"}]
      231 LOADK                            R26 K42 ["row gap-small auto-xy"]
      232 SETTABLEKS                       R26 R25 K18 ["tag"]
      234 MOVE                             R26 R18
      235 CALL                             R26 0 -1
      236 CALL                             R23 -1 1
      237 SETTABLEKS                       R23 R22 K22 ["Inputs"]
      239 CALL                             R19 3 -1
      240 RETURN                           R19 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Dropdown"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["NumberInput"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["TextInput"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["ColorInputMode"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Enums"]
       65 GETTABLEKS                       R11 R12 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K15 ["Enums"]
       72 GETTABLEKS                       R12 R13 K18 ["NumberInputControlsVariant"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K19 ["Utility"]
       79 GETTABLEKS                       R13 R14 K20 ["Flags"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R16 R0 K9 ["Components"]
       86 GETTABLEKS                       R15 R16 K21 ["ColorPicker"]
       88 GETTABLEKS                       R14 R15 K22 ["colorInputUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R17 R0 K9 ["Components"]
       95 GETTABLEKS                       R16 R17 K21 ["ColorPicker"]
       97 GETTABLEKS                       R15 R16 K23 ["colorUtils"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R17 R0 K19 ["Utility"]
      104 GETTABLEKS                       R16 R17 K24 ["withCommonProps"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R18 R0 K19 ["Utility"]
      111 GETTABLEKS                       R17 R18 K25 ["withDefaults"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R20 R0 K26 ["Providers"]
      118 GETTABLEKS                       R19 R20 K27 ["Style"]
      120 GETTABLEKS                       R18 R19 K28 ["Tokens"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETTABLEKS                       R21 R0 K26 ["Providers"]
      127 GETTABLEKS                       R20 R21 K27 ["Style"]
      129 GETTABLEKS                       R19 R20 K29 ["useTokens"]
      131 CALL                             R18 1 1
      132 DUPCLOSURE                       R19 K30 [PROTO_4]
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R11
      141 DUPTABLE                         R20 K32 [{"alpha"}]
      142 GETTABLEKS                       R21 R3 K33 ["createBinding"]
      144 LOADN                            R22 1
      145 CALL                             R21 1 1
      146 SETTABLEKS                       R21 R20 K31 ["alpha"]
      148 DUPCLOSURE                       R21 K34 [PROTO_17]
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R10
      162 RETURN                           R21 1
