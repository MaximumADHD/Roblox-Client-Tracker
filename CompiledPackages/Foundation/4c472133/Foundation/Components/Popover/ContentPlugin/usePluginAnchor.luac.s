PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsolutePosition"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
       18 CALL                             R2 1 0
       19 LOADK                            R4 K0 ["AbsolutePosition"]
       20 NAMECALL                         R2 R0 K2 ["GetPropertyChangedSignal"]
       22 CALL                             R2 2 1
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R2 K3 ["Connect"]
       26 CALL                             R2 2 1
       27 LOADK                            R5 K1 ["AbsoluteSize"]
       28 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       30 CALL                             R3 2 1
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R3 K3 ["Connect"]
       34 CALL                             R3 2 1
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["requestOverlay"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsolutePosition"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["instance"]
        6 JUMPIFEQKNIL                     R0 ; [+6]
        8 LOADK                            R3 K1 ["GuiObject"]
        9 NAMECALL                         R1 R0 K2 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+5]
       13 GETUPVAL                         R1 2
       14 GETIMPORT                        R2 K5 [Vector2.zero]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R3 R0 K6 ["AbsolutePosition"]
       24 CALL                             R2 1 0
       25 LOADK                            R4 K6 ["AbsolutePosition"]
       26 NAMECALL                         R2 R0 K7 ["GetPropertyChangedSignal"]
       28 CALL                             R2 2 1
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K8 ["Connect"]
       32 CALL                             R2 2 1
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          VAL R2
       35 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R0 ; [+10]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K2 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["Instance"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["useRef"]
       20 LOADNIL                          R4
       21 CALL                             R3 1 1
       22 JUMPIF                           R2 ; [+9]
       23 FASTCALL1                        TYPEOF R0 ; [+3]
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K2 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K3 ["Instance"] ; [+3]
       30 SETTABLEKS                       R0 R3 K5 ["current"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K6 ["useState"]
       35 LOADNIL                          R5
       36 CALL                             R4 1 2
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K4 ["useRef"]
       40 LOADNIL                          R7
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R4 R6 K5 ["current"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R5
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 2
       56 DUPTABLE                         R9 K9 [{"forwardRef"}]
       57 JUMPIFNOT                        R2 ; [+2]
       58 MOVE                             R10 R6
       59 JUMP                             ; [+1]
       60 MOVE                             R10 R3
       61 SETTABLEKS                       R10 R9 K8 ["forwardRef"]
       63 CALL                             R8 1 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K6 ["useState"]
       67 GETIMPORT                        R10 K12 [Vector2.zero]
       69 CALL                             R9 1 2
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K6 ["useState"]
       73 GETIMPORT                        R12 K14 [Vector2.one]
       75 CALL                             R11 1 2
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R13 R13 K6 ["useState"]
       79 GETIMPORT                        R14 K12 [Vector2.zero]
       81 CALL                             R13 1 2
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K15 ["useLayoutEffect"]
       85 NEWCLOSURE                       R16 P1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 NEWTABLE                         R17 0 2
       92 MOVE                             R18 R0
       93 MOVE                             R19 R2
       94 SETLIST                          R17 R18 2 [1]
       96 CALL                             R15 2 0
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R15 R15 K15 ["useLayoutEffect"]
      100 NEWCLOSURE                       R16 P2
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 NEWTABLE                         R17 0 2
      105 GETTABLEKS                       R18 R1 K16 ["requestOverlay"]
      107 MOVE                             R19 R2
      108 SETLIST                          R17 R18 2 [1]
      110 CALL                             R15 2 0
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K15 ["useLayoutEffect"]
      114 NEWCLOSURE                       R16 P3
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R14
      118 NEWTABLE                         R17 0 2
      120 GETTABLEKS                       R18 R1 K17 ["instance"]
      122 MOVE                             R19 R2
      123 SETLIST                          R17 R18 2 [1]
      125 CALL                             R15 2 0
      126 LOADB                            R15 0
      127 JUMPIFEQKNIL                     R0 ; [+9]
      129 NOT                              R15 R2
      130 JUMPIF                           R15 ; [+6]
      131 GETTABLEKS                       R16 R1 K17 ["instance"]
      133 JUMPIFNOTEQKNIL                  R16 ; [+2]
      135 LOADB                            R15 0 +1
      136 LOADB                            R15 1
      137 LOADNIL                          R16
      138 JUMPIFNOT                        R2 ; [+43]
      139 GETTABLEKS                       R17 R1 K17 ["instance"]
      141 JUMPIFNOT                        R17 ; [+40]
      142 GETUPVAL                         R17 0
      143 GETTABLEKS                       R17 R17 K18 ["createElement"]
      145 GETUPVAL                         R18 3
      146 DUPTABLE                         R19 K24 [{["Position"], ["Size"], ["Visible"] = True, ["ref"]}]
      147 GETIMPORT                        R20 K27 [UDim2.fromOffset]
      149 GETTABLEKS                       R22 R9 K28 ["X"]
      151 GETTABLEKS                       R23 R13 K28 ["X"]
      153 SUB                              R21 R22 R23
      154 GETTABLEKS                       R23 R9 K29 ["Y"]
      156 GETTABLEKS                       R24 R13 K29 ["Y"]
      158 SUB                              R22 R23 R24
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K19 ["Position"]
      162 GETIMPORT                        R20 K27 [UDim2.fromOffset]
      164 GETTABLEKS                       R21 R11 K28 ["X"]
      166 GETTABLEKS                       R22 R11 K29 ["Y"]
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K20 ["Size"]
      171 SETTABLEKS                       R7 R19 K23 ["ref"]
      173 CALL                             R17 2 1
      174 GETUPVAL                         R18 4
      175 GETTABLEKS                       R18 R18 K30 ["createPortal"]
      177 MOVE                             R19 R17
      178 GETTABLEKS                       R20 R1 K17 ["instance"]
      180 CALL                             R18 2 1
      181 MOVE                             R16 R18
      182 DUPTABLE                         R17 K35 [{"widget", "element", "isVirtual", "isReady"}]
      183 SETTABLEKS                       R8 R17 K31 ["widget"]
      185 SETTABLEKS                       R16 R17 K32 ["element"]
      187 SETTABLEKS                       R2 R17 K33 ["isVirtual"]
      189 SETTABLEKS                       R15 R17 K34 ["isReady"]
      191 RETURN                           R17 1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Overlay"]
       25 GETTABLEKS                       R5 R5 K11 ["OverlayContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R6 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K14 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["StudioWidgets"]
       48 GETTABLEKS                       R8 R8 K16 ["useUniqueWidget"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_8]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 RETURN                           R8 1
