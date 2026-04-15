PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"AutomaticSize", "LayoutOrder"}]
        5 GETIMPORT                        R5 K6 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R5 R4 K1 ["AutomaticSize"]
        9 GETTABLEKS                       R5 R1 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 DUPTABLE                         R5 K8 [{"Story"}]
       14 SETTABLEKS                       R0 R5 K7 ["Story"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["JoinDictionaries"]
        3 DUPTABLE                         R3 K3 [{"frameProps", "storyRenderer"}]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R3 K1 ["frameProps"]
        8 DUPCLOSURE                       R4 K4 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R4 R3 K2 ["storyRenderer"]
       13 MOVE                             R4 R1
       14 JUMPIF                           R4 ; [+2]
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 MOVE                             R1 R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K5 ["new"]
       22 CALL                             R2 0 1
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R4 R0
       26 CALL                             R4 0 1
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R6 R7 K6 ["Dictionary"]
       30 GETTABLEKS                       R5 R6 K7 ["keys"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [table.sort]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 0
       38 GETIMPORT                        R6 K12 [ipairs]
       40 MOVE                             R7 R5
       41 CALL                             R6 1 3
       42 FORGPREP_INEXT                   R6
       43 GETTABLE                         R11 R4 R10
       44 JUMPIFEQKNIL                     R11 ; [+39]
       46 LOADK                            R13 K13 ["Title_"]
       47 MOVE                             R14 R10
       48 CONCAT                           R12 R13 R14
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R13 R14 K14 ["createElement"]
       52 GETUPVAL                         R14 5
       53 DUPTABLE                         R15 K19 [{"LayoutOrder", "Style", "Text", "AutomaticSize"}]
       54 NAMECALL                         R16 R2 K20 ["getNextOrder"]
       56 CALL                             R16 1 1
       57 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       59 LOADK                            R16 K21 ["Bold"]
       60 SETTABLEKS                       R16 R15 K16 ["Style"]
       62 SETTABLEKS                       R10 R15 K17 ["Text"]
       64 GETIMPORT                        R16 K24 [Enum.AutomaticSize.XY]
       66 SETTABLEKS                       R16 R15 K18 ["AutomaticSize"]
       68 CALL                             R13 2 1
       69 SETTABLE                         R13 R3 R12
       70 LOADK                            R13 K25 ["Story_"]
       71 MOVE                             R14 R10
       72 CONCAT                           R12 R13 R14
       73 GETTABLEKS                       R13 R1 K2 ["storyRenderer"]
       75 MOVE                             R14 R11
       76 DUPTABLE                         R15 K26 [{"LayoutOrder"}]
       77 NAMECALL                         R16 R2 K20 ["getNextOrder"]
       79 CALL                             R16 1 1
       80 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       82 CALL                             R13 2 1
       83 SETTABLE                         R13 R3 R12
       84 FORGLOOP                         R6 2 [inext] ; [-42]
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R6 R7 K14 ["createElement"]
       89 GETUPVAL                         R7 2
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R8 R9 K0 ["JoinDictionaries"]
       93 DUPTABLE                         R9 K30 [{"AutomaticSize", "Layout", "HorizontalAlignment", "Spacing", "Style"}]
       94 GETIMPORT                        R10 K24 [Enum.AutomaticSize.XY]
       96 SETTABLEKS                       R10 R9 K18 ["AutomaticSize"]
       98 GETIMPORT                        R10 K33 [Enum.FillDirection.Vertical]
      100 SETTABLEKS                       R10 R9 K27 ["Layout"]
      102 GETIMPORT                        R10 K35 [Enum.HorizontalAlignment.Left]
      104 SETTABLEKS                       R10 R9 K28 ["HorizontalAlignment"]
      106 LOADN                            R10 10
      107 SETTABLEKS                       R10 R9 K29 ["Spacing"]
      109 GETTABLEKS                       R10 R1 K16 ["Style"]
      111 SETTABLEKS                       R10 R9 K16 ["Style"]
      113 GETTABLEKS                       R10 R1 K1 ["frameProps"]
      115 CALL                             R8 2 1
      116 MOVE                             R9 R3
      117 CALL                             R6 3 -1
      118 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["UI"]
       18 GETTABLEKS                       R4 R5 K7 ["Components"]
       20 GETTABLEKS                       R3 R4 K8 ["Pane"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K6 ["UI"]
       27 GETTABLEKS                       R5 R6 K7 ["Components"]
       29 GETTABLEKS                       R4 R5 K9 ["TextLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K2 ["Parent"]
       36 GETTABLEKS                       R5 R6 K10 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K12 ["Immutable"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R8 R0 K11 ["Util"]
       50 GETTABLEKS                       R7 R8 K13 ["LayoutOrderIterator"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K14 [PROTO_1]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 RETURN                           R7 1
