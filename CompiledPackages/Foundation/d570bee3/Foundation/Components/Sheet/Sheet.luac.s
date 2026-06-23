PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+12]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETTABLEKS                       R0 R0 K2 ["close"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["isOpen"]
       19 JUMPIFNOT                        R0 ; [+3]
       20 GETUPVAL                         R0 2
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ViewportDisplaySize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K2 ["Y"]
       11 JUMPIFLT                         R3 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+28]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K1 ["X"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["AbsoluteSize"]
       12 GETTABLEKS                       R4 R4 K2 ["Y"]
       14 JUMPIFLT                         R4 R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K0 ["AbsoluteSize"]
       21 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       23 CALL                             R1 2 1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 NAMECALL                         R1 R1 K4 ["Connect"]
       29 CALL                             R1 2 1
       30 MOVE                             R0 R1
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          REF R0
       33 CLOSEUPVALS                      R0
       34 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 GETTABLEKS                       R5 R2 K1 ["isOpen"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADB                            R4 1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R2 K1 ["isOpen"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K2 ["useRef"]
       19 LOADNIL                          R6
       20 CALL                             R5 1 1
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K3 ["FoundationOverlayKeyboardAwarenessHardened"]
       24 JUMPIFNOT                        R7 ; [+3]
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 1
       27 JUMP                             ; [+2]
       28 GETUPVAL                         R6 5
       29 CALL                             R6 0 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K0 ["useState"]
       33 JUMPIFNOT                        R6 ; [+13]
       34 GETTABLEKS                       R9 R6 K4 ["AbsoluteSize"]
       36 GETTABLEKS                       R9 R9 K5 ["X"]
       38 GETTABLEKS                       R10 R6 K4 ["AbsoluteSize"]
       40 GETTABLEKS                       R10 R10 K6 ["Y"]
       42 JUMPIFLT                         R10 R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 JUMP                             ; [+1]
       47 LOADB                            R8 1
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K0 ["useState"]
       52 GETUPVAL                         R10 6
       53 GETTABLEKS                       R10 R10 K7 ["ViewportDisplaySize"]
       55 CALL                             R9 1 2
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K8 ["useImperativeHandle"]
       59 GETTABLEKS                       R12 R2 K9 ["sheetRef"]
       61 NEWCLOSURE                       R13 P0
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R14 0 0
       65 CALL                             R11 3 0
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       69 NEWCLOSURE                       R12 P1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R13 0 1
       75 GETTABLEKS                       R14 R2 K1 ["isOpen"]
       77 SETLIST                          R13 R14 1 [1]
       79 CALL                             R11 2 0
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       83 NEWCLOSURE                       R12 P2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 NEWTABLE                         R13 0 1
       89 MOVE                             R14 R3
       90 SETLIST                          R13 R14 1 [1]
       92 CALL                             R11 2 0
       93 GETUPVAL                         R11 7
       94 GETTABLEKS                       R11 R11 K11 ["useEventConnection"]
       96 GETUPVAL                         R12 6
       97 LOADK                            R14 K7 ["ViewportDisplaySize"]
       98 NAMECALL                         R12 R12 K12 ["GetPropertyChangedSignal"]
      100 CALL                             R12 2 1
      101 NEWCLOSURE                       R13 P3
      102 CAPTURE                          VAL R10
      103 CAPTURE                          UPVAL U6
      104 NEWTABLE                         R14 0 0
      106 CALL                             R11 3 0
      107 GETUPVAL                         R11 2
      108 GETTABLEKS                       R11 R11 K13 ["useLayoutEffect"]
      110 NEWCLOSURE                       R12 P4
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R8
      113 NEWTABLE                         R13 0 1
      115 MOVE                             R14 R6
      116 SETLIST                          R13 R14 1 [1]
      118 CALL                             R11 2 0
      119 JUMPIF                           R3 ; [+2]
      120 LOADNIL                          R11
      121 RETURN                           R11 1
      122 GETIMPORT                        R11 K16 [table.clone]
      124 MOVE                             R12 R2
      125 CALL                             R11 1 1
      126 LOADNIL                          R12
      127 SETTABLEKS                       R12 R11 K1 ["isOpen"]
      129 SETTABLEKS                       R1 R11 K17 ["ref"]
      131 SETTABLEKS                       R5 R11 K9 ["sheetRef"]
      133 SETTABLEKS                       R9 R11 K18 ["displaySize"]
      135 NEWCLOSURE                       R12 P5
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R12 R11 K19 ["onClose"]
      140 GETIMPORT                        R12 K23 [Enum.DisplaySize.Small]
      142 JUMPIFNOTEQ                      R9 R12 ; [+9]
      144 JUMPIF                           R7 ; [+7]
      145 GETUPVAL                         R12 2
      146 GETTABLEKS                       R12 R12 K24 ["createElement"]
      148 GETUPVAL                         R13 8
      149 MOVE                             R14 R11
      150 CALL                             R12 2 -1
      151 RETURN                           R12 -1
      152 GETTABLEKS                       R12 R2 K25 ["preferCenterSheet"]
      154 JUMPIFNOT                        R12 ; [+7]
      155 GETUPVAL                         R12 2
      156 GETTABLEKS                       R12 R12 K24 ["createElement"]
      158 GETUPVAL                         R13 9
      159 MOVE                             R14 R11
      160 CALL                             R12 2 -1
      161 RETURN                           R12 -1
      162 GETUPVAL                         R12 2
      163 GETTABLEKS                       R12 R12 K24 ["createElement"]
      165 GETUPVAL                         R13 10
      166 MOVE                             R14 R11
      167 CALL                             R12 2 -1
      168 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["BottomSheet"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["CenterSheet"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K13 ["SideSheet"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K14 ["Providers"]
       57 GETTABLEKS                       R9 R9 K15 ["Overlay"]
       59 GETTABLEKS                       R9 R9 K16 ["useOverlay"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Providers"]
       66 GETTABLEKS                       R10 R10 K15 ["Overlay"]
       68 GETTABLEKS                       R10 R10 K17 ["useScreen"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K9 ["Utility"]
       75 GETTABLEKS                       R11 R11 K18 ["Wrappers"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R10 R10 K19 ["Services"]
       80 GETTABLEKS                       R10 R10 K20 ["GuiService"]
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K21 ["Enums"]
       86 GETTABLEKS                       R12 R12 K22 ["DialogSize"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K9 ["Utility"]
       93 GETTABLEKS                       R13 R13 K23 ["withDefaults"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETIMPORT                        R14 K1 [script]
      100 GETTABLEKS                       R14 R14 K4 ["Parent"]
      102 GETTABLEKS                       R14 R14 K24 ["Types"]
      104 CALL                             R13 1 1
      105 DUPTABLE                         R14 K26 [{"testId"}]
      106 LOADK                            R15 K27 ["--foundation-sheet"]
      107 SETTABLEKS                       R15 R14 K25 ["testId"]
      109 DUPCLOSURE                       R15 K28 [PROTO_8]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 GETTABLEKS                       R16 R2 K29 ["memo"]
      123 GETTABLEKS                       R17 R2 K30 ["forwardRef"]
      125 MOVE                             R18 R15
      126 CALL                             R17 1 -1
      127 CALL                             R16 -1 -1
      128 RETURN                           R16 -1
