PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [-∞] ; [+3]
        2 LOADK                            R1 K1 ["-inf"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKN                    R0 K2 [∞] ; [+3]
        6 LOADK                            R1 K3 ["inf"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K6 [string.format]
       10 LOADK                            R2 K7 ["%02d.%02d"]
       11 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K10 [math.floor]
       15 CALL                             R3 1 1
       16 MULK                             R7 R0 K11 [100]
       17 ADDK                             R6 R7 K12 [0.5]
       18 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       19 GETIMPORT                        R5 K10 [math.floor]
       21 CALL                             R5 1 1
       22 MODK                             R4 R5 K11 [100]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["formatTime"]
        3 DUPCLOSURE                       R1 K2 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K3 ["createLoadingBar"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K2 ["Length"]
        4 ORK                              R3 R4 K1 [0]
        5 FASTCALL2K                       MATH_MAX R3 K1 ; [+4]
        7 LOADK                            R4 K1 [0]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 2 1
       11 GETTABLEKS                       R4 R1 K6 ["TimePercentage"]
       13 JUMPIFNOT                        R4 ; [+11]
       14 GETTABLEKS                       R5 R1 K6 ["TimePercentage"]
       16 MUL                              R4 R5 R2
       17 LOADN                            R5 0
       18 FASTCALL3                        MATH_CLAMP R4 R5 R2
       20 MOVE                             R6 R2
       21 GETIMPORT                        R3 K8 [math.clamp]
       23 CALL                             R3 3 1
       24 JUMP                             ; [+1]
       25 LOADN                            R3 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K9 ["createElement"]
       29 GETUPVAL                         R5 1
       30 NEWTABLE                         R6 4 0
       32 GETTABLEKS                       R7 R1 K10 ["Size"]
       34 SETTABLEKS                       R7 R6 K10 ["Size"]
       36 GETTABLEKS                       R7 R1 K11 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K12 ["Tag"]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K12 ["Tag"]
       46 GETTABLE                         R8 R1 R9
       47 SETTABLE                         R8 R6 R7
       48 LOADN                            R8 0
       49 JUMPIFNOTLT                      R8 R2 ; [+75]
       51 DUPTABLE                         R7 K15 [{"ProgressBar", "TextLabel"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K9 ["createElement"]
       55 GETUPVAL                         R9 1
       56 DUPTABLE                         R10 K18 [{["ZIndex"] = 1}]
       57 DUPTABLE                         R11 K20 [{"Progress"}]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K9 ["createElement"]
       61 GETUPVAL                         R13 1
       62 DUPTABLE                         R14 K22 [{"Size", "BackgroundColor"}]
       63 GETIMPORT                        R15 K25 [UDim2.fromScale]
       65 GETTABLEKS                       R17 R1 K6 ["TimePercentage"]
       67 LOADN                            R18 0
       68 LOADN                            R19 1
       69 FASTCALL                         MATH_CLAMP ; [+2]
       70 GETIMPORT                        R16 K8 [math.clamp]
       72 CALL                             R16 3 1
       73 LOADN                            R17 1
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K10 ["Size"]
       77 GETTABLEKS                       R15 R0 K0 ["props"]
       79 GETTABLEKS                       R15 R15 K26 ["BarColor"]
       81 SETTABLEKS                       R15 R14 K21 ["BackgroundColor"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K19 ["Progress"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K13 ["ProgressBar"]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K9 ["createElement"]
       92 GETUPVAL                         R9 2
       93 NEWTABLE                         R10 4 0
       95 GETTABLEKS                       R11 R1 K27 ["TextColor"]
       97 SETTABLEKS                       R11 R10 K27 ["TextColor"]
       99 GETIMPORT                        R11 K30 [string.format]
      101 LOADK                            R12 K31 ["%s / %s"]
      102 GETTABLEKS                       R13 R0 K32 ["formatTime"]
      104 MOVE                             R14 R3
      105 CALL                             R13 1 1
      106 GETTABLEKS                       R14 R0 K32 ["formatTime"]
      108 MOVE                             R15 R2
      109 CALL                             R14 1 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K33 ["Text"]
      113 LOADN                            R11 2
      114 SETTABLEKS                       R11 R10 K16 ["ZIndex"]
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R11 R11 K12 ["Tag"]
      119 LOADK                            R12 K34 ["X-Center"]
      120 SETTABLE                         R12 R10 R11
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K14 ["TextLabel"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R7
      126 CALL                             R4 3 -1
      127 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Types"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R2 K14 ["PureComponent"]
       36 LOADK                            R9 K15 ["Timestamp"]
       37 NAMECALL                         R7 R7 K16 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K17 [PROTO_2]
       41 SETTABLEKS                       R8 R7 K18 ["init"]
       43 DUPCLOSURE                       R8 K19 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R8 R7 K20 ["render"]
       49 RETURN                           R7 1
