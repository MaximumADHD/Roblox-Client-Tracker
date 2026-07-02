PROTO_0:
        0 JUMPIFNOTEQKB                    R0 TRUE ; [+6]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

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
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K10 ["Disabled"]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       31 NEWCLOSURE                       R13 P0
       32 CAPTURE                          VAL R9
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R14 0 3
       37 MOVE                             R15 R9
       38 MOVE                             R16 R6
       39 MOVE                             R17 R7
       40 SETLIST                          R14 R15 3 [1]
       42 CALL                             R12 2 1
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R13 R13 K12 ["new"]
       46 CALL                             R13 0 1
       47 GETUPVAL                         R14 1
       48 GETTABLEKS                       R14 R14 K13 ["createElement"]
       50 GETUPVAL                         R15 3
       51 DUPTABLE                         R16 K24 [{["Buttons"], ["Enabled"], ["MinContentSize"], ["Modal"] = True, ["OnButtonPressed"], ["OnClose"], ["Style"] = "AssetConfigWarningDialog", ["Title"]}]
       52 NEWTABLE                         R17 0 2
       54 DUPTABLE                         R18 K28 [{["Key"] = False, ["Text"]}]
       55 SETTABLEKS                       R2 R18 K27 ["Text"]
       57 DUPTABLE                         R19 K30 [{["Key"] = True, ["Text"], ["Style"], ["StyleModifier"]}]
       58 SETTABLEKS                       R1 R19 K27 ["Text"]
       60 SETTABLEKS                       R10 R19 K21 ["Style"]
       62 SETTABLEKS                       R11 R19 K29 ["StyleModifier"]
       64 SETLIST                          R17 R18 2 [1]
       66 SETTABLEKS                       R17 R16 K14 ["Buttons"]
       68 JUMPIFEQKB                       R4 TRUE ; [+2]
       70 LOADB                            R17 0 +1
       71 LOADB                            R17 1
       72 SETTABLEKS                       R17 R16 K15 ["Enabled"]
       74 GETUPVAL                         R17 4
       75 SETTABLEKS                       R17 R16 K16 ["MinContentSize"]
       77 SETTABLEKS                       R12 R16 K19 ["OnButtonPressed"]
       79 SETTABLEKS                       R7 R16 K20 ["OnClose"]
       81 SETTABLEKS                       R8 R16 K23 ["Title"]
       83 DUPTABLE                         R17 K32 [{"Contents"}]
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R18 R18 K13 ["createElement"]
       87 GETUPVAL                         R19 5
       88 DUPTABLE                         R20 K38 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 20, ["Size"]}]
       89 GETIMPORT                        R21 K41 [Enum.HorizontalAlignment.Center]
       91 SETTABLEKS                       R21 R20 K33 ["HorizontalAlignment"]
       93 GETIMPORT                        R21 K44 [Enum.FillDirection.Vertical]
       95 SETTABLEKS                       R21 R20 K34 ["Layout"]
       97 GETIMPORT                        R21 K47 [UDim2.fromScale]
       99 LOADN                            R22 1
      100 LOADN                            R23 1
      101 CALL                             R21 2 1
      102 SETTABLEKS                       R21 R20 K37 ["Size"]
      104 DUPTABLE                         R21 K50 [{"Heading", "Description"}]
      105 GETUPVAL                         R22 1
      106 GETTABLEKS                       R22 R22 K13 ["createElement"]
      108 GETUPVAL                         R23 6
      109 DUPTABLE                         R24 K56 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Font"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      110 GETIMPORT                        R25 K58 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R25 R24 K51 ["AutomaticSize"]
      114 NAMECALL                         R25 R13 K59 ["getNextOrder"]
      116 CALL                             R25 1 1
      117 SETTABLEKS                       R25 R24 K52 ["LayoutOrder"]
      119 GETIMPORT                        R25 K47 [UDim2.fromScale]
      121 LOADN                            R26 1
      122 LOADN                            R27 0
      123 CALL                             R25 2 1
      124 SETTABLEKS                       R25 R24 K37 ["Size"]
      126 GETUPVAL                         R25 7
      127 GETTABLEKS                       R25 R25 K60 ["FONT_BOLD"]
      129 SETTABLEKS                       R25 R24 K53 ["Font"]
      131 SETTABLEKS                       R5 R24 K27 ["Text"]
      133 GETIMPORT                        R25 K61 [Enum.TextXAlignment.Center]
      135 SETTABLEKS                       R25 R24 K55 ["TextXAlignment"]
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K48 ["Heading"]
      140 GETUPVAL                         R22 1
      141 GETTABLEKS                       R22 R22 K13 ["createElement"]
      143 GETUPVAL                         R23 6
      144 DUPTABLE                         R24 K62 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      145 GETIMPORT                        R25 K58 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R25 R24 K51 ["AutomaticSize"]
      149 NAMECALL                         R25 R13 K59 ["getNextOrder"]
      151 CALL                             R25 1 1
      152 SETTABLEKS                       R25 R24 K52 ["LayoutOrder"]
      154 GETIMPORT                        R25 K47 [UDim2.fromScale]
      156 LOADN                            R26 1
      157 LOADN                            R27 0
      158 CALL                             R25 2 1
      159 SETTABLEKS                       R25 R24 K37 ["Size"]
      161 SETTABLEKS                       R3 R24 K27 ["Text"]
      163 GETIMPORT                        R25 K61 [Enum.TextXAlignment.Center]
      165 SETTABLEKS                       R25 R24 K55 ["TextXAlignment"]
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K49 ["Description"]
      170 CALL                             R18 3 1
      171 SETTABLEKS                       R18 R17 K31 ["Contents"]
      173 CALL                             R14 3 -1
      174 RETURN                           R14 -1

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
       19 GETTABLEKS                       R4 R2 K9 ["Util"]
       21 GETTABLEKS                       R4 R4 K10 ["LayoutOrderIterator"]
       23 GETTABLEKS                       R5 R2 K11 ["UI"]
       25 GETTABLEKS                       R6 R5 K12 ["Pane"]
       27 GETTABLEKS                       R7 R5 K13 ["StyledDialog"]
       29 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       31 GETTABLEKS                       R9 R2 K9 ["Util"]
       33 GETTABLEKS                       R9 R9 K15 ["StyleModifier"]
       35 GETIMPORT                        R10 K6 [require]
       37 GETTABLEKS                       R11 R0 K16 ["Src"]
       39 GETTABLEKS                       R11 R11 K9 ["Util"]
       41 GETTABLEKS                       R11 R11 K17 ["Constants"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K20 [Vector2.new]
       46 LOADN                            R12 400
       47 LOADN                            R13 70
       48 CALL                             R11 2 1
       49 DUPTABLE                         R12 K25 [{["Accept"] = True, ["Cancel"] = False}]
       50 DUPCLOSURE                       R13 K26 [PROTO_1]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R10
       59 RETURN                           R13 1
