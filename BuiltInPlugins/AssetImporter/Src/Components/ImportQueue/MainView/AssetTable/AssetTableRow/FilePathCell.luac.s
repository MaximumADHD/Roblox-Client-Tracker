PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["FontSize"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["Font"]
        8 GETIMPORT                        R6 K4 [Vector2.new]
       10 LOADK                            R7 K5 [∞]
       11 LOADK                            R8 K5 [∞]
       12 CALL                             R6 2 -1
       13 NAMECALL                         R1 R1 K6 ["GetTextSize"]
       15 CALL                             R1 -1 1
       16 GETTABLEKS                       R1 R1 K7 ["x"]
       18 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 GETUPVAL                         R4 0
        4 MOVE                             R6 R1
        5 GETTABLEKS                       R7 R2 K0 ["FontSize"]
        7 GETTABLEKS                       R8 R2 K1 ["Font"]
        9 GETIMPORT                        R9 K4 [Vector2.new]
       11 LOADK                            R10 K5 [∞]
       12 LOADK                            R11 K5 [∞]
       13 CALL                             R9 2 -1
       14 NAMECALL                         R4 R4 K6 ["GetTextSize"]
       16 CALL                             R4 -1 1
       17 GETTABLEKS                       R4 R4 K7 ["x"]
       19 GETTABLEKS                       R5 R0 K8 ["AbsoluteSize"]
       21 GETTABLEKS                       R5 R5 K9 ["X"]
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
       44 MOVE                             R6 R8
       45 GETTABLEKS                       R6 R6 K7 ["x"]
       47 FASTCALL2K                       STRING_SUB R1 K11 ; [+5]
       49 MOVE                             R9 R1
       50 LOADK                            R10 K11 [-1]
       51 GETIMPORT                        R8 K14 [string.sub]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 0
       55 MOVE                             R11 R8
       56 GETTABLEKS                       R12 R2 K0 ["FontSize"]
       58 GETTABLEKS                       R13 R2 K1 ["Font"]
       60 GETIMPORT                        R14 K4 [Vector2.new]
       62 LOADK                            R15 K5 [∞]
       63 LOADK                            R16 K5 [∞]
       64 CALL                             R14 2 -1
       65 NAMECALL                         R9 R9 K6 ["GetTextSize"]
       67 CALL                             R9 -1 1
       68 MOVE                             R7 R9
       69 GETTABLEKS                       R7 R7 K7 ["x"]
       71 ADD                              R8 R6 R7
       72 LOADK                            R9 K15 [""]
       73 LENGTH                           R12 R1
       74 LOADN                            R10 1
       75 LOADN                            R11 -1
       76 FORNPREP                         R10
       77 LENGTH                           R16 R1
       78 FASTCALL3                        STRING_SUB R1 R12 R16
       80 MOVE                             R14 R1
       81 MOVE                             R15 R12
       82 GETIMPORT                        R13 K14 [string.sub]
       84 CALL                             R13 3 1
       85 GETUPVAL                         R14 0
       86 MOVE                             R16 R13
       87 GETTABLEKS                       R17 R2 K0 ["FontSize"]
       89 GETTABLEKS                       R18 R2 K1 ["Font"]
       91 GETIMPORT                        R19 K4 [Vector2.new]
       93 LOADK                            R20 K5 [∞]
       94 LOADK                            R21 K5 [∞]
       95 CALL                             R19 2 -1
       96 NAMECALL                         R14 R14 K6 ["GetTextSize"]
       98 CALL                             R14 -1 1
       99 GETTABLEKS                       R14 R14 K7 ["x"]
      101 ADD                              R15 R14 R8
      102 JUMPIFLT                         R5 R15 ; [+5]
      104 GETUPVAL                         R15 1
      105 MOVE                             R16 R13
      106 CONCAT                           R9 R15 R16
      107 FORNLOOP                         R10
      108 RETURN                           R9 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["parsing"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K1 ["filepath"]
       12 GETUPVAL                         R4 4
       13 CALL                             R1 3 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["filepath"]
        4 NAMECALL                         R0 R0 K1 ["requestFileSwap"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["filepath"]
        6 GETUPVAL                         R5 3
        7 CALL                             R2 3 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 DUPCLOSURE                       R3 K1 [PROTO_2]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 DUPCLOSURE                       R4 K2 [PROTO_3]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["Hooks"]
       13 GETTABLEKS                       R4 R4 K4 ["useTokens"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R5 R4 K5 ["Typography"]
       18 GETTABLEKS                       R5 R5 K6 ["TitleSmall"]
       20 GETTABLEKS                       R6 R0 K7 ["TableEntry"]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K8 ["useState"]
       25 GETTABLEKS                       R8 R6 K9 ["filepath"]
       27 CALL                             R7 1 2
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R9 R9 K8 ["useState"]
       31 LOADB                            R10 0
       32 CALL                             R9 1 2
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       36 NEWCLOSURE                       R12 P2
       37 CAPTURE                          VAL R10
       38 CAPTURE                          UPVAL U2
       39 NEWTABLE                         R13 0 0
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 3
       43 GETTABLEKS                       R12 R12 K11 ["useRef"]
       45 LOADNIL                          R13
       46 CALL                             R12 1 1
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R13 R13 K12 ["useLayoutEffect"]
       50 NEWCLOSURE                       R14 P3
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R8
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R15 0 1
       58 GETTABLEKS                       R16 R6 K9 ["filepath"]
       60 SETLIST                          R15 R16 1 [1]
       62 CALL                             R13 2 0
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       66 NEWCLOSURE                       R14 P4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R15 0 2
       71 MOVE                             R16 R1
       72 MOVE                             R17 R6
       73 SETLIST                          R15 R16 2 [1]
       75 CALL                             R13 2 1
       76 GETUPVAL                         R14 3
       77 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       79 NEWCLOSURE                       R15 P5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 NEWTABLE                         R16 0 2
       86 GETTABLEKS                       R17 R6 K9 ["filepath"]
       88 MOVE                             R18 R5
       89 SETLIST                          R16 R17 2 [1]
       91 CALL                             R14 2 1
       92 OR                               R15 R2 R3
       93 GETUPVAL                         R16 5
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K13 ["Text"]
       97 DUPTABLE                         R18 K26 [{["Text"], ["RichText"] = True, ["tag"] = "size-full-full text-body-small text-align-x-left text-align-y-center", ["textStyle"], ["onAbsoluteSizeChanged"], ["onActivated"], ["onSecondaryActivated"], ["onStateChanged"], ["stateLayer"], ["isDisabled"], ["ref"]}]
       98 JUMPIFNOT                        R9 ; [+5]
       99 LOADK                            R20 K27 ["<u>"]
      100 MOVE                             R21 R7
      101 LOADK                            R22 K28 ["</u>"]
      102 CONCAT                           R19 R20 R22
      103 JUMP                             ; [+1]
      104 MOVE                             R19 R7
      105 SETTABLEKS                       R19 R18 K13 ["Text"]
      107 DUPTABLE                         R19 K31 [{"Color3", "Transparency"}]
      108 GETTABLEKS                       R20 R4 K32 ["Color"]
      110 GETTABLEKS                       R20 R20 K33 ["Content"]
      112 GETTABLEKS                       R20 R20 K34 ["Link"]
      114 GETTABLEKS                       R20 R20 K29 ["Color3"]
      116 SETTABLEKS                       R20 R19 K29 ["Color3"]
      118 JUMPIFNOT                        R15 ; [+2]
      119 LOADK                            R20 K35 [0.5]
      120 JUMP                             ; [+1]
      121 LOADN                            R20 0
      122 SETTABLEKS                       R20 R19 K30 ["Transparency"]
      124 SETTABLEKS                       R19 R18 K18 ["textStyle"]
      126 SETTABLEKS                       R14 R18 K19 ["onAbsoluteSizeChanged"]
      128 SETTABLEKS                       R13 R18 K20 ["onActivated"]
      130 GETTABLEKS                       R19 R0 K36 ["SecondaryActivated"]
      132 SETTABLEKS                       R19 R18 K21 ["onSecondaryActivated"]
      134 SETTABLEKS                       R11 R18 K22 ["onStateChanged"]
      136 DUPTABLE                         R19 K38 [{"affordance"}]
      137 GETUPVAL                         R20 2
      138 GETTABLEKS                       R20 R20 K39 ["Enums"]
      140 GETTABLEKS                       R20 R20 K40 ["StateLayerAffordance"]
      142 GETTABLEKS                       R20 R20 K41 ["None"]
      144 SETTABLEKS                       R20 R19 K37 ["affordance"]
      146 SETTABLEKS                       R19 R18 K23 ["stateLayer"]
      148 SETTABLEKS                       R15 R18 K24 ["isDisabled"]
      150 SETTABLEKS                       R12 R18 K25 ["ref"]
      152 CALL                             R16 2 -1
      153 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["TextService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["createElement"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K11 ["Packages"]
       33 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["Controllers"]
       42 GETTABLEKS                       R7 R7 K16 ["FileController"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K18 ["useSelector"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R9 R9 K19 ["Types"]
       60 GETTABLEKS                       R9 R9 K20 ["QueuedSession"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K23 [utf8.char]
       65 LOADN                            R10 8230
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K24 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R11 K25 [PROTO_8]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R4
       77 RETURN                           R11 1
