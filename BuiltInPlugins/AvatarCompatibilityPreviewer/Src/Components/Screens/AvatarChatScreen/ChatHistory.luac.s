PROTO_0:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R6 R6 K1 ["Y"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 1
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["current"]
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["AbsoluteCanvasSize"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 SUB                              R5 R6 R7
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K9 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K10 ["CanvasPosition"]
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["useEventCallback"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R2
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R7 R0 K2 ["turns"]
       24 LENGTH                           R6 R7
       25 LOADN                            R7 0
       26 JUMPIFNOTLT                      R7 R6 ; [+10]
       28 GETTABLEKS                       R6 R0 K2 ["turns"]
       30 GETTABLEKS                       R8 R0 K2 ["turns"]
       32 LENGTH                           R7 R8
       33 GETTABLE                         R5 R6 R7
       34 GETTABLEKS                       R5 R5 K3 ["id"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 NEWTABLE                         R6 0 0
       40 GETTABLEKS                       R7 R0 K2 ["turns"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 LOADK                            R13 K4 ["Turn-%*"]
       46 GETTABLEKS                       R15 R11 K3 ["id"]
       48 NAMECALL                         R13 R13 K5 ["format"]
       50 CALL                             R13 2 1
       51 MOVE                             R12 R13
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K6 ["createElement"]
       55 GETUPVAL                         R14 2
       56 DUPTABLE                         R15 K13 [{"turn", "isHead", "LayoutOrder", "onRegenerate", "onConfirm", "onCancel"}]
       57 SETTABLEKS                       R11 R15 K7 ["turn"]
       59 GETTABLEKS                       R17 R11 K3 ["id"]
       61 JUMPIFEQ                         R17 R5 ; [+2]
       63 LOADB                            R16 0 +1
       64 LOADB                            R16 1
       65 SETTABLEKS                       R16 R15 K8 ["isHead"]
       67 SETTABLEKS                       R10 R15 K9 ["LayoutOrder"]
       69 GETTABLEKS                       R16 R0 K10 ["onRegenerate"]
       71 SETTABLEKS                       R16 R15 K10 ["onRegenerate"]
       73 GETTABLEKS                       R16 R0 K11 ["onConfirm"]
       75 SETTABLEKS                       R16 R15 K11 ["onConfirm"]
       77 GETTABLEKS                       R16 R0 K12 ["onCancel"]
       79 SETTABLEKS                       R16 R15 K12 ["onCancel"]
       81 CALL                             R13 2 1
       82 SETTABLE                         R13 R6 R12
       83 FORGLOOP                         R7 2 ; [-39]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K6 ["createElement"]
       88 GETUPVAL                         R8 3
       89 DUPTABLE                         R9 K20 [{["tag"] = "size-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"]}]
       90 DUPTABLE                         R10 K24 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
       91 GETIMPORT                        R11 K27 [Enum.ScrollingDirection.Y]
       93 SETTABLEKS                       R11 R10 K21 ["ScrollingDirection"]
       95 GETIMPORT                        R11 K29 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R11 R10 K22 ["AutomaticCanvasSize"]
       99 GETIMPORT                        R11 K32 [UDim2.fromScale]
      101 LOADN                            R12 1
      102 LOADN                            R13 0
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K23 ["CanvasSize"]
      106 SETTABLEKS                       R10 R9 K16 ["scroll"]
      108 SETTABLEKS                       R1 R9 K17 ["scrollingFrameRef"]
      110 SETTABLEKS                       R3 R9 K18 ["onCanvasPositionChanged"]
      112 SETTABLEKS                       R4 R9 K19 ["onAbsoluteCanvasSizeChanged"]
      114 DUPTABLE                         R10 K34 [{"Turns"}]
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K6 ["createElement"]
      118 GETUPVAL                         R12 4
      119 DUPTABLE                         R13 K36 [{["tag"] = "col gap-small size-full-0 auto-y padding-small"}]
      120 MOVE                             R14 R6
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K33 ["Turns"]
      124 CALL                             R7 3 -1
      125 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ScrollView"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Screens"]
       40 GETTABLEKS                       R7 R7 K15 ["AvatarChatScreen"]
       42 GETTABLEKS                       R7 R7 K16 ["ChatTurn"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K17 ["Types"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K18 [PROTO_0]
       53 DUPCLOSURE                       R9 K19 [PROTO_3]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 RETURN                           R9 1
