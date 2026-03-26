PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["FontSize"]
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K1 ["Font"]
        8 GETIMPORT                        R7 K4 [Vector2.new]
       10 LOADK                            R8 K5 [∞]
       11 LOADK                            R9 K5 [∞]
       12 CALL                             R7 2 -1
       13 NAMECALL                         R2 R2 K6 ["GetTextSize"]
       15 CALL                             R2 -1 1
       16 GETTABLEKS                       R1 R2 K7 ["x"]
       18 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 GETUPVAL                         R5 0
        4 MOVE                             R7 R1
        5 GETTABLEKS                       R8 R2 K0 ["FontSize"]
        7 GETTABLEKS                       R9 R2 K1 ["Font"]
        9 GETIMPORT                        R10 K4 [Vector2.new]
       11 LOADK                            R11 K5 [∞]
       12 LOADK                            R12 K5 [∞]
       13 CALL                             R10 2 -1
       14 NAMECALL                         R5 R5 K6 ["GetTextSize"]
       16 CALL                             R5 -1 1
       17 GETTABLEKS                       R4 R5 K7 ["x"]
       19 GETTABLEKS                       R6 R0 K8 ["AbsoluteSize"]
       21 GETTABLEKS                       R5 R6 K9 ["X"]
       23 LENGTH                           R6 R1
       24 JUMPIFEQKN                       R6 K10 [0] ; [+3]
       26 JUMPIFNOTLE                      R4 R5 ; [+2]
       28 RETURN                           R1 1
       29 GETUPVAL                         R7 1
       30 GETUPVAL                         R8 0
       31 MOVE                             R10 R7
       32 GETTABLEKS                       R11 R2 K0 ["FontSize"]
       34 GETTABLEKS                       R12 R2 K1 ["Font"]
       36 GETIMPORT                        R13 K4 [Vector2.new]
       38 LOADK                            R14 K5 [∞]
       39 LOADK                            R15 K5 [∞]
       40 CALL                             R13 2 -1
       41 NAMECALL                         R8 R8 K6 ["GetTextSize"]
       43 CALL                             R8 -1 1
       44 GETTABLEKS                       R6 R8 K7 ["x"]
       46 FASTCALL2K                       STRING_SUB R1 K11 ; [+5]
       48 MOVE                             R9 R1
       49 LOADK                            R10 K11 [-1]
       50 GETIMPORT                        R8 K14 [string.sub]
       52 CALL                             R8 2 1
       53 GETUPVAL                         R9 0
       54 MOVE                             R11 R8
       55 GETTABLEKS                       R12 R2 K0 ["FontSize"]
       57 GETTABLEKS                       R13 R2 K1 ["Font"]
       59 GETIMPORT                        R14 K4 [Vector2.new]
       61 LOADK                            R15 K5 [∞]
       62 LOADK                            R16 K5 [∞]
       63 CALL                             R14 2 -1
       64 NAMECALL                         R9 R9 K6 ["GetTextSize"]
       66 CALL                             R9 -1 1
       67 GETTABLEKS                       R7 R9 K7 ["x"]
       69 ADD                              R8 R6 R7
       70 LOADK                            R9 K15 [""]
       71 LENGTH                           R12 R1
       72 LOADN                            R10 1
       73 LOADN                            R11 255
       74 FORNPREP                         R10
       75 LENGTH                           R16 R1
       76 FASTCALL3                        STRING_SUB R1 R12 R16
       78 MOVE                             R14 R1
       79 MOVE                             R15 R12
       80 GETIMPORT                        R13 K14 [string.sub]
       82 CALL                             R13 3 1
       83 GETUPVAL                         R15 0
       84 MOVE                             R17 R13
       85 GETTABLEKS                       R18 R2 K0 ["FontSize"]
       87 GETTABLEKS                       R19 R2 K1 ["Font"]
       89 GETIMPORT                        R20 K4 [Vector2.new]
       91 LOADK                            R21 K5 [∞]
       92 LOADK                            R22 K5 [∞]
       93 CALL                             R20 2 -1
       94 NAMECALL                         R15 R15 K6 ["GetTextSize"]
       96 CALL                             R15 -1 1
       97 GETTABLEKS                       R14 R15 K7 ["x"]
       99 ADD                              R15 R14 R8
      100 JUMPIFLT                         R5 R15 ; [+5]
      102 GETUPVAL                         R15 1
      103 MOVE                             R16 R13
      104 CONCAT                           R9 R15 R16
      105 FORNLOOP                         R10
      106 RETURN                           R9 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["parsing"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K1 ["filepath"]
       12 GETUPVAL                         R4 4
       13 CALL                             R1 3 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["filepath"]
        4 NAMECALL                         R0 R0 K1 ["requestFileSwap"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R4 R5 K0 ["filepath"]
        6 GETUPVAL                         R5 3
        7 CALL                             R2 3 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 DUPCLOSURE                       R3 K1 [PROTO_2]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 DUPCLOSURE                       R4 K2 [PROTO_3]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["Hooks"]
       13 GETTABLEKS                       R4 R5 K4 ["useTokens"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R6 R4 K5 ["Typography"]
       18 GETTABLEKS                       R5 R6 K6 ["TitleSmall"]
       20 GETTABLEKS                       R6 R0 K7 ["TableEntry"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K8 ["useState"]
       25 GETTABLEKS                       R8 R6 K9 ["filepath"]
       27 CALL                             R7 1 2
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K10 ["useRef"]
       31 LOADNIL                          R10
       32 CALL                             R9 1 1
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R10 R11 K11 ["useLayoutEffect"]
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R8
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R12 0 1
       44 GETTABLEKS                       R13 R6 K9 ["filepath"]
       46 SETLIST                          R12 R13 1 [1]
       48 CALL                             R10 2 0
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R10 R11 K12 ["useCallback"]
       52 NEWCLOSURE                       R11 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R12 0 2
       57 MOVE                             R13 R1
       58 MOVE                             R14 R6
       59 SETLIST                          R12 R13 2 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R11 R12 K12 ["useCallback"]
       65 NEWCLOSURE                       R12 P4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R13 0 2
       72 GETTABLEKS                       R14 R6 K9 ["filepath"]
       74 MOVE                             R15 R5
       75 SETLIST                          R13 R14 2 [1]
       77 CALL                             R11 2 1
       78 OR                               R12 R2 R3
       79 GETUPVAL                         R13 5
       80 GETUPVAL                         R15 2
       81 GETTABLEKS                       R14 R15 K13 ["Text"]
       83 DUPTABLE                         R15 K21 [{"Text", "tag", "textStyle", "onAbsoluteSizeChanged", "onActivated", "onSecondaryActivated", "isDisabled", "ref"}]
       84 SETTABLEKS                       R7 R15 K13 ["Text"]
       86 LOADK                            R16 K22 ["size-full-full text-body-small text-align-x-left text-align-y-center"]
       87 SETTABLEKS                       R16 R15 K14 ["tag"]
       89 DUPTABLE                         R16 K25 [{"Color3", "Transparency"}]
       90 GETTABLEKS                       R20 R4 K26 ["Color"]
       92 GETTABLEKS                       R19 R20 K27 ["Content"]
       94 GETTABLEKS                       R18 R19 K28 ["Link"]
       96 GETTABLEKS                       R17 R18 K23 ["Color3"]
       98 SETTABLEKS                       R17 R16 K23 ["Color3"]
      100 JUMPIFNOT                        R12 ; [+2]
      101 LOADK                            R17 K29 [0.5]
      102 JUMP                             ; [+1]
      103 LOADN                            R17 0
      104 SETTABLEKS                       R17 R16 K24 ["Transparency"]
      106 SETTABLEKS                       R16 R15 K15 ["textStyle"]
      108 SETTABLEKS                       R11 R15 K16 ["onAbsoluteSizeChanged"]
      110 SETTABLEKS                       R10 R15 K17 ["onActivated"]
      112 GETTABLEKS                       R16 R0 K30 ["SecondaryActivated"]
      114 SETTABLEKS                       R16 R15 K18 ["onSecondaryActivated"]
      116 SETTABLEKS                       R12 R15 K19 ["isDisabled"]
      118 SETTABLEKS                       R9 R15 K20 ["ref"]
      120 CALL                             R13 2 -1
      121 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["TextService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["createElement"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Packages"]
       33 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R9 R0 K6 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Controllers"]
       42 GETTABLEKS                       R7 R8 K16 ["FileController"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R10 R0 K6 ["Src"]
       49 GETTABLEKS                       R9 R10 K17 ["Hooks"]
       51 GETTABLEKS                       R8 R9 K18 ["useSelector"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K6 ["Src"]
       58 GETTABLEKS                       R10 R11 K19 ["Types"]
       60 GETTABLEKS                       R9 R10 K20 ["QueuedSession"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K23 [utf8.char]
       65 LOADN                            R10 38
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K24 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R11 K25 [PROTO_7]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R4
       77 RETURN                           R11 1
