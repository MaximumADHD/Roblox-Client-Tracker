PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ACTION_KEYS"]
        3 GETTABLEKS                       R1 R1 K1 ["Edit"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R3 K4 [{["editing"] = True}]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["ACTION_KEYS"]
       16 GETTABLEKS                       R1 R1 K6 ["Delete"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+12]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K7 ["props"]
       23 GETTABLEKS                       R1 R1 K8 ["OnDeleteAllEvents"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K7 ["props"]
       28 GETTABLEKS                       R2 R2 K9 ["Name"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnDeleteEvent"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Name"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R1 ; [+30]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K2 [{[1] = False}]
        3 NAMECALL                         R2 R2 K3 ["setState"]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["Name"]
       11 GETTABLEKS                       R3 R0 K6 ["Text"]
       13 JUMPIFNOTEQKS                    R3 K7 [""] ; [+9]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["props"]
       18 GETTABLEKS                       R4 R4 K8 ["OnDeleteEvent"]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K4 ["props"]
       26 GETTABLEKS                       R4 R4 K9 ["OnRenameEvent"]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = False}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["props"]
        8 GETTABLEKS                       R1 R1 K5 ["Name"]
       10 JUMPIFNOTEQKS                    R1 K6 [""] ; [+11]
       12 JUMPIFNOTEQKS                    R0 K6 [""] ; [+9]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["props"]
       17 GETTABLEKS                       R2 R2 K7 ["OnDeleteEvent"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 JUMPIFEQKS                       R0 K6 [""] ; [+11]
       24 JUMPIFEQ                         R0 R1 ; [+9]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["props"]
       29 GETTABLEKS                       R2 R2 K8 ["OnRenameEvent"]
       31 MOVE                             R3 R1
       32 MOVE                             R4 R0
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["showContextMenu"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K5 ["onMenuItemClicked"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K6 ["onDeleteEvent"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["focusChanged"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K8 ["onItemClicked"]
       20 NEWCLOSURE                       R1 P4
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K9 ["showMenu"]
       24 NEWCLOSURE                       R1 P5
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K10 ["hideMenu"]
       28 NEWCLOSURE                       R1 P6
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K11 ["mouseEnter"]
       32 NEWCLOSURE                       R1 P7
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K12 ["mouseLeave"]
       36 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 JUMPIFNOTEQKS                    R1 K2 [""] ; [+5]
        6 DUPTABLE                         R3 K5 [{["editing"] = True}]
        7 NAMECALL                         R1 R0 K6 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
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
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K11 ["createElement"]
       25 LOADK                            R13 K12 ["Frame"]
       26 DUPTABLE                         R14 K15 [{"Size", "BackgroundColor3", "BorderColor3"}]
       27 SETTABLEKS                       R4 R14 K3 ["Size"]
       29 GETTABLEKS                       R15 R10 K16 ["shadedBackgroundColor"]
       31 SETTABLEKS                       R15 R14 K13 ["BackgroundColor3"]
       33 GETTABLEKS                       R15 R2 K17 ["borderColor"]
       35 SETTABLEKS                       R15 R14 K14 ["BorderColor3"]
       37 DUPTABLE                         R15 K24 [{"Padding", "Label", "TextBox", "DeleteButton", "ContextButton", "EditEventMenu"}]
       38 GETUPVAL                         R16 0
       39 GETTABLEKS                       R16 R16 K11 ["createElement"]
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
       65 JUMPIFNOT                        R16 ; [+40]
       66 GETUPVAL                         R16 0
       67 GETTABLEKS                       R16 R16 K11 ["createElement"]
       69 LOADK                            R17 K32 ["TextLabel"]
       70 DUPTABLE                         R18 K41 [{["Size"], ["Text"], ["TextColor3"], ["TextTruncate"], ["Font"], ["TextSize"], ["TextXAlignment"], ["BackgroundTransparency"] = 1}]
       71 GETIMPORT                        R19 K43 [UDim2.new]
       73 LOADN                            R20 1
       74 GETUPVAL                         R22 1
       75 GETTABLEKS                       R22 R22 K44 ["TRACKLIST_BUTTON_SIZE"]
       77 MINUS                            R21 R22
       78 LOADN                            R22 1
       79 LOADN                            R23 0
       80 CALL                             R19 4 1
       81 SETTABLEKS                       R19 R18 K3 ["Size"]
       83 SETTABLEKS                       R5 R18 K33 ["Text"]
       85 GETTABLEKS                       R19 R11 K45 ["textColor"]
       87 SETTABLEKS                       R19 R18 K34 ["TextColor3"]
       89 GETIMPORT                        R19 K48 [Enum.TextTruncate.AtEnd]
       91 SETTABLEKS                       R19 R18 K35 ["TextTruncate"]
       93 GETTABLEKS                       R19 R2 K49 ["font"]
       95 SETTABLEKS                       R19 R18 K36 ["Font"]
       97 GETTABLEKS                       R19 R11 K50 ["textSize"]
       99 SETTABLEKS                       R19 R18 K37 ["TextSize"]
      101 GETIMPORT                        R19 K52 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R19 R18 K38 ["TextXAlignment"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K19 ["Label"]
      108 MOVE                             R16 R9
      109 JUMPIFNOT                        R16 ; [+35]
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K11 ["createElement"]
      113 GETUPVAL                         R17 2
      114 DUPTABLE                         R18 K62 [{["Size"], ["TextXAlignment"], ["CaptureFocus"] = True, ["Text"], ["ClearTextOnFocus"] = False, ["FocusChanged"], ["OnItemClicked"], ["Items"], ["MaxItems"] = 3}]
      115 GETIMPORT                        R19 K43 [UDim2.new]
      117 LOADN                            R20 1
      118 GETUPVAL                         R23 1
      119 GETTABLEKS                       R23 R23 K44 ["TRACKLIST_BUTTON_SIZE"]
      121 MINUS                            R22 R23
      122 SUBK                             R21 R22 K63 [8]
      123 LOADN                            R22 1
      124 LOADN                            R23 0
      125 CALL                             R19 4 1
      126 SETTABLEKS                       R19 R18 K3 ["Size"]
      128 GETIMPORT                        R19 K52 [Enum.TextXAlignment.Left]
      130 SETTABLEKS                       R19 R18 K38 ["TextXAlignment"]
      132 SETTABLEKS                       R5 R18 K33 ["Text"]
      134 GETTABLEKS                       R19 R0 K64 ["focusChanged"]
      136 SETTABLEKS                       R19 R18 K57 ["FocusChanged"]
      138 GETTABLEKS                       R19 R0 K65 ["onItemClicked"]
      140 SETTABLEKS                       R19 R18 K58 ["OnItemClicked"]
      142 SETTABLEKS                       R8 R18 K59 ["Items"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K20 ["TextBox"]
      147 GETUPVAL                         R16 0
      148 GETTABLEKS                       R16 R16 K11 ["createElement"]
      150 LOADK                            R17 K66 ["ImageButton"]
      151 NEWTABLE                         R18 16 0
      153 GETIMPORT                        R19 K43 [UDim2.new]
      155 LOADN                            R20 0
      156 LOADN                            R21 8
      157 LOADN                            R22 0
      158 LOADN                            R23 8
      159 CALL                             R19 4 1
      160 SETTABLEKS                       R19 R18 K3 ["Size"]
      162 GETIMPORT                        R19 K68 [Vector2.new]
      164 LOADK                            R20 K69 [0.5]
      165 LOADK                            R21 K69 [0.5]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K70 ["AnchorPoint"]
      169 GETIMPORT                        R19 K43 [UDim2.new]
      171 LOADN                            R20 0
      172 GETTABLEKS                       R23 R6 K72 ["Offset"]
      174 MINUS                            R22 R23
      175 DIVK                             R21 R22 K71 [2]
      176 LOADK                            R22 K69 [0.5]
      177 LOADN                            R23 0
      178 CALL                             R19 4 1
      179 SETTABLEKS                       R19 R18 K73 ["Position"]
      181 LOADN                            R19 1
      182 SETTABLEKS                       R19 R18 K39 ["BackgroundTransparency"]
      184 GETTABLEKS                       R19 R11 K74 ["deleteImage"]
      186 SETTABLEKS                       R19 R18 K75 ["Image"]
      188 GETTABLEKS                       R19 R11 K76 ["subTextColor"]
      190 SETTABLEKS                       R19 R18 K77 ["ImageColor3"]
      192 GETIMPORT                        R19 K80 [Enum.ScaleType.Fit]
      194 SETTABLEKS                       R19 R18 K78 ["ScaleType"]
      196 GETUPVAL                         R19 0
      197 GETTABLEKS                       R19 R19 K81 ["Event"]
      199 GETTABLEKS                       R19 R19 K82 ["Activated"]
      201 GETTABLEKS                       R20 R0 K83 ["onDeleteEvent"]
      203 SETTABLE                         R20 R18 R19
      204 GETUPVAL                         R19 0
      205 GETTABLEKS                       R19 R19 K81 ["Event"]
      207 GETTABLEKS                       R19 R19 K84 ["MouseEnter"]
      209 GETTABLEKS                       R20 R0 K85 ["mouseEnter"]
      211 SETTABLE                         R20 R18 R19
      212 GETUPVAL                         R19 0
      213 GETTABLEKS                       R19 R19 K81 ["Event"]
      215 GETTABLEKS                       R19 R19 K86 ["MouseLeave"]
      217 GETTABLEKS                       R20 R0 K87 ["mouseLeave"]
      219 SETTABLE                         R20 R18 R19
      220 CALL                             R16 2 1
      221 SETTABLEKS                       R16 R15 K21 ["DeleteButton"]
      223 GETUPVAL                         R16 0
      224 GETTABLEKS                       R16 R16 K11 ["createElement"]
      226 GETUPVAL                         R17 3
      227 DUPTABLE                         R18 K89 [{"AnchorPoint", "Position", "OnActivated"}]
      228 GETIMPORT                        R19 K68 [Vector2.new]
      230 LOADN                            R20 1
      231 LOADK                            R21 K69 [0.5]
      232 CALL                             R19 2 1
      233 SETTABLEKS                       R19 R18 K70 ["AnchorPoint"]
      235 GETIMPORT                        R19 K43 [UDim2.new]
      237 LOADN                            R20 1
      238 LOADN                            R21 0
      239 LOADK                            R22 K69 [0.5]
      240 LOADN                            R23 0
      241 CALL                             R19 4 1
      242 SETTABLEKS                       R19 R18 K73 ["Position"]
      244 GETTABLEKS                       R19 R0 K90 ["showMenu"]
      246 SETTABLEKS                       R19 R18 K88 ["OnActivated"]
      248 CALL                             R16 2 1
      249 SETTABLEKS                       R16 R15 K22 ["ContextButton"]
      251 GETUPVAL                         R16 0
      252 GETTABLEKS                       R16 R16 K11 ["createElement"]
      254 GETUPVAL                         R17 4
      255 DUPTABLE                         R18 K94 [{"ShowMenu", "OnMenuOpened", "OnMenuItemClicked"}]
      256 GETTABLEKS                       R19 R3 K95 ["showContextMenu"]
      258 SETTABLEKS                       R19 R18 K91 ["ShowMenu"]
      260 GETTABLEKS                       R19 R0 K96 ["hideMenu"]
      262 SETTABLEKS                       R19 R18 K92 ["OnMenuOpened"]
      264 GETTABLEKS                       R19 R0 K97 ["onMenuItemClicked"]
      266 SETTABLEKS                       R19 R18 K93 ["OnMenuItemClicked"]
      268 CALL                             R16 2 1
      269 SETTABLEKS                       R16 R15 K23 ["EditEventMenu"]
      271 CALL                             R12 3 -1
      272 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["FilteringTextBox"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R8 R8 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["EditEventsDialog"]
       51 GETTABLEKS                       R8 R8 K17 ["EditEventMenu"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K18 ["ContextButton"]
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
