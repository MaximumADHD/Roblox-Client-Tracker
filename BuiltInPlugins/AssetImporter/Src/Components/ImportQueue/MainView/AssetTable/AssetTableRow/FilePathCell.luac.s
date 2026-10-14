PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["FontSize"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Font"]
       10 GETIMPORT                        R5 K4 [Vector2.new]
       12 LOADK                            R6 K5 [∞]
       13 LOADK                            R7 K5 [∞]
       14 CALL                             R5 2 -1
       15 CALL                             R1 -1 1
       16 GETTABLEKS                       R1 R1 K6 ["X"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 3
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K0 ["FontSize"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K1 ["Font"]
       27 GETIMPORT                        R6 K4 [Vector2.new]
       29 LOADK                            R7 K5 [∞]
       30 LOADK                            R8 K5 [∞]
       31 CALL                             R6 2 -1
       32 NAMECALL                         R1 R1 K7 ["GetTextSize"]
       34 CALL                             R1 -1 1
       35 GETTABLEKS                       R1 R1 K8 ["x"]
       37 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U2
        5 MOVE                             R4 R3
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
       10 GETTABLEKS                       R5 R5 K1 ["X"]
       12 LENGTH                           R6 R1
       13 JUMPIFEQKN                       R6 K2 [0] ; [+3]
       15 JUMPIFNOTLE                      R4 R5 ; [+2]
       17 RETURN                           R1 1
       18 MOVE                             R6 R3
       19 GETUPVAL                         R7 3
       20 CALL                             R6 1 1
       21 MOVE                             R7 R3
       22 FASTCALL2K                       STRING_SUB R1 K3 ; [+5]
       24 MOVE                             R9 R1
       25 LOADK                            R10 K3 [-1]
       26 GETIMPORT                        R8 K6 [string.sub]
       28 CALL                             R8 2 1
       29 CALL                             R7 1 1
       30 ADD                              R8 R6 R7
       31 LOADK                            R9 K7 [""]
       32 LENGTH                           R12 R1
       33 LOADN                            R10 1
       34 LOADN                            R11 -1
       35 FORNPREP                         R10
       36 LENGTH                           R16 R1
       37 FASTCALL3                        STRING_SUB R1 R12 R16
       39 MOVE                             R14 R1
       40 MOVE                             R15 R12
       41 GETIMPORT                        R13 K6 [string.sub]
       43 CALL                             R13 3 1
       44 MOVE                             R14 R3
       45 MOVE                             R15 R13
       46 CALL                             R14 1 1
       47 ADD                              R15 R14 R8
       48 JUMPIFLT                         R5 R15 ; [+5]
       50 GETUPVAL                         R15 3
       51 MOVE                             R16 R13
       52 CONCAT                           R9 R15 R16
       53 FORNLOOP                         R10
       54 RETURN                           R9 1

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
       36 GETTABLEKS                       R6 R5 K7 ["Utility"]
       38 GETTABLEKS                       R6 R6 K15 ["Flags"]
       40 GETTABLEKS                       R6 R6 K16 ["FoundationStudioFontFaceMigration"]
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Packages"]
       46 GETTABLEKS                       R8 R8 K17 ["Framework"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K18 ["Util"]
       51 GETTABLEKS                       R8 R8 K19 ["GetTextSize"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R10 R10 K20 ["Controllers"]
       59 GETTABLEKS                       R10 R10 K21 ["FileController"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Src"]
       66 GETTABLEKS                       R11 R11 K22 ["Hooks"]
       68 GETTABLEKS                       R11 R11 K23 ["useSelector"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Src"]
       75 GETTABLEKS                       R12 R12 K24 ["Types"]
       77 GETTABLEKS                       R12 R12 K25 ["QueuedSession"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K28 [utf8.char]
       82 LOADN                            R13 8230
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K29 [PROTO_1]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R12
       89 DUPCLOSURE                       R14 K30 [PROTO_8]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R4
       96 RETURN                           R14 1
