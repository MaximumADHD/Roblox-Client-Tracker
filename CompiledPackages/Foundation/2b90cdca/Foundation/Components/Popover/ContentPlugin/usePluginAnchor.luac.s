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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R0 ; [+10]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K2 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K3 ["Instance"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["useRef"]
       20 LOADNIL                          R5
       21 CALL                             R4 1 1
       22 JUMPIF                           R3 ; [+9]
       23 FASTCALL1                        TYPEOF R0 ; [+3]
       24 MOVE                             R6 R0
       25 GETIMPORT                        R5 K2 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K3 ["Instance"] ; [+3]
       30 SETTABLEKS                       R0 R4 K5 ["current"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K6 ["useState"]
       35 LOADNIL                          R6
       36 CALL                             R5 1 2
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K4 ["useRef"]
       40 LOADNIL                          R8
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R5 R7 K5 ["current"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R6
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 2
       56 DUPTABLE                         R10 K9 [{"forwardRef"}]
       57 JUMPIFNOT                        R3 ; [+2]
       58 MOVE                             R11 R7
       59 JUMP                             ; [+1]
       60 MOVE                             R11 R4
       61 SETTABLEKS                       R11 R10 K8 ["forwardRef"]
       63 CALL                             R9 1 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K6 ["useState"]
       67 GETIMPORT                        R11 K12 [Vector2.zero]
       69 CALL                             R10 1 2
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K6 ["useState"]
       73 GETIMPORT                        R13 K14 [Vector2.one]
       75 CALL                             R12 1 2
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K6 ["useState"]
       79 GETIMPORT                        R15 K12 [Vector2.zero]
       81 CALL                             R14 1 2
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K15 ["useLayoutEffect"]
       85 NEWCLOSURE                       R17 P1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 NEWTABLE                         R18 0 2
       92 MOVE                             R19 R0
       93 MOVE                             R20 R3
       94 SETLIST                          R18 R19 2 [1]
       96 CALL                             R16 2 0
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R16 R16 K15 ["useLayoutEffect"]
      100 NEWCLOSURE                       R17 P2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 NEWTABLE                         R18 0 2
      105 GETTABLEKS                       R19 R2 K16 ["requestOverlay"]
      107 MOVE                             R20 R3
      108 SETLIST                          R18 R19 2 [1]
      110 CALL                             R16 2 0
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K15 ["useLayoutEffect"]
      114 NEWCLOSURE                       R17 P3
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R15
      118 NEWTABLE                         R18 0 2
      120 GETTABLEKS                       R19 R2 K17 ["instance"]
      122 MOVE                             R20 R3
      123 SETLIST                          R18 R19 2 [1]
      125 CALL                             R16 2 0
      126 LOADB                            R16 0
      127 JUMPIFEQKNIL                     R0 ; [+9]
      129 NOT                              R16 R3
      130 JUMPIF                           R16 ; [+6]
      131 GETTABLEKS                       R17 R2 K17 ["instance"]
      133 JUMPIFNOTEQKNIL                  R17 ; [+2]
      135 LOADB                            R16 0 +1
      136 LOADB                            R16 1
      137 LOADNIL                          R17
      138 JUMPIFNOT                        R3 ; [+43]
      139 GETTABLEKS                       R18 R2 K17 ["instance"]
      141 JUMPIFNOT                        R18 ; [+40]
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R18 R18 K18 ["createElement"]
      145 GETUPVAL                         R19 3
      146 DUPTABLE                         R20 K24 [{["Position"], ["Size"], ["Visible"] = True, ["ref"]}]
      147 GETIMPORT                        R21 K27 [UDim2.fromOffset]
      149 GETTABLEKS                       R23 R10 K28 ["X"]
      151 GETTABLEKS                       R24 R14 K28 ["X"]
      153 SUB                              R22 R23 R24
      154 GETTABLEKS                       R24 R10 K29 ["Y"]
      156 GETTABLEKS                       R25 R14 K29 ["Y"]
      158 SUB                              R23 R24 R25
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K19 ["Position"]
      162 GETIMPORT                        R21 K27 [UDim2.fromOffset]
      164 GETTABLEKS                       R22 R12 K28 ["X"]
      166 GETTABLEKS                       R23 R12 K29 ["Y"]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K20 ["Size"]
      171 SETTABLEKS                       R8 R20 K23 ["ref"]
      173 CALL                             R18 2 1
      174 GETUPVAL                         R19 4
      175 GETTABLEKS                       R19 R19 K30 ["createPortal"]
      177 MOVE                             R20 R18
      178 GETTABLEKS                       R21 R2 K17 ["instance"]
      180 CALL                             R19 2 1
      181 MOVE                             R17 R19
      182 DUPTABLE                         R18 K35 [{"uri", "element", "isVirtual", "isReady"}]
      183 JUMPIFEQKNIL                     R1 ; [+3]
      185 MOVE                             R19 R1
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R19 R9 K31 ["uri"]
      189 SETTABLEKS                       R19 R18 K31 ["uri"]
      191 SETTABLEKS                       R17 R18 K32 ["element"]
      193 SETTABLEKS                       R3 R18 K33 ["isVirtual"]
      195 JUMPIFEQKNIL                     R1 ; [+3]
      197 LOADB                            R19 1
      198 JUMP                             ; [+1]
      199 MOVE                             R19 R16
      200 SETTABLEKS                       R19 R18 K34 ["isReady"]
      202 RETURN                           R18 1

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
       30 GETTABLEKS                       R6 R0 K12 ["Utility"]
       32 GETTABLEKS                       R6 R6 K13 ["Plugin"]
       34 GETTABLEKS                       R6 R6 K14 ["StudioUri"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Components"]
       41 GETTABLEKS                       R7 R7 K16 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Components"]
       48 GETTABLEKS                       R8 R8 K17 ["View"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K9 ["Providers"]
       55 GETTABLEKS                       R9 R9 K18 ["StudioWidgets"]
       57 GETTABLEKS                       R9 R9 K19 ["useUniqueWidget"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K20 [PROTO_8]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 RETURN                           R9 1
