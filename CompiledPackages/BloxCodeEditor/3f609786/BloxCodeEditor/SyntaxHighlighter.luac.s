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
       16 GETTABLEKS                       R11 R9 K2 ["value"]
       18 LOADK                            R14 K3 ["&"]
       19 LOADK                            R15 K4 ["&amp;"]
       20 NAMECALL                         R12 R11 K5 ["gsub"]
       22 CALL                             R12 3 1
       23 MOVE                             R11 R12
       24 LOADK                            R14 K6 ["<"]
       25 LOADK                            R15 K7 ["&lt;"]
       26 NAMECALL                         R12 R11 K5 ["gsub"]
       28 CALL                             R12 3 1
       29 MOVE                             R11 R12
       30 LOADK                            R14 K8 [">"]
       31 LOADK                            R15 K9 ["&gt;"]
       32 NAMECALL                         R12 R11 K5 ["gsub"]
       34 CALL                             R12 3 1
       35 MOVE                             R11 R12
       36 LOADK                            R14 K10 ["\""]
       37 LOADK                            R15 K11 ["&quot;"]
       38 NAMECALL                         R12 R11 K5 ["gsub"]
       40 CALL                             R12 3 1
       41 MOVE                             R11 R12
       42 MOVE                             R10 R11
       43 GETTABLEKS                       R12 R9 K12 ["type"]
       45 GETTABLE                         R11 R2 R12
       46 JUMPIFNOT                        R11 ; [+14]
       47 LOADK                            R15 K13 ["<font color=\"%*\">%*</font>"]
       48 MOVE                             R17 R11
       49 MOVE                             R18 R10
       50 NAMECALL                         R15 R15 K14 ["format"]
       52 CALL                             R15 3 1
       53 MOVE                             R14 R15
       54 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       56 MOVE                             R13 R4
       57 GETIMPORT                        R12 K17 [table.insert]
       59 CALL                             R12 2 0
       60 JUMP                             ; [+7]
       61 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       63 MOVE                             R13 R4
       64 MOVE                             R14 R10
       65 GETIMPORT                        R12 K17 [table.insert]
       67 CALL                             R12 2 0
       68 FORGLOOP                         R5 2 ; [-53]
       70 GETIMPORT                        R5 K19 [table.concat]
       72 MOVE                             R6 R4
       73 CALL                             R5 1 -1
       74 RETURN                           R5 -1

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R6 R1 K1 ["lower"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R4 ; [+27]
       11 MOVE                             R6 R0
       12 LOADK                            R9 K2 ["&"]
       13 LOADK                            R10 K3 ["&amp;"]
       14 NAMECALL                         R7 R6 K4 ["gsub"]
       16 CALL                             R7 3 1
       17 MOVE                             R6 R7
       18 LOADK                            R9 K5 ["<"]
       19 LOADK                            R10 K6 ["&lt;"]
       20 NAMECALL                         R7 R6 K4 ["gsub"]
       22 CALL                             R7 3 1
       23 MOVE                             R6 R7
       24 LOADK                            R9 K7 [">"]
       25 LOADK                            R10 K8 ["&gt;"]
       26 NAMECALL                         R7 R6 K4 ["gsub"]
       28 CALL                             R7 3 1
       29 MOVE                             R6 R7
       30 LOADK                            R9 K9 ["\""]
       31 LOADK                            R10 K10 ["&quot;"]
       32 NAMECALL                         R7 R6 K4 ["gsub"]
       34 CALL                             R7 3 1
       35 MOVE                             R6 R7
       36 MOVE                             R5 R6
       37 RETURN                           R5 1
       38 GETTABLEKS                       R5 R4 K11 ["tokenize"]
       40 MOVE                             R6 R0
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 0 0
       44 MOVE                             R7 R5
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 FORGPREP                         R7
       48 GETTABLEKS                       R13 R11 K12 ["value"]
       50 LOADK                            R16 K2 ["&"]
       51 LOADK                            R17 K3 ["&amp;"]
       52 NAMECALL                         R14 R13 K4 ["gsub"]
       54 CALL                             R14 3 1
       55 MOVE                             R13 R14
       56 LOADK                            R16 K5 ["<"]
       57 LOADK                            R17 K6 ["&lt;"]
       58 NAMECALL                         R14 R13 K4 ["gsub"]
       60 CALL                             R14 3 1
       61 MOVE                             R13 R14
       62 LOADK                            R16 K7 [">"]
       63 LOADK                            R17 K8 ["&gt;"]
       64 NAMECALL                         R14 R13 K4 ["gsub"]
       66 CALL                             R14 3 1
       67 MOVE                             R13 R14
       68 LOADK                            R16 K9 ["\""]
       69 LOADK                            R17 K10 ["&quot;"]
       70 NAMECALL                         R14 R13 K4 ["gsub"]
       72 CALL                             R14 3 1
       73 MOVE                             R13 R14
       74 MOVE                             R12 R13
       75 GETTABLEKS                       R14 R11 K13 ["type"]
       77 GETTABLE                         R13 R3 R14
       78 JUMPIFNOT                        R13 ; [+14]
       79 LOADK                            R17 K14 ["<font color=\"%*\">%*</font>"]
       80 MOVE                             R19 R13
       81 MOVE                             R20 R12
       82 NAMECALL                         R17 R17 K15 ["format"]
       84 CALL                             R17 3 1
       85 MOVE                             R16 R17
       86 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       88 MOVE                             R15 R6
       89 GETIMPORT                        R14 K18 [table.insert]
       91 CALL                             R14 2 0
       92 JUMP                             ; [+7]
       93 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       95 MOVE                             R15 R6
       96 MOVE                             R16 R12
       97 GETIMPORT                        R14 K18 [table.insert]
       99 CALL                             R14 2 0
      100 FORGLOOP                         R7 2 ; [-53]
      102 GETIMPORT                        R7 K20 [table.concat]
      104 MOVE                             R8 R6
      105 CALL                             R7 1 -1
      106 RETURN                           R7 -1

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
       10 JUMPIF                           R4 ; [+31]
       11 GETIMPORT                        R5 K4 [string.split]
       13 MOVE                             R7 R0
       14 LOADK                            R10 K5 ["&"]
       15 LOADK                            R11 K6 ["&amp;"]
       16 NAMECALL                         R8 R7 K7 ["gsub"]
       18 CALL                             R8 3 1
       19 MOVE                             R7 R8
       20 LOADK                            R10 K8 ["<"]
       21 LOADK                            R11 K9 ["&lt;"]
       22 NAMECALL                         R8 R7 K7 ["gsub"]
       24 CALL                             R8 3 1
       25 MOVE                             R7 R8
       26 LOADK                            R10 K10 [">"]
       27 LOADK                            R11 K11 ["&gt;"]
       28 NAMECALL                         R8 R7 K7 ["gsub"]
       30 CALL                             R8 3 1
       31 MOVE                             R7 R8
       32 LOADK                            R10 K12 ["\""]
       33 LOADK                            R11 K13 ["&quot;"]
       34 NAMECALL                         R8 R7 K7 ["gsub"]
       36 CALL                             R8 3 1
       37 MOVE                             R7 R8
       38 MOVE                             R6 R7
       39 LOADK                            R7 K14 ["\n"]
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1
       42 GETTABLEKS                       R5 R4 K15 ["tokenize"]
       44 MOVE                             R6 R0
       45 CALL                             R5 1 1
       46 NEWTABLE                         R6 0 1
       48 NEWTABLE                         R7 0 0
       50 SETLIST                          R6 R7 1 [1]
       52 LOADN                            R7 1
       53 MOVE                             R8 R5
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 FORGPREP                         R8
       57 GETTABLEKS                       R13 R12 K16 ["value"]
       59 GETTABLEKS                       R15 R12 K17 ["type"]
       61 GETTABLE                         R14 R3 R15
       62 GETIMPORT                        R15 K4 [string.split]
       64 MOVE                             R16 R13
       65 LOADK                            R17 K14 ["\n"]
       66 CALL                             R15 2 1
       67 MOVE                             R16 R15
       68 LOADNIL                          R17
       69 LOADNIL                          R18
       70 FORGPREP                         R16
       71 LOADN                            R21 1
       72 JUMPIFNOTLT                      R21 R19 ; [+7]
       74 ADDK                             R7 R7 K18 [1]
       75 GETTABLE                         R21 R6 R7
       76 JUMPIF                           R21 ; [+2]
       77 NEWTABLE                         R21 0 0
       79 SETTABLE                         R21 R6 R7
       80 JUMPIFEQKS                       R20 K19 [""] ; [+49]
       82 MOVE                             R22 R20
       83 LOADK                            R25 K5 ["&"]
       84 LOADK                            R26 K6 ["&amp;"]
       85 NAMECALL                         R23 R22 K7 ["gsub"]
       87 CALL                             R23 3 1
       88 MOVE                             R22 R23
       89 LOADK                            R25 K8 ["<"]
       90 LOADK                            R26 K9 ["&lt;"]
       91 NAMECALL                         R23 R22 K7 ["gsub"]
       93 CALL                             R23 3 1
       94 MOVE                             R22 R23
       95 LOADK                            R25 K10 [">"]
       96 LOADK                            R26 K11 ["&gt;"]
       97 NAMECALL                         R23 R22 K7 ["gsub"]
       99 CALL                             R23 3 1
      100 MOVE                             R22 R23
      101 LOADK                            R25 K12 ["\""]
      102 LOADK                            R26 K13 ["&quot;"]
      103 NAMECALL                         R23 R22 K7 ["gsub"]
      105 CALL                             R23 3 1
      106 MOVE                             R22 R23
      107 MOVE                             R21 R22
      108 JUMPIFNOT                        R14 ; [+14]
      109 GETTABLE                         R23 R6 R7
      110 LOADK                            R25 K20 ["<font color=\"%*\">%*</font>"]
      111 MOVE                             R27 R14
      112 MOVE                             R28 R21
      113 NAMECALL                         R25 R25 K21 ["format"]
      115 CALL                             R25 3 1
      116 MOVE                             R24 R25
      117 FASTCALL2                        TABLE_INSERT R23 R24 ; [+3]
      119 GETIMPORT                        R22 K24 [table.insert]
      121 CALL                             R22 2 0
      122 JUMP                             ; [+7]
      123 GETTABLE                         R23 R6 R7
      124 FASTCALL2                        TABLE_INSERT R23 R21 ; [+4]
      126 MOVE                             R24 R21
      127 GETIMPORT                        R22 K24 [table.insert]
      129 CALL                             R22 2 0
      130 FORGLOOP                         R16 2 ; [-60]
      132 FORGLOOP                         R8 2 ; [-76]
      134 GETIMPORT                        R8 K26 [table.create]
      136 LENGTH                           R9 R6
      137 CALL                             R8 1 1
      138 MOVE                             R9 R6
      139 LOADNIL                          R10
      140 LOADNIL                          R11
      141 FORGPREP                         R9
      142 GETIMPORT                        R14 K28 [table.concat]
      144 MOVE                             R15 R13
      145 CALL                             R14 1 1
      146 SETTABLE                         R14 R8 R12
      147 FORGLOOP                         R9 2 ; [-6]
      149 RETURN                           R8 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R2 K0 ["Light"] ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R6 R1 K1 ["lower"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R4 ; [+27]
       11 MOVE                             R6 R0
       12 LOADK                            R9 K2 ["&"]
       13 LOADK                            R10 K3 ["&amp;"]
       14 NAMECALL                         R7 R6 K4 ["gsub"]
       16 CALL                             R7 3 1
       17 MOVE                             R6 R7
       18 LOADK                            R9 K5 ["<"]
       19 LOADK                            R10 K6 ["&lt;"]
       20 NAMECALL                         R7 R6 K4 ["gsub"]
       22 CALL                             R7 3 1
       23 MOVE                             R6 R7
       24 LOADK                            R9 K7 [">"]
       25 LOADK                            R10 K8 ["&gt;"]
       26 NAMECALL                         R7 R6 K4 ["gsub"]
       28 CALL                             R7 3 1
       29 MOVE                             R6 R7
       30 LOADK                            R9 K9 ["\""]
       31 LOADK                            R10 K10 ["&quot;"]
       32 NAMECALL                         R7 R6 K4 ["gsub"]
       34 CALL                             R7 3 1
       35 MOVE                             R6 R7
       36 MOVE                             R5 R6
       37 RETURN                           R5 1
       38 GETTABLEKS                       R5 R4 K11 ["tokenize"]
       40 MOVE                             R6 R0
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 0 0
       44 MOVE                             R7 R5
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 FORGPREP                         R7
       48 GETTABLEKS                       R13 R11 K12 ["value"]
       50 LOADK                            R16 K2 ["&"]
       51 LOADK                            R17 K3 ["&amp;"]
       52 NAMECALL                         R14 R13 K4 ["gsub"]
       54 CALL                             R14 3 1
       55 MOVE                             R13 R14
       56 LOADK                            R16 K5 ["<"]
       57 LOADK                            R17 K6 ["&lt;"]
       58 NAMECALL                         R14 R13 K4 ["gsub"]
       60 CALL                             R14 3 1
       61 MOVE                             R13 R14
       62 LOADK                            R16 K7 [">"]
       63 LOADK                            R17 K8 ["&gt;"]
       64 NAMECALL                         R14 R13 K4 ["gsub"]
       66 CALL                             R14 3 1
       67 MOVE                             R13 R14
       68 LOADK                            R16 K9 ["\""]
       69 LOADK                            R17 K10 ["&quot;"]
       70 NAMECALL                         R14 R13 K4 ["gsub"]
       72 CALL                             R14 3 1
       73 MOVE                             R13 R14
       74 MOVE                             R12 R13
       75 GETTABLEKS                       R14 R11 K13 ["type"]
       77 GETTABLE                         R13 R3 R14
       78 JUMPIFNOT                        R13 ; [+14]
       79 LOADK                            R17 K14 ["<font color=\"%*\">%*</font>"]
       80 MOVE                             R19 R13
       81 MOVE                             R20 R12
       82 NAMECALL                         R17 R17 K15 ["format"]
       84 CALL                             R17 3 1
       85 MOVE                             R16 R17
       86 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       88 MOVE                             R15 R6
       89 GETIMPORT                        R14 K18 [table.insert]
       91 CALL                             R14 2 0
       92 JUMP                             ; [+7]
       93 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       95 MOVE                             R15 R6
       96 MOVE                             R16 R12
       97 GETIMPORT                        R14 K18 [table.insert]
       99 CALL                             R14 2 0
      100 FORGLOOP                         R7 2 ; [-53]
      102 GETIMPORT                        R7 K20 [table.concat]
      104 MOVE                             R8 R6
      105 CALL                             R7 1 -1
      106 RETURN                           R7 -1

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
