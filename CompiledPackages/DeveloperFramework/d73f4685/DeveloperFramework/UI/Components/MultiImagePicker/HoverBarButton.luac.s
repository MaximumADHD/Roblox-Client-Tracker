PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["PointingHand"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 JUMP                             ; [+5]
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 DUPTABLE                         R5 K6 [{"Hovering"}]
       16 SETTABLEKS                       R1 R5 K5 ["Hovering"]
       18 NAMECALL                         R3 R0 K7 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["Hovering"]
        4 GETTABLEKS                       R2 R0 K2 ["props"]
        6 GETTABLEKS                       R3 R2 K3 ["Position"]
        8 JUMPIF                           R3 ; [+3]
        9 GETIMPORT                        R3 K6 [UDim2.new]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R2 K7 ["AnchorPoint"]
       14 JUMPIF                           R4 ; [+3]
       15 GETIMPORT                        R4 K9 [Vector2.new]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R5 R2 K10 ["Image"]
       20 GETTABLEKS                       R6 R2 K11 ["Theme"]
       22 GETTABLEKS                       R7 R6 K12 ["HoverBarButton"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K13 ["createElement"]
       27 LOADK                            R9 K14 ["ImageButton"]
       28 NEWTABLE                         R10 16 0
       30 LOADN                            R11 1
       31 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       33 JUMPIFNOT                        R1 ; [+2]
       34 LOADK                            R11 K16 [0.9]
       35 JUMP                             ; [+1]
       36 LOADN                            R11 1
       37 SETTABLEKS                       R11 R10 K17 ["ImageTransparency"]
       39 GETTABLEKS                       R11 R7 K18 ["RoundedBackgroundImage"]
       41 SETTABLEKS                       R11 R10 K10 ["Image"]
       43 GETIMPORT                        R11 K6 [UDim2.new]
       45 LOADN                            R12 0
       46 LOADN                            R13 28
       47 LOADN                            R14 0
       48 LOADN                            R15 28
       49 CALL                             R11 4 1
       50 SETTABLEKS                       R11 R10 K19 ["Size"]
       52 SETTABLEKS                       R3 R10 K3 ["Position"]
       54 SETTABLEKS                       R4 R10 K7 ["AnchorPoint"]
       56 GETIMPORT                        R11 K23 [Enum.ScaleType.Slice]
       58 SETTABLEKS                       R11 R10 K21 ["ScaleType"]
       60 GETTABLEKS                       R11 R7 K24 ["RoundedFrameSlice"]
       62 SETTABLEKS                       R11 R10 K25 ["SliceCenter"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K26 ["Event"]
       67 GETTABLEKS                       R11 R11 K27 ["Activated"]
       69 GETTABLEKS                       R12 R2 K28 ["ButtonPressed"]
       71 SETTABLE                         R12 R10 R11
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K26 ["Event"]
       75 GETTABLEKS                       R11 R11 K29 ["MouseEnter"]
       77 NEWCLOSURE                       R12 P0
       78 CAPTURE                          VAL R0
       79 SETTABLE                         R12 R10 R11
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K26 ["Event"]
       83 GETTABLEKS                       R11 R11 K30 ["MouseLeave"]
       85 NEWCLOSURE                       R12 P1
       86 CAPTURE                          VAL R0
       87 SETTABLE                         R12 R10 R11
       88 DUPTABLE                         R11 K32 [{"Icon"}]
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R12 R12 K13 ["createElement"]
       92 LOADK                            R13 K33 ["ImageLabel"]
       93 DUPTABLE                         R14 K35 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"]}]
       94 GETIMPORT                        R15 K6 [UDim2.new]
       96 LOADN                            R16 1
       97 LOADN                            R17 0
       98 LOADN                            R18 1
       99 LOADN                            R19 0
      100 CALL                             R15 4 1
      101 SETTABLEKS                       R15 R14 K19 ["Size"]
      103 SETTABLEKS                       R5 R14 K10 ["Image"]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K31 ["Icon"]
      108 CALL                             R8 3 -1
      109 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       25 LOADK                            R6 K11 ["HoverBarButton"]
       26 NAMECALL                         R4 R4 K12 ["extend"]
       28 CALL                             R4 2 1
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 SETTABLEKS                       R5 R4 K14 ["init"]
       32 DUPCLOSURE                       R5 K15 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K16 ["mouseHoverChanged"]
       35 DUPCLOSURE                       R5 K17 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K18 ["render"]
       39 MOVE                             R5 R3
       40 DUPTABLE                         R6 K20 [{"Mouse"}]
       41 GETTABLEKS                       R7 R2 K19 ["Mouse"]
       43 SETTABLEKS                       R7 R6 K19 ["Mouse"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R4
       47 CALL                             R5 1 1
       48 MOVE                             R4 R5
       49 RETURN                           R4 1
