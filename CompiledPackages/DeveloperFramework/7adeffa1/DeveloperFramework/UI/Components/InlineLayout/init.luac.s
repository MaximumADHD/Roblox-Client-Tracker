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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 4 0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["Tag"]
        9 LOADK                            R6 K2 ["X-Fit X-Row X-Middle"]
       10 SETTABLE                         R6 R4 R5
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K4 [tostring]
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K5 ["key"]
       18 SETTABLEKS                       R1 R4 K6 ["LayoutOrder"]
       20 MOVE                             R5 R0
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 GETTABLEKS                       R1 R2 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R0 R1 K2 ["X"]
       13 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K4 ["Elements"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K0 ["current"]
       24 GETTABLEKS                       R4 R5 K1 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R4 K2 ["X"]
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
        8 JUMPIF                           R4 ; [+5]
        9 GETIMPORT                        R4 K1 [warn]
       11 LOADK                            R5 K2 ["Can't use InlineLayout in old Roact, please upgrade your plugin to React 17"]
       12 CALL                             R4 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 3
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R0 K3 ["Elements"]
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R4
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R4
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R6 6
       36 GETTABLEKS                       R5 R6 K4 ["createElement"]
       38 GETUPVAL                         R7 7
       39 GETTABLEKS                       R6 R7 K5 ["Provider"]
       41 LOADNIL                          R7
       42 GETUPVAL                         R9 6
       43 GETTABLEKS                       R8 R9 K4 ["createElement"]
       45 GETUPVAL                         R9 8
       46 NEWTABLE                         R10 4 0
       48 GETUPVAL                         R13 6
       49 GETTABLEKS                       R12 R13 K6 ["Change"]
       51 GETTABLEKS                       R11 R12 K7 ["AbsoluteSize"]
       53 SETTABLE                         R4 R10 R11
       54 SETTABLEKS                       R1 R10 K8 ["ref"]
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R11 R12 K9 ["Tag"]
       59 GETTABLEKS                       R13 R0 K11 ["OverrideTags"]
       61 ORK                              R12 R13 K10 ["X-FitY X-ColumnS"]
       62 SETTABLE                         R12 R10 R11
       63 MOVE                             R11 R2
       64 CALL                             R8 3 -1
       65 CALL                             R5 -1 -1
       66 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K9 ["Tag"]
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R6 R0 K4 ["Parent"]
       31 GETTABLEKS                       R5 R6 K11 ["Dash"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K12 ["map"]
       36 GETTABLEKS                       R6 R1 K13 ["useCallback"]
       38 GETTABLEKS                       R7 R1 K14 ["useRef"]
       40 GETTABLEKS                       R8 R1 K15 ["useState"]
       42 GETTABLEKS                       R9 R1 K16 ["useEffect"]
       44 GETIMPORT                        R10 K6 [require]
       46 GETTABLEKS                       R13 R0 K2 ["UI"]
       48 GETTABLEKS                       R12 R13 K17 ["Components"]
       50 GETTABLEKS                       R11 R12 K18 ["Pane"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R12 R13 K19 ["RenderableInlineElement"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETIMPORT                        R14 K1 [script]
       64 GETTABLEKS                       R13 R14 K20 ["HardBreakElement"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETIMPORT                        R15 K1 [script]
       71 GETTABLEKS                       R14 R15 K21 ["HoverContext"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K23 [game]
       76 LOADK                            R16 K24 ["DebugDeveloperFrameworkSdk"]
       77 NAMECALL                         R14 R14 K25 ["GetFastFlag"]
       79 CALL                             R14 2 1
       80 DUPCLOSURE                       R15 K26 [PROTO_2]
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R10
       86 DUPCLOSURE                       R16 K27 [PROTO_4]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R10
       96 RETURN                           R16 1
