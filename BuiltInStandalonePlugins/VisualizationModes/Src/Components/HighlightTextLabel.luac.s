PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Text"]
        3 LOADN                            R2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["StartIndex"]
        7 SUBK                             R3 R4 K1 [1]
        8 FASTCALL                         STRING_SUB ; [+2]
        9 GETIMPORT                        R0 K5 [string.sub]
       11 CALL                             R0 3 1
       12 GETUPVAL                         R1 1
       13 MOVE                             R3 R0
       14 LOADN                            R4 16
       15 GETIMPORT                        R5 K9 [Enum.Font.SourceSans]
       17 GETIMPORT                        R6 K12 [Vector2.new]
       19 LOADK                            R7 K13 [∞]
       20 LOADK                            R8 K13 [∞]
       21 CALL                             R6 2 -1
       22 NAMECALL                         R1 R1 K14 ["GetTextSize"]
       24 CALL                             R1 -1 1
       25 GETTABLEKS                       R2 R1 K15 ["X"]
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Text"]
        3 LOADN                            R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["FinishIndex"]
        7 FASTCALL                         STRING_SUB ; [+2]
        8 GETIMPORT                        R0 K4 [string.sub]
       10 CALL                             R0 3 1
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 LOADN                            R4 16
       14 GETIMPORT                        R5 K8 [Enum.Font.SourceSans]
       16 GETIMPORT                        R6 K11 [Vector2.new]
       18 LOADK                            R7 K12 [∞]
       19 LOADK                            R8 K12 [∞]
       20 CALL                             R6 2 -1
       21 NAMECALL                         R1 R1 K13 ["GetTextSize"]
       23 CALL                             R1 -1 1
       24 GETTABLEKS                       R2 R1 K14 ["X"]
       26 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Text"]
        2 GETTABLEKS                       R3 R0 K1 ["StartIndex"]
        4 GETTABLEKS                       R4 R0 K2 ["FinishIndex"]
        6 FASTCALL                         STRING_SUB ; [+2]
        7 GETIMPORT                        R1 K5 [string.sub]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 NEWTABLE                         R4 0 2
       18 GETTABLEKS                       R5 R0 K1 ["StartIndex"]
       20 GETTABLEKS                       R6 R0 K0 ["Text"]
       22 SETLIST                          R4 R5 2 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["useMemo"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 NEWTABLE                         R5 0 2
       33 GETTABLEKS                       R6 R0 K2 ["FinishIndex"]
       35 GETTABLEKS                       R7 R0 K0 ["Text"]
       37 SETLIST                          R5 R6 2 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K7 ["createElement"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K8 ["Fragment"]
       46 NEWTABLE                         R6 0 0
       48 DUPTABLE                         R7 K11 [{"Highlight", "HighlightTextLabel"}]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K7 ["createElement"]
       52 LOADK                            R9 K12 ["Frame"]
       53 NEWTABLE                         R10 4 0
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K13 ["Tag"]
       58 LOADK                            R12 K14 ["VisualizationModes-Highlight"]
       59 SETTABLE                         R12 R10 R11
       60 GETIMPORT                        R11 K17 [UDim2.fromOffset]
       62 SUB                              R12 R3 R2
       63 LOADN                            R13 24
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K18 ["Size"]
       67 GETIMPORT                        R11 K20 [UDim2.new]
       69 LOADN                            R12 0
       70 MOVE                             R13 R2
       71 LOADK                            R14 K21 [0.5]
       72 LOADN                            R15 0
       73 CALL                             R11 4 1
       74 SETTABLEKS                       R11 R10 K22 ["Position"]
       76 LOADN                            R11 2
       77 SETTABLEKS                       R11 R10 K23 ["ZIndex"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K9 ["Highlight"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K7 ["createElement"]
       85 GETUPVAL                         R9 2
       86 NEWTABLE                         R10 8 0
       88 SETTABLEKS                       R1 R10 K0 ["Text"]
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K13 ["Tag"]
       93 LOADK                            R12 K24 ["VisualizationModes-Highlight-TextLabel"]
       94 SETTABLE                         R12 R10 R11
       95 GETIMPORT                        R11 K17 [UDim2.fromOffset]
       97 SUB                              R12 R3 R2
       98 LOADN                            R13 24
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K18 ["Size"]
      102 GETIMPORT                        R11 K26 [Vector2.new]
      104 LOADN                            R12 0
      105 LOADK                            R13 K21 [0.5]
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K27 ["AnchorPoint"]
      109 GETIMPORT                        R11 K20 [UDim2.new]
      111 LOADN                            R12 0
      112 MOVE                             R13 R2
      113 LOADK                            R14 K21 [0.5]
      114 LOADN                            R15 0
      115 CALL                             R11 4 1
      116 SETTABLEKS                       R11 R10 K22 ["Position"]
      118 LOADN                            R11 3
      119 SETTABLEKS                       R11 R10 K23 ["ZIndex"]
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K10 ["HighlightTextLabel"]
      124 CALL                             R4 3 -1
      125 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["MatchIndexes"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["Text"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R0 K0 ["MatchIndexes"]
       14 NEWTABLE                         R3 0 0
       16 LOADN                            R4 0
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 MOVE                             R7 R2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 JUMPIFNOTEQKNIL                  R5 ; [+4]
       25 MOVE                             R5 R11
       26 MOVE                             R6 R11
       27 JUMP                             ; [+30]
       28 JUMPIFEQKNIL                     R6 ; [+6]
       30 ADDK                             R12 R6 K2 [1]
       31 JUMPIFNOTEQ                      R11 R12 ; [+3]
       33 MOVE                             R6 R11
       34 JUMP                             ; [+23]
       35 JUMPIFEQKNIL                     R5 ; [+22]
       37 JUMPIFEQKNIL                     R6 ; [+20]
       39 ADDK                             R4 R4 K2 [1]
       40 LOADK                            R13 K3 ["Highlight"]
       41 MOVE                             R14 R4
       42 CONCAT                           R12 R13 R14
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R13 R13 K4 ["createElement"]
       46 GETUPVAL                         R14 1
       47 DUPTABLE                         R15 K7 [{"Text", "StartIndex", "FinishIndex"}]
       48 SETTABLEKS                       R1 R15 K1 ["Text"]
       50 SETTABLEKS                       R5 R15 K5 ["StartIndex"]
       52 SETTABLEKS                       R6 R15 K6 ["FinishIndex"]
       54 CALL                             R13 2 1
       55 SETTABLE                         R13 R3 R12
       56 MOVE                             R5 R11
       57 MOVE                             R6 R11
       58 FORGLOOP                         R7 2 ; [-36]
       60 JUMPIFEQKNIL                     R5 ; [+20]
       62 JUMPIFEQKNIL                     R6 ; [+18]
       64 ADDK                             R4 R4 K2 [1]
       65 LOADK                            R8 K3 ["Highlight"]
       66 MOVE                             R9 R4
       67 CONCAT                           R7 R8 R9
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K4 ["createElement"]
       71 GETUPVAL                         R9 1
       72 DUPTABLE                         R10 K7 [{"Text", "StartIndex", "FinishIndex"}]
       73 SETTABLEKS                       R1 R10 K1 ["Text"]
       75 SETTABLEKS                       R5 R10 K5 ["StartIndex"]
       77 SETTABLEKS                       R6 R10 K6 ["FinishIndex"]
       79 CALL                             R8 2 1
       80 SETTABLE                         R8 R3 R7
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K4 ["createElement"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K8 ["Fragment"]
       87 NEWTABLE                         R9 0 0
       89 MOVE                             R10 R3
       90 CALL                             R7 3 -1
       91 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Tag"]
       13 LOADK                            R5 K4 ["VisualizationModes-TextLabel-Container"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K7 [{"TextLabel", "HighlightGroup"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 NEWTABLE                         R7 4 0
       22 GETTABLEKS                       R8 R0 K8 ["Text"]
       24 SETTABLEKS                       R8 R7 K8 ["Text"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K3 ["Tag"]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K9 ["Styling"]
       32 GETTABLEKS                       R9 R9 K10 ["joinTags"]
       34 LOADK                            R10 K11 ["VisualizationModes-TextLabel"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K3 ["Tag"]
       38 GETTABLE                         R11 R0 R12
       39 CALL                             R9 2 1
       40 SETTABLE                         R9 R7 R8
       41 GETIMPORT                        R8 K15 [Enum.TextTruncate.SplitWord]
       43 SETTABLEKS                       R8 R7 K13 ["TextTruncate"]
       45 LOADN                            R8 2
       46 SETTABLEKS                       R8 R7 K16 ["ZIndex"]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K5 ["TextLabel"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["createElement"]
       54 GETUPVAL                         R6 3
       55 DUPTABLE                         R7 K18 [{"Text", "MatchIndexes"}]
       56 GETTABLEKS                       R8 R0 K8 ["Text"]
       58 SETTABLEKS                       R8 R7 K8 ["Text"]
       60 GETTABLEKS                       R8 R0 K17 ["MatchIndexes"]
       62 SETTABLEKS                       R8 R7 K17 ["MatchIndexes"]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K6 ["HighlightGroup"]
       67 CALL                             R1 3 -1
       68 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Packages"]
       24 GETTABLEKS                       R4 R4 K13 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R5 R5 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K15 ["UI"]
       36 GETTABLEKS                       R6 R5 K16 ["TextLabel"]
       38 DUPCLOSURE                       R7 K17 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 DUPCLOSURE                       R8 K18 [PROTO_3]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R9 K19 [PROTO_4]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R8
       50 RETURN                           R9 1
