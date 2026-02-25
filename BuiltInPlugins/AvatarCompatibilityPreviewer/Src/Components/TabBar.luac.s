PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Key", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Key"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["Categories"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R2 R2 K4 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K1 ["Label"]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Tabs"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetSelectedTab"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["current"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       14 LOADK                            R2 K2 ["Ref to category tabs is nil"]
       15 GETIMPORT                        R0 K4 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K1 ["current"]
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       27 LOADK                            R2 K5 ["Ref to category tabs list is nil"]
       28 GETIMPORT                        R0 K4 [assert]
       30 CALL                             R0 2 0
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R1 R2 K1 ["current"]
       34 GETUPVAL                         R2 1
       35 GETTABLE                         R0 R1 R2
       36 GETUPVAL                         R1 4
       37 GETIMPORT                        R2 K8 [Vector2.new]
       39 GETTABLEKS                       R6 R0 K1 ["current"]
       41 GETTABLEKS                       R5 R6 K9 ["AbsolutePosition"]
       43 GETTABLEKS                       R4 R5 K10 ["X"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K1 ["current"]
       48 GETTABLEKS                       R6 R7 K9 ["AbsolutePosition"]
       50 GETTABLEKS                       R5 R6 K10 ["X"]
       52 SUB                              R3 R4 R5
       53 LOADN                            R4 0
       54 CALL                             R2 2 -1
       55 CALL                             R1 -1 0
       56 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"Text", "OnItemClicked", "Checked"}]
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K4 ["Categories"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K5 ["getText"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Text"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 SETTABLEKS                       R2 R1 K1 ["OnItemClicked"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["SelectedTab"]
       20 JUMPIFEQ                         R0 R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 SETTABLEKS                       R2 R1 K2 ["Checked"]
       26 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Tabs"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Ref to category tabs frame is nil"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["current"]
       17 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       19 GETTABLEKS                       R1 R2 K5 ["X"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K0 ["current"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 FASTCALL2K                       ASSERT R1 K6 ; [+4]
       31 LOADK                            R2 K6 ["Ref to category tabs is nil"]
       32 GETIMPORT                        R0 K3 [assert]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 3
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R3 R4 K0 ["current"]
       39 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       41 GETTABLEKS                       R1 R2 K5 ["X"]
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["openTab"]
        2 GETTABLEKS                       R4 R0 K1 ["Key"]
        4 NAMECALL                         R1 R1 K2 ["report"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["SetSelectedTab"]
       10 GETTABLEKS                       R2 R0 K1 ["Key"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K1 ["TabBar"]
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useRef"]
       16 LOADNIL                          R5
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K2 ["useRef"]
       21 LOADNIL                          R6
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K2 ["useRef"]
       26 NEWTABLE                         R7 0 0
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R7 R8 K3 ["useState"]
       32 LOADN                            R8 100
       33 CALL                             R7 1 2
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K3 ["useState"]
       37 LOADN                            R10 100
       38 CALL                             R9 1 2
       39 GETUPVAL                         R12 3
       40 GETTABLEKS                       R11 R12 K3 ["useState"]
       42 GETIMPORT                        R12 K6 [Vector2.new]
       44 CALL                             R12 0 -1
       45 CALL                             R11 -1 2
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R13 R14 K7 ["useMemo"]
       49 NEWCLOSURE                       R14 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R15 0 2
       55 MOVE                             R16 R2
       56 GETTABLEKS                       R17 R0 K8 ["Tabs"]
       58 SETLIST                          R15 R16 2 [1]
       60 CALL                             R13 2 1
       61 GETUPVAL                         R15 3
       62 GETTABLEKS                       R14 R15 K7 ["useMemo"]
       64 NEWCLOSURE                       R15 P1
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R12
       71 NEWTABLE                         R16 0 4
       73 MOVE                             R17 R2
       74 GETTABLEKS                       R18 R0 K8 ["Tabs"]
       76 GETTABLEKS                       R19 R0 K9 ["SelectedTab"]
       78 GETTABLEKS                       R20 R0 K10 ["SetSelectedTab"]
       80 SETLIST                          R16 R17 4 [1]
       82 CALL                             R14 2 1
       83 JUMPIFLT                         R7 R9 ; [+2]
       85 LOADB                            R15 0 +1
       86 LOADB                            R15 1
       87 GETUPVAL                         R17 3
       88 GETTABLEKS                       R16 R17 K11 ["useEffect"]
       90 NEWCLOSURE                       R17 P2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 NEWTABLE                         R18 0 0
       97 CALL                             R16 2 0
       98 GETUPVAL                         R17 3
       99 GETTABLEKS                       R16 R17 K12 ["createElement"]
      101 GETUPVAL                         R17 5
      102 NEWTABLE                         R18 8 0
      104 GETTABLEKS                       R19 R0 K13 ["LayoutOrder"]
      106 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      108 GETIMPORT                        R19 K15 [UDim2.new]
      110 LOADN                            R20 1
      111 LOADN                            R21 0
      112 LOADN                            R22 0
      113 LOADN                            R23 32
      114 CALL                             R19 4 1
      115 SETTABLEKS                       R19 R18 K16 ["Size"]
      117 LOADK                            R19 K17 ["SubtleBox"]
      118 SETTABLEKS                       R19 R18 K18 ["Style"]
      120 SETTABLEKS                       R4 R18 K19 ["ref"]
      122 GETUPVAL                         R21 3
      123 GETTABLEKS                       R20 R21 K20 ["Change"]
      125 GETTABLEKS                       R19 R20 K21 ["AbsoluteSize"]
      127 NEWCLOSURE                       R20 P3
      128 CAPTURE                          VAL R8
      129 SETTABLE                         R20 R18 R19
      130 DUPTABLE                         R19 K24 [{"ScrollingFrame", "PickTabMenu"}]
      131 GETUPVAL                         R21 3
      132 GETTABLEKS                       R20 R21 K12 ["createElement"]
      134 GETUPVAL                         R21 6
      135 DUPTABLE                         R22 K32 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasPosition", "OnScrollUpdate", "Padding", "ScrollingDirection", "ScrollBarThickness", "Size"}]
      136 GETIMPORT                        R23 K35 [Enum.AutomaticSize.X]
      138 SETTABLEKS                       R23 R22 K25 ["AutomaticCanvasSize"]
      140 GETIMPORT                        R23 K37 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R23 R22 K26 ["AutomaticSize"]
      144 SETTABLEKS                       R11 R22 K27 ["CanvasPosition"]
      146 SETTABLEKS                       R12 R22 K28 ["OnScrollUpdate"]
      148 LOADN                            R23 0
      149 SETTABLEKS                       R23 R22 K29 ["Padding"]
      151 GETIMPORT                        R23 K38 [Enum.ScrollingDirection.X]
      153 SETTABLEKS                       R23 R22 K30 ["ScrollingDirection"]
      155 LOADN                            R23 0
      156 SETTABLEKS                       R23 R22 K31 ["ScrollBarThickness"]
      158 GETIMPORT                        R23 K15 [UDim2.new]
      160 LOADN                            R24 1
      161 JUMPIFNOT                        R15 ; [+2]
      162 LOADN                            R25 224
      163 JUMP                             ; [+1]
      164 LOADN                            R25 0
      165 LOADN                            R26 1
      166 LOADN                            R27 0
      167 CALL                             R23 4 1
      168 SETTABLEKS                       R23 R22 K16 ["Size"]
      170 DUPTABLE                         R23 K39 [{"Tabs"}]
      171 GETUPVAL                         R25 3
      172 GETTABLEKS                       R24 R25 K12 ["createElement"]
      174 GETUPVAL                         R25 7
      175 DUPTABLE                         R26 K43 [{"component", "innerProps", "dependencies"}]
      176 GETUPVAL                         R27 8
      177 SETTABLEKS                       R27 R26 K40 ["component"]
      179 DUPTABLE                         R27 K48 [{"SelectedTab", "OnTabSelected", "Tabs", "TabComponent", "ref", "TabsListRef", "OnAbsoluteSizeChanged"}]
      180 GETTABLEKS                       R28 R0 K9 ["SelectedTab"]
      182 SETTABLEKS                       R28 R27 K9 ["SelectedTab"]
      184 NEWCLOSURE                       R28 P4
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R28 R27 K44 ["OnTabSelected"]
      189 SETTABLEKS                       R13 R27 K8 ["Tabs"]
      191 GETUPVAL                         R28 9
      192 SETTABLEKS                       R28 R27 K45 ["TabComponent"]
      194 SETTABLEKS                       R5 R27 K19 ["ref"]
      196 SETTABLEKS                       R6 R27 K46 ["TabsListRef"]
      198 NEWCLOSURE                       R28 P5
      199 CAPTURE                          VAL R10
      200 SETTABLEKS                       R28 R27 K47 ["OnAbsoluteSizeChanged"]
      202 SETTABLEKS                       R27 R26 K41 ["innerProps"]
      204 NEWTABLE                         R27 0 1
      206 MOVE                             R28 R13
      207 SETLIST                          R27 R28 1 [1]
      209 SETTABLEKS                       R27 R26 K42 ["dependencies"]
      211 CALL                             R24 2 1
      212 SETTABLEKS                       R24 R23 K8 ["Tabs"]
      214 CALL                             R20 3 1
      215 SETTABLEKS                       R20 R19 K22 ["ScrollingFrame"]
      217 JUMPIFNOT                        R15 ; [+17]
      218 GETUPVAL                         R21 3
      219 GETTABLEKS                       R20 R21 K12 ["createElement"]
      221 GETUPVAL                         R21 10
      222 DUPTABLE                         R22 K52 [{"MenuTabs", "BackgroundColor", "BackgroundColorHover"}]
      223 SETTABLEKS                       R14 R22 K49 ["MenuTabs"]
      225 GETTABLEKS                       R23 R3 K50 ["BackgroundColor"]
      227 SETTABLEKS                       R23 R22 K50 ["BackgroundColor"]
      229 GETTABLEKS                       R23 R3 K51 ["BackgroundColorHover"]
      231 SETTABLEKS                       R23 R22 K51 ["BackgroundColorHover"]
      233 CALL                             R20 2 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R20
      236 SETTABLEKS                       R20 R19 K23 ["PickTabMenu"]
      238 CALL                             R16 3 -1
      239 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["ForceRerender"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Components"]
       43 GETTABLEKS                       R6 R7 K13 ["CategoryTab"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K11 ["Components"]
       52 GETTABLEKS                       R7 R8 K14 ["PickTabMenu"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K15 ["Resources"]
       61 GETTABLEKS                       R8 R9 K16 ["Theme"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R10 K17 ["Types"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R10 R2 K18 ["ContextServices"]
       73 GETTABLEKS                       R9 R10 K19 ["Analytics"]
       75 GETTABLEKS                       R11 R2 K18 ["ContextServices"]
       77 GETTABLEKS                       R10 R11 K20 ["Localization"]
       79 GETTABLEKS                       R12 R2 K18 ["ContextServices"]
       81 GETTABLEKS                       R11 R12 K21 ["Stylizer"]
       83 GETTABLEKS                       R12 R2 K22 ["UI"]
       85 GETTABLEKS                       R13 R12 K23 ["Pane"]
       87 GETTABLEKS                       R14 R12 K24 ["ScrollingFrame"]
       89 GETTABLEKS                       R15 R12 K25 ["Tabs"]
       91 DUPCLOSURE                       R16 K26 [PROTO_9]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R6
      103 RETURN                           R16 1
