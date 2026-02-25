PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ACTION_KEYS"]
        3 GETTABLEKS                       R1 R2 K1 ["Edit"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+10]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R3 K3 [{"editing"}]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K2 ["editing"]
       12 NAMECALL                         R1 R1 K4 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["ACTION_KEYS"]
       19 GETTABLEKS                       R1 R2 K5 ["Delete"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+12]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["props"]
       26 GETTABLEKS                       R1 R2 K7 ["OnDeleteAllEvents"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K6 ["props"]
       31 GETTABLEKS                       R2 R3 K8 ["Name"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnDeleteEvent"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Name"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R1 ; [+33]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K1 [{"editing"}]
        3 LOADB                            R5 0
        4 SETTABLEKS                       R5 R4 K0 ["editing"]
        6 NAMECALL                         R2 R2 K2 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["props"]
       12 GETTABLEKS                       R2 R3 K4 ["Name"]
       14 GETTABLEKS                       R3 R0 K5 ["Text"]
       16 JUMPIFNOTEQKS                    R3 K6 [""] ; [+9]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["props"]
       21 GETTABLEKS                       R4 R5 K7 ["OnDeleteEvent"]
       23 MOVE                             R5 R2
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K3 ["props"]
       29 GETTABLEKS                       R4 R5 K8 ["OnRenameEvent"]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editing"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["editing"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["props"]
       11 GETTABLEKS                       R1 R2 K4 ["Name"]
       13 JUMPIFNOTEQKS                    R1 K5 [""] ; [+11]
       15 JUMPIFNOTEQKS                    R0 K5 [""] ; [+9]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["props"]
       20 GETTABLEKS                       R2 R3 K6 ["OnDeleteEvent"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 JUMPIFEQKS                       R0 K5 [""] ; [+11]
       27 JUMPIFEQ                         R0 R1 ; [+9]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K3 ["props"]
       32 GETTABLEKS                       R2 R3 K7 ["OnRenameEvent"]
       34 MOVE                             R3 R1
       35 MOVE                             R4 R0
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showContextMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showContextMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showContextMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showContextMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"editing", "showContextMenu"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["editing"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showContextMenu"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMenuItemClicked"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onDeleteEvent"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["focusChanged"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["onItemClicked"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K8 ["showMenu"]
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K9 ["hideMenu"]
       34 NEWCLOSURE                       R1 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K10 ["mouseEnter"]
       38 NEWCLOSURE                       R1 P7
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K11 ["mouseLeave"]
       42 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 JUMPIFNOTEQKS                    R1 K2 [""] ; [+8]
        6 DUPTABLE                         R3 K4 [{"editing"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K3 ["editing"]
       10 NAMECALL                         R1 R0 K5 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["PaddingLeft"]
       12 GETTABLEKS                       R7 R1 K6 ["PaddingRight"]
       14 GETTABLEKS                       R8 R1 K7 ["UnusedEvents"]
       16 GETTABLEKS                       R9 R3 K8 ["editing"]
       18 GETTABLEKS                       R10 R2 K9 ["trackTheme"]
       20 GETTABLEKS                       R11 R2 K10 ["dialogTheme"]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K11 ["createElement"]
       25 LOADK                            R13 K12 ["Frame"]
       26 DUPTABLE                         R14 K15 [{"Size", "BackgroundColor3", "BorderColor3"}]
       27 SETTABLEKS                       R4 R14 K3 ["Size"]
       29 GETTABLEKS                       R15 R10 K16 ["shadedBackgroundColor"]
       31 SETTABLEKS                       R15 R14 K13 ["BackgroundColor3"]
       33 GETTABLEKS                       R15 R2 K17 ["borderColor"]
       35 SETTABLEKS                       R15 R14 K14 ["BorderColor3"]
       37 DUPTABLE                         R15 K24 [{"Padding", "Label", "TextBox", "DeleteButton", "ContextButton", "EditEventMenu"}]
       38 GETUPVAL                         R17 0
       39 GETTABLEKS                       R16 R17 K11 ["createElement"]
       41 LOADK                            R17 K25 ["UIPadding"]
       42 DUPTABLE                         R18 K28 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       43 SETTABLEKS                       R6 R18 K5 ["PaddingLeft"]
       45 SETTABLEKS                       R7 R18 K6 ["PaddingRight"]
       47 GETIMPORT                        R19 K31 [UDim.new]
       49 LOADN                            R20 0
       50 LOADN                            R21 2
       51 CALL                             R19 2 1
       52 SETTABLEKS                       R19 R18 K26 ["PaddingTop"]
       54 GETIMPORT                        R19 K31 [UDim.new]
       56 LOADN                            R20 0
       57 LOADN                            R21 2
       58 CALL                             R19 2 1
       59 SETTABLEKS                       R19 R18 K27 ["PaddingBottom"]
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K18 ["Padding"]
       64 NOT                              R16 R9
       65 JUMPIFNOT                        R16 ; [+43]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R16 R17 K11 ["createElement"]
       69 LOADK                            R17 K32 ["TextLabel"]
       70 DUPTABLE                         R18 K40 [{"Size", "Text", "TextColor3", "TextTruncate", "Font", "TextSize", "TextXAlignment", "BackgroundTransparency"}]
       71 GETIMPORT                        R19 K42 [UDim2.new]
       73 LOADN                            R20 1
       74 GETUPVAL                         R23 1
       75 GETTABLEKS                       R22 R23 K43 ["TRACKLIST_BUTTON_SIZE"]
       77 MINUS                            R21 R22
       78 LOADN                            R22 1
       79 LOADN                            R23 0
       80 CALL                             R19 4 1
       81 SETTABLEKS                       R19 R18 K3 ["Size"]
       83 SETTABLEKS                       R5 R18 K33 ["Text"]
       85 GETTABLEKS                       R19 R11 K44 ["textColor"]
       87 SETTABLEKS                       R19 R18 K34 ["TextColor3"]
       89 GETIMPORT                        R19 K47 [Enum.TextTruncate.AtEnd]
       91 SETTABLEKS                       R19 R18 K35 ["TextTruncate"]
       93 GETTABLEKS                       R19 R2 K48 ["font"]
       95 SETTABLEKS                       R19 R18 K36 ["Font"]
       97 GETTABLEKS                       R19 R11 K49 ["textSize"]
       99 SETTABLEKS                       R19 R18 K37 ["TextSize"]
      101 GETIMPORT                        R19 K51 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R19 R18 K38 ["TextXAlignment"]
      105 LOADN                            R19 1
      106 SETTABLEKS                       R19 R18 K39 ["BackgroundTransparency"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K19 ["Label"]
      111 MOVE                             R16 R9
      112 JUMPIFNOT                        R16 ; [+44]
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R16 R17 K11 ["createElement"]
      116 GETUPVAL                         R17 2
      117 DUPTABLE                         R18 K58 [{"Size", "TextXAlignment", "CaptureFocus", "Text", "ClearTextOnFocus", "FocusChanged", "OnItemClicked", "Items", "MaxItems"}]
      118 GETIMPORT                        R19 K42 [UDim2.new]
      120 LOADN                            R20 1
      121 GETUPVAL                         R24 1
      122 GETTABLEKS                       R23 R24 K43 ["TRACKLIST_BUTTON_SIZE"]
      124 MINUS                            R22 R23
      125 SUBK                             R21 R22 K59 [8]
      126 LOADN                            R22 1
      127 LOADN                            R23 0
      128 CALL                             R19 4 1
      129 SETTABLEKS                       R19 R18 K3 ["Size"]
      131 GETIMPORT                        R19 K51 [Enum.TextXAlignment.Left]
      133 SETTABLEKS                       R19 R18 K38 ["TextXAlignment"]
      135 LOADB                            R19 1
      136 SETTABLEKS                       R19 R18 K52 ["CaptureFocus"]
      138 SETTABLEKS                       R5 R18 K33 ["Text"]
      140 LOADB                            R19 0
      141 SETTABLEKS                       R19 R18 K53 ["ClearTextOnFocus"]
      143 GETTABLEKS                       R19 R0 K60 ["focusChanged"]
      145 SETTABLEKS                       R19 R18 K54 ["FocusChanged"]
      147 GETTABLEKS                       R19 R0 K61 ["onItemClicked"]
      149 SETTABLEKS                       R19 R18 K55 ["OnItemClicked"]
      151 SETTABLEKS                       R8 R18 K56 ["Items"]
      153 LOADN                            R19 3
      154 SETTABLEKS                       R19 R18 K57 ["MaxItems"]
      156 CALL                             R16 2 1
      157 SETTABLEKS                       R16 R15 K20 ["TextBox"]
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R16 R17 K11 ["createElement"]
      162 LOADK                            R17 K62 ["ImageButton"]
      163 NEWTABLE                         R18 16 0
      165 GETIMPORT                        R19 K42 [UDim2.new]
      167 LOADN                            R20 0
      168 LOADN                            R21 8
      169 LOADN                            R22 0
      170 LOADN                            R23 8
      171 CALL                             R19 4 1
      172 SETTABLEKS                       R19 R18 K3 ["Size"]
      174 GETIMPORT                        R19 K64 [Vector2.new]
      176 LOADK                            R20 K65 [0.5]
      177 LOADK                            R21 K65 [0.5]
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K66 ["AnchorPoint"]
      181 GETIMPORT                        R19 K42 [UDim2.new]
      183 LOADN                            R20 0
      184 GETTABLEKS                       R23 R6 K68 ["Offset"]
      186 MINUS                            R22 R23
      187 DIVK                             R21 R22 K67 [2]
      188 LOADK                            R22 K65 [0.5]
      189 LOADN                            R23 0
      190 CALL                             R19 4 1
      191 SETTABLEKS                       R19 R18 K69 ["Position"]
      193 LOADN                            R19 1
      194 SETTABLEKS                       R19 R18 K39 ["BackgroundTransparency"]
      196 GETTABLEKS                       R19 R11 K70 ["deleteImage"]
      198 SETTABLEKS                       R19 R18 K71 ["Image"]
      200 GETTABLEKS                       R19 R11 K72 ["subTextColor"]
      202 SETTABLEKS                       R19 R18 K73 ["ImageColor3"]
      204 GETIMPORT                        R19 K76 [Enum.ScaleType.Fit]
      206 SETTABLEKS                       R19 R18 K74 ["ScaleType"]
      208 GETUPVAL                         R21 0
      209 GETTABLEKS                       R20 R21 K77 ["Event"]
      211 GETTABLEKS                       R19 R20 K78 ["Activated"]
      213 GETTABLEKS                       R20 R0 K79 ["onDeleteEvent"]
      215 SETTABLE                         R20 R18 R19
      216 GETUPVAL                         R21 0
      217 GETTABLEKS                       R20 R21 K77 ["Event"]
      219 GETTABLEKS                       R19 R20 K80 ["MouseEnter"]
      221 GETTABLEKS                       R20 R0 K81 ["mouseEnter"]
      223 SETTABLE                         R20 R18 R19
      224 GETUPVAL                         R21 0
      225 GETTABLEKS                       R20 R21 K77 ["Event"]
      227 GETTABLEKS                       R19 R20 K82 ["MouseLeave"]
      229 GETTABLEKS                       R20 R0 K83 ["mouseLeave"]
      231 SETTABLE                         R20 R18 R19
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K21 ["DeleteButton"]
      235 GETUPVAL                         R17 0
      236 GETTABLEKS                       R16 R17 K11 ["createElement"]
      238 GETUPVAL                         R17 3
      239 DUPTABLE                         R18 K85 [{"AnchorPoint", "Position", "OnActivated"}]
      240 GETIMPORT                        R19 K64 [Vector2.new]
      242 LOADN                            R20 1
      243 LOADK                            R21 K65 [0.5]
      244 CALL                             R19 2 1
      245 SETTABLEKS                       R19 R18 K66 ["AnchorPoint"]
      247 GETIMPORT                        R19 K42 [UDim2.new]
      249 LOADN                            R20 1
      250 LOADN                            R21 0
      251 LOADK                            R22 K65 [0.5]
      252 LOADN                            R23 0
      253 CALL                             R19 4 1
      254 SETTABLEKS                       R19 R18 K69 ["Position"]
      256 GETTABLEKS                       R19 R0 K86 ["showMenu"]
      258 SETTABLEKS                       R19 R18 K84 ["OnActivated"]
      260 CALL                             R16 2 1
      261 SETTABLEKS                       R16 R15 K22 ["ContextButton"]
      263 GETUPVAL                         R17 0
      264 GETTABLEKS                       R16 R17 K11 ["createElement"]
      266 GETUPVAL                         R17 4
      267 DUPTABLE                         R18 K90 [{"ShowMenu", "OnMenuOpened", "OnMenuItemClicked"}]
      268 GETTABLEKS                       R19 R3 K91 ["showContextMenu"]
      270 SETTABLEKS                       R19 R18 K87 ["ShowMenu"]
      272 GETTABLEKS                       R19 R0 K92 ["hideMenu"]
      274 SETTABLEKS                       R19 R18 K88 ["OnMenuOpened"]
      276 GETTABLEKS                       R19 R0 K93 ["onMenuItemClicked"]
      278 SETTABLEKS                       R19 R18 K89 ["OnMenuItemClicked"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R15 K23 ["EditEventMenu"]
      283 CALL                             R12 3 -1
      284 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K8 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Components"]
       40 GETTABLEKS                       R7 R8 K15 ["FilteringTextBox"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K8 ["Src"]
       47 GETTABLEKS                       R10 R11 K14 ["Components"]
       49 GETTABLEKS                       R9 R10 K16 ["EditEventsDialog"]
       51 GETTABLEKS                       R8 R9 K17 ["EditEventMenu"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K8 ["Src"]
       58 GETTABLEKS                       R10 R11 K14 ["Components"]
       60 GETTABLEKS                       R9 R10 K18 ["ContextButton"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       65 LOADK                            R11 K20 ["EventNameEntry"]
       66 NAMECALL                         R9 R9 K21 ["extend"]
       68 CALL                             R9 2 1
       69 DUPCLOSURE                       R10 K22 [PROTO_8]
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R10 R9 K23 ["init"]
       73 DUPCLOSURE                       R10 K24 [PROTO_9]
       74 SETTABLEKS                       R10 R9 K25 ["didMount"]
       76 DUPCLOSURE                       R10 K26 [PROTO_10]
       77 SETTABLEKS                       R10 R9 K27 ["willUnmount"]
       79 DUPCLOSURE                       R10 K28 [PROTO_11]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R10 R9 K29 ["render"]
       87 MOVE                             R10 R5
       88 DUPTABLE                         R11 K32 [{"Stylizer", "Mouse"}]
       89 GETTABLEKS                       R12 R4 K30 ["Stylizer"]
       91 SETTABLEKS                       R12 R11 K30 ["Stylizer"]
       93 GETTABLEKS                       R12 R4 K31 ["Mouse"]
       95 SETTABLEKS                       R12 R11 K31 ["Mouse"]
       97 CALL                             R10 1 1
       98 MOVE                             R11 R9
       99 CALL                             R10 1 1
      100 MOVE                             R9 R10
      101 RETURN                           R9 1
