PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETIMPORT                        R2 K3 [Enum.FontWeight.Regular]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R2 K5 [Enum.FontWeight.Bold]
        8 SETTABLEKS                       R2 R1 K6 ["Weight"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K7 ["OnChanged"]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETIMPORT                        R2 K3 [Enum.FontStyle.Normal]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R2 K5 [Enum.FontStyle.Italic]
        8 SETTABLEKS                       R2 R1 K6 ["Style"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K7 ["OnChanged"]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R3 R1 K1 ["Style"]
        4 GETIMPORT                        R4 K5 [Enum.FontStyle.Italic]
        6 JUMPIFEQ                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETTABLEKS                       R3 R1 K6 ["Bold"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K7 ["createElement"]
       15 GETUPVAL                         R5 1
       16 NEWTABLE                         R6 1 0
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K8 ["Tag"]
       21 LOADK                            R8 K9 ["X-Middle X-PadS X-RowM"]
       22 SETTABLE                         R8 R6 R7
       23 DUPTABLE                         R7 K10 [{"Bold", "Italic"}]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K7 ["createElement"]
       27 GETUPVAL                         R9 1
       28 NEWTABLE                         R10 1 0
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K8 ["Tag"]
       33 JUMPIFNOT                        R3 ; [+5]
       34 GETUPVAL                         R12 2
       35 LOADK                            R13 K11 ["FontStyle X-Corner X-Stroke"]
       36 LOADK                            R14 K12 ["Selected"]
       37 CALL                             R12 2 1
       38 JUMP                             ; [+1]
       39 LOADK                            R12 K11 ["FontStyle X-Corner X-Stroke"]
       40 SETTABLE                         R12 R10 R11
       41 DUPTABLE                         R11 K14 [{"BoldButton"}]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R12 R13 K7 ["createElement"]
       45 LOADK                            R13 K15 ["TextButton"]
       46 NEWTABLE                         R14 2 0
       48 GETUPVAL                         R17 0
       49 GETTABLEKS                       R16 R17 K16 ["Event"]
       51 GETTABLEKS                       R15 R16 K17 ["Activated"]
       53 NEWCLOSURE                       R16 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R0
       57 SETTABLE                         R16 R14 R15
       58 GETUPVAL                         R16 0
       59 GETTABLEKS                       R15 R16 K8 ["Tag"]
       61 JUMPIFNOT                        R3 ; [+5]
       62 GETUPVAL                         R16 2
       63 LOADK                            R17 K18 ["FontStyle ItemTextSize X-Fill"]
       64 LOADK                            R18 K12 ["Selected"]
       65 CALL                             R16 2 1
       66 JUMP                             ; [+1]
       67 LOADK                            R16 K18 ["FontStyle ItemTextSize X-Fill"]
       68 SETTABLE                         R16 R14 R15
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K13 ["BoldButton"]
       72 CALL                             R8 3 1
       73 SETTABLEKS                       R8 R7 K6 ["Bold"]
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R8 R9 K7 ["createElement"]
       78 GETUPVAL                         R9 1
       79 NEWTABLE                         R10 1 0
       81 GETUPVAL                         R12 0
       82 GETTABLEKS                       R11 R12 K8 ["Tag"]
       84 JUMPIFNOT                        R2 ; [+5]
       85 GETUPVAL                         R12 2
       86 LOADK                            R13 K11 ["FontStyle X-Corner X-Stroke"]
       87 LOADK                            R14 K12 ["Selected"]
       88 CALL                             R12 2 1
       89 JUMP                             ; [+1]
       90 LOADK                            R12 K11 ["FontStyle X-Corner X-Stroke"]
       91 SETTABLE                         R12 R10 R11
       92 DUPTABLE                         R11 K20 [{"ItalicButton"}]
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R12 R13 K7 ["createElement"]
       96 LOADK                            R13 K15 ["TextButton"]
       97 NEWTABLE                         R14 2 0
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R16 R17 K16 ["Event"]
      102 GETTABLEKS                       R15 R16 K17 ["Activated"]
      104 NEWCLOSURE                       R16 P1
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R0
      108 SETTABLE                         R16 R14 R15
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R15 R16 K8 ["Tag"]
      112 JUMPIFNOT                        R2 ; [+5]
      113 GETUPVAL                         R16 2
      114 LOADK                            R17 K18 ["FontStyle ItemTextSize X-Fill"]
      115 LOADK                            R18 K12 ["Selected"]
      116 CALL                             R16 2 1
      117 JUMP                             ; [+1]
      118 LOADK                            R16 K18 ["FontStyle ItemTextSize X-Fill"]
      119 SETTABLE                         R16 R14 R15
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K19 ["ItalicButton"]
      123 CALL                             R8 3 1
      124 SETTABLEKS                       R8 R7 K4 ["Italic"]
      126 CALL                             R4 3 -1
      127 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"Fonts"}]
        1 GETTABLEKS                       R3 R0 K2 ["Asset"]
        3 GETTABLEKS                       R2 R3 K0 ["Fonts"]
        5 SETTABLEKS                       R2 R1 K0 ["Fonts"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["RoactRodux"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R3 K9 ["Styling"]
       34 GETTABLEKS                       R4 R5 K10 ["joinTags"]
       36 GETTABLEKS                       R6 R3 K11 ["UI"]
       38 GETTABLEKS                       R5 R6 K12 ["Pane"]
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R8 R9 K14 ["Renderers"]
       46 GETTABLEKS                       R7 R8 K15 ["RendererTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R9 K16 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R10 R11 K17 ["Reducers"]
       62 GETTABLEKS                       R9 R10 K18 ["RootReducer"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K19 [PROTO_2]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 GETTABLEKS                       R10 R1 K20 ["connect"]
       71 DUPCLOSURE                       R11 K21 [PROTO_3]
       72 CALL                             R10 1 1
       73 MOVE                             R11 R9
       74 CALL                             R10 1 -1
       75 RETURN                           R10 -1
