PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 LOADK                            R3 K0 ["\n"]
        2 LOADK                            R4 K1 [" "]
        3 NAMECALL                         R1 R0 K2 ["gsub"]
        5 CALL                             R1 3 1
        6 JUMPIF                           R1 ; [+1]
        7 LOADK                            R1 K3 [""]
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onSearchRequested"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["text"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["lastDelay"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+28]
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKS                       R0 K2 [""] ; [+25]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["requestSearch"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["state"]
       18 GETTABLEKS                       R0 R0 K4 ["showDropdown"]
       20 JUMPIF                           R0 ; [+14]
       21 GETIMPORT                        R0 K6 [next]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K0 ["state"]
       26 GETTABLEKS                       R1 R1 K7 ["mergedItems"]
       28 CALL                             R0 1 1
       29 JUMPIFEQKNIL                     R0 ; [+5]
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K4 ["showDropdown"]
       34 CALL                             R0 0 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["Text"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 LOADK                            R5 K1 ["\n"]
        4 LOADK                            R6 K2 [" "]
        5 NAMECALL                         R3 R2 K3 ["gsub"]
        7 CALL                             R3 3 1
        8 MOVE                             R1 R3
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K4 [""]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["textBoxRef"]
       14 GETTABLEKS                       R2 R2 K6 ["current"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["state"]
       19 GETTABLEKS                       R3 R3 K8 ["text"]
       21 JUMPIFEQ                         R3 R1 ; [+67]
       23 GETUPVAL                         R3 0
       24 DUPTABLE                         R5 K9 [{"text"}]
       25 SETTABLEKS                       R1 R5 K8 ["text"]
       27 NAMECALL                         R3 R3 K10 ["setState"]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K11 ["props"]
       33 GETTABLEKS                       R3 R3 K12 ["onTextChanged"]
       35 JUMPIFNOT                        R3 ; [+7]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K11 ["props"]
       39 GETTABLEKS                       R3 R3 K12 ["onTextChanged"]
       41 MOVE                             R4 R1
       42 CALL                             R3 1 0
       43 NEWTABLE                         R3 0 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K7 ["state"]
       48 SETTABLEKS                       R3 R4 K13 ["lastDelay"]
       50 GETIMPORT                        R4 K15 [delay]
       52 LOADK                            R5 K16 [0.5]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R1
       57 CALL                             R4 2 0
       58 GETUPVAL                         R4 1
       59 MOVE                             R6 R1
       60 GETTABLEKS                       R7 R2 K17 ["TextSize"]
       62 GETTABLEKS                       R8 R2 K18 ["Font"]
       64 GETIMPORT                        R9 K21 [Vector2.new]
       66 LOADK                            R10 K22 [∞]
       67 LOADK                            R11 K22 [∞]
       68 CALL                             R9 2 -1
       69 NAMECALL                         R4 R4 K23 ["GetTextSize"]
       71 CALL                             R4 -1 1
       72 GETTABLEKS                       R5 R4 K24 ["x"]
       74 GETTABLEKS                       R6 R2 K25 ["AbsoluteSize"]
       76 GETTABLEKS                       R6 R6 K24 ["x"]
       78 JUMPIFNOTLT                      R6 R5 ; [+6]
       80 GETIMPORT                        R5 K29 [Enum.TextXAlignment.Right]
       82 SETTABLEKS                       R5 R2 K27 ["TextXAlignment"]
       84 RETURN                           R0 0
       85 GETIMPORT                        R5 K31 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R5 R2 K27 ["TextXAlignment"]
       89 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R4 K4 [{["isFocused"] = True}]
        7 NAMECALL                         R2 R2 K5 ["setState"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["props"]
       13 GETTABLEKS                       R2 R2 K7 ["Enabled"]
       15 JUMPIF                           R2 ; [+3]
       16 NAMECALL                         R2 R1 K8 ["ReleaseFocus"]
       18 CALL                             R2 1 0
       19 GETIMPORT                        R2 K10 [next]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K11 ["state"]
       24 GETTABLEKS                       R3 R3 K12 ["mergedItems"]
       26 CALL                             R2 1 1
       27 JUMPIFEQKNIL                     R2 ; [+5]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K13 ["showDropdown"]
       32 CALL                             R2 0 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K3 [{[1] = False, ["isContainerHovered"] = False}]
        2 NAMECALL                         R3 R3 K4 ["setState"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{["isFocused"] = True}]
        7 NAMECALL                         R1 R1 K5 ["setState"]
        9 CALL                             R1 2 0
       10 LOADK                            R1 K6 [""]
       11 SETTABLEKS                       R1 R0 K7 ["Text"]
       13 NAMECALL                         R1 R0 K8 ["CaptureFocus"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K12 [Enum.TextXAlignment.Left]
       18 SETTABLEKS                       R1 R0 K10 ["TextXAlignment"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K13 ["onClearButtonHoverEnded"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnItemClicked"]
        5 GETTABLEKS                       R2 R0 K2 ["Key"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["hideDropdown"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isFocused"]
        5 JUMPIF                           R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K5 [{["showDropdown"] = False, ["dropdownItem"]}]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K6 ["None"]
       11 SETTABLEKS                       R3 R2 K4 ["dropdownItem"]
       13 NAMECALL                         R0 R0 K7 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K12 [{[1] = "", ["isFocused"] = False, ["isContainerHovered"] = False, ["isClearButtonHovered"] = False, ["showDropdown"] = False, ["dropdownItem"] = , ["lastDelay"], ["lastResults"], ["mergedItems"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K9 ["lastDelay"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K10 ["lastResults"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K11 ["mergedItems"]
       13 SETTABLEKS                       R1 R0 K13 ["state"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K14 ["createRef"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K15 ["textBoxRef"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K16 ["requestSearch"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K17 ["onContainerHovered"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K18 ["onContainerHoverEnded"]
       33 NEWCLOSURE                       R1 P3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R1 R0 K19 ["onTextChanged"]
       38 NEWCLOSURE                       R1 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K20 ["onTextBoxFocused"]
       42 NEWCLOSURE                       R1 P5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K21 ["onTextBoxFocusLost"]
       46 NEWCLOSURE                       R1 P6
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K22 ["onClearButtonHovered"]
       50 NEWCLOSURE                       R1 P7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K23 ["onClearButtonHoverEnded"]
       54 NEWCLOSURE                       R1 P8
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K24 ["onClearButtonClicked"]
       58 NEWCLOSURE                       R1 P9
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K25 ["onItemClicked"]
       62 NEWCLOSURE                       R1 P10
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K6 ["showDropdown"]
       66 NEWCLOSURE                       R1 P11
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U0
       69 SETTABLEKS                       R1 R0 K26 ["hideDropdown"]
       71 GETTABLEKS                       R1 R0 K27 ["props"]
       73 GETTABLEKS                       R1 R1 K19 ["onTextChanged"]
       75 JUMPIFNOT                        R1 ; [+6]
       76 GETTABLEKS                       R1 R0 K27 ["props"]
       78 GETTABLEKS                       R1 R1 K19 ["onTextChanged"]
       80 LOADK                            R2 K1 [""]
       81 CALL                             R1 1 0
       82 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R3 R3 K0 ["LayoutOrder"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 GETTABLEKS                       R4 R4 K0 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [next]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+20]
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LoadingMore"]
       12 JUMPIF                           R3 ; [+64]
       13 GETTABLEKS                       R3 R0 K4 ["state"]
       15 GETTABLEKS                       R3 R3 K5 ["text"]
       17 JUMPIFEQKS                       R3 K6 [""] ; [+59]
       19 FASTCALL2K                       TABLE_INSERT R2 K7 ; [+5]
       21 MOVE                             R4 R2
       22 LOADK                            R5 K7 ["NoResults"]
       23 GETIMPORT                        R3 K10 [table.insert]
       25 CALL                             R3 2 0
       26 JUMP                             ; [+50]
       27 NEWTABLE                         R3 0 0
       29 GETIMPORT                        R4 K12 [pairs]
       31 MOVE                             R5 R1
       32 CALL                             R4 1 3
       33 FORGPREP_NEXT                    R4
       34 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       36 MOVE                             R10 R3
       37 MOVE                             R11 R7
       38 GETIMPORT                        R9 K10 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-8]
       43 GETIMPORT                        R4 K14 [table.sort]
       45 MOVE                             R5 R3
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          VAL R1
       48 CALL                             R4 2 0
       49 GETIMPORT                        R4 K16 [ipairs]
       51 MOVE                             R5 R3
       52 CALL                             R4 1 3
       53 FORGPREP_INEXT                   R4
       54 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       56 MOVE                             R10 R2
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K10 [table.insert]
       60 CALL                             R9 2 0
       61 GETIMPORT                        R9 K16 [ipairs]
       63 GETTABLE                         R10 R1 R8
       64 CALL                             R9 1 3
       65 FORGPREP_INEXT                   R9
       66 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       68 MOVE                             R15 R2
       69 MOVE                             R16 R13
       70 GETIMPORT                        R14 K10 [table.insert]
       72 CALL                             R14 2 0
       73 FORGLOOP                         R9 2 [inext] ; [-8]
       75 FORGLOOP                         R4 2 [inext] ; [-22]
       77 GETTABLEKS                       R3 R0 K2 ["props"]
       79 GETTABLEKS                       R3 R3 K3 ["LoadingMore"]
       81 JUMPIFNOT                        R3 ; [+7]
       82 FASTCALL2K                       TABLE_INSERT R2 K17 ; [+5]
       84 MOVE                             R4 R2
       85 LOADK                            R5 K17 ["LoadingIndicator"]
       86 GETIMPORT                        R3 K10 [table.insert]
       88 CALL                             R3 2 0
       89 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R6 R0 K0 ["props"]
        2 GETTABLEKS                       R7 R6 K1 ["HeaderHeight"]
        4 GETTABLEKS                       R8 R6 K2 ["NoResultsText"]
        6 GETTABLEKS                       R10 R6 K4 ["TextPadding"]
        8 ORK                              R9 R10 K3 [16]
        9 GETTABLEKS                       R10 R4 K5 ["assetConfig"]
       11 GETTABLEKS                       R10 R10 K6 ["packagePermissions"]
       13 GETTABLEKS                       R10 R10 K7 ["searchBar"]
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R12 R1
       17 GETIMPORT                        R11 K9 [typeof]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+60]
       22 JUMPIFEQKS                       R1 K11 ["LoadingIndicator"] ; [+58]
       24 JUMPIFEQKS                       R1 K12 ["NoResults"] ; [+56]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K13 ["createElement"]
       29 LOADK                            R12 K14 ["TextLabel"]
       30 DUPTABLE                         R13 K27 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Font"], ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["TextSize"] = 16, ["TextColor3"]}]
       31 GETTABLEKS                       R14 R10 K28 ["dropDown"]
       33 GETTABLEKS                       R14 R14 K29 ["backgroundColor"]
       35 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
       37 SETTABLEKS                       R2 R13 K18 ["LayoutOrder"]
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R14 R14 K30 ["FONT"]
       42 SETTABLEKS                       R14 R13 K19 ["Font"]
       44 GETIMPORT                        R14 K33 [UDim2.new]
       46 LOADN                            R15 1
       47 LOADN                            R16 0
       48 LOADN                            R17 0
       49 MOVE                             R18 R7
       50 CALL                             R14 4 1
       51 SETTABLEKS                       R14 R13 K20 ["Size"]
       53 SETTABLEKS                       R1 R13 K21 ["Text"]
       55 GETIMPORT                        R14 K36 [Enum.TextXAlignment.Left]
       57 SETTABLEKS                       R14 R13 K22 ["TextXAlignment"]
       59 GETTABLEKS                       R14 R10 K37 ["placeholderText"]
       61 SETTABLEKS                       R14 R13 K26 ["TextColor3"]
       63 DUPTABLE                         R14 K39 [{"Padding"}]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K13 ["createElement"]
       67 LOADK                            R16 K40 ["UIPadding"]
       68 DUPTABLE                         R17 K42 [{"PaddingLeft"}]
       69 GETIMPORT                        R18 K44 [UDim.new]
       71 LOADN                            R19 0
       72 MOVE                             R20 R9
       73 CALL                             R18 2 1
       74 SETTABLEKS                       R18 R17 K41 ["PaddingLeft"]
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K38 ["Padding"]
       79 CALL                             R11 3 -1
       80 RETURN                           R11 -1
       81 JUMPIFNOTEQKS                    R1 K12 ["NoResults"] ; [+63]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K13 ["createElement"]
       86 LOADK                            R12 K14 ["TextLabel"]
       87 DUPTABLE                         R13 K45 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Font"], ["LayoutOrder"], ["Text"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["Size"]}]
       88 GETTABLEKS                       R14 R10 K28 ["dropDown"]
       90 GETTABLEKS                       R14 R14 K29 ["backgroundColor"]
       92 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
       94 GETUPVAL                         R14 1
       95 GETTABLEKS                       R14 R14 K30 ["FONT"]
       97 SETTABLEKS                       R14 R13 K19 ["Font"]
       99 SETTABLEKS                       R2 R13 K18 ["LayoutOrder"]
      101 SETTABLEKS                       R8 R13 K21 ["Text"]
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R14 R14 K46 ["FONT_SIZE_TITLE"]
      106 SETTABLEKS                       R14 R13 K25 ["TextSize"]
      108 GETTABLEKS                       R14 R4 K5 ["assetConfig"]
      110 GETTABLEKS                       R14 R14 K47 ["textColor"]
      112 SETTABLEKS                       R14 R13 K26 ["TextColor3"]
      114 GETIMPORT                        R14 K36 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R14 R13 K22 ["TextXAlignment"]
      118 GETIMPORT                        R14 K33 [UDim2.new]
      120 LOADN                            R15 1
      121 LOADN                            R16 0
      122 LOADN                            R17 0
      123 LOADN                            R18 50
      124 CALL                             R14 4 1
      125 SETTABLEKS                       R14 R13 K20 ["Size"]
      127 DUPTABLE                         R14 K39 [{"Padding"}]
      128 GETUPVAL                         R15 0
      129 GETTABLEKS                       R15 R15 K13 ["createElement"]
      131 LOADK                            R16 K40 ["UIPadding"]
      132 DUPTABLE                         R17 K42 [{"PaddingLeft"}]
      133 GETIMPORT                        R18 K44 [UDim.new]
      135 LOADN                            R19 0
      136 MOVE                             R20 R9
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K41 ["PaddingLeft"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K38 ["Padding"]
      143 CALL                             R11 3 -1
      144 RETURN                           R11 -1
      145 JUMPIFNOTEQKS                    R1 K11 ["LoadingIndicator"] ; [+50]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K13 ["createElement"]
      150 LOADK                            R12 K48 ["Frame"]
      151 DUPTABLE                         R13 K49 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      152 GETTABLEKS                       R14 R10 K28 ["dropDown"]
      154 GETTABLEKS                       R14 R14 K29 ["backgroundColor"]
      156 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
      158 SETTABLEKS                       R2 R13 K18 ["LayoutOrder"]
      160 GETIMPORT                        R14 K33 [UDim2.new]
      162 LOADN                            R15 1
      163 LOADN                            R16 0
      164 LOADN                            R17 0
      165 LOADN                            R18 50
      166 CALL                             R14 4 1
      167 SETTABLEKS                       R14 R13 K20 ["Size"]
      169 DUPTABLE                         R14 K50 [{"LoadingIndicator"}]
      170 GETUPVAL                         R15 0
      171 GETTABLEKS                       R15 R15 K13 ["createElement"]
      173 GETUPVAL                         R16 2
      174 DUPTABLE                         R17 K55 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 3}]
      175 GETIMPORT                        R18 K57 [Vector2.new]
      177 LOADK                            R19 K58 [0.5]
      178 LOADK                            R20 K58 [0.5]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K51 ["AnchorPoint"]
      182 GETIMPORT                        R18 K33 [UDim2.new]
      184 LOADK                            R19 K58 [0.5]
      185 LOADN                            R20 0
      186 LOADK                            R21 K58 [0.5]
      187 LOADN                            R22 0
      188 CALL                             R18 4 1
      189 SETTABLEKS                       R18 R17 K52 ["Position"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K11 ["LoadingIndicator"]
      194 CALL                             R11 3 -1
      195 RETURN                           R11 -1
      196 GETUPVAL                         R11 0
      197 GETTABLEKS                       R11 R11 K13 ["createElement"]
      199 GETUPVAL                         R12 3
      200 DUPTABLE                         R13 K62 [{"Icon", "LayoutOrder", "Name", "OnActivated", "Size", "TextPadding"}]
      201 GETTABLEKS                       R14 R1 K59 ["Icon"]
      203 SETTABLEKS                       R14 R13 K59 ["Icon"]
      205 SETTABLEKS                       R2 R13 K18 ["LayoutOrder"]
      207 GETTABLEKS                       R14 R1 K60 ["Name"]
      209 SETTABLEKS                       R14 R13 K60 ["Name"]
      211 SETTABLEKS                       R3 R13 K61 ["OnActivated"]
      213 GETIMPORT                        R14 K33 [UDim2.new]
      215 LOADN                            R15 1
      216 LOADN                            R16 0
      217 LOADN                            R17 0
      218 LOADN                            R18 50
      219 CALL                             R14 4 1
      220 SETTABLEKS                       R14 R13 K20 ["Size"]
      222 SETTABLEKS                       R9 R13 K4 ["TextPadding"]
      224 CALL                             R11 2 -1
      225 RETURN                           R11 -1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 GETUPVAL                         R9 2
        6 NAMECALL                         R3 R3 K0 ["onRenderItem"]
        8 CALL                             R3 6 -1
        9 RETURN                           R3 -1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 ORK                              R5 R6 K4 [0]
       13 GETTABLEKS                       R6 R2 K6 ["text"]
       15 GETTABLEKS                       R7 R2 K7 ["isFocused"]
       17 JUMPIFNOT                        R7 ; [+2]
       18 GETTABLEKS                       R7 R1 K8 ["Enabled"]
       20 GETTABLEKS                       R8 R2 K9 ["isContainerHovered"]
       22 JUMPIFNOT                        R8 ; [+2]
       23 GETTABLEKS                       R8 R1 K8 ["Enabled"]
       25 GETTABLEKS                       R9 R2 K10 ["isClearButtonHovered"]
       27 GETTABLEKS                       R10 R3 K11 ["assetConfig"]
       29 GETTABLEKS                       R10 R10 K12 ["packagePermissions"]
       31 GETTABLEKS                       R10 R10 K13 ["searchBar"]
       33 LOADNIL                          R11
       34 JUMPIFNOT                        R7 ; [+3]
       35 GETTABLEKS                       R11 R10 K14 ["borderSelected"]
       37 JUMP                             ; [+6]
       38 JUMPIFNOT                        R8 ; [+3]
       39 GETTABLEKS                       R11 R10 K15 ["borderHover"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R11 R10 K16 ["border"]
       44 GETTABLEKS                       R12 R1 K17 ["DefaultText"]
       46 GETTABLEKS                       R13 R1 K18 ["ErrorText"]
       48 GETTABLEKS                       R14 R1 K19 ["NoResultsText"]
       50 GETTABLEKS                       R15 R2 K20 ["showDropdown"]
       52 GETTABLEKS                       R16 R0 K21 ["textBoxRef"]
       54 JUMPIFNOT                        R16 ; [+4]
       55 GETTABLEKS                       R16 R0 K21 ["textBoxRef"]
       57 GETTABLEKS                       R16 R16 K22 ["current"]
       59 JUMPIFNOT                        R16 ; [+2]
       60 GETTABLEKS                       R16 R16 K23 ["Parent"]
       62 LOADNIL                          R17
       63 JUMPIFNOT                        R16 ; [+17]
       64 GETTABLEKS                       R18 R16 K24 ["AbsolutePosition"]
       66 GETTABLEKS                       R19 R16 K25 ["AbsoluteSize"]
       68 ADD                              R20 R18 R19
       69 GETIMPORT                        R21 K27 [Rect.new]
       71 GETTABLEKS                       R22 R18 K28 ["X"]
       73 GETTABLEKS                       R23 R18 K29 ["Y"]
       75 GETTABLEKS                       R24 R20 K28 ["X"]
       77 GETTABLEKS                       R25 R20 K29 ["Y"]
       79 CALL                             R21 4 1
       80 MOVE                             R17 R21
       81 GETTABLEKS                       R18 R1 K30 ["Results"]
       83 JUMPIF                           R18 ; [+2]
       84 NEWTABLE                         R18 0 0
       86 GETTABLEKS                       R19 R1 K31 ["HeaderHeight"]
       88 GETTABLEKS                       R20 R1 K32 ["ItemHeight"]
       90 GETTABLEKS                       R21 R1 K33 ["MaxItems"]
       92 GETTABLEKS                       R22 R1 K34 ["ShowRibbon"]
       94 GETTABLEKS                       R24 R1 K36 ["TextPadding"]
       96 ORK                              R23 R24 K35 [16]
       97 GETTABLEKS                       R24 R1 K37 ["ScrollBarPadding"]
       99 GETTABLEKS                       R25 R1 K38 ["ScrollBarThickness"]
      101 JUMPIFNOT                        R21 ; [+2]
      102 MUL                              R26 R21 R20
      103 JUMPIF                           R26 ; [+1]
      104 LOADNIL                          R26
      105 GETTABLEKS                       R27 R2 K39 ["dropdownItem"]
      107 GETTABLEKS                       R28 R2 K40 ["lastResults"]
      109 JUMPIFEQ                         R28 R18 ; [+9]
      111 MOVE                             R30 R18
      112 NAMECALL                         R28 R0 K41 ["mergeResultsTable"]
      114 CALL                             R28 2 1
      115 SETTABLEKS                       R28 R2 K42 ["mergedItems"]
      117 SETTABLEKS                       R18 R2 K40 ["lastResults"]
      119 GETUPVAL                         R28 1
      120 GETTABLEKS                       R28 R28 K43 ["createElement"]
      122 LOADK                            R29 K44 ["Frame"]
      123 DUPTABLE                         R30 K48 [{["AutomaticSize"], ["LayoutOrder"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      124 GETIMPORT                        R31 K51 [Enum.AutomaticSize.XY]
      126 SETTABLEKS                       R31 R30 K45 ["AutomaticSize"]
      128 SETTABLEKS                       R5 R30 K5 ["LayoutOrder"]
      130 GETTABLEKS                       R31 R3 K52 ["inputFields"]
      132 GETTABLEKS                       R31 R31 K53 ["backgroundColor"]
      134 SETTABLEKS                       R31 R30 K46 ["BackgroundColor3"]
      136 DUPTABLE                         R31 K56 [{"UIListLayout", "Background"}]
      137 GETUPVAL                         R32 1
      138 GETTABLEKS                       R32 R32 K43 ["createElement"]
      140 LOADK                            R33 K54 ["UIListLayout"]
      141 DUPTABLE                         R34 K58 [{"SortOrder"}]
      142 GETIMPORT                        R35 K59 [Enum.SortOrder.LayoutOrder]
      144 SETTABLEKS                       R35 R34 K57 ["SortOrder"]
      146 CALL                             R32 2 1
      147 SETTABLEKS                       R32 R31 K54 ["UIListLayout"]
      149 GETUPVAL                         R32 1
      150 GETTABLEKS                       R32 R32 K43 ["createElement"]
      152 LOADK                            R33 K60 ["ImageLabel"]
      153 NEWTABLE                         R34 16 0
      155 GETIMPORT                        R35 K51 [Enum.AutomaticSize.XY]
      157 SETTABLEKS                       R35 R34 K45 ["AutomaticSize"]
      159 LOADN                            R35 1
      160 SETTABLEKS                       R35 R34 K61 ["BackgroundTransparency"]
      162 GETUPVAL                         R35 2
      163 GETTABLEKS                       R35 R35 K62 ["ROUNDED_BORDER_IMAGE"]
      165 SETTABLEKS                       R35 R34 K63 ["Image"]
      167 SETTABLEKS                       R11 R34 K64 ["ImageColor3"]
      169 GETIMPORT                        R35 K67 [Enum.ScaleType.Slice]
      171 SETTABLEKS                       R35 R34 K65 ["ScaleType"]
      173 GETUPVAL                         R35 3
      174 GETTABLEKS                       R35 R35 K68 ["ROUNDED_FRAME_SLICE"]
      176 SETTABLEKS                       R35 R34 K69 ["SliceCenter"]
      178 GETUPVAL                         R35 1
      179 GETTABLEKS                       R35 R35 K70 ["Event"]
      181 GETTABLEKS                       R35 R35 K71 ["MouseEnter"]
      183 GETTABLEKS                       R36 R0 K72 ["onContainerHovered"]
      185 SETTABLE                         R36 R34 R35
      186 GETUPVAL                         R35 1
      187 GETTABLEKS                       R35 R35 K70 ["Event"]
      189 GETTABLEKS                       R35 R35 K73 ["MouseMoved"]
      191 GETTABLEKS                       R36 R0 K72 ["onContainerHovered"]
      193 SETTABLE                         R36 R34 R35
      194 GETUPVAL                         R35 1
      195 GETTABLEKS                       R35 R35 K70 ["Event"]
      197 GETTABLEKS                       R35 R35 K74 ["MouseLeave"]
      199 GETTABLEKS                       R36 R0 K75 ["onContainerHoverEnded"]
      201 SETTABLE                         R36 R34 R35
      202 DUPTABLE                         R35 K79 [{"UIListLayout", "TextBox", "ClearButtonFrame", "ImageFrame"}]
      203 GETUPVAL                         R36 1
      204 GETTABLEKS                       R36 R36 K43 ["createElement"]
      206 LOADK                            R37 K54 ["UIListLayout"]
      207 DUPTABLE                         R38 K81 [{"SortOrder", "FillDirection"}]
      208 GETIMPORT                        R39 K59 [Enum.SortOrder.LayoutOrder]
      210 SETTABLEKS                       R39 R38 K57 ["SortOrder"]
      212 GETIMPORT                        R39 K83 [Enum.FillDirection.Horizontal]
      214 SETTABLEKS                       R39 R38 K80 ["FillDirection"]
      216 CALL                             R36 2 1
      217 SETTABLEKS                       R36 R35 K54 ["UIListLayout"]
      219 GETUPVAL                         R36 1
      220 GETTABLEKS                       R36 R36 K43 ["createElement"]
      222 LOADK                            R37 K76 ["TextBox"]
      223 NEWTABLE                         R38 16 0
      225 GETUPVAL                         R39 3
      226 GETTABLEKS                       R39 R39 K84 ["FONT"]
      228 SETTABLEKS                       R39 R38 K85 ["Font"]
      230 GETUPVAL                         R39 3
      231 GETTABLEKS                       R39 R39 K86 ["FONT_SIZE_TITLE"]
      233 SETTABLEKS                       R39 R38 K87 ["TextSize"]
      235 GETTABLEKS                       R39 R3 K11 ["assetConfig"]
      237 GETTABLEKS                       R39 R39 K88 ["textColor"]
      239 SETTABLEKS                       R39 R38 K89 ["TextColor3"]
      241 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      243 CALL                             R39 1 1
      244 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      246 GETIMPORT                        R39 K92 [UDim2.new]
      248 LOADN                            R40 1
      249 LOADN                            R41 -80
      250 LOADN                            R42 0
      251 LOADN                            R43 40
      252 CALL                             R39 4 1
      253 SETTABLEKS                       R39 R38 K93 ["Size"]
      255 LOADN                            R39 1
      256 SETTABLEKS                       R39 R38 K61 ["BackgroundTransparency"]
      258 LOADB                            R39 0
      259 SETTABLEKS                       R39 R38 K94 ["ClearTextOnFocus"]
      261 GETIMPORT                        R39 K97 [Enum.TextXAlignment.Left]
      263 SETTABLEKS                       R39 R38 K95 ["TextXAlignment"]
      265 GETTABLEKS                       R40 R1 K8 ["Enabled"]
      267 JUMPIFNOT                        R40 ; [+2]
      268 MOVE                             R39 R6
      269 JUMPIF                           R39 ; [+1]
      270 LOADK                            R39 K98 [""]
      271 SETTABLEKS                       R39 R38 K99 ["Text"]
      273 GETTABLEKS                       R39 R1 K8 ["Enabled"]
      275 SETTABLEKS                       R39 R38 K100 ["TextEditable"]
      277 OR                               R39 R13 R12
      278 SETTABLEKS                       R39 R38 K101 ["PlaceholderText"]
      280 JUMPIFNOT                        R13 ; [+3]
      281 GETTABLEKS                       R39 R3 K102 ["warningColor"]
      283 JUMPIF                           R39 ; [+2]
      284 GETTABLEKS                       R39 R10 K103 ["placeholderText"]
      286 SETTABLEKS                       R39 R38 K104 ["PlaceholderColor3"]
      288 GETUPVAL                         R39 1
      289 GETTABLEKS                       R39 R39 K105 ["Ref"]
      291 GETTABLEKS                       R40 R0 K21 ["textBoxRef"]
      293 SETTABLE                         R40 R38 R39
      294 GETUPVAL                         R39 1
      295 GETTABLEKS                       R39 R39 K106 ["Change"]
      297 GETTABLEKS                       R39 R39 K99 ["Text"]
      299 GETTABLEKS                       R40 R0 K107 ["onTextChanged"]
      301 SETTABLE                         R40 R38 R39
      302 GETUPVAL                         R39 1
      303 GETTABLEKS                       R39 R39 K70 ["Event"]
      305 GETTABLEKS                       R39 R39 K108 ["Focused"]
      307 GETTABLEKS                       R40 R0 K109 ["onTextBoxFocused"]
      309 SETTABLE                         R40 R38 R39
      310 GETUPVAL                         R39 1
      311 GETTABLEKS                       R39 R39 K70 ["Event"]
      313 GETTABLEKS                       R39 R39 K110 ["FocusLost"]
      315 GETTABLEKS                       R40 R0 K111 ["onTextBoxFocusLost"]
      317 SETTABLE                         R40 R38 R39
      318 DUPTABLE                         R39 K113 [{"TextPadding", "Dropdown"}]
      319 GETUPVAL                         R40 1
      320 GETTABLEKS                       R40 R40 K43 ["createElement"]
      322 LOADK                            R41 K114 ["UIPadding"]
      323 DUPTABLE                         R42 K116 [{"PaddingLeft"}]
      324 GETIMPORT                        R43 K118 [UDim.new]
      326 LOADN                            R44 0
      327 MOVE                             R45 R23
      328 CALL                             R43 2 1
      329 SETTABLEKS                       R43 R42 K115 ["PaddingLeft"]
      331 CALL                             R40 2 1
      332 SETTABLEKS                       R40 R39 K36 ["TextPadding"]
      334 GETUPVAL                         R40 1
      335 GETTABLEKS                       R40 R40 K43 ["createElement"]
      337 GETUPVAL                         R41 4
      338 DUPTABLE                         R42 K125 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Width"}]
      339 AND                              R44 R15 R16
      340 NOT                              R43 R44
      341 SETTABLEKS                       R43 R42 K119 ["Hide"]
      343 GETTABLEKS                       R43 R0 K1 ["state"]
      345 GETTABLEKS                       R43 R43 K42 ["mergedItems"]
      347 SETTABLEKS                       R43 R42 K120 ["Items"]
      349 GETTABLEKS                       R43 R0 K126 ["hideDropdown"]
      351 SETTABLEKS                       R43 R42 K121 ["OnFocusLost"]
      353 GETTABLEKS                       R43 R0 K127 ["onItemClicked"]
      355 SETTABLEKS                       R43 R42 K122 ["OnItemActivated"]
      357 NEWCLOSURE                       R43 P0
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R3
      360 CAPTURE                          REF R17
      361 SETTABLEKS                       R43 R42 K123 ["OnRenderItem"]
      363 JUMPIFNOT                        R17 ; [+3]
      364 GETTABLEKS                       R43 R17 K124 ["Width"]
      366 JUMPIF                           R43 ; [+1]
      367 LOADNIL                          R43
      368 SETTABLEKS                       R43 R42 K124 ["Width"]
      370 CALL                             R40 2 1
      371 SETTABLEKS                       R40 R39 K112 ["Dropdown"]
      373 CALL                             R36 3 1
      374 SETTABLEKS                       R36 R35 K76 ["TextBox"]
      376 GETUPVAL                         R36 1
      377 GETTABLEKS                       R36 R36 K43 ["createElement"]
      379 LOADK                            R37 K44 ["Frame"]
      380 DUPTABLE                         R38 K129 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      381 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      383 CALL                             R39 1 1
      384 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      386 GETIMPORT                        R39 K92 [UDim2.new]
      388 LOADN                            R40 0
      389 LOADN                            R41 40
      390 LOADN                            R42 0
      391 LOADN                            R43 40
      392 CALL                             R39 4 1
      393 SETTABLEKS                       R39 R38 K93 ["Size"]
      395 DUPTABLE                         R39 K131 [{"ClearButton"}]
      396 GETUPVAL                         R40 1
      397 GETTABLEKS                       R40 R40 K43 ["createElement"]
      399 LOADK                            R41 K132 ["ImageButton"]
      400 NEWTABLE                         R42 16 0
      402 GETIMPORT                        R43 K134 [Vector2.new]
      404 LOADK                            R44 K135 [0.5]
      405 LOADK                            R45 K135 [0.5]
      406 CALL                             R43 2 1
      407 SETTABLEKS                       R43 R42 K136 ["AnchorPoint"]
      409 GETIMPORT                        R43 K92 [UDim2.new]
      411 LOADK                            R44 K135 [0.5]
      412 LOADN                            R45 0
      413 LOADK                            R46 K135 [0.5]
      414 LOADN                            R47 0
      415 CALL                             R43 4 1
      416 SETTABLEKS                       R43 R42 K137 ["Position"]
      418 GETIMPORT                        R43 K92 [UDim2.new]
      420 LOADN                            R44 0
      421 LOADN                            R45 24
      422 LOADN                            R46 0
      423 LOADN                            R47 24
      424 CALL                             R43 4 1
      425 SETTABLEKS                       R43 R42 K93 ["Size"]
      427 LOADN                            R43 1
      428 SETTABLEKS                       R43 R42 K61 ["BackgroundTransparency"]
      430 JUMPIFNOTEQKS                    R6 K98 [""] ; [+2]
      432 LOADB                            R43 0 +1
      433 LOADB                            R43 1
      434 SETTABLEKS                       R43 R42 K138 ["Visible"]
      436 JUMPIFNOT                        R9 ; [+4]
      437 GETUPVAL                         R43 2
      438 GETTABLEKS                       R43 R43 K139 ["CLEAR_ICON_HOVER"]
      440 JUMPIF                           R43 ; [+3]
      441 GETUPVAL                         R43 2
      442 GETTABLEKS                       R43 R43 K140 ["CLEAR_ICON"]
      444 SETTABLEKS                       R43 R42 K63 ["Image"]
      446 GETTABLEKS                       R43 R10 K141 ["clearButton"]
      448 GETTABLEKS                       R43 R43 K142 ["image"]
      450 SETTABLEKS                       R43 R42 K64 ["ImageColor3"]
      452 GETUPVAL                         R43 1
      453 GETTABLEKS                       R43 R43 K70 ["Event"]
      455 GETTABLEKS                       R43 R43 K71 ["MouseEnter"]
      457 GETTABLEKS                       R44 R0 K143 ["onClearButtonHovered"]
      459 SETTABLE                         R44 R42 R43
      460 GETUPVAL                         R43 1
      461 GETTABLEKS                       R43 R43 K70 ["Event"]
      463 GETTABLEKS                       R43 R43 K73 ["MouseMoved"]
      465 GETTABLEKS                       R44 R0 K143 ["onClearButtonHovered"]
      467 SETTABLE                         R44 R42 R43
      468 GETUPVAL                         R43 1
      469 GETTABLEKS                       R43 R43 K70 ["Event"]
      471 GETTABLEKS                       R43 R43 K74 ["MouseLeave"]
      473 GETTABLEKS                       R44 R0 K144 ["onClearButtonHoverEnded"]
      475 SETTABLE                         R44 R42 R43
      476 GETUPVAL                         R43 1
      477 GETTABLEKS                       R43 R43 K70 ["Event"]
      479 GETTABLEKS                       R43 R43 K145 ["MouseButton1Down"]
      481 GETTABLEKS                       R44 R0 K146 ["onClearButtonClicked"]
      483 SETTABLE                         R44 R42 R43
      484 CALL                             R40 2 1
      485 SETTABLEKS                       R40 R39 K130 ["ClearButton"]
      487 CALL                             R36 3 1
      488 SETTABLEKS                       R36 R35 K77 ["ClearButtonFrame"]
      490 GETUPVAL                         R36 1
      491 GETTABLEKS                       R36 R36 K43 ["createElement"]
      493 LOADK                            R37 K44 ["Frame"]
      494 DUPTABLE                         R38 K129 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      495 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      497 CALL                             R39 1 1
      498 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      500 GETIMPORT                        R39 K92 [UDim2.new]
      502 LOADN                            R40 0
      503 LOADN                            R41 40
      504 LOADN                            R42 0
      505 LOADN                            R43 40
      506 CALL                             R39 4 1
      507 SETTABLEKS                       R39 R38 K93 ["Size"]
      509 DUPTABLE                         R39 K147 [{"Image"}]
      510 GETUPVAL                         R40 1
      511 GETTABLEKS                       R40 R40 K43 ["createElement"]
      513 LOADK                            R41 K60 ["ImageLabel"]
      514 DUPTABLE                         R42 K148 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"]}]
      515 GETIMPORT                        R43 K134 [Vector2.new]
      517 LOADK                            R44 K135 [0.5]
      518 LOADK                            R45 K135 [0.5]
      519 CALL                             R43 2 1
      520 SETTABLEKS                       R43 R42 K136 ["AnchorPoint"]
      522 GETIMPORT                        R43 K92 [UDim2.new]
      524 LOADK                            R44 K135 [0.5]
      525 LOADN                            R45 0
      526 LOADK                            R46 K135 [0.5]
      527 LOADN                            R47 0
      528 CALL                             R43 4 1
      529 SETTABLEKS                       R43 R42 K137 ["Position"]
      531 GETIMPORT                        R43 K92 [UDim2.new]
      533 LOADN                            R44 0
      534 LOADN                            R45 20
      535 LOADN                            R46 0
      536 LOADN                            R47 20
      537 CALL                             R43 4 1
      538 SETTABLEKS                       R43 R42 K93 ["Size"]
      540 GETUPVAL                         R43 2
      541 GETTABLEKS                       R43 R43 K149 ["SEARCH_ICON"]
      543 SETTABLEKS                       R43 R42 K63 ["Image"]
      545 GETTABLEKS                       R43 R3 K11 ["assetConfig"]
      547 GETTABLEKS                       R43 R43 K12 ["packagePermissions"]
      549 GETTABLEKS                       R43 R43 K13 ["searchBar"]
      551 GETTABLEKS                       R43 R43 K150 ["searchIcon"]
      553 SETTABLEKS                       R43 R42 K64 ["ImageColor3"]
      555 CALL                             R40 2 1
      556 SETTABLEKS                       R40 R39 K63 ["Image"]
      558 CALL                             R36 3 1
      559 SETTABLEKS                       R36 R35 K78 ["ImageFrame"]
      561 CALL                             R32 3 1
      562 SETTABLEKS                       R32 R31 K55 ["Background"]
      564 CALL                             R28 3 -1
      565 CLOSEUPVALS                      R17
      566 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K10 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K11 ["Images"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K12 ["ContextServices"]
       41 GETTABLEKS                       R8 R7 K13 ["withContext"]
       43 GETIMPORT                        R9 K15 [game]
       45 LOADK                            R11 K16 ["TextService"]
       46 NAMECALL                         R9 R9 K17 ["GetService"]
       48 CALL                             R9 2 1
       49 GETTABLEKS                       R10 R3 K9 ["Util"]
       51 GETTABLEKS                       R10 R10 K18 ["LayoutOrderIterator"]
       53 GETTABLEKS                       R11 R3 K19 ["UI"]
       55 GETTABLEKS                       R11 R11 K20 ["DropdownMenu"]
       57 GETTABLEKS                       R12 R3 K19 ["UI"]
       59 GETTABLEKS                       R12 R12 K21 ["LoadingIndicator"]
       61 GETTABLEKS                       R13 R0 K8 ["Src"]
       63 GETTABLEKS                       R13 R13 K22 ["Components"]
       65 GETTABLEKS                       R13 R13 K23 ["AssetConfiguration"]
       67 GETTABLEKS                       R13 R13 K24 ["Permissions"]
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R15 R13 K25 ["CollaboratorSearchItem"]
       73 CALL                             R14 1 1
       74 GETTABLEKS                       R15 R2 K26 ["PureComponent"]
       76 LOADK                            R17 K27 ["CollaboratorSearchBar"]
       77 NAMECALL                         R15 R15 K28 ["extend"]
       79 CALL                             R15 2 1
       80 DUPCLOSURE                       R16 K29 [PROTO_0]
       81 DUPCLOSURE                       R17 K30 [PROTO_14]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R17 R15 K31 ["init"]
       86 DUPCLOSURE                       R17 K32 [PROTO_16]
       87 SETTABLEKS                       R17 R15 K33 ["mergeResultsTable"]
       89 DUPCLOSURE                       R17 K34 [PROTO_17]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R14
       94 SETTABLEKS                       R17 R15 K35 ["onRenderItem"]
       96 DUPCLOSURE                       R17 K36 [PROTO_19]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R11
      102 SETTABLEKS                       R17 R15 K37 ["render"]
      104 MOVE                             R17 R8
      105 DUPTABLE                         R18 K39 [{"Stylizer"}]
      106 GETTABLEKS                       R19 R7 K38 ["Stylizer"]
      108 SETTABLEKS                       R19 R18 K38 ["Stylizer"]
      110 CALL                             R17 1 1
      111 MOVE                             R18 R15
      112 CALL                             R17 1 1
      113 MOVE                             R15 R17
      114 RETURN                           R15 1
