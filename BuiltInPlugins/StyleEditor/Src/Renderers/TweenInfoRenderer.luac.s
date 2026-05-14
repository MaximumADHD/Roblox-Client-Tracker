PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["tweenInfoToString"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Value"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parseTweenInfoString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["tweenInfoToString"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K2 ["Value"]
       14 CALL                             R4 1 -1
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K1 ["tweenInfoToString"]
       21 MOVE                             R5 R2
       22 CALL                             R4 1 -1
       23 CALL                             R3 -1 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K3 ["OnChanged"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["tweenInfoToString"]
        4 GETTABLEKS                       R3 R0 K1 ["Value"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["parseTweenInfoString"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 JUMPIFEQKNIL                     R3 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETUPVAL                         R5 2
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R0 K1 ["Value"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 3
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R2
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 3
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 2
       40 GETTABLEKS                       R9 R0 K3 ["OnChanged"]
       42 GETTABLEKS                       R10 R0 K1 ["Value"]
       44 SETLIST                          R8 R9 2 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K4 ["createElement"]
       50 GETUPVAL                         R8 5
       51 NEWTABLE                         R9 0 0
       53 DUPTABLE                         R10 K6 [{"Input"}]
       54 GETUPVAL                         R11 4
       55 GETTABLEKS                       R11 R11 K4 ["createElement"]
       57 GETUPVAL                         R12 6
       58 NEWTABLE                         R13 8 0
       60 GETTABLEKS                       R14 R0 K7 ["Disabled"]
       62 SETTABLEKS                       R14 R13 K7 ["Disabled"]
       64 SETTABLEKS                       R6 R13 K8 ["OnFocusLost"]
       66 SETTABLEKS                       R5 R13 K9 ["OnTextChanged"]
       68 GETTABLEKS                       R15 R0 K10 ["AutomaticSize"]
       70 JUMPIFNOT                        R15 ; [+10]
       71 GETIMPORT                        R14 K13 [UDim2.new]
       73 LOADN                            R15 1
       74 LOADN                            R16 0
       75 LOADN                            R17 0
       76 GETTABLEKS                       R19 R0 K15 ["MinimumHeight"]
       78 ORK                              R18 R19 K14 [24]
       79 CALL                             R14 4 1
       80 JUMP                             ; [+5]
       81 GETIMPORT                        R14 K17 [UDim2.fromScale]
       83 LOADN                            R15 1
       84 LOADN                            R16 1
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K18 ["Size"]
       88 SETTABLEKS                       R1 R13 K19 ["Text"]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K20 ["Tag"]
       93 JUMPIFNOT                        R4 ; [+2]
       94 LOADK                            R15 K21 ["PropertyCellError"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R15
       97 SETTABLE                         R15 R13 R14
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K5 ["Input"]
      101 CALL                             R7 3 -1
      102 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETTABLEKS                       R4 R1 K9 ["useCallback"]
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K5 ["Packages"]
       26 GETTABLEKS                       R6 R6 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["UI"]
       31 GETTABLEKS                       R6 R6 K12 ["Pane"]
       33 GETTABLEKS                       R7 R5 K11 ["UI"]
       35 GETTABLEKS                       R7 R7 K13 ["TextInput"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K14 ["Src"]
       41 GETTABLEKS                       R9 R9 K15 ["Util"]
       43 GETTABLEKS                       R9 R9 K16 ["TransitionParamUtil"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Src"]
       50 GETTABLEKS                       R10 R10 K17 ["Types"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Src"]
       57 GETTABLEKS                       R11 R11 K18 ["Renderers"]
       59 GETTABLEKS                       R11 R11 K19 ["RendererTypes"]
       61 CALL                             R10 1 1
       62 DUPCLOSURE                       R11 K20 [PROTO_3]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 RETURN                           R11 1
