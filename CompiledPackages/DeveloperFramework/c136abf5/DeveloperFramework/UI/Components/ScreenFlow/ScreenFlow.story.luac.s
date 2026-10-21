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
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K9 ["new"]
       23 CALL                             R8 0 1
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K10 ["createElement"]
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
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K10 ["createElement"]
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
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R13 R13 K10 ["createElement"]
       86 GETUPVAL                         R14 2
       87 DUPTABLE                         R15 K37 [{["Size"], ["LayoutOrder"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"] = 12}]
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
      102 GETIMPORT                        R16 K39 [Enum.FillDirection.Horizontal]
      104 SETTABLEKS                       R16 R15 K12 ["Layout"]
      106 GETIMPORT                        R16 K41 [Enum.HorizontalAlignment.Right]
      108 SETTABLEKS                       R16 R15 K13 ["HorizontalAlignment"]
      110 GETIMPORT                        R16 K24 [Enum.VerticalAlignment.Center]
      112 SETTABLEKS                       R16 R15 K14 ["VerticalAlignment"]
      114 DUPTABLE                         R16 K44 [{"BackButton", "NextButton"}]
      115 MOVE                             R17 R4
      116 JUMPIFNOT                        R17 ; [+30]
      117 GETUPVAL                         R17 1
      118 GETTABLEKS                       R17 R17 K10 ["createElement"]
      120 GETUPVAL                         R18 4
      121 DUPTABLE                         R19 K48 [{[1] = "Back", ["StyleModifier"], ["Size"], ["OnClick"], ["LayoutOrder"]}]
      122 JUMPIF                           R2 ; [+4]
      123 GETUPVAL                         R20 5
      124 GETTABLEKS                       R20 R20 K49 ["Disabled"]
      126 JUMPIF                           R20 ; [+1]
      127 LOADNIL                          R20
      128 SETTABLEKS                       R20 R19 K46 ["StyleModifier"]
      130 GETIMPORT                        R20 K17 [UDim2.new]
      132 LOADN                            R21 0
      133 LOADN                            R22 64
      134 LOADN                            R23 1
      135 LOADN                            R24 0
      136 CALL                             R20 4 1
      137 SETTABLEKS                       R20 R19 K11 ["Size"]
      139 SETTABLEKS                       R7 R19 K47 ["OnClick"]
      141 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      143 CALL                             R20 1 1
      144 SETTABLEKS                       R20 R19 K30 ["LayoutOrder"]
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K42 ["BackButton"]
      149 MOVE                             R17 R5
      150 JUMPIFNOT                        R17 ; [+30]
      151 GETUPVAL                         R17 1
      152 GETTABLEKS                       R17 R17 K10 ["createElement"]
      154 GETUPVAL                         R18 4
      155 DUPTABLE                         R19 K51 [{[1] = "Next", ["StyleModifier"], ["Size"], ["OnClick"], ["LayoutOrder"]}]
      156 JUMPIF                           R3 ; [+4]
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R20 R20 K49 ["Disabled"]
      160 JUMPIF                           R20 ; [+1]
      161 LOADNIL                          R20
      162 SETTABLEKS                       R20 R19 K46 ["StyleModifier"]
      164 GETIMPORT                        R20 K17 [UDim2.new]
      166 LOADN                            R21 0
      167 LOADN                            R22 64
      168 LOADN                            R23 1
      169 LOADN                            R24 0
      170 CALL                             R20 4 1
      171 SETTABLEKS                       R20 R19 K11 ["Size"]
      173 SETTABLEKS                       R6 R19 K47 ["OnClick"]
      175 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      177 CALL                             R20 1 1
      178 SETTABLEKS                       R20 R19 K30 ["LayoutOrder"]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K43 ["NextButton"]
      183 CALL                             R13 3 1
      184 SETTABLEKS                       R13 R12 K26 ["NextAndBackButtonContainer"]
      186 CALL                             R9 3 -1
      187 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K11 [{["Text"] = "First Screen", ["NextButtonEnabled"] = True, ["BackButtonEnabled"] = False, ["HasBackButton"] = False, ["HasNextButton"] = True, ["GoToNext"], ["GoToPrevious"]}]
        4 GETTABLEKS                       R4 R1 K9 ["GoToNext"]
        6 SETTABLEKS                       R4 R3 K9 ["GoToNext"]
        8 GETTABLEKS                       R4 R1 K10 ["GoToPrevious"]
       10 SETTABLEKS                       R4 R3 K10 ["GoToPrevious"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K10 [{["Text"] = "Second Screen", ["NextButtonEnabled"] = True, ["BackButtonEnabled"] = True, ["HasBackButton"] = True, ["HasNextButton"] = True, ["GoToNext"], ["GoToPrevious"]}]
        4 GETTABLEKS                       R4 R1 K8 ["GoToNext"]
        6 SETTABLEKS                       R4 R3 K8 ["GoToNext"]
        8 GETTABLEKS                       R4 R1 K9 ["GoToPrevious"]
       10 SETTABLEKS                       R4 R3 K9 ["GoToPrevious"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K11 [{["Text"] = "Last Screen", ["NextButtonEnabled"] = False, ["BackButtonEnabled"] = True, ["HasBackButton"] = True, ["HasNextButton"] = False, ["GoToNext"], ["GoToPrevious"]}]
        4 GETTABLEKS                       R4 R1 K9 ["GoToNext"]
        6 SETTABLEKS                       R4 R3 K9 ["GoToNext"]
        8 GETTABLEKS                       R4 R1 K10 ["GoToPrevious"]
       10 SETTABLEKS                       R4 R3 K10 ["GoToPrevious"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K10 [{["Text"] = "Last Screen", ["NextButtonEnabled"] = True, ["BackButtonEnabled"] = True, ["HasBackButton"] = True, ["HasNextButton"] = True, ["GoToNext"], ["GoToPrevious"]}]
        4 GETTABLEKS                       R4 R1 K8 ["GoToNext"]
        6 SETTABLEKS                       R4 R3 K8 ["GoToNext"]
        8 GETTABLEKS                       R4 R1 K9 ["GoToPrevious"]
       10 SETTABLEKS                       R4 R3 K9 ["GoToPrevious"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["ScreenFlow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["DEPRECATED_Button"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K8 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Util"]
       56 GETTABLEKS                       R7 R7 K14 ["StyleModifier"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R8 R0 K13 ["Util"]
       63 GETTABLEKS                       R8 R8 K15 ["LayoutOrderIterator"]
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
      130 DUPTABLE                         R17 K33 [{["name"] = "Default Linear Flow (No Cycle)", ["story"]}]
      131 GETTABLEKS                       R18 R1 K34 ["createElement"]
      133 MOVE                             R19 R2
      134 DUPTABLE                         R20 K36 [{"Screens"}]
      135 SETTABLEKS                       R13 R20 K35 ["Screens"]
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K32 ["story"]
      140 DUPTABLE                         R18 K38 [{["name"] = "Default Linear Flow (Cycle)", ["story"]}]
      141 GETTABLEKS                       R19 R1 K34 ["createElement"]
      143 MOVE                             R20 R2
      144 DUPTABLE                         R21 K36 [{"Screens"}]
      145 SETTABLEKS                       R14 R21 K35 ["Screens"]
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K32 ["story"]
      150 SETLIST                          R16 R17 2 [1]
      152 SETTABLEKS                       R16 R15 K28 ["stories"]
      154 RETURN                           R15 1
