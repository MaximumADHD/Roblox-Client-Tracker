PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
        4 GETIMPORT                        R0 K2 [table.insert]
        6 CALL                             R0 2 0
        7 NEWTABLE                         R0 0 0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 3
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["tag"] = "auto-xy row align-x-left", ["key"], ["LayoutOrder"]}]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K7 [tostring]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K3 ["key"]
       12 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       14 MOVE                             R5 R0
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

PROTO_2:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+4]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADNIL                          R8
       15 NEWCLOSURE                       R9 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R3
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R1
       20 LENGTH                           R10 R0
       21 JUMPIFLE                         R6 R10 ; [+2]
       23 JUMPIFNOT                        R5 ; [+100]
       24 LOADN                            R10 100
       25 JUMPIFNOTLT                      R7 R10 ; [+98]
       27 MOVE                             R10 R5
       28 JUMPIF                           R10 ; [+1]
       29 GETTABLE                         R10 R0 R6
       30 GETUPVAL                         R11 0
       31 JUMPIFNOTEQ                      R10 R11 ; [+13]
       33 ADDK                             R6 R6 K1 [1]
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       36 MOVE                             R12 R2
       37 MOVE                             R13 R3
       38 GETIMPORT                        R11 K4 [table.insert]
       40 CALL                             R11 2 0
       41 NEWTABLE                         R3 0 0
       43 MOVE                             R4 R1
       44 JUMP                             ; [+78]
       45 NAMECALL                         R11 R10 K5 ["getWidth"]
       47 CALL                             R11 1 1
       48 LENGTH                           R8 R3
       49 JUMPIFNOTLE                      R11 R4 ; [+15]
       51 MOVE                             R13 R3
       52 MOVE                             R16 R6
       53 MOVE                             R17 R8
       54 NAMECALL                         R14 R10 K6 ["render"]
       56 CALL                             R14 3 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R12 K4 [table.insert]
       60 CALL                             R12 -1 0
       61 SUB                              R4 R4 R11
       62 LOADNIL                          R5
       63 ADDK                             R6 R6 K1 [1]
       64 JUMP                             ; [+57]
       65 MOVE                             R14 R4
       66 NAMECALL                         R12 R10 K7 ["split"]
       68 CALL                             R12 2 2
       69 NAMECALL                         R14 R12 K5 ["getWidth"]
       71 CALL                             R14 1 1
       72 JUMPIFNOTLE                      R14 R4 ; [+13]
       74 MOVE                             R15 R3
       75 MOVE                             R18 R6
       76 MOVE                             R19 R8
       77 NAMECALL                         R16 R12 K6 ["render"]
       79 CALL                             R16 3 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R14 K4 [table.insert]
       83 CALL                             R14 -1 0
       84 MOVE                             R5 R13
       85 JUMP                             ; [+26]
       86 LENGTH                           R14 R3
       87 JUMPIFNOTEQKN                    R14 K0 [0] ; [+23]
       89 GETTABLEKS                       R14 R10 K8 ["canForceSplit"]
       91 JUMPIFNOT                        R14 ; [+7]
       92 MOVE                             R16 R4
       93 LOADB                            R17 1
       94 NAMECALL                         R14 R10 K7 ["split"]
       96 CALL                             R14 3 2
       97 MOVE                             R12 R14
       98 MOVE                             R13 R15
       99 MOVE                             R15 R3
      100 MOVE                             R18 R6
      101 MOVE                             R19 R8
      102 NAMECALL                         R16 R12 K6 ["render"]
      104 CALL                             R16 3 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R14 K4 [table.insert]
      108 CALL                             R14 -1 0
      109 MOVE                             R5 R13
      110 JUMP                             ; [+1]
      111 MOVE                             R5 R10
      112 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
      114 MOVE                             R15 R2
      115 MOVE                             R16 R3
      116 GETIMPORT                        R14 K4 [table.insert]
      118 CALL                             R14 2 0
      119 NEWTABLE                         R3 0 0
      121 MOVE                             R4 R1
      122 ADDK                             R7 R7 K1 [1]
      123 JUMPBACK                         ; [-104]
      124 JUMPIFNOTEQKN                    R7 K9 [100] ; [+16]
      126 GETUPVAL                         R10 1
      127 JUMPIFNOT                        R10 ; [+13]
      128 GETIMPORT                        R10 K11 [warn]
      130 LOADK                            R11 K12 ["InlineLayout: trying to wrap text across multiple lines and iterations cap is reached. Layout may be imperfect"]
      131 LOADK                            R13 K13 ["Desired width: %*"]
      132 MOVE                             R15 R1
      133 NAMECALL                         R13 R13 K14 ["format"]
      135 CALL                             R13 2 1
      136 MOVE                             R12 R13
      137 GETIMPORT                        R13 K17 [debug.traceback]
      139 CALL                             R13 0 -1
      140 CALL                             R10 -1 0
      141 LENGTH                           R10 R3
      142 LOADN                            R11 0
      143 JUMPIFNOTLT                      R11 R10 ; [+8]
      145 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
      147 MOVE                             R11 R2
      148 MOVE                             R12 R3
      149 GETIMPORT                        R10 K4 [table.insert]
      151 CALL                             R10 2 0
      152 GETUPVAL                         R10 2
      153 MOVE                             R11 R2
      154 DUPCLOSURE                       R12 K18 [PROTO_1]
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          UPVAL U4
      157 CALL                             R10 2 -1
      158 CLOSEUPVALS                      R3
      159 RETURN                           R10 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R0 R0 K2 ["X"]
       13 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["Elements"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["current"]
       24 GETTABLEKS                       R3 R3 K1 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R3 K2 ["X"]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        6 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 NEWTABLE                         R4 0 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 3
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 1
       21 GETTABLEKS                       R8 R0 K2 ["Elements"]
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 5
       27 MOVE                             R7 R5
       28 NEWTABLE                         R8 0 1
       30 MOVE                             R9 R5
       31 SETLIST                          R8 R9 1 [1]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K3 ["createElement"]
       37 GETUPVAL                         R7 7
       38 GETTABLEKS                       R7 R7 K4 ["Provider"]
       40 LOADNIL                          R8
       41 GETUPVAL                         R9 6
       42 GETTABLEKS                       R9 R9 K3 ["createElement"]
       44 GETUPVAL                         R10 8
       45 DUPTABLE                         R11 K10 [{["onAbsoluteSizeChanged"], ["ref"], ["tag"] = "size-full-0 auto-y", ["layout"]}]
       46 SETTABLEKS                       R5 R11 K5 ["onAbsoluteSizeChanged"]
       48 SETTABLEKS                       R1 R11 K6 ["ref"]
       50 DUPTABLE                         R12 K14 [{"FillDirection", "HorizontalAlignment", "Padding"}]
       51 GETIMPORT                        R13 K17 [Enum.FillDirection.Vertical]
       53 SETTABLEKS                       R13 R12 K11 ["FillDirection"]
       55 GETTABLEKS                       R13 R0 K12 ["HorizontalAlignment"]
       57 JUMPIF                           R13 ; [+2]
       58 GETIMPORT                        R13 K19 [Enum.HorizontalAlignment.Left]
       60 SETTABLEKS                       R13 R12 K12 ["HorizontalAlignment"]
       62 GETTABLEKS                       R13 R0 K20 ["VerticalPadding"]
       64 JUMPIF                           R13 ; [+8]
       65 GETIMPORT                        R13 K23 [UDim.new]
       67 LOADN                            R14 0
       68 GETTABLEKS                       R15 R2 K24 ["Gap"]
       70 GETTABLEKS                       R15 R15 K25 ["Small"]
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K13 ["Padding"]
       75 SETTABLEKS                       R12 R11 K9 ["layout"]
       77 MOVE                             R12 R3
       78 CALL                             R9 3 -1
       79 CALL                             R6 -1 -1
       80 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K9 ["useCallback"]
       23 GETTABLEKS                       R5 R3 K10 ["useRef"]
       25 GETTABLEKS                       R6 R3 K11 ["useState"]
       27 GETTABLEKS                       R7 R3 K12 ["useEffect"]
       29 GETIMPORT                        R8 K6 [require]
       31 GETTABLEKS                       R9 R1 K13 ["Dash"]
       33 CALL                             R8 1 1
       34 GETTABLEKS                       R9 R8 K14 ["map"]
       36 GETIMPORT                        R10 K6 [require]
       38 GETTABLEKS                       R11 R0 K2 ["Components"]
       40 GETTABLEKS                       R11 R11 K15 ["InlineLayout"]
       42 GETTABLEKS                       R11 R11 K16 ["InlineLayoutElements"]
       44 GETTABLEKS                       R11 R11 K17 ["RenderableInlineElement"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R0 K2 ["Components"]
       51 GETTABLEKS                       R12 R12 K15 ["InlineLayout"]
       53 GETTABLEKS                       R12 R12 K16 ["InlineLayoutElements"]
       55 GETTABLEKS                       R12 R12 K18 ["HardBreakElement"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R13 R0 K2 ["Components"]
       62 GETTABLEKS                       R13 R13 K15 ["InlineLayout"]
       64 GETTABLEKS                       R13 R13 K16 ["InlineLayoutElements"]
       66 GETTABLEKS                       R13 R13 K19 ["HoverContext"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R2 K20 ["View"]
       71 GETIMPORT                        R14 K22 [game]
       73 LOADK                            R16 K23 ["FFlagDebugInlineLayout"]
       74 LOADB                            R17 0
       75 NAMECALL                         R14 R14 K24 ["DefineFastFlag"]
       77 CALL                             R14 3 1
       78 DUPCLOSURE                       R15 K25 [PROTO_2]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R13
       84 DUPCLOSURE                       R16 K26 [PROTO_4]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 RETURN                           R16 1
