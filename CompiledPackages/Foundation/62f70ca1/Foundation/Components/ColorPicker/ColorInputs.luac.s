PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["handler"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["component"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
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
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R7 R8 K19 ["createElement"]
       91 GETUPVAL                         R8 5
       92 GETUPVAL                         R10 4
       93 GETTABLEKS                       R9 R10 K20 ["join"]
       95 DUPTABLE                         R10 K33 [{"value", "onChanged", "controlsVariant", "minimum", "maximum", "step", "precision"}]
       96 GETTABLEKS                       R11 R1 K25 ["value"]
       98 NAMECALL                         R11 R11 K26 ["getValue"]
      100 CALL                             R11 1 1
      101 SETTABLEKS                       R11 R10 K25 ["value"]
      103 NEWCLOSURE                       R11 P1
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R11 R10 K22 ["onChanged"]
      107 GETUPVAL                         R12 6
      108 GETTABLEKS                       R11 R12 K34 ["Stacked"]
      110 SETTABLEKS                       R11 R10 K28 ["controlsVariant"]
      112 GETTABLEKS                       R12 R1 K29 ["minimum"]
      114 ORK                              R11 R12 K35 [0]
      115 SETTABLEKS                       R11 R10 K29 ["minimum"]
      117 GETTABLEKS                       R12 R1 K30 ["maximum"]
      119 ORK                              R11 R12 K36 [255]
      120 SETTABLEKS                       R11 R10 K30 ["maximum"]
      122 GETTABLEKS                       R12 R1 K31 ["step"]
      124 ORK                              R11 R12 K37 [1]
      125 SETTABLEKS                       R11 R10 K31 ["step"]
      127 GETTABLEKS                       R12 R1 K32 ["precision"]
      129 ORK                              R11 R12 K35 [0]
      130 SETTABLEKS                       R11 R10 K32 ["precision"]
      132 MOVE                             R11 R6
      133 CALL                             R9 2 -1
      134 CALL                             R7 -1 -1
      135 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onColorChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onColorChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"r", "g", "b"}]
        1 GETTABLEKS                       R4 R0 K5 ["R"]
        3 MULK                             R3 R4 K4 [255]
        4 FASTCALL1                        MATH_ROUND R3 ; [+2]
        5 GETIMPORT                        R2 K8 [math.round]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["r"]
       10 GETTABLEKS                       R4 R0 K9 ["G"]
       12 MULK                             R3 R4 K4 [255]
       13 FASTCALL1                        MATH_ROUND R3 ; [+2]
       14 GETIMPORT                        R2 K8 [math.round]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K1 ["g"]
       19 GETTABLEKS                       R4 R0 K10 ["B"]
       21 MULK                             R3 R4 K4 [255]
       22 FASTCALL1                        MATH_ROUND R3 ; [+2]
       23 GETIMPORT                        R2 K8 [math.round]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K2 ["b"]
       28 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["ToHSV"]
        2 CALL                             R1 1 3
        3 DUPTABLE                         R4 K4 [{"h", "s", "v"}]
        4 MULK                             R6 R1 K5 [360]
        5 FASTCALL1                        MATH_ROUND R6 ; [+2]
        6 GETIMPORT                        R5 K8 [math.round]
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K1 ["h"]
       11 MULK                             R6 R2 K9 [100]
       12 FASTCALL1                        MATH_ROUND R6 ; [+2]
       13 GETIMPORT                        R5 K8 [math.round]
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K2 ["s"]
       18 MULK                             R6 R3 K9 [100]
       19 FASTCALL1                        MATH_ROUND R6 ; [+2]
       20 GETIMPORT                        R5 K8 [math.round]
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K3 ["v"]
       25 RETURN                           R4 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["#%02X%02X%02X"]
        3 GETTABLEKS                       R3 R0 K4 ["r"]
        5 GETTABLEKS                       R4 R0 K5 ["g"]
        7 GETTABLEKS                       R5 R0 K6 ["b"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_7:
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
       16 GETIMPORT                        R4 K9 [Color3.fromRGB]
       18 GETTABLEKS                       R5 R3 K10 ["r"]
       20 GETTABLEKS                       R6 R3 K11 ["g"]
       22 GETTABLEKS                       R7 R3 K12 ["b"]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R5 1
       26 MOVE                             R6 R4
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K3 ["getValue"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 LOADN                            R5 0
        8 JUMPIFNOTEQKS                    R1 K4 ["h"] ; [+3]
       10 LOADN                            R6 104
       11 JUMP                             ; [+1]
       12 LOADN                            R6 100
       13 FASTCALL3                        MATH_CLAMP R0 R5 R6
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K7 [math.clamp]
       18 CALL                             R3 3 1
       19 SETTABLE                         R3 R2 R1
       20 GETIMPORT                        R4 K10 [Color3.fromHSV]
       22 GETTABLEKS                       R6 R2 K4 ["h"]
       24 DIVK                             R5 R6 K11 [360]
       25 GETTABLEKS                       R7 R2 K13 ["s"]
       27 DIVK                             R6 R7 K12 [100]
       28 GETTABLEKS                       R8 R2 K14 ["v"]
       30 DIVK                             R7 R8 K12 [100]
       31 CALL                             R4 3 1
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R4
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onModeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onModeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
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
       55 DUPCLOSURE                       R12 K11 [PROTO_4]
       56 NAMECALL                         R10 R5 K12 ["map"]
       58 CALL                             R10 2 1
       59 DUPCLOSURE                       R13 K13 [PROTO_5]
       60 NAMECALL                         R11 R5 K12 ["map"]
       62 CALL                             R11 2 1
       63 DUPCLOSURE                       R14 K14 [PROTO_6]
       64 NAMECALL                         R12 R10 K12 ["map"]
       66 CALL                             R12 2 1
       67 GETUPVAL                         R14 4
       68 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       70 NEWCLOSURE                       R14 P4
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R15 0 2
       75 MOVE                             R16 R10
       76 MOVE                             R17 R7
       77 SETLIST                          R15 R16 2 [1]
       79 CALL                             R13 2 1
       80 GETUPVAL                         R15 4
       81 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       83 NEWCLOSURE                       R15 P5
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R16 0 1
       87 MOVE                             R17 R8
       88 SETLIST                          R16 R17 1 [1]
       90 CALL                             R14 2 1
       91 GETUPVAL                         R16 4
       92 GETTABLEKS                       R15 R16 K8 ["useCallback"]
       94 NEWCLOSURE                       R16 P6
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R7
       97 NEWTABLE                         R17 0 2
       99 MOVE                             R18 R11
      100 MOVE                             R19 R7
      101 SETLIST                          R17 R18 2 [1]
      103 CALL                             R15 2 1
      104 GETUPVAL                         R17 4
      105 GETTABLEKS                       R16 R17 K8 ["useCallback"]
      107 NEWCLOSURE                       R17 P7
      108 CAPTURE                          VAL R7
      109 NEWTABLE                         R18 0 1
      111 MOVE                             R19 R7
      112 SETLIST                          R18 R19 1 [1]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R18 4
      116 GETTABLEKS                       R17 R18 K15 ["useMemo"]
      118 NEWCLOSURE                       R18 P8
      119 CAPTURE                          UPVAL U0
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R1
      122 NEWTABLE                         R19 0 1
      124 MOVE                             R20 R9
      125 SETLIST                          R19 R20 1 [1]
      127 CALL                             R17 2 1
      128 GETUPVAL                         R19 4
      129 GETTABLEKS                       R18 R19 K16 ["useEffect"]
      131 NEWCLOSURE                       R19 P9
      132 CAPTURE                          VAL R4
      133 CAPTURE                          UPVAL U0
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R2
      136 NEWTABLE                         R20 0 2
      138 MOVE                             R21 R4
      139 MOVE                             R22 R9
      140 SETLIST                          R20 R21 2 [1]
      142 CALL                             R18 2 0
      143 NEWCLOSURE                       R18 P10
      144 CAPTURE                          VAL R4
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U5
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R3
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          VAL R2
      158 GETUPVAL                         R20 4
      159 GETTABLEKS                       R19 R20 K17 ["createElement"]
      161 GETUPVAL                         R20 7
      162 GETUPVAL                         R21 8
      163 MOVE                             R22 R2
      164 DUPTABLE                         R23 K19 [{"tag"}]
      165 LOADK                            R24 K20 ["row gap-small auto-xy align-y-center"]
      166 SETTABLEKS                       R24 R23 K18 ["tag"]
      168 CALL                             R21 2 1
      169 DUPTABLE                         R22 K23 [{"ModeDropdown", "Inputs"}]
      170 LENGTH                           R24 R17
      171 LOADN                            R25 1
      172 JUMPIFNOTLT                      R25 R24 ; [+45]
      174 GETUPVAL                         R24 4
      175 GETTABLEKS                       R23 R24 K17 ["createElement"]
      177 GETUPVAL                         R25 9
      178 GETTABLEKS                       R24 R25 K24 ["Root"]
      180 DUPTABLE                         R25 K32 [{"items", "value", "onItemChanged", "size", "label", "width", "testId"}]
      181 SETTABLEKS                       R17 R25 K25 ["items"]
      183 SETTABLEKS                       R4 R25 K26 ["value"]
      185 NEWCLOSURE                       R26 P11
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R26 R25 K27 ["onItemChanged"]
      189 GETUPVAL                         R27 10
      190 GETTABLEKS                       R26 R27 K33 ["XSmall"]
      192 SETTABLEKS                       R26 R25 K28 ["size"]
      194 LOADK                            R26 K34 [""]
      195 SETTABLEKS                       R26 R25 K29 ["label"]
      197 GETIMPORT                        R26 K37 [UDim.new]
      199 LOADN                            R27 0
      200 GETTABLEKS                       R29 R3 K38 ["Size"]
      202 GETTABLEKS                       R28 R29 K39 ["Size_2000"]
      204 CALL                             R26 2 1
      205 SETTABLEKS                       R26 R25 K30 ["width"]
      207 LOADK                            R27 K40 ["%*--mode-dropdown"]
      208 GETTABLEKS                       R29 R2 K31 ["testId"]
      210 NAMECALL                         R27 R27 K41 ["format"]
      212 CALL                             R27 2 1
      213 MOVE                             R26 R27
      214 SETTABLEKS                       R26 R25 K31 ["testId"]
      216 CALL                             R23 2 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R23
      219 SETTABLEKS                       R23 R22 K21 ["ModeDropdown"]
      221 GETUPVAL                         R24 4
      222 GETTABLEKS                       R23 R24 K17 ["createElement"]
      224 GETUPVAL                         R24 7
      225 DUPTABLE                         R25 K19 [{"tag"}]
      226 LOADK                            R26 K42 ["row gap-small auto-xy"]
      227 SETTABLEKS                       R26 R25 K18 ["tag"]
      229 MOVE                             R26 R18
      230 CALL                             R26 0 -1
      231 CALL                             R23 -1 1
      232 SETTABLEKS                       R23 R22 K22 ["Inputs"]
      234 CALL                             R19 3 -1
      235 RETURN                           R19 -1

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
       77 GETTABLEKS                       R15 R0 K9 ["Components"]
       79 GETTABLEKS                       R14 R15 K19 ["ColorPicker"]
       81 GETTABLEKS                       R13 R14 K20 ["colorInputUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K21 ["Utility"]
       88 GETTABLEKS                       R14 R15 K22 ["withCommonProps"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K21 ["Utility"]
       95 GETTABLEKS                       R15 R16 K23 ["withDefaults"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R18 R0 K24 ["Providers"]
      102 GETTABLEKS                       R17 R18 K25 ["Style"]
      104 GETTABLEKS                       R16 R17 K26 ["Tokens"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R19 R0 K24 ["Providers"]
      111 GETTABLEKS                       R18 R19 K25 ["Style"]
      113 GETTABLEKS                       R17 R18 K27 ["useTokens"]
      115 CALL                             R16 1 1
      116 DUPCLOSURE                       R17 K28 [PROTO_2]
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R11
      124 DUPTABLE                         R18 K30 [{"alpha"}]
      125 GETTABLEKS                       R19 R3 K31 ["createBinding"]
      127 LOADN                            R20 1
      128 CALL                             R19 1 1
      129 SETTABLEKS                       R19 R18 K29 ["alpha"]
      131 DUPCLOSURE                       R19 K32 [PROTO_15]
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R10
      143 RETURN                           R19 1
