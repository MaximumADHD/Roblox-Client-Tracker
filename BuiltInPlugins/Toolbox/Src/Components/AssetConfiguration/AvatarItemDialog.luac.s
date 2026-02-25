PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Accept"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AcceptText"]
        2 GETTABLEKS                       R2 R0 K1 ["CancelText"]
        4 GETTABLEKS                       R3 R0 K2 ["DescriptionText"]
        6 GETTABLEKS                       R4 R0 K3 ["DialogEnabled"]
        8 GETTABLEKS                       R5 R0 K4 ["HeadingText"]
       10 GETTABLEKS                       R6 R0 K5 ["OnAccepted"]
       12 GETTABLEKS                       R7 R0 K6 ["OnCanceled"]
       14 GETTABLEKS                       R8 R0 K7 ["TitleText"]
       16 GETTABLEKS                       R9 R0 K8 ["AcceptButtonEnabled"]
       18 JUMPIFNOT                        R9 ; [+2]
       19 LOADK                            R10 K9 ["RoundPrimary"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R10
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADNIL                          R11
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R11 R12 K10 ["Disabled"]
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R12 R13 K11 ["useCallback"]
       31 NEWCLOSURE                       R13 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R9
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R7
       36 NEWTABLE                         R14 0 3
       38 MOVE                             R15 R9
       39 MOVE                             R16 R6
       40 MOVE                             R17 R7
       41 SETLIST                          R14 R15 3 [1]
       43 CALL                             R12 2 1
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R13 R14 K12 ["new"]
       47 CALL                             R13 0 1
       48 GETUPVAL                         R15 1
       49 GETTABLEKS                       R14 R15 K13 ["createElement"]
       51 GETUPVAL                         R15 4
       52 DUPTABLE                         R16 K22 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnButtonPressed", "OnClose", "Style", "Title"}]
       53 NEWTABLE                         R17 0 2
       55 DUPTABLE                         R18 K25 [{"Key", "Text"}]
       56 GETUPVAL                         R20 2
       57 GETTABLEKS                       R19 R20 K26 ["Cancel"]
       59 SETTABLEKS                       R19 R18 K23 ["Key"]
       61 SETTABLEKS                       R2 R18 K24 ["Text"]
       63 DUPTABLE                         R19 K28 [{"Key", "Text", "Style", "StyleModifier"}]
       64 GETUPVAL                         R21 2
       65 GETTABLEKS                       R20 R21 K29 ["Accept"]
       67 SETTABLEKS                       R20 R19 K23 ["Key"]
       69 SETTABLEKS                       R1 R19 K24 ["Text"]
       71 SETTABLEKS                       R10 R19 K20 ["Style"]
       73 SETTABLEKS                       R11 R19 K27 ["StyleModifier"]
       75 SETLIST                          R17 R18 2 [1]
       77 SETTABLEKS                       R17 R16 K14 ["Buttons"]
       79 JUMPIFEQKB                       R4 TRUE ; [+2]
       81 LOADB                            R17 0 +1
       82 LOADB                            R17 1
       83 SETTABLEKS                       R17 R16 K15 ["Enabled"]
       85 GETUPVAL                         R17 5
       86 SETTABLEKS                       R17 R16 K16 ["MinContentSize"]
       88 LOADB                            R17 1
       89 SETTABLEKS                       R17 R16 K17 ["Modal"]
       91 SETTABLEKS                       R12 R16 K18 ["OnButtonPressed"]
       93 SETTABLEKS                       R7 R16 K19 ["OnClose"]
       95 LOADK                            R17 K30 ["AssetConfigWarningDialog"]
       96 SETTABLEKS                       R17 R16 K20 ["Style"]
       98 SETTABLEKS                       R8 R16 K21 ["Title"]
      100 DUPTABLE                         R17 K32 [{"Contents"}]
      101 GETUPVAL                         R19 1
      102 GETTABLEKS                       R18 R19 K13 ["createElement"]
      104 GETUPVAL                         R19 6
      105 DUPTABLE                         R20 K37 [{"HorizontalAlignment", "Layout", "Spacing", "Size"}]
      106 GETIMPORT                        R21 K40 [Enum.HorizontalAlignment.Center]
      108 SETTABLEKS                       R21 R20 K33 ["HorizontalAlignment"]
      110 GETIMPORT                        R21 K43 [Enum.FillDirection.Vertical]
      112 SETTABLEKS                       R21 R20 K34 ["Layout"]
      114 LOADN                            R21 20
      115 SETTABLEKS                       R21 R20 K35 ["Spacing"]
      117 GETIMPORT                        R21 K46 [UDim2.fromScale]
      119 LOADN                            R22 1
      120 LOADN                            R23 1
      121 CALL                             R21 2 1
      122 SETTABLEKS                       R21 R20 K36 ["Size"]
      124 DUPTABLE                         R21 K49 [{"Heading", "Description"}]
      125 GETUPVAL                         R23 1
      126 GETTABLEKS                       R22 R23 K13 ["createElement"]
      128 GETUPVAL                         R23 7
      129 DUPTABLE                         R24 K55 [{"AutomaticSize", "LayoutOrder", "Size", "Font", "Text", "TextWrapped", "TextXAlignment"}]
      130 GETIMPORT                        R25 K57 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R25 R24 K50 ["AutomaticSize"]
      134 NAMECALL                         R25 R13 K58 ["getNextOrder"]
      136 CALL                             R25 1 1
      137 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      139 GETIMPORT                        R25 K46 [UDim2.fromScale]
      141 LOADN                            R26 1
      142 LOADN                            R27 0
      143 CALL                             R25 2 1
      144 SETTABLEKS                       R25 R24 K36 ["Size"]
      146 GETUPVAL                         R26 8
      147 GETTABLEKS                       R25 R26 K59 ["FONT_BOLD"]
      149 SETTABLEKS                       R25 R24 K52 ["Font"]
      151 SETTABLEKS                       R5 R24 K24 ["Text"]
      153 LOADB                            R25 1
      154 SETTABLEKS                       R25 R24 K53 ["TextWrapped"]
      156 GETIMPORT                        R25 K60 [Enum.TextXAlignment.Center]
      158 SETTABLEKS                       R25 R24 K54 ["TextXAlignment"]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K47 ["Heading"]
      163 GETUPVAL                         R23 1
      164 GETTABLEKS                       R22 R23 K13 ["createElement"]
      166 GETUPVAL                         R23 7
      167 DUPTABLE                         R24 K61 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      168 GETIMPORT                        R25 K57 [Enum.AutomaticSize.Y]
      170 SETTABLEKS                       R25 R24 K50 ["AutomaticSize"]
      172 NAMECALL                         R25 R13 K58 ["getNextOrder"]
      174 CALL                             R25 1 1
      175 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      177 GETIMPORT                        R25 K46 [UDim2.fromScale]
      179 LOADN                            R26 1
      180 LOADN                            R27 0
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K36 ["Size"]
      184 SETTABLEKS                       R3 R24 K24 ["Text"]
      186 LOADB                            R25 1
      187 SETTABLEKS                       R25 R24 K53 ["TextWrapped"]
      189 GETIMPORT                        R25 K60 [Enum.TextXAlignment.Center]
      191 SETTABLEKS                       R25 R24 K54 ["TextXAlignment"]
      193 CALL                             R22 2 1
      194 SETTABLEKS                       R22 R21 K48 ["Description"]
      196 CALL                             R18 3 1
      197 SETTABLEKS                       R18 R17 K31 ["Contents"]
      199 CALL                             R14 3 -1
      200 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R2 K9 ["Util"]
       21 GETTABLEKS                       R4 R5 K10 ["LayoutOrderIterator"]
       23 GETTABLEKS                       R5 R2 K11 ["UI"]
       25 GETTABLEKS                       R6 R5 K12 ["Pane"]
       27 GETTABLEKS                       R7 R5 K13 ["StyledDialog"]
       29 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       31 GETTABLEKS                       R10 R2 K9 ["Util"]
       33 GETTABLEKS                       R9 R10 K15 ["StyleModifier"]
       35 GETIMPORT                        R10 K6 [require]
       37 GETTABLEKS                       R13 R0 K16 ["Src"]
       39 GETTABLEKS                       R12 R13 K9 ["Util"]
       41 GETTABLEKS                       R11 R12 K17 ["Constants"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K20 [Vector2.new]
       46 LOADN                            R12 144
       47 LOADN                            R13 70
       48 CALL                             R11 2 1
       49 DUPTABLE                         R12 K23 [{"Accept", "Cancel"}]
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K21 ["Accept"]
       53 LOADB                            R13 0
       54 SETTABLEKS                       R13 R12 K22 ["Cancel"]
       56 DUPCLOSURE                       R13 K24 [PROTO_1]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R12
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R10
       66 RETURN                           R13 1
