PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Network"]
        5 GETTABLEKS                       R4 R4 K2 ["networkInterface"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["props"]
       10 GETTABLEKS                       R5 R5 K3 ["Settings"]
       12 LOADK                            R7 K4 ["Plugin"]
       13 NAMECALL                         R5 R5 K5 ["get"]
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["props"]
       19 GETTABLEKS                       R6 R6 K6 ["requestSearchRequest"]
       21 MOVE                             R7 R4
       22 MOVE                             R8 R5
       23 MOVE                             R9 R0
       24 MOVE                             R10 R1
       25 MOVE                             R11 R2
       26 MOVE                             R12 R3
       27 CALL                             R6 6 0
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K0 ["props"]
       31 GETTABLEKS                       R6 R6 K7 ["logSearchAnalytics"]
       33 MOVE                             R7 R0
       34 MOVE                             R8 R1
       35 MOVE                             R9 R2
       36 MOVE                             R10 R3
       37 CALL                             R6 4 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClickOfferedQuery"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickOfferedQuery"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["CorrectionState"]
        6 GETTABLEKS                       R4 R1 K3 ["CurrentQuery"]
        8 GETTABLEKS                       R5 R1 K4 ["CorrectedQuery"]
       10 GETTABLEKS                       R6 R1 K5 ["UserQuery"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 LOADNIL                          R12
       18 GETUPVAL                         R13 0
       19 GETTABLEKS                       R13 R13 K6 ["AutocorrectResponseState"]
       21 GETTABLEKS                       R13 R13 K7 ["CorrectionAvailable"]
       23 JUMPIFNOTEQ                      R3 R13 ; [+13]
       25 LOADK                            R7 K8 ["DidYouMean"]
       26 GETUPVAL                         R13 0
       27 GETTABLEKS                       R13 R13 K9 ["QuerySource"]
       29 GETTABLEKS                       R8 R13 K4 ["CorrectedQuery"]
       31 MOVE                             R9 R4
       32 MOVE                             R12 R5
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R11 R13 K10 ["WARNING_TEXT_COLOR"]
       36 JUMP                             ; [+19]
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K6 ["AutocorrectResponseState"]
       40 GETTABLEKS                       R13 R13 K11 ["CorrectionAccepted"]
       42 JUMPIFNOTEQ                      R3 R13 ; [+10]
       44 LOADK                            R7 K12 ["SearchInsteadFor"]
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K9 ["QuerySource"]
       48 GETTABLEKS                       R8 R13 K13 ["ReversionToUserQuery"]
       50 MOVE                             R10 R4
       51 MOVE                             R12 R6
       52 JUMP                             ; [+3]
       53 LOADNIL                          R13
       54 CLOSEUPVALS                      R8
       55 RETURN                           R13 1
       56 DUPTABLE                         R13 K20 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment"}]
       57 GETIMPORT                        R14 K23 [Enum.AutomaticSize.XY]
       59 SETTABLEKS                       R14 R13 K14 ["AutomaticSize"]
       61 GETIMPORT                        R14 K25 [Enum.HorizontalAlignment.Left]
       63 SETTABLEKS                       R14 R13 K15 ["HorizontalAlignment"]
       65 GETIMPORT                        R14 K28 [Enum.FillDirection.Horizontal]
       67 SETTABLEKS                       R14 R13 K16 ["Layout"]
       69 GETTABLEKS                       R14 R1 K17 ["LayoutOrder"]
       71 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       73 GETIMPORT                        R14 K31 [UDim2.new]
       75 LOADN                            R15 1
       76 LOADN                            R16 0
       77 LOADN                            R17 0
       78 LOADN                            R18 0
       79 CALL                             R14 4 1
       80 SETTABLEKS                       R14 R13 K18 ["Size"]
       82 GETIMPORT                        R14 K33 [Enum.VerticalAlignment.Top]
       84 SETTABLEKS                       R14 R13 K19 ["VerticalAlignment"]
       86 GETUPVAL                         R14 2
       87 GETTABLEKS                       R14 R14 K30 ["new"]
       89 CALL                             R14 0 1
       90 GETUPVAL                         R15 3
       91 GETTABLEKS                       R15 R15 K34 ["createElement"]
       93 GETUPVAL                         R16 4
       94 MOVE                             R17 R13
       95 DUPTABLE                         R18 K37 [{"Message", "Suggestion"}]
       96 GETUPVAL                         R19 3
       97 GETTABLEKS                       R19 R19 K34 ["createElement"]
       99 GETUPVAL                         R20 5
      100 DUPTABLE                         R21 K40 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor"}]
      101 GETIMPORT                        R22 K23 [Enum.AutomaticSize.XY]
      103 SETTABLEKS                       R22 R21 K14 ["AutomaticSize"]
      105 NAMECALL                         R22 R14 K41 ["getNextOrder"]
      107 CALL                             R22 1 1
      108 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      110 LOADK                            R27 K42 ["General"]
      111 MOVE                             R28 R7
      112 NAMECALL                         R25 R2 K43 ["getText"]
      114 CALL                             R25 3 1
      115 MOVE                             R23 R25
      116 LOADK                            R24 K44 [" "]
      117 CONCAT                           R22 R23 R24
      118 SETTABLEKS                       R22 R21 K38 ["Text"]
      120 SETTABLEKS                       R11 R21 K39 ["TextColor"]
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K35 ["Message"]
      125 GETUPVAL                         R19 3
      126 GETTABLEKS                       R19 R19 K34 ["createElement"]
      128 GETUPVAL                         R20 6
      129 DUPTABLE                         R21 K46 [{"LayoutOrder", "Text", "OnClick"}]
      130 NAMECALL                         R22 R14 K41 ["getNextOrder"]
      132 CALL                             R22 1 1
      133 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      135 SETTABLEKS                       R12 R21 K38 ["Text"]
      137 NEWCLOSURE                       R22 P0
      138 CAPTURE                          VAL R0
      139 CAPTURE                          REF R12
      140 CAPTURE                          REF R8
      141 CAPTURE                          REF R9
      142 CAPTURE                          REF R10
      143 SETTABLEKS                       R22 R21 K45 ["OnClick"]
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K36 ["Suggestion"]
      148 CALL                             R15 3 -1
      149 CLOSEUPVALS                      R8
      150 RETURN                           R15 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 LOADB                            R7 0
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 CALL                             R5 5 -1
        8 CALL                             R4 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 LOADNIL                          R11
        6 LOADB                            R12 0
        7 MOVE                             R13 R3
        8 MOVE                             R14 R4
        9 MOVE                             R15 R5
       10 CALL                             R7 8 -1
       11 CALL                             R6 -1 0
       12 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"logSearchAnalytics", "requestSearchRequest"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["logSearchAnalytics"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["requestSearchRequest"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETIMPORT                        R3 K8 [require]
       15 GETTABLEKS                       R4 R0 K5 ["Src"]
       17 GETTABLEKS                       R4 R4 K6 ["Util"]
       19 GETTABLEKS                       R4 R4 K9 ["Colors"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K8 [require]
       24 GETTABLEKS                       R5 R1 K10 ["Roact"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETTABLEKS                       R6 R1 K11 ["RoactRodux"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K8 [require]
       34 GETTABLEKS                       R7 R1 K12 ["Framework"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K8 [require]
       39 GETTABLEKS                       R8 R0 K5 ["Src"]
       41 GETTABLEKS                       R8 R8 K13 ["Networking"]
       43 GETTABLEKS                       R8 R8 K14 ["Requests"]
       45 GETTABLEKS                       R8 R8 K15 ["RequestSearchRequest"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K8 [require]
       50 GETTABLEKS                       R9 R0 K5 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Types"]
       54 GETTABLEKS                       R9 R9 K17 ["AutocorrectTypes"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K8 [require]
       59 GETTABLEKS                       R10 R0 K5 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["ContextServices"]
       63 GETTABLEKS                       R10 R10 K19 ["NetworkContext"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R11 R0 K5 ["Src"]
       70 GETTABLEKS                       R11 R11 K18 ["ContextServices"]
       72 GETTABLEKS                       R11 R11 K20 ["Settings"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K8 [require]
       77 GETTABLEKS                       R12 R0 K5 ["Src"]
       79 GETTABLEKS                       R12 R12 K21 ["Thunks"]
       81 GETTABLEKS                       R12 R12 K22 ["LogMarketplaceSearchAnalytics"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R6 K6 ["Util"]
       86 GETTABLEKS                       R12 R12 K23 ["LayoutOrderIterator"]
       88 GETTABLEKS                       R13 R6 K18 ["ContextServices"]
       90 GETTABLEKS                       R14 R13 K24 ["withContext"]
       92 GETTABLEKS                       R15 R6 K25 ["UI"]
       94 GETTABLEKS                       R15 R15 K26 ["LinkText"]
       96 GETTABLEKS                       R16 R6 K25 ["UI"]
       98 GETTABLEKS                       R16 R16 K27 ["Pane"]
      100 GETTABLEKS                       R17 R6 K25 ["UI"]
      102 GETTABLEKS                       R17 R17 K28 ["TextLabel"]
      104 GETTABLEKS                       R18 R4 K29 ["PureComponent"]
      106 LOADK                            R20 K30 ["Autocorrect"]
      107 NAMECALL                         R18 R18 K31 ["extend"]
      109 CALL                             R18 2 1
      110 DUPCLOSURE                       R19 K32 [PROTO_1]
      111 SETTABLEKS                       R19 R18 K33 ["init"]
      113 DUPCLOSURE                       R19 K34 [PROTO_3]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R15
      121 SETTABLEKS                       R19 R18 K35 ["render"]
      123 MOVE                             R19 R14
      124 DUPTABLE                         R20 K40 [{"Localization", "Network", "Plugin", "Settings", "Stylizer"}]
      125 GETTABLEKS                       R21 R13 K36 ["Localization"]
      127 SETTABLEKS                       R21 R20 K36 ["Localization"]
      129 SETTABLEKS                       R9 R20 K37 ["Network"]
      131 GETTABLEKS                       R21 R13 K38 ["Plugin"]
      133 SETTABLEKS                       R21 R20 K38 ["Plugin"]
      135 SETTABLEKS                       R10 R20 K20 ["Settings"]
      137 GETTABLEKS                       R21 R13 K39 ["Stylizer"]
      139 SETTABLEKS                       R21 R20 K39 ["Stylizer"]
      141 CALL                             R19 1 1
      142 MOVE                             R20 R18
      143 CALL                             R19 1 1
      144 MOVE                             R18 R19
      145 DUPCLOSURE                       R19 K41 [PROTO_6]
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R7
      148 GETTABLEKS                       R20 R5 K42 ["connect"]
      150 LOADNIL                          R21
      151 MOVE                             R22 R19
      152 CALL                             R20 2 1
      153 MOVE                             R21 R18
      154 CALL                             R20 1 1
      155 MOVE                             R18 R20
      156 RETURN                           R18 1
