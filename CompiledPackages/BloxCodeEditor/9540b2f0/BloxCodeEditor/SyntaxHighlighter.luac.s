PROTO_0:
        0 LOADK                            R3 K0 ["&"]
        1 LOADK                            R4 K1 ["&amp;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADK                            R3 K3 ["<"]
        7 LOADK                            R4 K4 ["&lt;"]
        8 NAMECALL                         R1 R0 K2 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 LOADK                            R3 K5 [">"]
       13 LOADK                            R4 K6 ["&gt;"]
       14 NAMECALL                         R1 R0 K2 ["gsub"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 LOADK                            R3 K7 ["\""]
       19 LOADK                            R4 K8 ["&quot;"]
       20 NAMECALL                         R1 R0 K2 ["gsub"]
       22 CALL                             R1 3 1
       23 MOVE                             R0 R1
       24 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R2 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["tokenize"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 MOVE                             R5 R3
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K2 ["value"]
       18 LOADK                            R13 K3 ["&"]
       19 LOADK                            R14 K4 ["&amp;"]
       20 NAMECALL                         R11 R10 K5 ["gsub"]
       22 CALL                             R11 3 1
       23 MOVE                             R10 R11
       24 LOADK                            R13 K6 ["<"]
       25 LOADK                            R14 K7 ["&lt;"]
       26 NAMECALL                         R11 R10 K5 ["gsub"]
       28 CALL                             R11 3 1
       29 MOVE                             R10 R11
       30 LOADK                            R13 K8 [">"]
       31 LOADK                            R14 K9 ["&gt;"]
       32 NAMECALL                         R11 R10 K5 ["gsub"]
       34 CALL                             R11 3 1
       35 MOVE                             R10 R11
       36 LOADK                            R13 K10 ["\""]
       37 LOADK                            R14 K11 ["&quot;"]
       38 NAMECALL                         R11 R10 K5 ["gsub"]
       40 CALL                             R11 3 1
       41 MOVE                             R10 R11
       42 GETTABLEKS                       R12 R9 K12 ["type"]
       44 GETTABLE                         R11 R2 R12
       45 JUMPIFNOT                        R11 ; [+13]
       46 LOADK                            R14 K13 ["<font color=\"%*\">%*</font>"]
       47 MOVE                             R16 R11
       48 MOVE                             R17 R10
       49 NAMECALL                         R14 R14 K14 ["format"]
       51 CALL                             R14 3 1
       52 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       54 MOVE                             R13 R4
       55 GETIMPORT                        R12 K17 [table.insert]
       57 CALL                             R12 2 0
       58 JUMP                             ; [+7]
       59 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       61 MOVE                             R13 R4
       62 MOVE                             R14 R10
       63 GETIMPORT                        R12 K17 [table.insert]
       65 CALL                             R12 2 0
       66 FORGLOOP                         R5 2 ; [-51]
       68 GETIMPORT                        R5 K19 [table.concat]
       70 MOVE                             R6 R4
       71 CALL                             R5 1 -1
       72 RETURN                           R5 -1

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R6 R1 K1 ["lower"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R4 ; [+26]
       11 MOVE                             R5 R0
       12 LOADK                            R8 K2 ["&"]
       13 LOADK                            R9 K3 ["&amp;"]
       14 NAMECALL                         R6 R5 K4 ["gsub"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 LOADK                            R8 K5 ["<"]
       19 LOADK                            R9 K6 ["&lt;"]
       20 NAMECALL                         R6 R5 K4 ["gsub"]
       22 CALL                             R6 3 1
       23 MOVE                             R5 R6
       24 LOADK                            R8 K7 [">"]
       25 LOADK                            R9 K8 ["&gt;"]
       26 NAMECALL                         R6 R5 K4 ["gsub"]
       28 CALL                             R6 3 1
       29 MOVE                             R5 R6
       30 LOADK                            R8 K9 ["\""]
       31 LOADK                            R9 K10 ["&quot;"]
       32 NAMECALL                         R6 R5 K4 ["gsub"]
       34 CALL                             R6 3 1
       35 MOVE                             R5 R6
       36 RETURN                           R5 1
       37 GETTABLEKS                       R5 R4 K11 ["tokenize"]
       39 MOVE                             R6 R0
       40 CALL                             R5 1 1
       41 NEWTABLE                         R6 0 0
       43 MOVE                             R7 R5
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 GETTABLEKS                       R12 R11 K12 ["value"]
       49 LOADK                            R15 K2 ["&"]
       50 LOADK                            R16 K3 ["&amp;"]
       51 NAMECALL                         R13 R12 K4 ["gsub"]
       53 CALL                             R13 3 1
       54 MOVE                             R12 R13
       55 LOADK                            R15 K5 ["<"]
       56 LOADK                            R16 K6 ["&lt;"]
       57 NAMECALL                         R13 R12 K4 ["gsub"]
       59 CALL                             R13 3 1
       60 MOVE                             R12 R13
       61 LOADK                            R15 K7 [">"]
       62 LOADK                            R16 K8 ["&gt;"]
       63 NAMECALL                         R13 R12 K4 ["gsub"]
       65 CALL                             R13 3 1
       66 MOVE                             R12 R13
       67 LOADK                            R15 K9 ["\""]
       68 LOADK                            R16 K10 ["&quot;"]
       69 NAMECALL                         R13 R12 K4 ["gsub"]
       71 CALL                             R13 3 1
       72 MOVE                             R12 R13
       73 GETTABLEKS                       R14 R11 K13 ["type"]
       75 GETTABLE                         R13 R3 R14
       76 JUMPIFNOT                        R13 ; [+13]
       77 LOADK                            R16 K14 ["<font color=\"%*\">%*</font>"]
       78 MOVE                             R18 R13
       79 MOVE                             R19 R12
       80 NAMECALL                         R16 R16 K15 ["format"]
       82 CALL                             R16 3 1
       83 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       85 MOVE                             R15 R6
       86 GETIMPORT                        R14 K18 [table.insert]
       88 CALL                             R14 2 0
       89 JUMP                             ; [+7]
       90 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       92 MOVE                             R15 R6
       93 MOVE                             R16 R12
       94 GETIMPORT                        R14 K18 [table.insert]
       96 CALL                             R14 2 0
       97 FORGLOOP                         R7 2 ; [-51]
       99 GETIMPORT                        R7 K20 [table.concat]
      101 MOVE                             R8 R6
      102 CALL                             R7 1 -1
      103 RETURN                           R7 -1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R4 R0 K0 ["lower"]
        6 CALL                             R4 1 1
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R6 R1 K1 ["lower"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R4 ; [+30]
       11 GETIMPORT                        R5 K4 [string.split]
       13 MOVE                             R6 R0
       14 LOADK                            R9 K5 ["&"]
       15 LOADK                            R10 K6 ["&amp;"]
       16 NAMECALL                         R7 R6 K7 ["gsub"]
       18 CALL                             R7 3 1
       19 MOVE                             R6 R7
       20 LOADK                            R9 K8 ["<"]
       21 LOADK                            R10 K9 ["&lt;"]
       22 NAMECALL                         R7 R6 K7 ["gsub"]
       24 CALL                             R7 3 1
       25 MOVE                             R6 R7
       26 LOADK                            R9 K10 [">"]
       27 LOADK                            R10 K11 ["&gt;"]
       28 NAMECALL                         R7 R6 K7 ["gsub"]
       30 CALL                             R7 3 1
       31 MOVE                             R6 R7
       32 LOADK                            R9 K12 ["\""]
       33 LOADK                            R10 K13 ["&quot;"]
       34 NAMECALL                         R7 R6 K7 ["gsub"]
       36 CALL                             R7 3 1
       37 MOVE                             R6 R7
       38 LOADK                            R7 K14 ["\n"]
       39 CALL                             R5 2 -1
       40 RETURN                           R5 -1
       41 GETTABLEKS                       R5 R4 K15 ["tokenize"]
       43 MOVE                             R6 R0
       44 CALL                             R5 1 1
       45 NEWTABLE                         R6 0 1
       47 NEWTABLE                         R7 0 0
       49 SETLIST                          R6 R7 1 [1]
       51 LOADN                            R7 1
       52 MOVE                             R8 R5
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 FORGPREP                         R8
       56 GETTABLEKS                       R13 R12 K16 ["value"]
       58 GETTABLEKS                       R15 R12 K17 ["type"]
       60 GETTABLE                         R14 R3 R15
       61 GETIMPORT                        R15 K4 [string.split]
       63 MOVE                             R16 R13
       64 LOADK                            R17 K14 ["\n"]
       65 CALL                             R15 2 1
       66 MOVE                             R16 R15
       67 LOADNIL                          R17
       68 LOADNIL                          R18
       69 FORGPREP                         R16
       70 LOADN                            R21 1
       71 JUMPIFNOTLT                      R21 R19 ; [+7]
       73 ADDK                             R7 R7 K18 [1]
       74 GETTABLE                         R21 R6 R7
       75 JUMPIF                           R21 ; [+2]
       76 NEWTABLE                         R21 0 0
       78 SETTABLE                         R21 R6 R7
       79 JUMPIFEQKS                       R20 K19 [""] ; [+47]
       81 MOVE                             R21 R20
       82 LOADK                            R24 K5 ["&"]
       83 LOADK                            R25 K6 ["&amp;"]
       84 NAMECALL                         R22 R21 K7 ["gsub"]
       86 CALL                             R22 3 1
       87 MOVE                             R21 R22
       88 LOADK                            R24 K8 ["<"]
       89 LOADK                            R25 K9 ["&lt;"]
       90 NAMECALL                         R22 R21 K7 ["gsub"]
       92 CALL                             R22 3 1
       93 MOVE                             R21 R22
       94 LOADK                            R24 K10 [">"]
       95 LOADK                            R25 K11 ["&gt;"]
       96 NAMECALL                         R22 R21 K7 ["gsub"]
       98 CALL                             R22 3 1
       99 MOVE                             R21 R22
      100 LOADK                            R24 K12 ["\""]
      101 LOADK                            R25 K13 ["&quot;"]
      102 NAMECALL                         R22 R21 K7 ["gsub"]
      104 CALL                             R22 3 1
      105 MOVE                             R21 R22
      106 JUMPIFNOT                        R14 ; [+13]
      107 GETTABLE                         R23 R6 R7
      108 LOADK                            R24 K20 ["<font color=\"%*\">%*</font>"]
      109 MOVE                             R26 R14
      110 MOVE                             R27 R21
      111 NAMECALL                         R24 R24 K21 ["format"]
      113 CALL                             R24 3 1
      114 FASTCALL2                        TABLE_INSERT R23 R24 ; [+3]
      116 GETIMPORT                        R22 K24 [table.insert]
      118 CALL                             R22 2 0
      119 JUMP                             ; [+7]
      120 GETTABLE                         R23 R6 R7
      121 FASTCALL2                        TABLE_INSERT R23 R21 ; [+4]
      123 MOVE                             R24 R21
      124 GETIMPORT                        R22 K24 [table.insert]
      126 CALL                             R22 2 0
      127 FORGLOOP                         R16 2 ; [-58]
      129 FORGLOOP                         R8 2 ; [-74]
      131 GETIMPORT                        R8 K26 [table.create]
      133 LENGTH                           R9 R6
      134 CALL                             R8 1 1
      135 MOVE                             R9 R6
      136 LOADNIL                          R10
      137 LOADNIL                          R11
      138 FORGPREP                         R9
      139 GETIMPORT                        R14 K28 [table.concat]
      141 MOVE                             R15 R13
      142 CALL                             R14 1 1
      143 SETTABLE                         R14 R8 R12
      144 FORGLOOP                         R9 2 ; [-6]
      146 RETURN                           R8 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R6 R1 K1 ["lower"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R4 ; [+26]
       11 MOVE                             R5 R0
       12 LOADK                            R8 K2 ["&"]
       13 LOADK                            R9 K3 ["&amp;"]
       14 NAMECALL                         R6 R5 K4 ["gsub"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 LOADK                            R8 K5 ["<"]
       19 LOADK                            R9 K6 ["&lt;"]
       20 NAMECALL                         R6 R5 K4 ["gsub"]
       22 CALL                             R6 3 1
       23 MOVE                             R5 R6
       24 LOADK                            R8 K7 [">"]
       25 LOADK                            R9 K8 ["&gt;"]
       26 NAMECALL                         R6 R5 K4 ["gsub"]
       28 CALL                             R6 3 1
       29 MOVE                             R5 R6
       30 LOADK                            R8 K9 ["\""]
       31 LOADK                            R9 K10 ["&quot;"]
       32 NAMECALL                         R6 R5 K4 ["gsub"]
       34 CALL                             R6 3 1
       35 MOVE                             R5 R6
       36 RETURN                           R5 1
       37 GETTABLEKS                       R5 R4 K11 ["tokenize"]
       39 MOVE                             R6 R0
       40 CALL                             R5 1 1
       41 NEWTABLE                         R6 0 0
       43 MOVE                             R7 R5
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 GETTABLEKS                       R12 R11 K12 ["value"]
       49 LOADK                            R15 K2 ["&"]
       50 LOADK                            R16 K3 ["&amp;"]
       51 NAMECALL                         R13 R12 K4 ["gsub"]
       53 CALL                             R13 3 1
       54 MOVE                             R12 R13
       55 LOADK                            R15 K5 ["<"]
       56 LOADK                            R16 K6 ["&lt;"]
       57 NAMECALL                         R13 R12 K4 ["gsub"]
       59 CALL                             R13 3 1
       60 MOVE                             R12 R13
       61 LOADK                            R15 K7 [">"]
       62 LOADK                            R16 K8 ["&gt;"]
       63 NAMECALL                         R13 R12 K4 ["gsub"]
       65 CALL                             R13 3 1
       66 MOVE                             R12 R13
       67 LOADK                            R15 K9 ["\""]
       68 LOADK                            R16 K10 ["&quot;"]
       69 NAMECALL                         R13 R12 K4 ["gsub"]
       71 CALL                             R13 3 1
       72 MOVE                             R12 R13
       73 GETTABLEKS                       R14 R11 K13 ["type"]
       75 GETTABLE                         R13 R3 R14
       76 JUMPIFNOT                        R13 ; [+13]
       77 LOADK                            R16 K14 ["<font color=\"%*\">%*</font>"]
       78 MOVE                             R18 R13
       79 MOVE                             R19 R12
       80 NAMECALL                         R16 R16 K15 ["format"]
       82 CALL                             R16 3 1
       83 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       85 MOVE                             R15 R6
       86 GETIMPORT                        R14 K18 [table.insert]
       88 CALL                             R14 2 0
       89 JUMP                             ; [+7]
       90 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       92 MOVE                             R15 R6
       93 MOVE                             R16 R12
       94 GETIMPORT                        R14 K18 [table.insert]
       96 CALL                             R14 2 0
       97 FORGLOOP                         R7 2 ; [-51]
       99 GETIMPORT                        R7 K20 [table.concat]
      101 MOVE                             R8 R6
      102 CALL                             R7 1 -1
      103 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["LuauLexer"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["JsonLexer"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["MarkdownLexer"]
       27 CALL                             R2 1 1
       28 DUPTABLE                         R3 K39 [{["keyword"] = "rgb(197,156,249)", ["builtin"] = "rgb(112,160,255)", ["string"] = "rgb(251,178,134)", ["comment"] = "rgb(29,177,106)", ["number"] = "rgb(92,210,232)", ["operator"] = "rgb(221,223,227)", ["expr_delim"] = "rgb(255,121,198)", ["member"] = "rgb(156,220,254)", ["method"] = "rgb(220,220,170)", ["key"] = "rgb(156,220,254)", ["heading"] = "rgb(244,244,246)", ["bold"] = "rgb(244,244,246)", ["italic"] = "rgb(175,175,180)", ["code"] = "rgb(251,178,134)", ["link_text"] = "rgb(112,160,255)", ["link_url"] = "rgb(100,100,110)", ["list_marker"] = "rgb(197,156,249)", ["tag"] = "rgb(197,156,249)", ["attribute"] = "rgb(156,220,254)"}]
       29 DUPTABLE                         R4 K50 [{["keyword"] = "rgb(147,72,240)", ["builtin"] = "rgb(20,70,255)", ["string"] = "rgb(192,80,20)", ["comment"] = "rgb(12,155,90)", ["number"] = "rgb(18,125,152)", ["operator"] = "rgb(39,41,48)", ["expr_delim"] = "rgb(193,56,122)", ["member"] = "rgb(0,100,150)", ["method"] = "rgb(120,110,50)", ["key"] = "rgb(0,100,150)", ["heading"] = "rgb(39,41,48)", ["bold"] = "rgb(39,41,48)", ["italic"] = "rgb(80,80,90)", ["code"] = "rgb(192,80,20)", ["link_text"] = "rgb(20,70,255)", ["link_url"] = "rgb(100,100,110)", ["list_marker"] = "rgb(147,72,240)", ["tag"] = "rgb(147,72,240)", ["attribute"] = "rgb(0,100,150)"}]
       30 NEWTABLE                         R5 0 3
       32 DUPTABLE                         R6 K53 [{"lexer", "aliases"}]
       33 SETTABLEKS                       R0 R6 K51 ["lexer"]
       35 NEWTABLE                         R7 0 2
       37 LOADK                            R8 K54 ["lua"]
       38 LOADK                            R9 K55 ["luau"]
       39 SETLIST                          R7 R8 2 [1]
       41 SETTABLEKS                       R7 R6 K52 ["aliases"]
       43 DUPTABLE                         R7 K53 [{"lexer", "aliases"}]
       44 SETTABLEKS                       R1 R7 K51 ["lexer"]
       46 NEWTABLE                         R8 0 1
       48 LOADK                            R9 K56 ["json"]
       49 SETLIST                          R8 R9 1 [1]
       51 SETTABLEKS                       R8 R7 K52 ["aliases"]
       53 DUPTABLE                         R8 K53 [{"lexer", "aliases"}]
       54 SETTABLEKS                       R2 R8 K51 ["lexer"]
       56 NEWTABLE                         R9 0 4
       58 LOADK                            R10 K57 ["markdown"]
       59 LOADK                            R11 K58 ["md"]
       60 LOADK                            R12 K59 ["xml"]
       61 LOADK                            R13 K60 ["html"]
       62 SETLIST                          R9 R10 4 [1]
       64 SETTABLEKS                       R9 R8 K52 ["aliases"]
       66 SETLIST                          R5 R6 3 [1]
       68 NEWTABLE                         R6 0 0
       70 MOVE                             R7 R5
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 FORGPREP                         R7
       74 GETTABLEKS                       R12 R11 K52 ["aliases"]
       76 LOADNIL                          R13
       77 LOADNIL                          R14
       78 FORGPREP                         R12
       79 GETTABLEKS                       R17 R11 K51 ["lexer"]
       81 SETTABLE                         R17 R6 R16
       82 FORGLOOP                         R12 2 ; [-4]
       84 FORGLOOP                         R7 2 ; [-11]
       86 DUPCLOSURE                       R7 K61 [PROTO_0]
       87 DUPCLOSURE                       R8 K62 [PROTO_1]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R0
       91 DUPCLOSURE                       R9 K63 [PROTO_2]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 DUPCLOSURE                       R10 K64 [PROTO_3]
       96 CAPTURE                          VAL R6
       97 DUPCLOSURE                       R11 K65 [PROTO_4]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 DUPCLOSURE                       R12 K66 [PROTO_5]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 DUPTABLE                         R13 K72 [{"highlight", "highlightLanguage", "highlightLines", "highlightLine", "isSupported"}]
      106 SETTABLEKS                       R8 R13 K67 ["highlight"]
      108 SETTABLEKS                       R9 R13 K68 ["highlightLanguage"]
      110 SETTABLEKS                       R11 R13 K69 ["highlightLines"]
      112 SETTABLEKS                       R12 R13 K70 ["highlightLine"]
      114 SETTABLEKS                       R10 R13 K71 ["isSupported"]
      116 RETURN                           R13 1
