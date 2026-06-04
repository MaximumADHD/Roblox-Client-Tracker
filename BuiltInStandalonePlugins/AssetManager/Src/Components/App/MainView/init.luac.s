PROTO_0:
        0 JUMPIFNOT                        R0 ; [+26]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 1
        5 NEWTABLE                         R5 2 0
        7 NAMECALL                         R6 R2 K1 ["getNextOrder"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["Tag"]
       15 LOADK                            R8 K4 ["MainContents %*"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R10 K5 ["HasLoadingBar"]
       18 JUMP                             ; [+1]
       19 LOADK                            R10 K6 [""]
       20 NAMECALL                         R8 R8 K7 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 SETTABLE                         R7 R5 R6
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["createElement"]
       30 GETUPVAL                         R4 2
       31 NEWTABLE                         R5 2 0
       33 NAMECALL                         R6 R2 K1 ["getNextOrder"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["Tag"]
       41 LOADK                            R8 K4 ["MainContents %*"]
       42 JUMPIFNOT                        R1 ; [+2]
       43 LOADK                            R10 K5 ["HasLoadingBar"]
       44 JUMP                             ; [+1]
       45 LOADK                            R10 K6 [""]
       46 NAMECALL                         R8 R8 K7 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 SETTABLE                         R7 R5 R6
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R5 R2 K1 ["Uid"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 GETTABLEKS                       R6 R4 K2 ["IsLoading"]
       16 GETUPVAL                         R7 5
       17 GETTABLEKS                       R7 R7 K3 ["createElement"]
       19 GETUPVAL                         R8 6
       20 NEWTABLE                         R9 2 0
       22 GETTABLEKS                       R10 R0 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R10 R10 K5 ["Tag"]
       29 LOADK                            R11 K6 ["X-Stroke X-Top X-Column"]
       30 SETTABLE                         R11 R9 R10
       31 DUPTABLE                         R10 K10 [{"HeaderBar", "Contents", "LoadingBarContainer"}]
       32 GETUPVAL                         R11 5
       33 GETTABLEKS                       R11 R11 K3 ["createElement"]
       35 GETUPVAL                         R12 7
       36 DUPTABLE                         R13 K11 [{"LayoutOrder"}]
       37 NAMECALL                         R14 R1 K12 ["getNextOrder"]
       39 CALL                             R14 1 1
       40 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K7 ["HeaderBar"]
       45 LENGTH                           R12 R5
       46 JUMPIFNOTEQKN                    R12 K13 [0] ; [+15]
       48 GETUPVAL                         R11 5
       49 GETTABLEKS                       R11 R11 K3 ["createElement"]
       51 GETUPVAL                         R12 8
       52 DUPTABLE                         R13 K14 [{"LayoutOrder", "IsLoading"}]
       53 NAMECALL                         R14 R1 K12 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       58 SETTABLEKS                       R6 R13 K2 ["IsLoading"]
       60 CALL                             R11 2 1
       61 JUMP                             ; [+15]
       62 GETUPVAL                         R11 9
       63 GETTABLEKS                       R13 R3 K15 ["ViewType"]
       65 GETUPVAL                         R14 10
       66 GETTABLEKS                       R14 R14 K15 ["ViewType"]
       68 GETTABLEKS                       R14 R14 K16 ["Grid"]
       70 JUMPIFEQ                         R13 R14 ; [+2]
       72 LOADB                            R12 0 +1
       73 LOADB                            R12 1
       74 MOVE                             R13 R6
       75 MOVE                             R14 R1
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K8 ["Contents"]
       79 JUMPIFNOT                        R6 ; [+36]
       80 GETUPVAL                         R11 5
       81 GETTABLEKS                       R11 R11 K3 ["createElement"]
       83 GETUPVAL                         R12 6
       84 NEWTABLE                         R13 2 0
       86 NAMECALL                         R14 R1 K12 ["getNextOrder"]
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R14 R14 K5 ["Tag"]
       94 LOADK                            R15 K17 ["am-size-full-scrollbar"]
       95 SETTABLE                         R15 R13 R14
       96 DUPTABLE                         R14 K19 [{"LoadingBar"}]
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R15 R15 K3 ["createElement"]
      100 GETUPVAL                         R16 11
      101 DUPTABLE                         R17 K21 [{"LayoutOrder", "Progress"}]
      102 NAMECALL                         R18 R1 K12 ["getNextOrder"]
      104 CALL                             R18 1 1
      105 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      107 GETTABLEKS                       R18 R4 K22 ["FetchProgress"]
      109 SETTABLEKS                       R18 R17 K20 ["Progress"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K18 ["LoadingBar"]
      114 CALL                             R11 3 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R11
      117 SETTABLEKS                       R11 R10 K9 ["LoadingBarContainer"]
      119 CALL                             R7 3 -1
      120 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["LoadingBar"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETIMPORT                        R7 K1 [script]
       31 GETTABLEKS                       R7 R7 K12 ["ContentGrid"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K13 ["ContentList"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K14 ["ContentPlaceholder"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R10 R10 K15 ["HeaderBar"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K16 ["Src"]
       59 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       61 GETTABLEKS                       R11 R11 K18 ["useCurrentScope"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K16 ["Src"]
       68 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       70 GETTABLEKS                       R12 R12 K19 ["useFetchProgressInfo"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K16 ["Src"]
       77 GETTABLEKS                       R13 R13 K17 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K20 ["useLayoutInfo"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K16 ["Src"]
       86 GETTABLEKS                       R14 R14 K17 ["Hooks"]
       88 GETTABLEKS                       R14 R14 K21 ["useItems"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R14 R2 K22 ["Util"]
       93 GETTABLEKS                       R14 R14 K23 ["LayoutOrderIterator"]
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K16 ["Src"]
       99 GETTABLEKS                       R16 R16 K24 ["Types"]
      101 CALL                             R15 1 1
      102 DUPCLOSURE                       R16 K25 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 DUPCLOSURE                       R17 K26 [PROTO_1]
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R4
      119 RETURN                           R17 1
