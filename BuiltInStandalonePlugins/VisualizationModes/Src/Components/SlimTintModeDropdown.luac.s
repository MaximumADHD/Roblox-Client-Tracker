PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["MultipleDocumentInterfaceInstance"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["FocusedDataModelSession"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 LOADB                            R3 0
        8 JUMPIFEQKNIL                     R2 ; [+9]
       10 GETTABLEKS                       R4 R2 K2 ["CurrentDataModelType"]
       12 GETIMPORT                        R5 K6 [Enum.StudioDataModelType.PlayClient]
       14 JUMPIFEQ                         R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 DUPTABLE                         R0 K2 [{"enumItems", "itemNames"}]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["enumItems"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["itemNames"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETIMPORT                        R2 K6 [Enum.SlimViewContext.Editor]
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R0 R0 K7 ["GetAvailableTintModes"]
       18 CALL                             R0 3 1
       19 GETUPVAL                         R1 2
       20 MOVE                             R2 R0
       21 CALL                             R1 1 2
       22 DUPTABLE                         R3 K2 [{"enumItems", "itemNames"}]
       23 SETTABLEKS                       R1 R3 K0 ["enumItems"]
       25 SETTABLEKS                       R2 R3 K1 ["itemNames"]
       27 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["GetTintMode"]
        5 CALL                             R0 1 1
        6 RETURN                           R0 1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+6]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R3 1
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K0 ["SetTintMode"]
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 3
       14 LOADB                            R4 0
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETIMPORT                        R0 K2 [table.find]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETIMPORT                        R2 K6 [Enum.SlimTintMode.None]
       13 NAMECALL                         R0 R0 K7 ["SetTintMode"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 3
       17 GETIMPORT                        R1 K6 [Enum.SlimTintMode.None]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 1 1
       10 NAMECALL                         R2 R2 K2 ["get"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["new"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["useContext"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K5 ["Context"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K6 ["overlayFocused"]
       26 GETTABLEKS                       R6 R4 K7 ["setOverlayFocused"]
       28 GETIMPORT                        R7 K9 [settings]
       30 CALL                             R7 0 1
       31 LOADK                            R9 K10 ["SlimDebug"]
       32 NAMECALL                         R7 R7 K11 ["FindFirstChild"]
       34 CALL                             R7 2 1
       35 GETTABLEKS                       R9 R2 K12 ["MultipleDocumentInterfaceInstance"]
       37 JUMPIFNOT                        R9 ; [+3]
       38 GETTABLEKS                       R10 R9 K13 ["FocusedDataModelSession"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R10
       42 LOADB                            R8 0
       43 JUMPIFEQKNIL                     R10 ; [+9]
       45 GETTABLEKS                       R11 R10 K14 ["CurrentDataModelType"]
       47 GETIMPORT                        R12 K18 [Enum.StudioDataModelType.PlayClient]
       49 JUMPIFEQ                         R11 R12 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K19 ["useMemo"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U5
       60 NEWTABLE                         R11 0 2
       62 MOVE                             R12 R7
       63 MOVE                             R13 R8
       64 SETLIST                          R11 R12 2 [1]
       66 CALL                             R9 2 1
       67 GETTABLEKS                       R10 R9 K20 ["enumItems"]
       69 GETTABLEKS                       R11 R9 K21 ["itemNames"]
       71 GETUPVAL                         R12 3
       72 GETTABLEKS                       R12 R12 K22 ["useState"]
       74 NEWCLOSURE                       R13 P1
       75 CAPTURE                          VAL R7
       76 CALL                             R12 1 2
       77 JUMPIFNOT                        R12 ; [+6]
       78 GETIMPORT                        R14 K25 [table.find]
       80 MOVE                             R15 R10
       81 MOVE                             R16 R12
       82 CALL                             R14 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R14
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R15 R15 K26 ["useCallback"]
       88 NEWCLOSURE                       R16 P2
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R6
       93 NEWTABLE                         R17 0 3
       95 MOVE                             R18 R10
       96 MOVE                             R19 R7
       97 MOVE                             R20 R6
       98 SETLIST                          R17 R18 3 [1]
      100 CALL                             R15 2 1
      101 GETUPVAL                         R16 3
      102 GETTABLEKS                       R16 R16 K27 ["useEffect"]
      104 NEWCLOSURE                       R17 P3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R13
      109 NEWTABLE                         R18 0 3
      111 MOVE                             R19 R10
      112 MOVE                             R20 R12
      113 MOVE                             R21 R7
      114 SETLIST                          R18 R19 3 [1]
      116 CALL                             R16 2 0
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K28 ["Focus"]
      120 NAMECALL                         R16 R16 K1 ["use"]
      122 CALL                             R16 1 1
      123 NAMECALL                         R16 R16 K2 ["get"]
      125 CALL                             R16 1 1
      126 GETUPVAL                         R17 3
      127 GETTABLEKS                       R17 R17 K29 ["createElement"]
      129 GETUPVAL                         R18 6
      130 NEWTABLE                         R19 4 0
      132 GETUPVAL                         R20 3
      133 GETTABLEKS                       R20 R20 K30 ["Tag"]
      135 LOADK                            R21 K31 ["X-RowM X-Left X-Middle"]
      136 SETTABLE                         R21 R19 R20
      137 GETTABLEKS                       R20 R0 K32 ["LayoutOrder"]
      139 SETTABLEKS                       R20 R19 K32 ["LayoutOrder"]
      141 GETIMPORT                        R20 K34 [UDim2.new]
      143 LOADN                            R21 1
      144 LOADN                            R22 -6
      145 LOADN                            R23 0
      146 LOADN                            R24 32
      147 CALL                             R20 4 1
      148 SETTABLEKS                       R20 R19 K35 ["Size"]
      150 DUPTABLE                         R20 K38 [{"TextContainer", "DropdownMenu"}]
      151 GETUPVAL                         R21 3
      152 GETTABLEKS                       R21 R21 K29 ["createElement"]
      154 GETUPVAL                         R22 6
      155 DUPTABLE                         R23 K39 [{"Size", "LayoutOrder"}]
      156 GETIMPORT                        R24 K34 [UDim2.new]
      158 LOADN                            R25 1
      159 LOADN                            R26 -155
      160 LOADN                            R27 1
      161 LOADN                            R28 0
      162 CALL                             R24 4 1
      163 SETTABLEKS                       R24 R23 K35 ["Size"]
      165 NAMECALL                         R24 R3 K40 ["getNextOrder"]
      167 CALL                             R24 1 1
      168 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      170 DUPTABLE                         R24 K43 [{"Title", "ToolTip"}]
      171 GETUPVAL                         R25 3
      172 GETTABLEKS                       R25 R25 K29 ["createElement"]
      174 GETUPVAL                         R26 7
      175 DUPTABLE                         R27 K45 [{"Text"}]
      176 LOADK                            R30 K46 ["StudioModes"]
      177 LOADK                            R31 K47 ["SLIMTintMode"]
      178 NAMECALL                         R28 R1 K48 ["getText"]
      180 CALL                             R28 3 1
      181 SETTABLEKS                       R28 R27 K44 ["Text"]
      183 CALL                             R25 2 1
      184 SETTABLEKS                       R25 R24 K41 ["Title"]
      186 GETUPVAL                         R25 3
      187 GETTABLEKS                       R25 R25 K29 ["createElement"]
      189 GETUPVAL                         R26 8
      190 DUPTABLE                         R27 K50 [{"Text", "Enabled"}]
      191 LOADK                            R30 K46 ["StudioModes"]
      192 LOADK                            R31 K51 ["SLIMTintModeToolTip"]
      193 NAMECALL                         R28 R1 K48 ["getText"]
      195 CALL                             R28 3 1
      196 SETTABLEKS                       R28 R27 K44 ["Text"]
      198 NOT                              R28 R5
      199 SETTABLEKS                       R28 R27 K49 ["Enabled"]
      201 CALL                             R25 2 1
      202 SETTABLEKS                       R25 R24 K42 ["ToolTip"]
      204 CALL                             R21 3 1
      205 SETTABLEKS                       R21 R20 K36 ["TextContainer"]
      207 GETUPVAL                         R21 3
      208 GETTABLEKS                       R21 R21 K29 ["createElement"]
      210 GETUPVAL                         R22 9
      211 DUPTABLE                         R23 K60 [{["Items"], ["OnItemActivated"], ["OnMouseEnter"], ["OnMouseLeave"], ["TextTruncate"], ["Focus"], ["SelectedIndex"], ["Width"] = 150, ["LayoutOrder"]}]
      212 SETTABLEKS                       R11 R23 K52 ["Items"]
      214 SETTABLEKS                       R15 R23 K53 ["OnItemActivated"]
      216 NEWCLOSURE                       R24 P4
      217 CAPTURE                          VAL R6
      218 SETTABLEKS                       R24 R23 K54 ["OnMouseEnter"]
      220 NEWCLOSURE                       R24 P5
      221 CAPTURE                          VAL R6
      222 SETTABLEKS                       R24 R23 K55 ["OnMouseLeave"]
      224 GETIMPORT                        R24 K62 [Enum.TextTruncate.AtEnd]
      226 SETTABLEKS                       R24 R23 K56 ["TextTruncate"]
      228 SETTABLEKS                       R16 R23 K28 ["Focus"]
      230 SETTABLEKS                       R14 R23 K57 ["SelectedIndex"]
      232 NAMECALL                         R24 R3 K40 ["getNextOrder"]
      234 CALL                             R24 1 1
      235 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K37 ["DropdownMenu"]
      240 CALL                             R17 3 -1
      241 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["HighlightTextLabel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["OverlayMenuFocusedContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Util"]
       45 GETTABLEKS                       R6 R6 K15 ["getSlimTintModeItems"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K16 ["ContextServices"]
       50 GETTABLEKS                       R6 R6 K17 ["Plugin"]
       52 GETTABLEKS                       R7 R1 K18 ["UI"]
       54 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       56 GETTABLEKS                       R9 R7 K19 ["Pane"]
       58 GETTABLEKS                       R10 R7 K20 ["SelectInput"]
       60 GETTABLEKS                       R11 R1 K14 ["Util"]
       62 GETTABLEKS                       R11 R11 K21 ["LayoutOrderIterator"]
       64 GETTABLEKS                       R12 R7 K22 ["Tooltip"]
       66 DUPCLOSURE                       R13 K23 [PROTO_0]
       67 DUPCLOSURE                       R14 K24 [PROTO_7]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R10
       78 RETURN                           R14 1
