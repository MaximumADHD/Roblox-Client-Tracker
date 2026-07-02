PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["Expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnToggleAdornment"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnToggleAdornment"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetLayerSelection"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["SetScrubberOffset"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K3 ["HistoryOffset"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["props"]
       21 GETTABLEKS                       R1 R1 K4 ["ClearHistoryField"]
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 0
       25 DUPTABLE                         R3 K6 [{"Selection"}]
       26 SETTABLEKS                       R0 R3 K5 ["Selection"]
       28 NAMECALL                         R1 R1 K7 ["setState"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Selection", "Expansion"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Selection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Expansion"]
        9 SETTABLEKS                       R1 R0 K3 ["state"]
       11 DUPCLOSURE                       R1 K4 [PROTO_0]
       12 SETTABLEKS                       R1 R0 K5 ["getItemId"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K6 ["onExpand"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onToggleAdornment"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K8 ["onSelect"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["index"]
        2 JUMPIFNOT                        R2 ; [+18]
        3 GETTABLEKS                       R2 R1 K0 ["index"]
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETTABLEKS                       R2 R0 K0 ["index"]
        8 GETTABLEKS                       R3 R1 K0 ["index"]
       10 JUMPIFEQ                         R2 R3 ; [+10]
       12 GETTABLEKS                       R3 R0 K0 ["index"]
       14 GETTABLEKS                       R4 R1 K0 ["index"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R2 R0 K1 ["name"]
       23 JUMPIFNOT                        R2 ; [+18]
       24 GETTABLEKS                       R2 R1 K1 ["name"]
       26 JUMPIFNOT                        R2 ; [+15]
       27 GETTABLEKS                       R2 R0 K1 ["name"]
       29 GETTABLEKS                       R3 R1 K1 ["name"]
       31 JUMPIFEQ                         R2 R3 ; [+10]
       33 GETTABLEKS                       R3 R0 K1 ["name"]
       35 GETTABLEKS                       R4 R1 K1 ["name"]
       37 JUMPIFLT                         R3 R4 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1
       42 GETTABLEKS                       R2 R0 K2 ["className"]
       44 JUMPIFNOT                        R2 ; [+18]
       45 GETTABLEKS                       R2 R1 K2 ["className"]
       47 JUMPIFNOT                        R2 ; [+15]
       48 GETTABLEKS                       R2 R0 K2 ["className"]
       50 GETTABLEKS                       R3 R1 K2 ["className"]
       52 JUMPIFEQ                         R2 R3 ; [+10]
       54 GETTABLEKS                       R3 R0 K2 ["className"]
       56 GETTABLEKS                       R4 R1 K2 ["className"]
       58 JUMPIFLT                         R3 R4 ; [+2]
       60 LOADB                            R2 0 +1
       61 LOADB                            R2 1
       62 RETURN                           R2 1
       63 GETTABLEKS                       R3 R0 K3 ["id"]
       65 GETTABLEKS                       R4 R1 K3 ["id"]
       67 JUMPIFLT                         R3 R4 ; [+2]
       69 LOADB                            R2 0 +1
       70 LOADB                            R2 1
       71 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["id"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R2 R0 K0 ["id"]
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 GETTABLEKS                       R1 R0 K1 ["children"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETIMPORT                        R1 K4 [table.sort]
       16 GETTABLEKS                       R2 R0 K1 ["children"]
       18 DUPCLOSURE                       R3 K5 [PROTO_5]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 2 0
        9 RETURN                           R2 1

PROTO_8:
        0 GETGLOBAL                        R2 K0 ["updateTreeViewItems"]
        2 GETTABLEKS                       R3 R0 K1 ["FramePayload"]
        4 GETTABLEKS                       R4 R1 K2 ["Expansion"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K4 [next]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+9]
       12 DUPTABLE                         R3 K5 [{"Expansion"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R1 K2 ["Expansion"]
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["Expansion"]
       20 RETURN                           R3 1
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["FramePayload"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K17 [{["Size"], ["LayoutOrder"], ["RootItems"], ["Expansion"], ["Selection"], ["GetItemId"], ["RowComponent"], ["RowProps"], ["RowHeight"] = 26, ["OnExpansionChange"], ["OnSelectionChange"], ["ScrollingDirection"]}]
       11 GETTABLEKS                       R7 R2 K4 ["Size"]
       13 SETTABLEKS                       R7 R6 K4 ["Size"]
       15 GETTABLEKS                       R7 R2 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       19 NEWTABLE                         R7 0 1
       21 MOVE                             R8 R3
       22 SETLIST                          R7 R8 1 [1]
       24 SETTABLEKS                       R7 R6 K6 ["RootItems"]
       26 GETTABLEKS                       R7 R1 K7 ["Expansion"]
       28 SETTABLEKS                       R7 R6 K7 ["Expansion"]
       30 GETTABLEKS                       R7 R1 K8 ["Selection"]
       32 SETTABLEKS                       R7 R6 K8 ["Selection"]
       34 GETTABLEKS                       R7 R0 K18 ["getItemId"]
       36 SETTABLEKS                       R7 R6 K9 ["GetItemId"]
       38 GETUPVAL                         R7 2
       39 SETTABLEKS                       R7 R6 K10 ["RowComponent"]
       41 DUPTABLE                         R7 K21 [{"GetItemId", "Adornments", "OnToggleAdornment"}]
       42 GETTABLEKS                       R8 R0 K18 ["getItemId"]
       44 SETTABLEKS                       R8 R7 K9 ["GetItemId"]
       46 GETTABLEKS                       R8 R2 K19 ["Adornments"]
       48 SETTABLEKS                       R8 R7 K19 ["Adornments"]
       50 GETTABLEKS                       R8 R0 K22 ["onToggleAdornment"]
       52 SETTABLEKS                       R8 R7 K20 ["OnToggleAdornment"]
       54 SETTABLEKS                       R7 R6 K11 ["RowProps"]
       56 GETTABLEKS                       R7 R0 K23 ["onExpand"]
       58 SETTABLEKS                       R7 R6 K14 ["OnExpansionChange"]
       60 GETTABLEKS                       R7 R0 K24 ["onSelect"]
       62 SETTABLEKS                       R7 R6 K15 ["OnSelectionChange"]
       64 GETIMPORT                        R7 K27 [Enum.ScrollingDirection.Y]
       66 SETTABLEKS                       R7 R6 K16 ["ScrollingDirection"]
       68 NEWTABLE                         R7 0 0
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"HistoryOffset"}]
        1 GETTABLEKS                       R3 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["HistoryOffset"]
        5 SETTABLEKS                       R3 R2 K0 ["HistoryOffset"]
        7 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 CALL                             R1 3 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K4 [{"ClearHistoryField", "SetLayerSelection", "SetScrubberOffset", "SetSelectedLayer"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ClearHistoryField"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetLayerSelection"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetScrubberOffset"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetSelectedLayer"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["join"]
       37 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["withContext"]
       41 GETTABLEKS                       R8 R6 K14 ["Analytics"]
       43 GETTABLEKS                       R9 R6 K15 ["Localization"]
       45 GETTABLEKS                       R10 R2 K16 ["UI"]
       47 GETTABLEKS                       R11 R10 K17 ["TreeView"]
       49 GETTABLEKS                       R12 R0 K18 ["Src"]
       51 GETTABLEKS                       R12 R12 K19 ["Actions"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R12 K20 ["SetHistoryField"]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R12 K21 ["SetSelectedLayer"]
       62 CALL                             R14 1 1
       63 GETTABLEKS                       R15 R0 K18 ["Src"]
       65 GETTABLEKS                       R15 R15 K22 ["Components"]
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R15 K23 ["LayerTreeRow"]
       71 CALL                             R16 1 1
       72 GETTABLEKS                       R17 R0 K18 ["Src"]
       74 GETTABLEKS                       R17 R17 K24 ["Thunks"]
       76 GETIMPORT                        R18 K5 [require]
       78 GETTABLEKS                       R19 R17 K25 ["SetLayerSelection"]
       80 CALL                             R18 1 1
       81 GETIMPORT                        R19 K5 [require]
       83 GETTABLEKS                       R20 R17 K26 ["SetScrubberOffset"]
       85 CALL                             R19 1 1
       86 GETTABLEKS                       R20 R0 K18 ["Src"]
       88 GETTABLEKS                       R20 R20 K27 ["Util"]
       90 GETIMPORT                        R21 K5 [require]
       92 GETTABLEKS                       R22 R20 K28 ["traverse"]
       94 CALL                             R21 1 1
       95 GETIMPORT                        R22 K5 [require]
       97 GETTABLEKS                       R23 R0 K29 ["Bin"]
       99 GETTABLEKS                       R23 R23 K30 ["Common"]
      101 GETTABLEKS                       R23 R23 K31 ["defineLuaFlags"]
      103 CALL                             R22 1 1
      104 GETIMPORT                        R23 K5 [require]
      106 GETTABLEKS                       R24 R0 K18 ["Src"]
      108 GETTABLEKS                       R24 R24 K32 ["Types"]
      110 CALL                             R23 1 1
      111 GETTABLEKS                       R24 R3 K33 ["PureComponent"]
      113 LOADK                            R26 K34 ["LayerTree"]
      114 NAMECALL                         R24 R24 K35 ["extend"]
      116 CALL                             R24 2 1
      117 DUPCLOSURE                       R25 K36 [PROTO_4]
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R25 R24 K37 ["init"]
      121 DUPCLOSURE                       R25 K38 [PROTO_7]
      122 CAPTURE                          VAL R21
      123 SETGLOBAL                        R25 K39 ["updateTreeViewItems"]
      125 DUPCLOSURE                       R25 K40 [PROTO_8]
      126 CAPTURE                          VAL R5
      127 SETTABLEKS                       R25 R24 K41 ["getDerivedStateFromProps"]
      129 DUPCLOSURE                       R25 K42 [PROTO_9]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R16
      133 SETTABLEKS                       R25 R24 K43 ["render"]
      135 MOVE                             R25 R7
      136 DUPTABLE                         R26 K44 [{"Analytics", "Localization"}]
      137 SETTABLEKS                       R8 R26 K14 ["Analytics"]
      139 SETTABLEKS                       R9 R26 K15 ["Localization"]
      141 CALL                             R25 1 1
      142 MOVE                             R26 R24
      143 CALL                             R25 1 1
      144 MOVE                             R24 R25
      145 DUPCLOSURE                       R25 K45 [PROTO_10]
      146 DUPCLOSURE                       R26 K46 [PROTO_15]
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R14
      151 GETTABLEKS                       R27 R4 K47 ["connect"]
      153 MOVE                             R28 R25
      154 MOVE                             R29 R26
      155 CALL                             R27 2 1
      156 MOVE                             R28 R24
      157 CALL                             R27 1 1
      158 MOVE                             R24 R27
      159 RETURN                           R24 1
