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
        5 CALL                             R2 0 3
        6 GETUPVAL                         R5 2
        7 CALL                             R5 0 1
        8 GETUPVAL                         R6 3
        9 CALL                             R6 0 1
       10 GETUPVAL                         R7 4
       11 GETTABLEKS                       R8 R5 K1 ["Uid"]
       13 CALL                             R7 1 1
       14 GETUPVAL                         R8 5
       15 CALL                             R8 0 1
       16 GETTABLEKS                       R9 R7 K2 ["IsLoading"]
       18 GETUPVAL                         R10 6
       19 GETTABLEKS                       R10 R10 K3 ["createElement"]
       21 GETUPVAL                         R11 7
       22 NEWTABLE                         R12 2 0
       24 GETTABLEKS                       R13 R0 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       28 GETUPVAL                         R13 6
       29 GETTABLEKS                       R13 R13 K5 ["Tag"]
       31 LOADK                            R14 K6 ["X-Stroke X-Top X-Column"]
       32 SETTABLE                         R14 R12 R13
       33 DUPTABLE                         R13 K11 [{"HeaderBar", "Contents", "LoadingBarContainer", "FooterBar"}]
       34 JUMPIFNOT                        R4 ; [+12]
       35 GETUPVAL                         R14 6
       36 GETTABLEKS                       R14 R14 K3 ["createElement"]
       38 GETUPVAL                         R15 8
       39 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
       40 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       42 CALL                             R17 1 1
       43 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       45 CALL                             R14 2 1
       46 JUMP                             ; [+11]
       47 GETUPVAL                         R14 6
       48 GETTABLEKS                       R14 R14 K3 ["createElement"]
       50 GETUPVAL                         R15 9
       51 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
       52 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       54 CALL                             R17 1 1
       55 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K7 ["HeaderBar"]
       60 LENGTH                           R15 R8
       61 JUMPIFNOTEQKN                    R15 K14 [0] ; [+15]
       63 GETUPVAL                         R14 6
       64 GETTABLEKS                       R14 R14 K3 ["createElement"]
       66 GETUPVAL                         R15 10
       67 DUPTABLE                         R16 K15 [{"LayoutOrder", "IsLoading"}]
       68 NAMECALL                         R17 R1 K13 ["getNextOrder"]
       70 CALL                             R17 1 1
       71 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       73 SETTABLEKS                       R9 R16 K2 ["IsLoading"]
       75 CALL                             R14 2 1
       76 JUMP                             ; [+15]
       77 GETUPVAL                         R14 11
       78 GETTABLEKS                       R16 R6 K16 ["ViewType"]
       80 GETUPVAL                         R17 12
       81 GETTABLEKS                       R17 R17 K16 ["ViewType"]
       83 GETTABLEKS                       R17 R17 K17 ["Grid"]
       85 JUMPIFEQ                         R16 R17 ; [+2]
       87 LOADB                            R15 0 +1
       88 LOADB                            R15 1
       89 MOVE                             R16 R9
       90 MOVE                             R17 R1
       91 CALL                             R14 3 1
       92 SETTABLEKS                       R14 R13 K8 ["Contents"]
       94 JUMPIFNOT                        R9 ; [+36]
       95 GETUPVAL                         R14 6
       96 GETTABLEKS                       R14 R14 K3 ["createElement"]
       98 GETUPVAL                         R15 7
       99 NEWTABLE                         R16 2 0
      101 NAMECALL                         R17 R1 K13 ["getNextOrder"]
      103 CALL                             R17 1 1
      104 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      106 GETUPVAL                         R17 6
      107 GETTABLEKS                       R17 R17 K5 ["Tag"]
      109 LOADK                            R18 K18 ["am-size-full-scrollbar"]
      110 SETTABLE                         R18 R16 R17
      111 DUPTABLE                         R17 K20 [{"LoadingBar"}]
      112 GETUPVAL                         R18 6
      113 GETTABLEKS                       R18 R18 K3 ["createElement"]
      115 GETUPVAL                         R19 13
      116 DUPTABLE                         R20 K22 [{"LayoutOrder", "Progress"}]
      117 NAMECALL                         R21 R1 K13 ["getNextOrder"]
      119 CALL                             R21 1 1
      120 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      122 GETTABLEKS                       R21 R7 K23 ["FetchProgress"]
      124 SETTABLEKS                       R21 R20 K21 ["Progress"]
      126 CALL                             R18 2 1
      127 SETTABLEKS                       R18 R17 K19 ["LoadingBar"]
      129 CALL                             R14 3 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R14
      132 SETTABLEKS                       R14 R13 K9 ["LoadingBarContainer"]
      134 JUMPIFNOT                        R4 ; [+12]
      135 GETUPVAL                         R14 6
      136 GETTABLEKS                       R14 R14 K3 ["createElement"]
      138 GETUPVAL                         R15 14
      139 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
      140 NAMECALL                         R17 R1 K13 ["getNextOrder"]
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      145 CALL                             R14 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R14
      148 SETTABLEKS                       R14 R13 K10 ["FooterBar"]
      150 CALL                             R10 3 -1
      151 RETURN                           R10 -1

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
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K16 ["Compact"]
       61 GETTABLEKS                       R11 R11 K15 ["HeaderBar"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R12 R12 K16 ["Compact"]
       70 GETTABLEKS                       R12 R12 K17 ["FooterBar"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K18 ["Src"]
       77 GETTABLEKS                       R13 R13 K19 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K20 ["useCurrentScope"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K18 ["Src"]
       86 GETTABLEKS                       R14 R14 K19 ["Hooks"]
       88 GETTABLEKS                       R14 R14 K21 ["useFetchProgressInfo"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R0 K18 ["Src"]
       95 GETTABLEKS                       R15 R15 K19 ["Hooks"]
       97 GETTABLEKS                       R15 R15 K22 ["useLayoutInfo"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K18 ["Src"]
      104 GETTABLEKS                       R16 R16 K19 ["Hooks"]
      106 GETTABLEKS                       R16 R16 K23 ["usePluginSize"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R17 R0 K18 ["Src"]
      113 GETTABLEKS                       R17 R17 K19 ["Hooks"]
      115 GETTABLEKS                       R17 R17 K24 ["useItems"]
      117 CALL                             R16 1 1
      118 GETTABLEKS                       R17 R2 K25 ["Util"]
      120 GETTABLEKS                       R17 R17 K26 ["LayoutOrderIterator"]
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K18 ["Src"]
      126 GETTABLEKS                       R19 R19 K27 ["Types"]
      128 CALL                             R18 1 1
      129 DUPCLOSURE                       R19 K28 [PROTO_0]
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R7
      133 DUPCLOSURE                       R20 K29 [PROTO_1]
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R11
      149 RETURN                           R20 1
