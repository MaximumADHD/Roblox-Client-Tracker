PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+43]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETUPVAL                         R7 0
        8 FASTCALL1                        TYPEOF R7 ; [+2]
        9 GETIMPORT                        R6 K1 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K2 ["Instance"] ; [+7]
       14 GETUPVAL                         R5 0
       15 MOVE                             R7 R4
       16 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R5 2 1
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R5 0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K4 ["current"]
       28 GETUPVAL                         R11 3
       29 FASTCALL1                        TYPE R11 ; [+2]
       30 GETIMPORT                        R10 K6 [type]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+4]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          UPVAL U3
       37 JUMP                             ; [+1]
       38 GETUPVAL                         R9 3
       39 NAMECALL                         R7 R5 K8 ["Connect"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R6 R4
       43 FORGLOOP                         R0 2 ; [-37]
       45 NEWCLOSURE                       R0 P1
       46 CAPTURE                          UPVAL U2
       47 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useRef"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["useLayoutEffect"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 2
       16 MOVE                             R7 R0
       17 MOVE                             R8 R2
       18 SETLIST                          R6 R7 2 [1]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 3
        7 JUMPIF                           R0 ; [+4]
        8 GETUPVAL                         R0 4
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K0 ["AbsolutePosition"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K1 ["AbsoluteSize"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K0 ["AbsolutePosition"]
       27 GETIMPORT                        R5 K4 [Rect.new]
       29 MOVE                             R6 R0
       30 ADD                              R7 R0 R1
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K4 [Rect.new]
       34 MOVE                             R7 R4
       35 ADD                              R8 R4 R3
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R7 R8 K5 ["isOnScreen"]
       40 MOVE                             R8 R5
       41 MOVE                             R9 R6
       42 CALL                             R7 2 1
       43 JUMPIF                           R7 ; [+4]
       44 GETUPVAL                         R7 4
       45 LOADB                            R8 0
       46 CALL                             R7 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R9 6
       49 FASTCALL1                        TYPE R9 ; [+2]
       50 GETIMPORT                        R8 K7 [type]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKS                    R8 K8 ["table"] ; [+5]
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R7 R8 K9 ["position"]
       58 JUMP                             ; [+1]
       59 GETUPVAL                         R7 6
       60 GETUPVAL                         R10 6
       61 FASTCALL1                        TYPE R10 ; [+2]
       62 GETIMPORT                        R9 K7 [type]
       64 CALL                             R9 1 1
       65 JUMPIFNOTEQKS                    R9 K8 ["table"] ; [+5]
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R8 R9 K10 ["offset"]
       70 JUMP                             ; [+1]
       71 LOADN                            R8 0
       72 GETUPVAL                         R9 7
       73 LOADN                            R10 0
       74 GETUPVAL                         R12 7
       75 FASTCALL1                        TYPE R12 ; [+2]
       76 GETIMPORT                        R11 K7 [type]
       78 CALL                             R11 1 1
       79 JUMPIFNOTEQKS                    R11 K8 ["table"] ; [+7]
       81 GETUPVAL                         R11 7
       82 GETTABLEKS                       R9 R11 K9 ["position"]
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R10 R11 K10 ["offset"]
       87 GETUPVAL                         R12 8
       88 ORK                              R11 R12 K11 [0]
       89 GETUPVAL                         R13 5
       90 GETTABLEKS                       R12 R13 K12 ["calculatePopoverBounds"]
       92 MOVE                             R13 R7
       93 MOVE                             R14 R8
       94 MOVE                             R15 R10
       95 MOVE                             R16 R11
       96 MOVE                             R17 R2
       97 CALL                             R12 5 1
       98 GETUPVAL                         R14 5
       99 GETTABLEKS                       R13 R14 K13 ["calculateSide"]
      101 MOVE                             R14 R7
      102 MOVE                             R15 R5
      103 MOVE                             R16 R6
      104 MOVE                             R17 R12
      105 CALL                             R13 4 1
      106 MOVE                             R7 R13
      107 GETUPVAL                         R14 5
      108 GETTABLEKS                       R13 R14 K14 ["calculatePositions"]
      110 MOVE                             R14 R7
      111 MOVE                             R15 R8
      112 MOVE                             R16 R9
      113 MOVE                             R17 R10
      114 MOVE                             R18 R5
      115 MOVE                             R19 R6
      116 MOVE                             R20 R11
      117 MOVE                             R21 R2
      118 CALL                             R13 8 3
      119 GETUPVAL                         R16 9
      120 GETIMPORT                        R17 K17 [UDim2.fromOffset]
      122 GETTABLEKS                       R18 R2 K18 ["X"]
      124 GETTABLEKS                       R19 R2 K19 ["Y"]
      126 CALL                             R17 2 -1
      127 CALL                             R16 -1 0
      128 GETUPVAL                         R16 10
      129 MOVE                             R17 R3
      130 CALL                             R16 1 0
      131 GETUPVAL                         R16 11
      132 ADD                              R17 R14 R13
      133 CALL                             R16 1 0
      134 GETUPVAL                         R16 12
      135 MOVE                             R17 R13
      136 CALL                             R16 1 0
      137 GETUPVAL                         R16 13
      138 MOVE                             R17 R15
      139 CALL                             R16 1 0
      140 GETUPVAL                         R16 4
      141 LOADB                            R17 1
      142 CALL                             R16 1 0
      143 GETUPVAL                         R17 2
      144 GETTABLEKS                       R16 R17 K0 ["AbsolutePosition"]
      146 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["useBinding"]
        3 GETIMPORT                        R8 K3 [Vector2.new]
        5 CALL                             R8 0 -1
        6 CALL                             R7 -1 2
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R9 R10 K0 ["useBinding"]
       10 LOADB                            R10 1
       11 CALL                             R9 1 2
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R11 R12 K0 ["useBinding"]
       15 GETIMPORT                        R12 K5 [UDim2.new]
       17 CALL                             R12 0 -1
       18 CALL                             R11 -1 2
       19 GETUPVAL                         R14 0
       20 GETTABLEKS                       R13 R14 K0 ["useBinding"]
       22 GETIMPORT                        R14 K3 [Vector2.new]
       24 CALL                             R14 0 -1
       25 CALL                             R13 -1 2
       26 GETUPVAL                         R16 0
       27 GETTABLEKS                       R15 R16 K0 ["useBinding"]
       29 GETIMPORT                        R16 K3 [Vector2.new]
       31 CALL                             R16 0 -1
       32 CALL                             R15 -1 2
       33 GETUPVAL                         R18 0
       34 GETTABLEKS                       R17 R18 K0 ["useBinding"]
       36 GETIMPORT                        R18 K3 [Vector2.new]
       38 LOADN                            R19 0
       39 LOADN                            R20 0
       40 CALL                             R18 2 -1
       41 CALL                             R17 -1 2
       42 GETUPVAL                         R20 0
       43 GETTABLEKS                       R19 R20 K6 ["useRef"]
       45 DUPCLOSURE                       R20 K7 [PROTO_4]
       46 CALL                             R19 1 1
       47 GETUPVAL                         R21 0
       48 GETTABLEKS                       R20 R21 K8 ["useCallback"]
       50 NEWCLOSURE                       R21 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R10
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R16
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R18
       65 NEWTABLE                         R22 0 7
       67 MOVE                             R23 R0
       68 MOVE                             R24 R1
       69 MOVE                             R25 R2
       70 MOVE                             R26 R3
       71 MOVE                             R27 R4
       72 MOVE                             R28 R5
       73 MOVE                             R29 R6
       74 SETLIST                          R22 R23 7 [1]
       76 CALL                             R20 2 1
       77 SETTABLEKS                       R20 R19 K9 ["current"]
       79 GETUPVAL                         R21 2
       80 MOVE                             R22 R1
       81 NEWTABLE                         R23 0 2
       83 LOADK                            R24 K10 ["AbsolutePosition"]
       84 LOADK                            R25 K11 ["AbsoluteSize"]
       85 SETLIST                          R23 R24 2 [1]
       87 MOVE                             R24 R19
       88 CALL                             R21 3 0
       89 GETUPVAL                         R21 2
       90 MOVE                             R22 R2
       91 NEWTABLE                         R23 0 1
       93 LOADK                            R24 K11 ["AbsoluteSize"]
       94 SETLIST                          R23 R24 1 [1]
       96 MOVE                             R24 R19
       97 CALL                             R21 3 0
       98 GETUPVAL                         R21 2
       99 MOVE                             R22 R3
      100 NEWTABLE                         R23 0 1
      102 LOADK                            R24 K11 ["AbsoluteSize"]
      103 SETLIST                          R23 R24 1 [1]
      105 MOVE                             R24 R19
      106 CALL                             R21 3 0
      107 GETUPVAL                         R22 0
      108 GETTABLEKS                       R21 R22 K12 ["useLayoutEffect"]
      110 NEWCLOSURE                       R22 P2
      111 CAPTURE                          VAL R20
      112 NEWTABLE                         R23 0 1
      114 MOVE                             R24 R20
      115 SETLIST                          R23 R24 1 [1]
      117 CALL                             R21 2 0
      118 MOVE                             R21 R7
      119 MOVE                             R22 R9
      120 MOVE                             R23 R11
      121 MOVE                             R24 R15
      122 MOVE                             R25 R13
      123 MOVE                             R26 R17
      124 RETURN                           R21 6

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R4 K8 ["PopoverAlign"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Enums"]
       20 GETTABLEKS                       R4 R5 K9 ["PopoverSide"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K11 ["positioning"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Components"]
       41 GETTABLEKS                       R7 R8 K13 ["Types"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K14 [PROTO_3]
       45 CAPTURE                          VAL R4
       46 DUPCLOSURE                       R8 K15 [PROTO_7]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 RETURN                           R8 1
