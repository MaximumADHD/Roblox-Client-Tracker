PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 GETTABLEKS                       R6 R0 K0 ["TextSize"]
        4 GETTABLEKS                       R7 R0 K1 ["Font"]
        6 GETIMPORT                        R8 K4 [Vector2.new]
        8 LOADK                            R9 K5 [∞]
        9 LOADK                            R10 K5 [∞]
       10 CALL                             R8 2 -1
       11 NAMECALL                         R3 R3 K6 ["GetTextSize"]
       13 CALL                             R3 -1 1
       14 GETTABLEKS                       R2 R3 K7 ["x"]
       16 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R5 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R4 R5 K1 ["X"]
        4 MOVE                             R5 R3
        5 MOVE                             R6 R0
        6 MOVE                             R7 R2
        7 CALL                             R5 2 1
        8 LENGTH                           R6 R2
        9 JUMPIFEQKN                       R6 K2 [0] ; [+3]
       11 JUMPIFNOTLE                      R5 R4 ; [+4]
       13 SETTABLEKS                       R2 R0 K3 ["Text"]
       15 RETURN                           R0 0
       16 MOVE                             R6 R3
       17 MOVE                             R7 R0
       18 GETUPVAL                         R8 0
       19 CALL                             R6 2 1
       20 MOVE                             R7 R3
       21 MOVE                             R8 R0
       22 FASTCALL2K                       STRING_SUB R2 K4 ; [+5]
       24 MOVE                             R10 R2
       25 LOADK                            R11 K4 [-1]
       26 GETIMPORT                        R9 K7 [string.sub]
       28 CALL                             R9 2 1
       29 CALL                             R7 2 1
       30 ADD                              R8 R6 R7
       31 LOADK                            R9 K8 [""]
       32 LENGTH                           R12 R2
       33 LOADN                            R10 1
       34 LOADN                            R11 255
       35 FORNPREP                         R10
       36 LENGTH                           R16 R2
       37 FASTCALL3                        STRING_SUB R2 R12 R16
       39 MOVE                             R14 R2
       40 MOVE                             R15 R12
       41 GETIMPORT                        R13 K7 [string.sub]
       43 CALL                             R13 3 1
       44 MOVE                             R14 R3
       45 MOVE                             R15 R0
       46 MOVE                             R16 R13
       47 CALL                             R14 2 1
       48 ADD                              R15 R14 R8
       49 JUMPIFLT                         R4 R15 ; [+5]
       51 GETUPVAL                         R15 0
       52 MOVE                             R16 R13
       53 CONCAT                           R9 R15 R16
       54 FORNLOOP                         R10
       55 SETTABLEKS                       R9 R0 K3 ["Text"]
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K0 ["current"]
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 CALL                             R0 4 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K0 ["current"]
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 CALL                             R0 4 0
       18 LOADNIL                          R0
       19 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K0 ["LayoutOrder"]
        8 GETTABLEKS                       R4 R0 K1 ["Size"]
       10 GETTABLEKS                       R5 R0 K2 ["Text"]
       12 GETTABLEKS                       R6 R0 K3 ["OnClick"]
       14 GETTABLEKS                       R7 R0 K4 ["Style"]
       16 GETTABLEKS                       R8 R0 K5 ["mockGetTextWidth"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 MOVE                             R9 R8
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R9 1
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R9
       28 GETUPVAL                         R11 3
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R9
       35 CALL                             R11 1 0
       36 GETUPVAL                         R12 4
       37 GETTABLEKS                       R11 R12 K6 ["createElement"]
       39 GETUPVAL                         R12 5
       40 DUPTABLE                         R13 K10 [{"Size", "onAbsoluteSizeChanged", "tag", "ref"}]
       41 SETTABLEKS                       R4 R13 K1 ["Size"]
       43 SETTABLEKS                       R10 R13 K7 ["onAbsoluteSizeChanged"]
       45 LOADK                            R14 K11 ["row align-x-left align-y-center clip"]
       46 SETTABLEKS                       R14 R13 K8 ["tag"]
       48 SETTABLEKS                       R2 R13 K9 ["ref"]
       50 DUPTABLE                         R14 K13 [{"Contents"}]
       51 GETUPVAL                         R16 4
       52 GETTABLEKS                       R15 R16 K6 ["createElement"]
       54 GETUPVAL                         R16 6
       55 DUPTABLE                         R17 K16 [{"LayoutOrder", "Size", "Text", "TextWrapped", "OnClick", "Style", "TextTruncate", "ref"}]
       56 SETTABLEKS                       R3 R17 K0 ["LayoutOrder"]
       58 SETTABLEKS                       R4 R17 K1 ["Size"]
       60 SETTABLEKS                       R5 R17 K2 ["Text"]
       62 LOADB                            R18 1
       63 SETTABLEKS                       R18 R17 K14 ["TextWrapped"]
       65 SETTABLEKS                       R6 R17 K3 ["OnClick"]
       67 SETTABLEKS                       R7 R17 K4 ["Style"]
       69 GETIMPORT                        R18 K19 [Enum.TextTruncate.SplitWord]
       71 SETTABLEKS                       R18 R17 K15 ["TextTruncate"]
       73 SETTABLEKS                       R1 R17 K9 ["ref"]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K12 ["Contents"]
       78 CALL                             R11 3 -1
       79 RETURN                           R11 -1

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
       27 GETTABLEKS                       R4 R3 K13 ["useRef"]
       29 GETTABLEKS                       R5 R3 K14 ["useEffect"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R8 R0 K11 ["Packages"]
       35 GETTABLEKS                       R7 R8 K15 ["Framework"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R8 R6 K16 ["UI"]
       40 GETTABLEKS                       R7 R8 K17 ["LinkText"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R10 R0 K11 ["Packages"]
       46 GETTABLEKS                       R9 R10 K18 ["Foundation"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K19 ["View"]
       51 GETIMPORT                        R10 K22 [utf8.char]
       53 LOADN                            R11 38
       54 CALL                             R10 1 1
       55 DUPCLOSURE                       R11 K23 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 DUPCLOSURE                       R12 K24 [PROTO_1]
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R13 K25 [PROTO_4]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R7
       67 RETURN                           R13 1
