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
       28 GETIMPORT                        R7 K14 [UDim.new]
       30 LOADN                            R8 1
       31 LOADN                            R9 0
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K7 ["width"]
       35 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       37 LOADK                            R8 K15 ["%*-%*%*"]
       38 MOVE                             R10 R4
       39 MOVE                             R11 R3
       40 MOVE                             R12 R5
       41 NAMECALL                         R8 R8 K4 ["format"]
       43 CALL                             R8 4 1
       44 MOVE                             R7 R8
       45 SETTABLEKS                       R7 R6 K9 ["testId"]
       47 GETTABLEKS                       R7 R1 K0 ["key"]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K16 ["Hex"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+62]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K17 ["createElement"]
       57 GETUPVAL                         R8 3
       58 DUPTABLE                         R9 K19 [{"tag", "LayoutOrder"}]
       59 LOADK                            R10 K20 ["grow-1 size-0-full"]
       60 SETTABLEKS                       R10 R9 K18 ["tag"]
       62 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
       64 DUPTABLE                         R10 K22 [{"Input"}]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K17 ["createElement"]
       68 GETUPVAL                         R12 4
       69 DUPTABLE                         R13 K26 [{"text", "onChanged", "placeholder", "size", "label", "width", "testId"}]
       70 GETTABLEKS                       R14 R1 K27 ["value"]
       72 NAMECALL                         R14 R14 K28 ["getValue"]
       74 CALL                             R14 1 1
       75 SETTABLEKS                       R14 R13 K23 ["text"]
       77 NEWCLOSURE                       R14 P0
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R14 R13 K24 ["onChanged"]
       81 GETTABLEKS                       R15 R1 K25 ["placeholder"]
       83 ORK                              R14 R15 K29 ["#000000"]
       84 SETTABLEKS                       R14 R13 K25 ["placeholder"]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R14 R14 K11 ["XSmall"]
       89 SETTABLEKS                       R14 R13 K5 ["size"]
       91 LOADK                            R14 K2 [""]
       92 SETTABLEKS                       R14 R13 K6 ["label"]
       94 GETIMPORT                        R14 K14 [UDim.new]
       96 LOADN                            R15 1
       97 LOADN                            R16 0
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K7 ["width"]
      101 LOADK                            R15 K30 ["%*-%*"]
      102 MOVE                             R17 R4
      103 MOVE                             R18 R3
      104 NAMECALL                         R15 R15 K4 ["format"]
      106 CALL                             R15 3 1
      107 MOVE                             R14 R15
      108 SETTABLEKS                       R14 R13 K9 ["testId"]
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R10 K21 ["Input"]
      113 CALL                             R7 3 -1
      114 RETURN                           R7 -1
      115 GETUPVAL                         R7 2
      116 GETTABLEKS                       R7 R7 K17 ["createElement"]
      118 GETUPVAL                         R8 3
      119 DUPTABLE                         R9 K19 [{"tag", "LayoutOrder"}]
      120 LOADK                            R10 K20 ["grow-1 size-0-full"]
      121 SETTABLEKS                       R10 R9 K18 ["tag"]
      123 SETTABLEKS                       R2 R9 K8 ["LayoutOrder"]
      125 DUPTABLE                         R10 K22 [{"Input"}]
      126 GETUPVAL                         R11 5
      127 MOVE                             R12 R1
      128 GETUPVAL                         R13 6
      129 GETTABLEKS                       R13 R13 K31 ["None"]
      131 MOVE                             R14 R6
      132 CALL                             R11 3 1
      133 SETTABLEKS                       R11 R10 K21 ["Input"]
      135 CALL                             R7 3 -1
      136 RETURN                           R7 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onColorChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onColorChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Brick"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+68]
        6 DUPTABLE                         R0 K2 [{"BrickColorName"}]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K3 ["createElement"]
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K6 [{"tag", "LayoutOrder"}]
       12 LOADK                            R4 K7 ["grow-1 size-0-full"]
       13 SETTABLEKS                       R4 R3 K4 ["tag"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       18 DUPTABLE                         R4 K9 [{"Input"}]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K3 ["createElement"]
       22 GETUPVAL                         R6 4
       23 DUPTABLE                         R7 K17 [{"text", "onChanged", "isDisabled", "size", "label", "width", "testId"}]
       24 GETIMPORT                        R8 K20 [BrickColor.new]
       26 GETUPVAL                         R9 5
       27 NAMECALL                         R9 R9 K21 ["getValue"]
       29 CALL                             R9 1 -1
       30 CALL                             R8 -1 1
       31 GETTABLEKS                       R8 R8 K22 ["Name"]
       33 SETTABLEKS                       R8 R7 K10 ["text"]
       35 DUPCLOSURE                       R8 K23 [PROTO_16]
       36 SETTABLEKS                       R8 R7 K11 ["onChanged"]
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K12 ["isDisabled"]
       41 GETUPVAL                         R8 6
       42 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       44 SETTABLEKS                       R8 R7 K13 ["size"]
       46 LOADK                            R8 K25 [""]
       47 SETTABLEKS                       R8 R7 K14 ["label"]
       49 GETIMPORT                        R8 K27 [UDim.new]
       51 LOADN                            R9 1
       52 LOADN                            R10 0
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K15 ["width"]
       56 LOADK                            R9 K28 ["%*-brick-name"]
       57 GETUPVAL                         R11 7
       58 GETTABLEKS                       R11 R11 K16 ["testId"]
       60 NAMECALL                         R9 R9 K29 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 SETTABLEKS                       R8 R7 K16 ["testId"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K8 ["Input"]
       69 CALL                             R1 3 1
       70 SETTABLEKS                       R1 R0 K1 ["BrickColorName"]
       72 RETURN                           R0 1
       73 GETUPVAL                         R0 8
       74 GETTABLEKS                       R0 R0 K30 ["createInputConfigs"]
       76 GETUPVAL                         R1 9
       77 GETUPVAL                         R2 10
       78 GETUPVAL                         R3 11
       79 GETUPVAL                         R4 12
       80 GETUPVAL                         R5 13
       81 GETUPVAL                         R6 14
       82 GETUPVAL                         R7 15
       83 GETUPVAL                         R8 16
       84 GETUPVAL                         R9 17
       85 CALL                             R0 9 1
       86 GETUPVAL                         R2 0
       87 GETTABLE                         R1 R0 R2
       88 JUMPIF                           R1 ; [+2]
       89 LOADNIL                          R2
       90 RETURN                           R2 1
       91 NEWTABLE                         R2 0 0
       93 GETIMPORT                        R3 K32 [ipairs]
       95 MOVE                             R4 R1
       96 CALL                             R3 1 3
       97 FORGPREP_INEXT                   R3
       98 GETTABLEKS                       R9 R7 K33 ["key"]
      100 LOADK                            R10 K8 ["Input"]
      101 CONCAT                           R8 R9 R10
      102 GETUPVAL                         R9 18
      103 GETUPVAL                         R10 17
      104 MOVE                             R11 R7
      105 MOVE                             R12 R6
      106 GETUPVAL                         R13 0
      107 NAMECALL                         R13 R13 K34 ["lower"]
      109 CALL                             R13 1 1
      110 GETUPVAL                         R14 7
      111 GETTABLEKS                       R14 R14 K16 ["testId"]
      113 CALL                             R9 5 1
      114 SETTABLE                         R9 R2 R8
      115 FORGLOOP                         R3 2 [inext] ; [-18]
      117 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onModeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_19:
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
       55 DUPCLOSURE                       R12 K11 [PROTO_7]
       56 CAPTURE                          UPVAL U5
       57 NAMECALL                         R10 R5 K12 ["map"]
       59 CALL                             R10 2 1
       60 DUPCLOSURE                       R13 K13 [PROTO_8]
       61 NAMECALL                         R11 R5 K12 ["map"]
       63 CALL                             R11 2 1
       64 DUPCLOSURE                       R14 K14 [PROTO_9]
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
      147 CAPTURE                          UPVAL U4
      148 CAPTURE                          UPVAL U6
      149 CAPTURE                          UPVAL U7
      150 CAPTURE                          VAL R5
      151 CAPTURE                          UPVAL U8
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R3
      163 CAPTURE                          UPVAL U10
      164 GETUPVAL                         R19 4
      165 GETTABLEKS                       R19 R19 K17 ["createElement"]
      167 GETUPVAL                         R20 6
      168 GETUPVAL                         R21 11
      169 MOVE                             R22 R2
      170 DUPTABLE                         R23 K19 [{"tag"}]
      171 LOADK                            R24 K20 ["row gap-xsmall size-full-600"]
      172 SETTABLEKS                       R24 R23 K18 ["tag"]
      174 CALL                             R21 2 1
      175 GETUPVAL                         R22 12
      176 GETTABLEKS                       R22 R22 K21 ["join"]
      178 DUPTABLE                         R23 K23 [{"ModeDropdown"}]
      179 LENGTH                           R25 R17
      180 LOADN                            R26 1
      181 JUMPIFNOTLT                      R26 R25 ; [+45]
      183 GETUPVAL                         R24 4
      184 GETTABLEKS                       R24 R24 K17 ["createElement"]
      186 GETUPVAL                         R25 13
      187 GETTABLEKS                       R25 R25 K24 ["Root"]
      189 DUPTABLE                         R26 K32 [{"items", "value", "onItemChanged", "size", "label", "width", "testId"}]
      190 SETTABLEKS                       R17 R26 K25 ["items"]
      192 SETTABLEKS                       R4 R26 K26 ["value"]
      194 NEWCLOSURE                       R27 P11
      195 CAPTURE                          VAL R2
      196 SETTABLEKS                       R27 R26 K27 ["onItemChanged"]
      198 GETUPVAL                         R27 8
      199 GETTABLEKS                       R27 R27 K33 ["XSmall"]
      201 SETTABLEKS                       R27 R26 K28 ["size"]
      203 LOADK                            R27 K34 [""]
      204 SETTABLEKS                       R27 R26 K29 ["label"]
      206 GETIMPORT                        R27 K37 [UDim.new]
      208 LOADN                            R28 0
      209 GETTABLEKS                       R29 R3 K38 ["Size"]
      211 GETTABLEKS                       R29 R29 K39 ["Size_1600"]
      213 CALL                             R27 2 1
      214 SETTABLEKS                       R27 R26 K30 ["width"]
      216 LOADK                            R28 K40 ["%*--mode-dropdown"]
      217 GETTABLEKS                       R30 R2 K31 ["testId"]
      219 NAMECALL                         R28 R28 K41 ["format"]
      221 CALL                             R28 2 1
      222 MOVE                             R27 R28
      223 SETTABLEKS                       R27 R26 K31 ["testId"]
      225 CALL                             R24 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R24
      228 SETTABLEKS                       R24 R23 K22 ["ModeDropdown"]
      230 MOVE                             R24 R18
      231 CALL                             R24 0 1
      232 CALL                             R22 2 -1
      233 CALL                             R19 -1 -1
      234 RETURN                           R19 -1

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
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["ColorPicker"]
       81 GETTABLEKS                       R13 R13 K20 ["colorInputUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R14 K19 ["ColorPicker"]
       90 GETTABLEKS                       R14 R14 K21 ["colorUtils"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K22 ["Utility"]
       97 GETTABLEKS                       R15 R15 K23 ["withCommonProps"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K22 ["Utility"]
      104 GETTABLEKS                       R16 R16 K24 ["withDefaults"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K25 ["Providers"]
      111 GETTABLEKS                       R17 R17 K26 ["Style"]
      113 GETTABLEKS                       R17 R17 K27 ["Tokens"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R18 R0 K25 ["Providers"]
      120 GETTABLEKS                       R18 R18 K26 ["Style"]
      122 GETTABLEKS                       R18 R18 K28 ["useTokens"]
      124 CALL                             R17 1 1
      125 DUPCLOSURE                       R18 K29 [PROTO_3]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 DUPCLOSURE                       R19 K30 [PROTO_5]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R11
      137 DUPTABLE                         R20 K32 [{"alpha"}]
      138 GETTABLEKS                       R21 R3 K33 ["createBinding"]
      140 LOADN                            R22 1
      141 CALL                             R21 1 1
      142 SETTABLEKS                       R21 R20 K31 ["alpha"]
      144 DUPCLOSURE                       R21 K34 [PROTO_19]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R5
      159 RETURN                           R21 1
