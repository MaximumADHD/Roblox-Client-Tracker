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
      101 GETTABLEKS                       R11 R12 K12 ["useLayoutEffect"]
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
      115 GETIMPORT                        R11 K15 [table.clone]
      117 MOVE                             R12 R2
      118 CALL                             R11 1 1
      119 LOADNIL                          R12
      120 SETTABLEKS                       R12 R11 K1 ["isOpen"]
      122 SETTABLEKS                       R1 R11 K16 ["ref"]
      124 SETTABLEKS                       R5 R11 K8 ["sheetRef"]
      126 GETUPVAL                         R13 6
      127 GETTABLEKS                       R12 R13 K17 ["FoundationSideSheetNewWidthCalculation"]
      129 JUMPIFNOT                        R12 ; [+4]
      130 GETUPVAL                         R13 6
      131 GETTABLEKS                       R12 R13 K18 ["FoundationSideSheetFixNewWidth"]
      133 JUMPIFNOT                        R12 ; [+2]
      134 SETTABLEKS                       R9 R11 K19 ["displaySize"]
      136 NEWCLOSURE                       R12 P5
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R12 R11 K20 ["onClose"]
      141 GETIMPORT                        R12 K24 [Enum.DisplaySize.Small]
      143 JUMPIFNOTEQ                      R9 R12 ; [+9]
      145 JUMPIF                           R7 ; [+7]
      146 GETUPVAL                         R13 2
      147 GETTABLEKS                       R12 R13 K25 ["createElement"]
      149 GETUPVAL                         R13 7
      150 MOVE                             R14 R11
      151 CALL                             R12 2 -1
      152 RETURN                           R12 -1
      153 GETTABLEKS                       R12 R2 K26 ["preferCenterSheet"]
      155 JUMPIFNOT                        R12 ; [+7]
      156 GETUPVAL                         R13 2
      157 GETTABLEKS                       R12 R13 K25 ["createElement"]
      159 GETUPVAL                         R13 8
      160 MOVE                             R14 R11
      161 CALL                             R12 2 -1
      162 RETURN                           R12 -1
      163 GETUPVAL                         R13 2
      164 GETTABLEKS                       R12 R13 K25 ["createElement"]
      166 GETUPVAL                         R13 9
      167 MOVE                             R14 R11
      168 CALL                             R12 2 -1
      169 RETURN                           R12 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K11 ["BottomSheet"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K12 ["CenterSheet"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R9 R10 K4 ["Parent"]
       50 GETTABLEKS                       R8 R9 K13 ["SideSheet"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Providers"]
       57 GETTABLEKS                       R10 R11 K15 ["Overlay"]
       59 GETTABLEKS                       R9 R10 K16 ["useOverlay"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R13 R0 K9 ["Utility"]
       66 GETTABLEKS                       R12 R13 K17 ["Wrappers"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R10 R11 K18 ["Services"]
       71 GETTABLEKS                       R9 R10 K19 ["GuiService"]
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R12 R0 K20 ["Enums"]
       77 GETTABLEKS                       R11 R12 K21 ["DialogSize"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R13 R0 K9 ["Utility"]
       84 GETTABLEKS                       R12 R13 K22 ["withDefaults"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETIMPORT                        R15 K1 [script]
       91 GETTABLEKS                       R14 R15 K4 ["Parent"]
       93 GETTABLEKS                       R13 R14 K23 ["Types"]
       95 CALL                             R12 1 1
       96 DUPTABLE                         R13 K25 [{"testId"}]
       97 LOADK                            R14 K26 ["--foundation-sheet"]
       98 SETTABLEKS                       R14 R13 K24 ["testId"]
      100 DUPCLOSURE                       R14 K27 [PROTO_8]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 GETTABLEKS                       R15 R2 K28 ["memo"]
      113 GETTABLEKS                       R16 R2 K29 ["forwardRef"]
      115 MOVE                             R17 R14
      116 CALL                             R16 1 -1
      117 CALL                             R15 -1 -1
      118 RETURN                           R15 -1
