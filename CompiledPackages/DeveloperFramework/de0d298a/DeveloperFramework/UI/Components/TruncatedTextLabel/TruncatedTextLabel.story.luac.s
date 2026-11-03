PROTO_0:
        0 DUPTABLE                         R1 K1 [{"count"}]
        1 GETTABLEKS                       R3 R0 K0 ["count"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["count"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K2 [{[1] = 1}]
        1 NAMECALL                         R1 R0 K3 ["setState"]
        3 CALL                             R1 2 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K4 ["updateCount"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["count"]
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K3 [tostring]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["createElement"]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R4 K13 [{["Size"], ["AutomaticSize"], ["Padding"] = 50, ["Spacing"] = 10, ["Layout"], ["HorizontalAlignment"]}]
       13 GETIMPORT                        R5 K16 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K5 ["Size"]
       22 GETIMPORT                        R5 K19 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R5 R4 K6 ["AutomaticSize"]
       26 GETIMPORT                        R5 K22 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R5 R4 K11 ["Layout"]
       30 GETIMPORT                        R5 K24 [Enum.HorizontalAlignment.Left]
       32 SETTABLEKS                       R5 R4 K12 ["HorizontalAlignment"]
       34 DUPTABLE                         R5 K29 [{"Instruction", "SuffixLength", "NoSuffixLength", "On"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K4 ["createElement"]
       38 GETUPVAL                         R7 2
       39 DUPTABLE                         R8 K35 [{["Text"] = "Resize the storybook window!", ["Size"], ["AutomaticSize"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
       40 GETIMPORT                        R9 K16 [UDim2.new]
       42 LOADN                            R10 1
       43 LOADN                            R11 0
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 CALL                             R9 4 1
       47 SETTABLEKS                       R9 R8 K5 ["Size"]
       49 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       53 GETIMPORT                        R9 K36 [Enum.TextXAlignment.Left]
       55 SETTABLEKS                       R9 R8 K32 ["TextXAlignment"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K25 ["Instruction"]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K4 ["createElement"]
       63 GETUPVAL                         R7 2
       64 DUPTABLE                         R8 K40 [{["Text"] = "This line has a suffix length of 8. This line has a suffix length of 8.", ["SuffixLength"] = 8, ["Size"], ["AutomaticSize"], ["TextXAlignment"], ["LayoutOrder"] = 3}]
       65 GETIMPORT                        R9 K16 [UDim2.new]
       67 LOADN                            R10 1
       68 LOADN                            R11 0
       69 LOADN                            R12 0
       70 LOADN                            R13 0
       71 CALL                             R9 4 1
       72 SETTABLEKS                       R9 R8 K5 ["Size"]
       74 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       78 GETIMPORT                        R9 K36 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R9 R8 K32 ["TextXAlignment"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K26 ["SuffixLength"]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R6 R6 K4 ["createElement"]
       88 GETUPVAL                         R7 2
       89 DUPTABLE                         R8 K43 [{["Text"] = "This line has no suffix length. This line has no suffix length. ", ["Size"], ["AutomaticSize"], ["TextXAlignment"], ["LayoutOrder"] = 4}]
       90 GETIMPORT                        R9 K16 [UDim2.new]
       92 LOADN                            R10 1
       93 LOADN                            R11 0
       94 LOADN                            R12 0
       95 LOADN                            R13 0
       96 CALL                             R9 4 1
       97 SETTABLEKS                       R9 R8 K5 ["Size"]
       99 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
      103 GETIMPORT                        R9 K36 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R9 R8 K32 ["TextXAlignment"]
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K27 ["NoSuffixLength"]
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R6 R6 K4 ["createElement"]
      113 GETUPVAL                         R7 2
      114 NEWTABLE                         R8 8 0
      116 LOADK                            R10 K44 ["Number of times the absolute size of this text label has changed is: "]
      117 MOVE                             R11 R1
      118 CONCAT                           R9 R10 R11
      119 SETTABLEKS                       R9 R8 K30 ["Text"]
      121 FASTCALL1                        STRING_LEN R1 ; [+3]
      122 MOVE                             R10 R1
      123 GETIMPORT                        R9 K47 [string.len]
      125 CALL                             R9 1 1
      126 SETTABLEKS                       R9 R8 K26 ["SuffixLength"]
      128 GETIMPORT                        R9 K16 [UDim2.new]
      130 LOADN                            R10 1
      131 LOADN                            R11 0
      132 LOADN                            R12 0
      133 LOADN                            R13 0
      134 CALL                             R9 4 1
      135 SETTABLEKS                       R9 R8 K5 ["Size"]
      137 GETIMPORT                        R9 K19 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
      141 GETIMPORT                        R9 K36 [Enum.TextXAlignment.Left]
      143 SETTABLEKS                       R9 R8 K32 ["TextXAlignment"]
      145 LOADN                            R9 4
      146 SETTABLEKS                       R9 R8 K33 ["LayoutOrder"]
      148 GETUPVAL                         R9 0
      149 GETTABLEKS                       R9 R9 K48 ["Change"]
      151 GETTABLEKS                       R9 R9 K49 ["AbsoluteSize"]
      153 GETTABLEKS                       R10 R0 K50 ["updateCount"]
      155 SETTABLE                         R10 R8 R9
      156 CALL                             R6 2 1
      157 SETTABLEKS                       R6 R5 K28 ["On"]
      159 CALL                             R2 3 -1
      160 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["TruncatedTextLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleTruncatedTextLabel"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
