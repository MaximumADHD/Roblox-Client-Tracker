PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 LOADK                            R4 K1 ["UIPadding"]
        3 NAMECALL                         R2 R0 K2 ["FindFirstChildWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+60]
        7 GETTABLEKS                       R4 R2 K3 ["PaddingLeft"]
        9 GETTABLEKS                       R4 R4 K4 ["Offset"]
       11 GETTABLEKS                       R5 R2 K5 ["PaddingRight"]
       13 GETTABLEKS                       R5 R5 K4 ["Offset"]
       15 ADD                              R3 R4 R5
       16 GETTABLEKS                       R6 R1 K6 ["X"]
       18 GETTABLEKS                       R7 R2 K3 ["PaddingLeft"]
       20 GETTABLEKS                       R7 R7 K7 ["Scale"]
       22 MUL                              R5 R6 R7
       23 GETTABLEKS                       R7 R1 K6 ["X"]
       25 GETTABLEKS                       R8 R2 K5 ["PaddingRight"]
       27 GETTABLEKS                       R8 R8 K7 ["Scale"]
       29 MUL                              R6 R7 R8
       30 ADD                              R4 R5 R6
       31 GETTABLEKS                       R6 R2 K8 ["PaddingTop"]
       33 GETTABLEKS                       R6 R6 K4 ["Offset"]
       35 GETTABLEKS                       R7 R2 K9 ["PaddingBottom"]
       37 GETTABLEKS                       R7 R7 K4 ["Offset"]
       39 ADD                              R5 R6 R7
       40 GETTABLEKS                       R8 R1 K10 ["Y"]
       42 GETTABLEKS                       R9 R2 K8 ["PaddingTop"]
       44 GETTABLEKS                       R9 R9 K7 ["Scale"]
       46 MUL                              R7 R8 R9
       47 GETTABLEKS                       R9 R1 K10 ["Y"]
       49 GETTABLEKS                       R10 R2 K9 ["PaddingBottom"]
       51 GETTABLEKS                       R10 R10 K7 ["Scale"]
       53 MUL                              R8 R9 R10
       54 ADD                              R6 R7 R8
       55 GETIMPORT                        R7 K13 [Vector2.new]
       57 GETTABLEKS                       R9 R1 K6 ["X"]
       59 ADD                              R10 R4 R3
       60 SUB                              R8 R9 R10
       61 GETTABLEKS                       R10 R1 K10 ["Y"]
       63 ADD                              R11 R6 R5
       64 SUB                              R9 R10 R11
       65 CALL                             R7 2 -1
       66 RETURN                           R7 -1
       67 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["ContentText"]
        2 JUMPIFNOTEQKS                    R2 K1 [""] ; [+4]
        4 GETIMPORT                        R2 K4 [Vector2.zero]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K5 ["TextBounds"]
        9 GETTABLEKS                       R3 R2 K6 ["Y"]
       11 GETTABLEKS                       R4 R2 K6 ["Y"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+6]
       15 GETTABLEKS                       R3 R2 K6 ["Y"]
       17 LOADN                            R4 1
       18 JUMPIFNOTLT                      R3 R4 ; [+12]
       20 GETIMPORT                        R3 K8 [Vector2.new]
       22 LOADN                            R4 0
       23 GETTABLEKS                       R7 R0 K9 ["TextSize"]
       25 GETTABLEKS                       R8 R0 K10 ["LineHeight"]
       27 MUL                              R6 R7 R8
       28 MUL                              R5 R6 R1
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1
       31 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["RichLines"]
        2 LENGTH                           R3 R4
        3 FASTCALL2K                       MATH_MAX R3 K1 ; [+4]
        5 LOADK                            R4 K1 [1]
        6 GETIMPORT                        R2 K4 [math.max]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R4 R0 K5 ["ContentText"]
       11 JUMPIFNOTEQKS                    R4 K6 [""] ; [+4]
       13 GETIMPORT                        R3 K9 [Vector2.zero]
       15 JUMP                             ; [+26]
       16 GETTABLEKS                       R4 R0 K10 ["TextBounds"]
       18 GETTABLEKS                       R5 R4 K11 ["Y"]
       20 GETTABLEKS                       R6 R4 K11 ["Y"]
       22 JUMPIFNOTEQ                      R5 R6 ; [+6]
       24 GETTABLEKS                       R5 R4 K11 ["Y"]
       26 LOADN                            R6 1
       27 JUMPIFNOTLT                      R5 R6 ; [+13]
       29 GETIMPORT                        R5 K13 [Vector2.new]
       31 LOADN                            R6 0
       32 GETTABLEKS                       R9 R0 K14 ["TextSize"]
       34 GETTABLEKS                       R10 R0 K15 ["LineHeight"]
       36 MUL                              R8 R9 R10
       37 MUL                              R7 R8 R2
       38 CALL                             R5 2 1
       39 MOVE                             R3 R5
       40 JUMP                             ; [+1]
       41 MOVE                             R3 R4
       42 GETTABLEKS                       R5 R3 K11 ["Y"]
       44 DIV                              R4 R5 R2
       45 DUPTABLE                         R5 K22 [{"textHeight", "innerAbsoluteSize", "textColor", "textFont", "textSize", "labelSize"}]
       46 SETTABLEKS                       R4 R5 K16 ["textHeight"]
       48 GETUPVAL                         R6 0
       49 MOVE                             R7 R0
       50 CALL                             R6 1 1
       51 SETTABLEKS                       R6 R5 K17 ["innerAbsoluteSize"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K23 ["getColor"]
       56 LOADK                            R7 K24 ["iden"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K18 ["textColor"]
       60 GETTABLEKS                       R6 R0 K25 ["FontFace"]
       62 SETTABLEKS                       R6 R5 K19 ["textFont"]
       64 GETTABLEKS                       R6 R0 K14 ["TextSize"]
       66 SETTABLEKS                       R6 R5 K20 ["textSize"]
       68 GETIMPORT                        R6 K27 [UDim2.new]
       70 LOADN                            R7 1
       71 LOADN                            R8 0
       72 LOADN                            R9 0
       73 FASTCALL1                        MATH_CEIL R4 ; [+3]
       74 MOVE                             R11 R4
       75 GETIMPORT                        R10 K29 [math.ceil]
       77 CALL                             R10 1 1
       78 CALL                             R6 4 1
       79 SETTABLEKS                       R6 R5 K21 ["labelSize"]
       81 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["innerAbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 LOADN                            R3 0
        5 JUMPIFNOTLE                      R2 R3 ; [+7]
        7 GETIMPORT                        R3 K4 [UDim2.fromScale]
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 GETIMPORT                        R3 K4 [UDim2.fromScale]
       15 LOADN                            R4 0
       16 GETTABLEKS                       R7 R0 K5 ["textHeight"]
       18 SUBK                             R8 R1 K6 [1]
       19 MUL                              R6 R7 R8
       20 DIV                              R5 R6 R2
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R1 K0 ["Labels"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R2 K1 ["labelSize"]
       16 SETTABLEKS                       R8 R7 K2 ["Size"]
       18 GETTABLEKS                       R9 R2 K3 ["innerAbsoluteSize"]
       20 GETTABLEKS                       R9 R9 K4 ["Y"]
       22 LOADN                            R10 0
       23 JUMPIFNOTLE                      R9 R10 ; [+8]
       25 GETIMPORT                        R10 K7 [UDim2.fromScale]
       27 LOADN                            R11 0
       28 LOADN                            R12 0
       29 CALL                             R10 2 1
       30 MOVE                             R8 R10
       31 JUMP                             ; [+10]
       32 GETIMPORT                        R10 K7 [UDim2.fromScale]
       34 LOADN                            R11 0
       35 GETTABLEKS                       R14 R2 K8 ["textHeight"]
       37 SUBK                             R15 R6 K9 [1]
       38 MUL                              R13 R14 R15
       39 DIV                              R12 R13 R9
       40 CALL                             R10 2 1
       41 MOVE                             R8 R10
       42 SETTABLEKS                       R8 R7 K10 ["Position"]
       44 FORGLOOP                         R3 2 ; [-31]
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["FontFace"]
        7 GETTABLEKS                       R3 R0 K1 ["TextSize"]
        9 GETTABLEKS                       R4 R1 K2 ["Labels"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 SETTABLEKS                       R2 R8 K0 ["FontFace"]
       16 SETTABLEKS                       R3 R8 K1 ["TextSize"]
       18 FORGLOOP                         R4 2 ; [-5]
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Labels"]
        2 GETTABLEKS                       R3 R0 K1 ["RichLines"]
        4 MOVE                             R6 R1
        5 LENGTH                           R4 R2
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 LOADNIL                          R7
        9 SETTABLE                         R7 R3 R6
       10 GETTABLE                         R7 R2 R6
       11 GETTABLEKS                       R7 R7 K2 ["Text"]
       13 JUMPIFEQKS                       R7 K3 [""] ; [+5]
       15 GETTABLE                         R7 R2 R6
       16 LOADK                            R8 K3 [""]
       17 SETTABLEKS                       R8 R7 K2 ["Text"]
       19 FORNLOOP                         R4
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["navigator"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 MOVE                             R2 R1
        7 CALL                             R2 0 1
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+41]
       15 GETTABLEKS                       R4 R2 K4 ["SetSource"]
       17 FASTCALL1                        TYPE R4 ; [+2]
       18 GETIMPORT                        R3 K2 [type]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+33]
       23 GETTABLEKS                       R4 R2 K6 ["HotswapSource"]
       25 FASTCALL1                        TYPE R4 ; [+2]
       26 GETIMPORT                        R3 K2 [type]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+25]
       31 GETTABLEKS                       R4 R2 K7 ["SeekToByte"]
       33 FASTCALL1                        TYPE R4 ; [+2]
       34 GETIMPORT                        R3 K2 [type]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+17]
       39 GETTABLEKS                       R4 R2 K8 ["Next"]
       41 FASTCALL1                        TYPE R4 ; [+2]
       42 GETIMPORT                        R3 K2 [type]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+9]
       47 GETTABLEKS                       R4 R2 K9 ["Destroy"]
       49 FASTCALL1                        TYPE R4 ; [+2]
       50 GETIMPORT                        R3 K2 [type]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K5 ["function"] ; [+3]
       55 LOADNIL                          R3
       56 RETURN                           R3 1
       57 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+7]
        4 GETTABLEKS                       R2 R1 K0 ["Parent"]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 GETIMPORT                        R2 K3 [Instance.new]
       15 LOADK                            R3 K4 ["TextLabel"]
       16 CALL                             R2 1 1
       17 LOADK                            R4 K5 ["Line_"]
       18 MOVE                             R5 R0
       19 CONCAT                           R3 R4 R5
       20 SETTABLEKS                       R3 R2 K6 ["Name"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K7 ["AutoLocalize"]
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["RichText"]
       28 LOADN                            R3 1
       29 SETTABLEKS                       R3 R2 K9 ["BackgroundTransparency"]
       31 LOADK                            R3 K10 [""]
       32 SETTABLEKS                       R3 R2 K11 ["Text"]
       34 GETIMPORT                        R3 K15 [Enum.TextXAlignment.Left]
       36 SETTABLEKS                       R3 R2 K13 ["TextXAlignment"]
       38 GETIMPORT                        R3 K18 [Enum.TextYAlignment.Top]
       40 SETTABLEKS                       R3 R2 K16 ["TextYAlignment"]
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K19 ["textColor"]
       45 SETTABLEKS                       R3 R2 K20 ["TextColor3"]
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R3 R3 K21 ["textFont"]
       50 SETTABLEKS                       R3 R2 K22 ["FontFace"]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K23 ["textSize"]
       55 SETTABLEKS                       R3 R2 K24 ["TextSize"]
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K25 ["labelSize"]
       60 SETTABLEKS                       R3 R2 K26 ["Size"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R5 R4 K27 ["innerAbsoluteSize"]
       65 GETTABLEKS                       R5 R5 K28 ["Y"]
       67 LOADN                            R6 0
       68 JUMPIFNOTLE                      R5 R6 ; [+8]
       70 GETIMPORT                        R6 K31 [UDim2.fromScale]
       72 LOADN                            R7 0
       73 LOADN                            R8 0
       74 CALL                             R6 2 1
       75 MOVE                             R3 R6
       76 JUMP                             ; [+10]
       77 GETIMPORT                        R6 K31 [UDim2.fromScale]
       79 LOADN                            R7 0
       80 GETTABLEKS                       R10 R4 K32 ["textHeight"]
       82 SUBK                             R11 R0 K33 [1]
       83 MUL                              R9 R10 R11
       84 DIV                              R8 R9 R5
       85 CALL                             R6 2 1
       86 MOVE                             R3 R6
       87 SETTABLEKS                       R3 R2 K34 ["Position"]
       89 GETUPVAL                         R3 1
       90 SETTABLEKS                       R3 R2 K0 ["Parent"]
       92 GETUPVAL                         R3 0
       93 SETTABLE                         R2 R3 R0
       94 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R0
        5 JUMPIFEQ                         R3 R1 ; [+5]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R1 R3 R0
        9 SETTABLEKS                       R1 R2 K0 ["Text"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["textObject"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["normalize"]
       10 GETTABLEKS                       R4 R0 K2 ["src"]
       12 JUMPIF                           R4 ; [+2]
       13 GETTABLEKS                       R4 R1 K3 ["Text"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R0 K4 ["lexer"]
       18 JUMPIF                           R4 ; [+1]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R5 R0 K5 ["customLang"]
       22 LOADB                            R6 1
       23 GETTABLEKS                       R7 R0 K6 ["forceUpdate"]
       25 JUMPIFEQKB                       R7 TRUE ; [+12]
       27 LOADB                            R6 1
       28 GETTABLEKS                       R7 R2 K7 ["Lexer"]
       30 JUMPIFNOTEQ                      R4 R7 ; [+7]
       32 GETTABLEKS                       R7 R2 K8 ["CustomLang"]
       34 JUMPIFNOTEQ                      R5 R7 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 GETTABLEKS                       R7 R2 K3 ["Text"]
       40 JUMPIFNOTEQ                      R7 R3 ; [+15]
       42 JUMPIF                           R6 ; [+13]
       43 GETTABLEKS                       R7 R1 K3 ["Text"]
       45 JUMPIFNOTEQ                      R7 R3 ; [+10]
       47 JUMPIFEQKS                       R3 K9 [""] ; [+7]
       49 LOADK                            R9 K10 ["SyntaxHighlights"]
       50 NAMECALL                         R7 R1 K11 ["FindFirstChild"]
       52 CALL                             R7 2 1
       53 JUMPIFEQKNIL                     R7 ; [+2]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R7 R2 K12 ["Labels"]
       58 GETTABLEKS                       R8 R2 K13 ["RichLines"]
       60 SETTABLEKS                       R3 R2 K3 ["Text"]
       62 GETTABLEKS                       R9 R2 K7 ["Lexer"]
       64 JUMPIFEQ                         R4 R9 ; [+15]
       66 GETTABLEKS                       R9 R2 K14 ["Navigator"]
       68 JUMPIFEQKNIL                     R9 ; [+6]
       70 GETTABLEKS                       R9 R2 K14 ["Navigator"]
       72 NAMECALL                         R9 R9 K15 ["Destroy"]
       74 CALL                             R9 1 0
       75 GETUPVAL                         R9 3
       76 MOVE                             R10 R4
       77 CALL                             R9 1 1
       78 SETTABLEKS                       R9 R2 K14 ["Navigator"]
       80 SETTABLEKS                       R4 R2 K7 ["Lexer"]
       82 SETTABLEKS                       R5 R2 K8 ["CustomLang"]
       84 SETTABLEKS                       R3 R1 K3 ["Text"]
       86 JUMPIFNOTEQKS                    R3 K9 [""] ; [+32]
       88 GETTABLEKS                       R9 R2 K14 ["Navigator"]
       90 JUMPIFEQKNIL                     R9 ; [+7]
       92 GETTABLEKS                       R9 R2 K14 ["Navigator"]
       94 LOADK                            R11 K9 [""]
       95 NAMECALL                         R9 R9 K16 ["SetSource"]
       97 CALL                             R9 2 0
       98 GETTABLEKS                       R9 R2 K12 ["Labels"]
      100 GETTABLEKS                       R10 R2 K13 ["RichLines"]
      102 LOADN                            R13 1
      103 LENGTH                           R11 R9
      104 LOADN                            R12 1
      105 FORNPREP                         R11
      106 LOADNIL                          R14
      107 SETTABLE                         R14 R10 R13
      108 GETTABLE                         R14 R9 R13
      109 GETTABLEKS                       R14 R14 K3 ["Text"]
      111 JUMPIFEQKS                       R14 K9 [""] ; [+5]
      113 GETTABLE                         R14 R9 R13
      114 LOADK                            R15 K9 [""]
      115 SETTABLEKS                       R15 R14 K3 ["Text"]
      117 FORNLOOP                         R11
      118 RETURN                           R0 0
      119 NOT                              R9 R6
      120 LOADK                            R12 K10 ["SyntaxHighlights"]
      121 NAMECALL                         R10 R1 K11 ["FindFirstChild"]
      123 CALL                             R10 2 1
      124 JUMPIFNOTEQKNIL                  R10 ; [+20]
      126 GETIMPORT                        R11 K19 [Instance.new]
      128 LOADK                            R12 K20 ["Folder"]
      129 CALL                             R11 1 1
      130 LOADK                            R12 K10 ["SyntaxHighlights"]
      131 SETTABLEKS                       R12 R11 K21 ["Name"]
      133 SETTABLEKS                       R1 R11 K22 ["Parent"]
      135 MOVE                             R10 R11
      136 GETIMPORT                        R12 K25 [table.clear]
      138 MOVE                             R13 R7
      139 CALL                             R12 1 0
      140 GETIMPORT                        R12 K25 [table.clear]
      142 MOVE                             R13 R8
      143 CALL                             R12 1 0
      144 LOADB                            R9 0
      145 GETUPVAL                         R11 4
      146 MOVE                             R12 R1
      147 MOVE                             R13 R2
      148 CALL                             R11 2 1
      149 JUMPIFNOT                        R6 ; [+4]
      150 GETIMPORT                        R12 K25 [table.clear]
      152 MOVE                             R13 R8
      153 CALL                             R12 1 0
      154 NEWCLOSURE                       R12 P0
      155 CAPTURE                          VAL R7
      156 CAPTURE                          REF R10
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R11
      159 GETUPVAL                         R13 1
      160 GETTABLEKS                       R13 R13 K26 ["resumeTokens"]
      162 GETTABLEKS                       R14 R2 K14 ["Navigator"]
      164 MOVE                             R15 R3
      165 MOVE                             R16 R9
      166 CALL                             R13 3 2
      167 GETUPVAL                         R15 1
      168 GETTABLEKS                       R15 R15 K27 ["buildLines"]
      170 DUPTABLE                         R16 K33 [{["src"], ["lexer"], ["tokens"], ["startLine"], ["customLang"], ["alwaysTagText"] = False, ["onLine"]}]
      171 SETTABLEKS                       R3 R16 K2 ["src"]
      173 SETTABLEKS                       R4 R16 K4 ["lexer"]
      175 SETTABLEKS                       R13 R16 K28 ["tokens"]
      177 SETTABLEKS                       R14 R16 K29 ["startLine"]
      179 SETTABLEKS                       R5 R16 K5 ["customLang"]
      181 NEWCLOSURE                       R17 P1
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R8
      184 SETTABLEKS                       R17 R16 K32 ["onLine"]
      186 CALL                             R15 1 1
      187 ADDK                             R16 R15 K34 [1]
      188 GETTABLEKS                       R17 R2 K12 ["Labels"]
      190 GETTABLEKS                       R18 R2 K13 ["RichLines"]
      192 MOVE                             R21 R16
      193 LENGTH                           R19 R17
      194 LOADN                            R20 1
      195 FORNPREP                         R19
      196 LOADNIL                          R22
      197 SETTABLE                         R22 R18 R21
      198 GETTABLE                         R22 R17 R21
      199 GETTABLEKS                       R22 R22 K3 ["Text"]
      201 JUMPIFEQKS                       R22 K9 [""] ; [+5]
      203 GETTABLE                         R22 R17 R21
      204 LOADK                            R23 K9 [""]
      205 SETTABLEKS                       R23 R22 K3 ["Text"]
      207 FORNLOOP                         R19
      208 CLOSEUPVALS                      R10
      209 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SyntaxHighlights"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+4]
        7 NAMECALL                         R1 R0 K2 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["Navigator"]
       13 JUMPIFEQKNIL                     R1 ; [+11]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["Navigator"]
       18 NAMECALL                         R1 R1 K2 ["Destroy"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 1
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K3 ["Navigator"]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 0
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R1 R2
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R2 0
       31 LOADNIL                          R3
       32 SETTABLE                         R3 R1 R2
       33 GETUPVAL                         R1 4
       34 LOADNIL                          R2
       35 LOADNIL                          R3
       36 FORGPREP                         R1
       37 NAMECALL                         R6 R5 K4 ["Disconnect"]
       39 CALL                             R6 1 0
       40 FORGLOOP                         R1 2 ; [-4]
       42 GETIMPORT                        R1 K7 [table.clear]
       44 GETUPVAL                         R2 4
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"textObject", "lexer", "customLang"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["textObject"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K4 ["Lexer"]
        8 SETTABLEKS                       R2 R1 K1 ["lexer"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K5 ["CustomLang"]
       13 SETTABLEKS                       R2 R1 K2 ["customLang"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 JUMP                             ; [+15]
        6 GETTABLEKS                       R2 R0 K0 ["FontFace"]
        8 GETTABLEKS                       R3 R0 K1 ["TextSize"]
       10 GETTABLEKS                       R4 R1 K2 ["Labels"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 SETTABLEKS                       R2 R8 K0 ["FontFace"]
       17 SETTABLEKS                       R3 R8 K1 ["TextSize"]
       19 FORGLOOP                         R4 2 ; [-5]
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R1 0
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 JUMP                             ; [+15]
        6 GETTABLEKS                       R2 R0 K0 ["FontFace"]
        8 GETTABLEKS                       R3 R0 K1 ["TextSize"]
       10 GETTABLEKS                       R4 R1 K2 ["Labels"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 SETTABLEKS                       R2 R8 K0 ["FontFace"]
       17 SETTABLEKS                       R3 R8 K1 ["TextSize"]
       19 FORGLOOP                         R4 2 ; [-5]
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R1 0
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["textObject"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R3 R1
       13 RETURN                           R2 1
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K1 ["RichText"]
       17 GETIMPORT                        R2 K5 [Enum.TextXAlignment.Left]
       19 SETTABLEKS                       R2 R1 K3 ["TextXAlignment"]
       21 GETIMPORT                        R2 K8 [Enum.TextYAlignment.Top]
       23 SETTABLEKS                       R2 R1 K6 ["TextYAlignment"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K9 ["getColor"]
       28 LOADK                            R3 K10 ["background"]
       29 CALL                             R2 1 1
       30 SETTABLEKS                       R2 R1 K11 ["BackgroundColor3"]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K9 ["getColor"]
       35 LOADK                            R3 K12 ["iden"]
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R1 K13 ["TextColor3"]
       39 LOADK                            R2 K14 [0.5]
       40 SETTABLEKS                       R2 R1 K15 ["TextTransparency"]
       42 DUPTABLE                         R2 K24 [{["Text"] = "", ["Labels"], ["RichLines"], ["Lexer"] = , ["CustomLang"], ["Navigator"] = }]
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K18 ["Labels"]
       47 NEWTABLE                         R3 0 0
       49 SETTABLEKS                       R3 R2 K19 ["RichLines"]
       51 GETTABLEKS                       R3 R0 K25 ["customLang"]
       53 SETTABLEKS                       R3 R2 K22 ["CustomLang"]
       55 GETUPVAL                         R3 4
       56 SETTABLE                         R2 R3 R1
       57 NEWTABLE                         R3 0 0
       59 NEWCLOSURE                       R4 P0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          VAL R3
       65 GETUPVAL                         R5 0
       66 SETTABLE                         R4 R5 R1
       67 GETTABLEKS                       R5 R1 K26 ["AncestryChanged"]
       69 NEWCLOSURE                       R7 P1
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 NAMECALL                         R5 R5 K27 ["Connect"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R3 K26 ["AncestryChanged"]
       77 LOADK                            R7 K16 ["Text"]
       78 NAMECALL                         R5 R1 K28 ["GetPropertyChangedSignal"]
       80 CALL                             R5 2 1
       81 NEWCLOSURE                       R7 P2
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 NAMECALL                         R5 R5 K27 ["Connect"]
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R3 K29 ["TextChanged"]
       90 LOADK                            R7 K30 ["TextBounds"]
       91 NAMECALL                         R5 R1 K28 ["GetPropertyChangedSignal"]
       93 CALL                             R5 2 1
       94 NEWCLOSURE                       R7 P3
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R1
       97 NAMECALL                         R5 R5 K27 ["Connect"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R3 K31 ["TextBoundsChanged"]
      102 LOADK                            R7 K32 ["AbsoluteSize"]
      103 NAMECALL                         R5 R1 K28 ["GetPropertyChangedSignal"]
      105 CALL                             R5 2 1
      106 NEWCLOSURE                       R7 P4
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          VAL R1
      109 NAMECALL                         R5 R5 K27 ["Connect"]
      111 CALL                             R5 2 1
      112 SETTABLEKS                       R5 R3 K33 ["AbsoluteSizeChanged"]
      114 LOADK                            R7 K34 ["FontFace"]
      115 NAMECALL                         R5 R1 K28 ["GetPropertyChangedSignal"]
      117 CALL                             R5 2 1
      118 NEWCLOSURE                       R7 P5
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          UPVAL U2
      122 NAMECALL                         R5 R5 K27 ["Connect"]
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R3 K35 ["FontFaceChanged"]
      127 LOADK                            R7 K36 ["TextSize"]
      128 NAMECALL                         R5 R1 K28 ["GetPropertyChangedSignal"]
      130 CALL                             R5 2 1
      131 NEWCLOSURE                       R7 P6
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U4
      134 CAPTURE                          UPVAL U2
      135 NAMECALL                         R5 R5 K27 ["Connect"]
      137 CALL                             R5 2 1
      138 SETTABLEKS                       R5 R3 K37 ["TextSizeChanged"]
      140 GETUPVAL                         R5 1
      141 MOVE                             R6 R0
      142 CALL                             R5 1 0
      143 GETUPVAL                         R5 2
      144 MOVE                             R6 R1
      145 CALL                             R5 1 0
      146 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getColor"]
        3 LOADK                            R1 K1 ["background"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["getColor"]
        8 LOADK                            R2 K2 ["iden"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 SETTABLEKS                       R0 R5 K3 ["BackgroundColor3"]
       16 SETTABLEKS                       R1 R5 K4 ["TextColor3"]
       18 GETTABLEKS                       R7 R6 K5 ["Labels"]
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 SETTABLEKS                       R1 R11 K4 ["TextColor3"]
       25 FORGLOOP                         R7 2 ; [-3]
       27 GETUPVAL                         R7 2
       28 DUPTABLE                         R8 K12 [{["textObject"], ["forceUpdate"] = True, ["src"], ["lexer"], ["customLang"]}]
       29 SETTABLEKS                       R5 R8 K6 ["textObject"]
       31 GETTABLEKS                       R9 R6 K13 ["Text"]
       33 SETTABLEKS                       R9 R8 K9 ["src"]
       35 GETTABLEKS                       R9 R6 K14 ["Lexer"]
       37 SETTABLEKS                       R9 R8 K10 ["lexer"]
       39 GETTABLEKS                       R9 R6 K15 ["CustomLang"]
       41 SETTABLEKS                       R9 R8 K11 ["customLang"]
       43 CALL                             R7 1 0
       44 FORGLOOP                         R2 2 ; [-31]
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["theme"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["richtext"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["lexer"]
       36 CALL                             R3 1 1
       37 NEWTABLE                         R4 0 0
       39 NEWTABLE                         R5 0 0
       41 NEWTABLE                         R6 2 0
       43 DUPCLOSURE                       R7 K9 [PROTO_0]
       44 DUPCLOSURE                       R8 K10 [PROTO_1]
       45 DUPCLOSURE                       R9 K11 [PROTO_2]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R1
       48 DUPCLOSURE                       R10 K12 [PROTO_3]
       49 DUPCLOSURE                       R11 K13 [PROTO_4]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R9
       52 DUPCLOSURE                       R12 K14 [PROTO_5]
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R13 K15 [PROTO_6]
       55 DUPCLOSURE                       R14 K16 [PROTO_7]
       56 DUPCLOSURE                       R15 K17 [PROTO_10]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R14
       61 CAPTURE                          VAL R9
       62 DUPCLOSURE                       R16 K18 [PROTO_18]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R16 R6 K19 ["highlight"]
       70 DUPCLOSURE                       R16 K20 [PROTO_19]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R15
       74 SETTABLEKS                       R16 R6 K21 ["refresh"]
       76 RETURN                           R6 1
