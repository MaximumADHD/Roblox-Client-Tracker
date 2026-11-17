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
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETIMPORT                        R3 K4 [Enum.SlimTintMode.None]
       13 JUMPIFEQ                         R2 R3 ; [+11]
       15 GETUPVAL                         R3 2
       16 LOADK                            R5 K5 ["slimTintModeSelected"]
       17 DUPTABLE                         R6 K7 [{"tintMode"}]
       18 GETTABLEKS                       R7 R2 K8 ["Name"]
       20 SETTABLEKS                       R7 R6 K6 ["tintMode"]
       22 NAMECALL                         R3 R3 K9 ["report"]
       24 CALL                             R3 3 0
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 4
       29 LOADB                            R4 0
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

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
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Analytics"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 NAMECALL                         R3 R3 K1 ["use"]
       15 CALL                             R3 1 1
       16 NAMECALL                         R3 R3 K3 ["get"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["new"]
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K5 ["useContext"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K6 ["Context"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K7 ["overlayFocused"]
       32 GETTABLEKS                       R7 R5 K8 ["setOverlayFocused"]
       34 GETIMPORT                        R8 K10 [settings]
       36 CALL                             R8 0 1
       37 LOADK                            R10 K11 ["SlimDebug"]
       38 NAMECALL                         R8 R8 K12 ["FindFirstChild"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R10 R3 K13 ["MultipleDocumentInterfaceInstance"]
       43 JUMPIFNOT                        R10 ; [+3]
       44 GETTABLEKS                       R11 R10 K14 ["FocusedDataModelSession"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R11
       48 LOADB                            R9 0
       49 JUMPIFEQKNIL                     R11 ; [+9]
       51 GETTABLEKS                       R12 R11 K15 ["CurrentDataModelType"]
       53 GETIMPORT                        R13 K19 [Enum.StudioDataModelType.PlayClient]
       55 JUMPIFEQ                         R12 R13 ; [+2]
       57 LOADB                            R9 0 +1
       58 LOADB                            R9 1
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R10 R10 K20 ["useMemo"]
       62 NEWCLOSURE                       R11 P0
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          UPVAL U5
       66 NEWTABLE                         R12 0 2
       68 MOVE                             R13 R8
       69 MOVE                             R14 R9
       70 SETLIST                          R12 R13 2 [1]
       72 CALL                             R10 2 1
       73 GETTABLEKS                       R11 R10 K21 ["enumItems"]
       75 GETTABLEKS                       R12 R10 K22 ["itemNames"]
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K23 ["useState"]
       80 NEWCLOSURE                       R14 P1
       81 CAPTURE                          VAL R8
       82 CALL                             R13 1 2
       83 JUMPIFNOT                        R13 ; [+6]
       84 GETIMPORT                        R15 K26 [table.find]
       86 MOVE                             R16 R11
       87 MOVE                             R17 R13
       88 CALL                             R15 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R15
       91 GETUPVAL                         R16 3
       92 GETTABLEKS                       R16 R16 K27 ["useCallback"]
       94 NEWCLOSURE                       R17 P2
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R7
      100 NEWTABLE                         R18 0 4
      102 MOVE                             R19 R11
      103 MOVE                             R20 R8
      104 MOVE                             R21 R7
      105 MOVE                             R22 R2
      106 SETLIST                          R18 R19 4 [1]
      108 CALL                             R16 2 1
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R17 R17 K28 ["useEffect"]
      112 NEWCLOSURE                       R18 P3
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 NEWTABLE                         R19 0 3
      119 MOVE                             R20 R11
      120 MOVE                             R21 R13
      121 MOVE                             R22 R8
      122 SETLIST                          R19 R20 3 [1]
      124 CALL                             R17 2 0
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K29 ["Focus"]
      128 NAMECALL                         R17 R17 K1 ["use"]
      130 CALL                             R17 1 1
      131 NAMECALL                         R17 R17 K3 ["get"]
      133 CALL                             R17 1 1
      134 GETUPVAL                         R18 3
      135 GETTABLEKS                       R18 R18 K30 ["createElement"]
      137 GETUPVAL                         R19 6
      138 NEWTABLE                         R20 4 0
      140 GETUPVAL                         R21 3
      141 GETTABLEKS                       R21 R21 K31 ["Tag"]
      143 LOADK                            R22 K32 ["X-RowM X-Left X-Middle"]
      144 SETTABLE                         R22 R20 R21
      145 GETTABLEKS                       R21 R0 K33 ["LayoutOrder"]
      147 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      149 GETIMPORT                        R21 K35 [UDim2.new]
      151 LOADN                            R22 1
      152 LOADN                            R23 -6
      153 LOADN                            R24 0
      154 LOADN                            R25 32
      155 CALL                             R21 4 1
      156 SETTABLEKS                       R21 R20 K36 ["Size"]
      158 DUPTABLE                         R21 K39 [{"TextContainer", "DropdownMenu"}]
      159 GETUPVAL                         R22 3
      160 GETTABLEKS                       R22 R22 K30 ["createElement"]
      162 GETUPVAL                         R23 6
      163 DUPTABLE                         R24 K40 [{"Size", "LayoutOrder"}]
      164 GETIMPORT                        R25 K35 [UDim2.new]
      166 LOADN                            R26 1
      167 LOADN                            R27 -155
      168 LOADN                            R28 1
      169 LOADN                            R29 0
      170 CALL                             R25 4 1
      171 SETTABLEKS                       R25 R24 K36 ["Size"]
      173 NAMECALL                         R25 R4 K41 ["getNextOrder"]
      175 CALL                             R25 1 1
      176 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      178 DUPTABLE                         R25 K44 [{"Title", "ToolTip"}]
      179 GETUPVAL                         R26 3
      180 GETTABLEKS                       R26 R26 K30 ["createElement"]
      182 GETUPVAL                         R27 7
      183 DUPTABLE                         R28 K46 [{"Text"}]
      184 LOADK                            R31 K47 ["StudioModes"]
      185 LOADK                            R32 K48 ["SLIMTintMode"]
      186 NAMECALL                         R29 R1 K49 ["getText"]
      188 CALL                             R29 3 1
      189 SETTABLEKS                       R29 R28 K45 ["Text"]
      191 CALL                             R26 2 1
      192 SETTABLEKS                       R26 R25 K42 ["Title"]
      194 GETUPVAL                         R26 3
      195 GETTABLEKS                       R26 R26 K30 ["createElement"]
      197 GETUPVAL                         R27 8
      198 DUPTABLE                         R28 K51 [{"Text", "Enabled"}]
      199 LOADK                            R31 K47 ["StudioModes"]
      200 LOADK                            R32 K52 ["SLIMTintModeToolTip"]
      201 NAMECALL                         R29 R1 K49 ["getText"]
      203 CALL                             R29 3 1
      204 SETTABLEKS                       R29 R28 K45 ["Text"]
      206 NOT                              R29 R6
      207 SETTABLEKS                       R29 R28 K50 ["Enabled"]
      209 CALL                             R26 2 1
      210 SETTABLEKS                       R26 R25 K43 ["ToolTip"]
      212 CALL                             R22 3 1
      213 SETTABLEKS                       R22 R21 K37 ["TextContainer"]
      215 GETUPVAL                         R22 3
      216 GETTABLEKS                       R22 R22 K30 ["createElement"]
      218 GETUPVAL                         R23 9
      219 DUPTABLE                         R24 K61 [{["Items"], ["OnItemActivated"], ["OnMouseEnter"], ["OnMouseLeave"], ["TextTruncate"], ["Focus"], ["SelectedIndex"], ["Width"] = 150, ["LayoutOrder"]}]
      220 SETTABLEKS                       R12 R24 K53 ["Items"]
      222 SETTABLEKS                       R16 R24 K54 ["OnItemActivated"]
      224 NEWCLOSURE                       R25 P4
      225 CAPTURE                          VAL R7
      226 SETTABLEKS                       R25 R24 K55 ["OnMouseEnter"]
      228 NEWCLOSURE                       R25 P5
      229 CAPTURE                          VAL R7
      230 SETTABLEKS                       R25 R24 K56 ["OnMouseLeave"]
      232 GETIMPORT                        R25 K63 [Enum.TextTruncate.AtEnd]
      234 SETTABLEKS                       R25 R24 K57 ["TextTruncate"]
      236 SETTABLEKS                       R17 R24 K29 ["Focus"]
      238 SETTABLEKS                       R15 R24 K58 ["SelectedIndex"]
      240 NAMECALL                         R25 R4 K41 ["getNextOrder"]
      242 CALL                             R25 1 1
      243 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      245 CALL                             R22 2 1
      246 SETTABLEKS                       R22 R21 K38 ["DropdownMenu"]
      248 CALL                             R18 3 -1
      249 RETURN                           R18 -1

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
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["getSlimTintModeItems"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K17 ["ContextServices"]
       57 GETTABLEKS                       R7 R7 K18 ["Plugin"]
       59 GETTABLEKS                       R8 R1 K19 ["UI"]
       61 GETTABLEKS                       R9 R1 K17 ["ContextServices"]
       63 GETTABLEKS                       R10 R8 K20 ["Pane"]
       65 GETTABLEKS                       R11 R8 K21 ["SelectInput"]
       67 GETTABLEKS                       R12 R1 K15 ["Util"]
       69 GETTABLEKS                       R12 R12 K22 ["LayoutOrderIterator"]
       71 GETTABLEKS                       R13 R8 K23 ["Tooltip"]
       73 DUPCLOSURE                       R14 K24 [PROTO_0]
       74 DUPCLOSURE                       R15 K25 [PROTO_7]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 RETURN                           R15 1
