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
        4 DUPTABLE                         R4 K4 [{"tag", "key", "LayoutOrder"}]
        5 NEWTABLE                         R5 2 0
        7 GETUPVAL                         R7 2
        8 CALL                             R7 0 1
        9 NOT                              R6 R7
       10 SETTABLEKS                       R6 R5 K5 ["auto-xy row align-x-center"]
       12 GETUPVAL                         R6 2
       13 CALL                             R6 0 1
       14 SETTABLEKS                       R6 R5 K6 ["auto-y row align-x-left"]
       16 SETTABLEKS                       R5 R4 K1 ["tag"]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K8 [tostring]
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K2 ["key"]
       25 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       27 MOVE                             R5 R0
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

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
      157 CAPTURE                          UPVAL U5
      158 CALL                             R10 2 -1
      159 CLOSEUPVALS                      R3
      160 RETURN                           R10 -1

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
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R6 0 1
       15 GETTABLEKS                       R7 R0 K0 ["Elements"]
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 4
       21 MOVE                             R6 R4
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R4
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K1 ["createElement"]
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K2 ["Provider"]
       34 LOADNIL                          R7
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K1 ["createElement"]
       38 GETUPVAL                         R9 7
       39 DUPTABLE                         R10 K6 [{"onAbsoluteSizeChanged", "ref", "tag"}]
       40 SETTABLEKS                       R4 R10 K3 ["onAbsoluteSizeChanged"]
       42 SETTABLEKS                       R1 R10 K4 ["ref"]
       44 NEWTABLE                         R11 2 0
       46 LOADB                            R12 1
       47 SETTABLEKS                       R12 R11 K7 ["size-full-0 auto-y col gap-small"]
       49 GETUPVAL                         R12 8
       50 CALL                             R12 0 1
       51 SETTABLEKS                       R12 R11 K8 ["flex-x-fill"]
       53 SETTABLEKS                       R11 R10 K5 ["tag"]
       55 MOVE                             R11 R2
       56 CALL                             R8 3 -1
       57 CALL                             R5 -1 -1
       58 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["useCallback"]
       27 GETTABLEKS                       R5 R3 K11 ["useRef"]
       29 GETTABLEKS                       R6 R3 K12 ["useState"]
       31 GETTABLEKS                       R7 R3 K13 ["useEffect"]
       33 GETIMPORT                        R8 K7 [require]
       35 GETTABLEKS                       R9 R1 K14 ["Dash"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R8 K15 ["map"]
       40 GETIMPORT                        R10 K7 [require]
       42 GETTABLEKS                       R11 R0 K2 ["Components"]
       44 GETTABLEKS                       R11 R11 K16 ["InlineLayout"]
       46 GETTABLEKS                       R11 R11 K17 ["InlineLayoutElements"]
       48 GETTABLEKS                       R11 R11 K18 ["RenderableInlineElement"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K7 [require]
       53 GETTABLEKS                       R12 R0 K2 ["Components"]
       55 GETTABLEKS                       R12 R12 K16 ["InlineLayout"]
       57 GETTABLEKS                       R12 R12 K19 ["HardBreakElement"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K7 [require]
       62 GETTABLEKS                       R13 R0 K2 ["Components"]
       64 GETTABLEKS                       R13 R13 K16 ["InlineLayout"]
       66 GETTABLEKS                       R13 R13 K17 ["InlineLayoutElements"]
       68 GETTABLEKS                       R13 R13 K20 ["HoverContext"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R13 R2 K21 ["View"]
       73 GETIMPORT                        R14 K7 [require]
       75 GETTABLEKS                       R15 R0 K22 ["SharedFlags"]
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R14 R14 K23 ["get"]
       80 LOADK                            R15 K24 ["FFlagDebugMarkdown"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K7 [require]
       84 GETTABLEKS                       R16 R0 K25 ["Flags"]
       86 GETTABLEKS                       R16 R16 K26 ["FFlagMarkdownStudioThemeColors"]
       88 CALL                             R15 1 1
       89 DUPCLOSURE                       R16 K27 [PROTO_2]
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R15
       96 DUPCLOSURE                       R17 K28 [PROTO_4]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R15
      106 RETURN                           R17 1
