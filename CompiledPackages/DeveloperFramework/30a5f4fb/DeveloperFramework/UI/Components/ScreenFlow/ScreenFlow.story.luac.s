PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETTABLEKS                       R2 R0 K1 ["BackButtonEnabled"]
        4 GETTABLEKS                       R3 R0 K2 ["NextButtonEnabled"]
        6 GETTABLEKS                       R4 R0 K3 ["HasBackButton"]
        8 GETTABLEKS                       R5 R0 K4 ["HasNextButton"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R6 R0 K5 ["GoToNext"]
       13 JUMPIF                           R6 ; [+1]
       14 DUPCLOSURE                       R6 K6 [PROTO_0]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R7 R0 K7 ["GoToPrevious"]
       18 JUMPIF                           R7 ; [+1]
       19 DUPCLOSURE                       R7 K8 [PROTO_1]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K9 ["new"]
       23 CALL                             R8 0 1
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K10 ["createElement"]
       27 GETUPVAL                         R10 2
       28 DUPTABLE                         R11 K15 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       29 GETIMPORT                        R12 K17 [UDim2.new]
       31 LOADN                            R13 1
       32 LOADN                            R14 0
       33 LOADN                            R15 0
       34 LOADN                            R16 200
       35 CALL                             R12 4 1
       36 SETTABLEKS                       R12 R11 K11 ["Size"]
       38 GETIMPORT                        R12 K21 [Enum.FillDirection.Vertical]
       40 SETTABLEKS                       R12 R11 K12 ["Layout"]
       42 GETIMPORT                        R12 K23 [Enum.HorizontalAlignment.Center]
       44 SETTABLEKS                       R12 R11 K13 ["HorizontalAlignment"]
       46 GETIMPORT                        R12 K24 [Enum.VerticalAlignment.Center]
       48 SETTABLEKS                       R12 R11 K14 ["VerticalAlignment"]
       50 DUPTABLE                         R12 K27 [{"Prompt", "NextAndBackButtonContainer"}]
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R13 R14 K10 ["createElement"]
       54 GETUPVAL                         R14 3
       55 DUPTABLE                         R15 K31 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "LayoutOrder"}]
       56 GETIMPORT                        R16 K32 [Enum.TextXAlignment.Center]
       58 SETTABLEKS                       R16 R15 K28 ["TextXAlignment"]
       60 GETIMPORT                        R16 K33 [Enum.TextYAlignment.Center]
       62 SETTABLEKS                       R16 R15 K29 ["TextYAlignment"]
       64 GETIMPORT                        R16 K17 [UDim2.new]
       66 LOADN                            R17 1
       67 LOADN                            R18 0
       68 LOADN                            R19 1
       69 LOADN                            R20 0
       70 CALL                             R16 4 1
       71 SETTABLEKS                       R16 R15 K11 ["Size"]
       73 SETTABLEKS                       R1 R15 K0 ["Text"]
       75 NAMECALL                         R16 R8 K34 ["getNextOrder"]
       77 CALL                             R16 1 1
       78 SETTABLEKS                       R16 R15 K30 ["LayoutOrder"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K25 ["Prompt"]
       83 GETUPVAL                         R14 1
       84 GETTABLEKS                       R13 R14 K10 ["createElement"]
       86 GETUPVAL                         R14 2
       87 DUPTABLE                         R15 K36 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       88 GETIMPORT                        R16 K17 [UDim2.new]
       90 LOADN                            R17 1
       91 LOADN                            R18 0
       92 LOADN                            R19 0
       93 LOADN                            R20 24
       94 CALL                             R16 4 1
       95 SETTABLEKS                       R16 R15 K11 ["Size"]
       97 NAMECALL                         R16 R8 K34 ["getNextOrder"]
       99 CALL                             R16 1 1
      100 SETTABLEKS                       R16 R15 K30 ["LayoutOrder"]
      102 GETIMPORT                        R16 K38 [Enum.FillDirection.Horizontal]
      104 SETTABLEKS                       R16 R15 K12 ["Layout"]
      106 GETIMPORT                        R16 K40 [Enum.HorizontalAlignment.Right]
      108 SETTABLEKS                       R16 R15 K13 ["HorizontalAlignment"]
      110 GETIMPORT                        R16 K24 [Enum.VerticalAlignment.Center]
      112 SETTABLEKS                       R16 R15 K14 ["VerticalAlignment"]
      114 LOADN                            R16 12
      115 SETTABLEKS                       R16 R15 K35 ["Spacing"]
      117 DUPTABLE                         R16 K43 [{"BackButton", "NextButton"}]
      118 MOVE                             R17 R4
      119 JUMPIFNOT                        R17 ; [+33]
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R17 R18 K10 ["createElement"]
      123 GETUPVAL                         R18 4
      124 DUPTABLE                         R19 K46 [{"Text", "StyleModifier", "Size", "OnClick", "LayoutOrder"}]
      125 LOADK                            R20 K47 ["Back"]
      126 SETTABLEKS                       R20 R19 K0 ["Text"]
      128 JUMPIF                           R2 ; [+4]
      129 GETUPVAL                         R21 5
      130 GETTABLEKS                       R20 R21 K48 ["Disabled"]
      132 JUMPIF                           R20 ; [+1]
      133 LOADNIL                          R20
      134 SETTABLEKS                       R20 R19 K44 ["StyleModifier"]
      136 GETIMPORT                        R20 K17 [UDim2.new]
      138 LOADN                            R21 0
      139 LOADN                            R22 64
      140 LOADN                            R23 1
      141 LOADN                            R24 0
      142 CALL                             R20 4 1
      143 SETTABLEKS                       R20 R19 K11 ["Size"]
      145 SETTABLEKS                       R7 R19 K45 ["OnClick"]
      147 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      149 CALL                             R20 1 1
      150 SETTABLEKS                       R20 R19 K30 ["LayoutOrder"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K41 ["BackButton"]
      155 MOVE                             R17 R5
      156 JUMPIFNOT                        R17 ; [+33]
      157 GETUPVAL                         R18 1
      158 GETTABLEKS                       R17 R18 K10 ["createElement"]
      160 GETUPVAL                         R18 4
      161 DUPTABLE                         R19 K46 [{"Text", "StyleModifier", "Size", "OnClick", "LayoutOrder"}]
      162 LOADK                            R20 K49 ["Next"]
      163 SETTABLEKS                       R20 R19 K0 ["Text"]
      165 JUMPIF                           R3 ; [+4]
      166 GETUPVAL                         R21 5
      167 GETTABLEKS                       R20 R21 K48 ["Disabled"]
      169 JUMPIF                           R20 ; [+1]
      170 LOADNIL                          R20
      171 SETTABLEKS                       R20 R19 K44 ["StyleModifier"]
      173 GETIMPORT                        R20 K17 [UDim2.new]
      175 LOADN                            R21 0
      176 LOADN                            R22 64
      177 LOADN                            R23 1
      178 LOADN                            R24 0
      179 CALL                             R20 4 1
      180 SETTABLEKS                       R20 R19 K11 ["Size"]
      182 SETTABLEKS                       R6 R19 K45 ["OnClick"]
      184 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      186 CALL                             R20 1 1
      187 SETTABLEKS                       R20 R19 K30 ["LayoutOrder"]
      189 CALL                             R17 2 1
      190 SETTABLEKS                       R17 R16 K42 ["NextButton"]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K26 ["NextAndBackButtonContainer"]
      195 CALL                             R9 3 -1
      196 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K8 [{"Text", "NextButtonEnabled", "BackButtonEnabled", "HasBackButton", "HasNextButton", "GoToNext", "GoToPrevious"}]
        4 LOADK                            R4 K9 ["First Screen"]
        5 SETTABLEKS                       R4 R3 K1 ["Text"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["NextButtonEnabled"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K3 ["BackButtonEnabled"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["HasBackButton"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["HasNextButton"]
       19 GETTABLEKS                       R4 R1 K6 ["GoToNext"]
       21 SETTABLEKS                       R4 R3 K6 ["GoToNext"]
       23 GETTABLEKS                       R4 R1 K7 ["GoToPrevious"]
       25 SETTABLEKS                       R4 R3 K7 ["GoToPrevious"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K8 [{"Text", "NextButtonEnabled", "BackButtonEnabled", "HasBackButton", "HasNextButton", "GoToNext", "GoToPrevious"}]
        4 LOADK                            R4 K9 ["Second Screen"]
        5 SETTABLEKS                       R4 R3 K1 ["Text"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["NextButtonEnabled"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["BackButtonEnabled"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["HasBackButton"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["HasNextButton"]
       19 GETTABLEKS                       R4 R1 K6 ["GoToNext"]
       21 SETTABLEKS                       R4 R3 K6 ["GoToNext"]
       23 GETTABLEKS                       R4 R1 K7 ["GoToPrevious"]
       25 SETTABLEKS                       R4 R3 K7 ["GoToPrevious"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K8 [{"Text", "NextButtonEnabled", "BackButtonEnabled", "HasBackButton", "HasNextButton", "GoToNext", "GoToPrevious"}]
        4 LOADK                            R4 K9 ["Last Screen"]
        5 SETTABLEKS                       R4 R3 K1 ["Text"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["NextButtonEnabled"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["BackButtonEnabled"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["HasBackButton"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K5 ["HasNextButton"]
       19 GETTABLEKS                       R4 R1 K6 ["GoToNext"]
       21 SETTABLEKS                       R4 R3 K6 ["GoToNext"]
       23 GETTABLEKS                       R4 R1 K7 ["GoToPrevious"]
       25 SETTABLEKS                       R4 R3 K7 ["GoToPrevious"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K8 [{"Text", "NextButtonEnabled", "BackButtonEnabled", "HasBackButton", "HasNextButton", "GoToNext", "GoToPrevious"}]
        4 LOADK                            R4 K9 ["Last Screen"]
        5 SETTABLEKS                       R4 R3 K1 ["Text"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["NextButtonEnabled"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["BackButtonEnabled"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["HasBackButton"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["HasNextButton"]
       19 GETTABLEKS                       R4 R1 K6 ["GoToNext"]
       21 SETTABLEKS                       R4 R3 K6 ["GoToNext"]
       23 GETTABLEKS                       R4 R1 K7 ["GoToPrevious"]
       25 SETTABLEKS                       R4 R3 K7 ["GoToPrevious"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["ScreenFlow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["DEPRECATED_Button"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R8 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R8 K8 ["Components"]
       49 GETTABLEKS                       R6 R7 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Util"]
       56 GETTABLEKS                       R7 R8 K14 ["StyleModifier"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Util"]
       63 GETTABLEKS                       R8 R9 K15 ["LayoutOrderIterator"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       68 LOADK                            R10 K17 ["StartScreen"]
       69 NAMECALL                         R8 R8 K18 ["extend"]
       71 CALL                             R8 2 1
       72 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       74 LOADK                            R11 K19 ["MiddleScreen"]
       75 NAMECALL                         R9 R9 K18 ["extend"]
       77 CALL                             R9 2 1
       78 GETTABLEKS                       R10 R1 K16 ["PureComponent"]
       80 LOADK                            R12 K20 ["EndScreen"]
       81 NAMECALL                         R10 R10 K18 ["extend"]
       83 CALL                             R10 2 1
       84 GETTABLEKS                       R11 R1 K16 ["PureComponent"]
       86 LOADK                            R13 K21 ["EndScreenCycle"]
       87 NAMECALL                         R11 R11 K18 ["extend"]
       89 CALL                             R11 2 1
       90 DUPCLOSURE                       R12 K22 [PROTO_2]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R6
       97 DUPCLOSURE                       R13 K23 [PROTO_3]
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R13 R8 K24 ["render"]
      101 DUPCLOSURE                       R13 K25 [PROTO_4]
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R13 R9 K24 ["render"]
      105 DUPCLOSURE                       R13 K26 [PROTO_5]
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R13 R10 K24 ["render"]
      109 DUPCLOSURE                       R13 K27 [PROTO_6]
      110 CAPTURE                          VAL R12
      111 SETTABLEKS                       R13 R11 K24 ["render"]
      113 NEWTABLE                         R13 0 3
      115 MOVE                             R14 R8
      116 MOVE                             R15 R9
      117 MOVE                             R16 R10
      118 SETLIST                          R13 R14 3 [1]
      120 NEWTABLE                         R14 0 3
      122 MOVE                             R15 R8
      123 MOVE                             R16 R9
      124 MOVE                             R17 R11
      125 SETLIST                          R14 R15 3 [1]
      127 DUPTABLE                         R15 K29 [{"stories"}]
      128 NEWTABLE                         R16 0 2
      130 DUPTABLE                         R17 K32 [{"name", "story"}]
      131 LOADK                            R18 K33 ["Default Linear Flow (No Cycle)"]
      132 SETTABLEKS                       R18 R17 K30 ["name"]
      134 GETTABLEKS                       R18 R1 K34 ["createElement"]
      136 MOVE                             R19 R2
      137 DUPTABLE                         R20 K36 [{"Screens"}]
      138 SETTABLEKS                       R13 R20 K35 ["Screens"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K31 ["story"]
      143 DUPTABLE                         R18 K32 [{"name", "story"}]
      144 LOADK                            R19 K37 ["Default Linear Flow (Cycle)"]
      145 SETTABLEKS                       R19 R18 K30 ["name"]
      147 GETTABLEKS                       R19 R1 K34 ["createElement"]
      149 MOVE                             R20 R2
      150 DUPTABLE                         R21 K36 [{"Screens"}]
      151 SETTABLEKS                       R14 R21 K35 ["Screens"]
      153 CALL                             R19 2 1
      154 SETTABLEKS                       R19 R18 K31 ["story"]
      156 SETLIST                          R16 R17 2 [1]
      158 SETTABLEKS                       R16 R15 K28 ["stories"]
      160 RETURN                           R15 1
