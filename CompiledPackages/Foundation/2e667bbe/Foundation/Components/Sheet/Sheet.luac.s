PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+12]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["current"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["current"]
       12 GETTABLEKS                       R0 R1 K2 ["close"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K0 ["isOpen"]
       19 JUMPIFNOT                        R0 ; [+3]
       20 GETUPVAL                         R0 2
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ViewportDisplaySize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R2 R3 K1 ["X"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R4 K2 ["Y"]
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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R4 K1 ["X"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["AbsoluteSize"]
       12 GETTABLEKS                       R4 R5 K2 ["Y"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClose"]
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
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useState"]
        7 GETTABLEKS                       R5 R2 K1 ["isOpen"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADB                            R4 1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R2 K1 ["isOpen"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K2 ["useRef"]
       19 LOADNIL                          R6
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 3
       22 CALL                             R6 0 1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K0 ["useState"]
       26 JUMPIFNOT                        R6 ; [+13]
       27 GETTABLEKS                       R10 R6 K3 ["AbsoluteSize"]
       29 GETTABLEKS                       R9 R10 K4 ["X"]
       31 GETTABLEKS                       R11 R6 K3 ["AbsoluteSize"]
       33 GETTABLEKS                       R10 R11 K5 ["Y"]
       35 JUMPIFLT                         R10 R9 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 JUMP                             ; [+1]
       40 LOADB                            R8 1
       41 CALL                             R7 1 2
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R9 R10 K0 ["useState"]
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R10 R11 K6 ["ViewportDisplaySize"]
       48 CALL                             R9 1 2
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K7 ["useImperativeHandle"]
       52 GETTABLEKS                       R12 R2 K8 ["sheetRef"]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R14 0 0
       58 CALL                             R11 3 0
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R11 R12 K9 ["useEffect"]
       62 NEWCLOSURE                       R12 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R13 0 1
       68 GETTABLEKS                       R14 R2 K1 ["isOpen"]
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 0
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R11 R12 K9 ["useEffect"]
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R3
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 0
       86 GETUPVAL                         R12 5
       87 GETTABLEKS                       R11 R12 K10 ["useEventConnection"]
       89 GETUPVAL                         R12 4
       90 LOADK                            R14 K6 ["ViewportDisplaySize"]
       91 NAMECALL                         R12 R12 K11 ["GetPropertyChangedSignal"]
       93 CALL                             R12 2 1
       94 NEWCLOSURE                       R13 P3
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U4
       97 NEWTABLE                         R14 0 0
       99 CALL                             R11 3 0
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R11 R12 K9 ["useEffect"]
      103 NEWCLOSURE                       R12 P4
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R8
      106 NEWTABLE                         R13 0 1
      108 MOVE                             R14 R6
      109 SETLIST                          R13 R14 1 [1]
      111 CALL                             R11 2 0
      112 JUMPIF                           R3 ; [+2]
      113 LOADNIL                          R11
      114 RETURN                           R11 1
      115 GETIMPORT                        R11 K14 [table.clone]
      117 MOVE                             R12 R2
      118 CALL                             R11 1 1
      119 LOADNIL                          R12
      120 SETTABLEKS                       R12 R11 K1 ["isOpen"]
      122 SETTABLEKS                       R1 R11 K15 ["ref"]
      124 SETTABLEKS                       R5 R11 K8 ["sheetRef"]
      126 SETTABLEKS                       R9 R11 K16 ["displaySize"]
      128 NEWCLOSURE                       R12 P5
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R12 R11 K17 ["onClose"]
      133 GETIMPORT                        R12 K21 [Enum.DisplaySize.Small]
      135 JUMPIFNOTEQ                      R9 R12 ; [+9]
      137 JUMPIF                           R7 ; [+7]
      138 GETUPVAL                         R13 2
      139 GETTABLEKS                       R12 R13 K22 ["createElement"]
      141 GETUPVAL                         R13 6
      142 MOVE                             R14 R11
      143 CALL                             R12 2 -1
      144 RETURN                           R12 -1
      145 GETTABLEKS                       R12 R2 K23 ["preferCenterSheet"]
      147 JUMPIFNOT                        R12 ; [+7]
      148 GETUPVAL                         R13 2
      149 GETTABLEKS                       R12 R13 K22 ["createElement"]
      151 GETUPVAL                         R13 7
      152 MOVE                             R14 R11
      153 CALL                             R12 2 -1
      154 RETURN                           R12 -1
      155 GETUPVAL                         R13 2
      156 GETTABLEKS                       R12 R13 K22 ["createElement"]
      158 GETUPVAL                         R13 8
      159 MOVE                             R14 R11
      160 CALL                             R12 2 -1
      161 RETURN                           R12 -1

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
       21 GETIMPORT                        R7 K1 [script]
       23 GETTABLEKS                       R6 R7 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K9 ["BottomSheet"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K10 ["SideSheet"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R9 K1 [script]
       41 GETTABLEKS                       R8 R9 K4 ["Parent"]
       43 GETTABLEKS                       R7 R8 K11 ["CenterSheet"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Providers"]
       50 GETTABLEKS                       R9 R10 K13 ["Overlay"]
       52 GETTABLEKS                       R8 R9 K14 ["useOverlay"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R12 R0 K15 ["Utility"]
       59 GETTABLEKS                       R11 R12 K16 ["Wrappers"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R9 R10 K17 ["Services"]
       64 GETTABLEKS                       R8 R9 K18 ["GuiService"]
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R11 R0 K15 ["Utility"]
       70 GETTABLEKS                       R10 R11 K19 ["withDefaults"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R12 R0 K20 ["Enums"]
       77 GETTABLEKS                       R11 R12 K21 ["DialogSize"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETIMPORT                        R14 K1 [script]
       84 GETTABLEKS                       R13 R14 K4 ["Parent"]
       86 GETTABLEKS                       R12 R13 K22 ["Types"]
       88 CALL                             R11 1 1
       89 DUPTABLE                         R12 K24 [{"testId"}]
       90 LOADK                            R13 K25 ["--foundation-sheet"]
       91 SETTABLEKS                       R13 R12 K23 ["testId"]
       93 DUPCLOSURE                       R13 K26 [PROTO_8]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R5
      103 GETTABLEKS                       R14 R2 K27 ["memo"]
      105 GETTABLEKS                       R15 R2 K28 ["forwardRef"]
      107 MOVE                             R16 R13
      108 CALL                             R15 1 -1
      109 CALL                             R14 -1 -1
      110 RETURN                           R14 -1
