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
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        6 DUPTABLE                         R4 K3 [{"isFocused"}]
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K2 ["isFocused"]
       10 NAMECALL                         R2 R2 K4 ["setState"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["props"]
       16 GETTABLEKS                       R2 R2 K6 ["Enabled"]
       18 JUMPIF                           R2 ; [+3]
       19 NAMECALL                         R2 R1 K7 ["ReleaseFocus"]
       21 CALL                             R2 1 0
       22 GETIMPORT                        R2 K9 [next]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K10 ["state"]
       27 GETTABLEKS                       R3 R3 K11 ["mergedItems"]
       29 CALL                             R2 1 1
       30 JUMPIFEQKNIL                     R2 ; [+5]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K12 ["showDropdown"]
       35 CALL                             R2 0 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K2 [{"isFocused", "isContainerHovered"}]
        2 LOADB                            R6 0
        3 SETTABLEKS                       R6 R5 K0 ["isFocused"]
        5 LOADB                            R6 0
        6 SETTABLEKS                       R6 R5 K1 ["isContainerHovered"]
        8 NAMECALL                         R3 R3 K3 ["setState"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K3 [{"isFocused"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["isFocused"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 LOADK                            R1 K5 [""]
       14 SETTABLEKS                       R1 R0 K6 ["Text"]
       16 NAMECALL                         R1 R0 K7 ["CaptureFocus"]
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K11 [Enum.TextXAlignment.Left]
       21 SETTABLEKS                       R1 R0 K9 ["TextXAlignment"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K12 ["onClearButtonHoverEnded"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"showDropdown"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isFocused"]
        5 JUMPIF                           R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K4 [{"showDropdown", "dropdownItem"}]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["showDropdown"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K5 ["None"]
       14 SETTABLEKS                       R3 R2 K3 ["dropdownItem"]
       16 NAMECALL                         R0 R0 K6 ["setState"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K9 [{"text", "isFocused", "isContainerHovered", "isClearButtonHovered", "showDropdown", "dropdownItem", "lastDelay", "lastResults", "mergedItems"}]
        1 LOADK                            R2 K10 [""]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isFocused"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isContainerHovered"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["isClearButtonHovered"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["showDropdown"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["dropdownItem"]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R1 K6 ["lastDelay"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K7 ["lastResults"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K8 ["mergedItems"]
       31 SETTABLEKS                       R1 R0 K11 ["state"]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K12 ["createRef"]
       36 CALL                             R1 0 1
       37 SETTABLEKS                       R1 R0 K13 ["textBoxRef"]
       39 NEWCLOSURE                       R1 P0
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K14 ["requestSearch"]
       43 NEWCLOSURE                       R1 P1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K15 ["onContainerHovered"]
       47 NEWCLOSURE                       R1 P2
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K16 ["onContainerHoverEnded"]
       51 NEWCLOSURE                       R1 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R1 R0 K17 ["onTextChanged"]
       56 NEWCLOSURE                       R1 P4
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K18 ["onTextBoxFocused"]
       60 NEWCLOSURE                       R1 P5
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K19 ["onTextBoxFocusLost"]
       64 NEWCLOSURE                       R1 P6
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K20 ["onClearButtonHovered"]
       68 NEWCLOSURE                       R1 P7
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K21 ["onClearButtonHoverEnded"]
       72 NEWCLOSURE                       R1 P8
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K22 ["onClearButtonClicked"]
       76 NEWCLOSURE                       R1 P9
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R1 R0 K23 ["onItemClicked"]
       80 NEWCLOSURE                       R1 P10
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R1 R0 K4 ["showDropdown"]
       84 NEWCLOSURE                       R1 P11
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U0
       87 SETTABLEKS                       R1 R0 K24 ["hideDropdown"]
       89 GETTABLEKS                       R1 R0 K25 ["props"]
       91 GETTABLEKS                       R1 R1 K17 ["onTextChanged"]
       93 JUMPIFNOT                        R1 ; [+6]
       94 GETTABLEKS                       R1 R0 K25 ["props"]
       96 GETTABLEKS                       R1 R1 K17 ["onTextChanged"]
       98 LOADK                            R2 K10 [""]
       99 CALL                             R1 1 0
      100 RETURN                           R0 0

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
       20 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+69]
       22 JUMPIFEQKS                       R1 K11 ["LoadingIndicator"] ; [+67]
       24 JUMPIFEQKS                       R1 K12 ["NoResults"] ; [+65]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K13 ["createElement"]
       29 LOADK                            R12 K14 ["TextLabel"]
       30 DUPTABLE                         R13 K25 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Font", "Size", "Text", "TextXAlignment", "TextWrapped", "TextSize", "TextColor3"}]
       31 GETTABLEKS                       R14 R10 K26 ["dropDown"]
       33 GETTABLEKS                       R14 R14 K27 ["backgroundColor"]
       35 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
       37 LOADN                            R14 0
       38 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
       40 SETTABLEKS                       R2 R13 K17 ["LayoutOrder"]
       42 GETUPVAL                         R14 1
       43 GETTABLEKS                       R14 R14 K28 ["FONT"]
       45 SETTABLEKS                       R14 R13 K18 ["Font"]
       47 GETIMPORT                        R14 K31 [UDim2.new]
       49 LOADN                            R15 1
       50 LOADN                            R16 0
       51 LOADN                            R17 0
       52 MOVE                             R18 R7
       53 CALL                             R14 4 1
       54 SETTABLEKS                       R14 R13 K19 ["Size"]
       56 SETTABLEKS                       R1 R13 K20 ["Text"]
       58 GETIMPORT                        R14 K34 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R14 R13 K21 ["TextXAlignment"]
       62 LOADB                            R14 1
       63 SETTABLEKS                       R14 R13 K22 ["TextWrapped"]
       65 LOADN                            R14 16
       66 SETTABLEKS                       R14 R13 K23 ["TextSize"]
       68 GETTABLEKS                       R14 R10 K35 ["placeholderText"]
       70 SETTABLEKS                       R14 R13 K24 ["TextColor3"]
       72 DUPTABLE                         R14 K37 [{"Padding"}]
       73 GETUPVAL                         R15 0
       74 GETTABLEKS                       R15 R15 K13 ["createElement"]
       76 LOADK                            R16 K38 ["UIPadding"]
       77 DUPTABLE                         R17 K40 [{"PaddingLeft"}]
       78 GETIMPORT                        R18 K42 [UDim.new]
       80 LOADN                            R19 0
       81 MOVE                             R20 R9
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K39 ["PaddingLeft"]
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K36 ["Padding"]
       88 CALL                             R11 3 -1
       89 RETURN                           R11 -1
       90 JUMPIFNOTEQKS                    R1 K12 ["NoResults"] ; [+69]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K13 ["createElement"]
       95 LOADK                            R12 K14 ["TextLabel"]
       96 DUPTABLE                         R13 K43 [{"BackgroundColor3", "BorderSizePixel", "Font", "LayoutOrder", "Text", "TextSize", "TextColor3", "TextWrapped", "TextXAlignment", "Size"}]
       97 GETTABLEKS                       R14 R10 K26 ["dropDown"]
       99 GETTABLEKS                       R14 R14 K27 ["backgroundColor"]
      101 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
      103 LOADN                            R14 0
      104 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      106 GETUPVAL                         R14 1
      107 GETTABLEKS                       R14 R14 K28 ["FONT"]
      109 SETTABLEKS                       R14 R13 K18 ["Font"]
      111 SETTABLEKS                       R2 R13 K17 ["LayoutOrder"]
      113 SETTABLEKS                       R8 R13 K20 ["Text"]
      115 GETUPVAL                         R14 1
      116 GETTABLEKS                       R14 R14 K44 ["FONT_SIZE_TITLE"]
      118 SETTABLEKS                       R14 R13 K23 ["TextSize"]
      120 GETTABLEKS                       R14 R4 K5 ["assetConfig"]
      122 GETTABLEKS                       R14 R14 K45 ["textColor"]
      124 SETTABLEKS                       R14 R13 K24 ["TextColor3"]
      126 LOADB                            R14 1
      127 SETTABLEKS                       R14 R13 K22 ["TextWrapped"]
      129 GETIMPORT                        R14 K34 [Enum.TextXAlignment.Left]
      131 SETTABLEKS                       R14 R13 K21 ["TextXAlignment"]
      133 GETIMPORT                        R14 K31 [UDim2.new]
      135 LOADN                            R15 1
      136 LOADN                            R16 0
      137 LOADN                            R17 0
      138 LOADN                            R18 50
      139 CALL                             R14 4 1
      140 SETTABLEKS                       R14 R13 K19 ["Size"]
      142 DUPTABLE                         R14 K37 [{"Padding"}]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K13 ["createElement"]
      146 LOADK                            R16 K38 ["UIPadding"]
      147 DUPTABLE                         R17 K40 [{"PaddingLeft"}]
      148 GETIMPORT                        R18 K42 [UDim.new]
      150 LOADN                            R19 0
      151 MOVE                             R20 R9
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K39 ["PaddingLeft"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K36 ["Padding"]
      158 CALL                             R11 3 -1
      159 RETURN                           R11 -1
      160 JUMPIFNOTEQKS                    R1 K11 ["LoadingIndicator"] ; [+56]
      162 GETUPVAL                         R11 0
      163 GETTABLEKS                       R11 R11 K13 ["createElement"]
      165 LOADK                            R12 K46 ["Frame"]
      166 DUPTABLE                         R13 K47 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      167 GETTABLEKS                       R14 R10 K26 ["dropDown"]
      169 GETTABLEKS                       R14 R14 K27 ["backgroundColor"]
      171 SETTABLEKS                       R14 R13 K15 ["BackgroundColor3"]
      173 LOADN                            R14 0
      174 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      176 SETTABLEKS                       R2 R13 K17 ["LayoutOrder"]
      178 GETIMPORT                        R14 K31 [UDim2.new]
      180 LOADN                            R15 1
      181 LOADN                            R16 0
      182 LOADN                            R17 0
      183 LOADN                            R18 50
      184 CALL                             R14 4 1
      185 SETTABLEKS                       R14 R13 K19 ["Size"]
      187 DUPTABLE                         R14 K48 [{"LoadingIndicator"}]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K13 ["createElement"]
      191 GETUPVAL                         R16 2
      192 DUPTABLE                         R17 K52 [{"AnchorPoint", "Position", "ZIndex"}]
      193 GETIMPORT                        R18 K54 [Vector2.new]
      195 LOADK                            R19 K55 [0.5]
      196 LOADK                            R20 K55 [0.5]
      197 CALL                             R18 2 1
      198 SETTABLEKS                       R18 R17 K49 ["AnchorPoint"]
      200 GETIMPORT                        R18 K31 [UDim2.new]
      202 LOADK                            R19 K55 [0.5]
      203 LOADN                            R20 0
      204 LOADK                            R21 K55 [0.5]
      205 LOADN                            R22 0
      206 CALL                             R18 4 1
      207 SETTABLEKS                       R18 R17 K50 ["Position"]
      209 LOADN                            R18 3
      210 SETTABLEKS                       R18 R17 K51 ["ZIndex"]
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K11 ["LoadingIndicator"]
      215 CALL                             R11 3 -1
      216 RETURN                           R11 -1
      217 GETUPVAL                         R11 0
      218 GETTABLEKS                       R11 R11 K13 ["createElement"]
      220 GETUPVAL                         R12 3
      221 DUPTABLE                         R13 K59 [{"Icon", "LayoutOrder", "Name", "OnActivated", "Size", "TextPadding"}]
      222 GETTABLEKS                       R14 R1 K56 ["Icon"]
      224 SETTABLEKS                       R14 R13 K56 ["Icon"]
      226 SETTABLEKS                       R2 R13 K17 ["LayoutOrder"]
      228 GETTABLEKS                       R14 R1 K57 ["Name"]
      230 SETTABLEKS                       R14 R13 K57 ["Name"]
      232 SETTABLEKS                       R3 R13 K58 ["OnActivated"]
      234 GETIMPORT                        R14 K31 [UDim2.new]
      236 LOADN                            R15 1
      237 LOADN                            R16 0
      238 LOADN                            R17 0
      239 LOADN                            R18 50
      240 CALL                             R14 4 1
      241 SETTABLEKS                       R14 R13 K19 ["Size"]
      243 SETTABLEKS                       R9 R13 K4 ["TextPadding"]
      245 CALL                             R11 2 -1
      246 RETURN                           R11 -1

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
      123 DUPTABLE                         R30 K48 [{"AutomaticSize", "LayoutOrder", "BackgroundColor3", "BorderSizePixel"}]
      124 GETIMPORT                        R31 K51 [Enum.AutomaticSize.XY]
      126 SETTABLEKS                       R31 R30 K45 ["AutomaticSize"]
      128 SETTABLEKS                       R5 R30 K5 ["LayoutOrder"]
      130 GETTABLEKS                       R31 R3 K52 ["inputFields"]
      132 GETTABLEKS                       R31 R31 K53 ["backgroundColor"]
      134 SETTABLEKS                       R31 R30 K46 ["BackgroundColor3"]
      136 LOADN                            R31 0
      137 SETTABLEKS                       R31 R30 K47 ["BorderSizePixel"]
      139 DUPTABLE                         R31 K56 [{"UIListLayout", "Background"}]
      140 GETUPVAL                         R32 1
      141 GETTABLEKS                       R32 R32 K43 ["createElement"]
      143 LOADK                            R33 K54 ["UIListLayout"]
      144 DUPTABLE                         R34 K58 [{"SortOrder"}]
      145 GETIMPORT                        R35 K59 [Enum.SortOrder.LayoutOrder]
      147 SETTABLEKS                       R35 R34 K57 ["SortOrder"]
      149 CALL                             R32 2 1
      150 SETTABLEKS                       R32 R31 K54 ["UIListLayout"]
      152 GETUPVAL                         R32 1
      153 GETTABLEKS                       R32 R32 K43 ["createElement"]
      155 LOADK                            R33 K60 ["ImageLabel"]
      156 NEWTABLE                         R34 16 0
      158 GETIMPORT                        R35 K51 [Enum.AutomaticSize.XY]
      160 SETTABLEKS                       R35 R34 K45 ["AutomaticSize"]
      162 LOADN                            R35 1
      163 SETTABLEKS                       R35 R34 K61 ["BackgroundTransparency"]
      165 GETUPVAL                         R35 2
      166 GETTABLEKS                       R35 R35 K62 ["ROUNDED_BORDER_IMAGE"]
      168 SETTABLEKS                       R35 R34 K63 ["Image"]
      170 SETTABLEKS                       R11 R34 K64 ["ImageColor3"]
      172 GETIMPORT                        R35 K67 [Enum.ScaleType.Slice]
      174 SETTABLEKS                       R35 R34 K65 ["ScaleType"]
      176 GETUPVAL                         R35 3
      177 GETTABLEKS                       R35 R35 K68 ["ROUNDED_FRAME_SLICE"]
      179 SETTABLEKS                       R35 R34 K69 ["SliceCenter"]
      181 GETUPVAL                         R35 1
      182 GETTABLEKS                       R35 R35 K70 ["Event"]
      184 GETTABLEKS                       R35 R35 K71 ["MouseEnter"]
      186 GETTABLEKS                       R36 R0 K72 ["onContainerHovered"]
      188 SETTABLE                         R36 R34 R35
      189 GETUPVAL                         R35 1
      190 GETTABLEKS                       R35 R35 K70 ["Event"]
      192 GETTABLEKS                       R35 R35 K73 ["MouseMoved"]
      194 GETTABLEKS                       R36 R0 K72 ["onContainerHovered"]
      196 SETTABLE                         R36 R34 R35
      197 GETUPVAL                         R35 1
      198 GETTABLEKS                       R35 R35 K70 ["Event"]
      200 GETTABLEKS                       R35 R35 K74 ["MouseLeave"]
      202 GETTABLEKS                       R36 R0 K75 ["onContainerHoverEnded"]
      204 SETTABLE                         R36 R34 R35
      205 DUPTABLE                         R35 K79 [{"UIListLayout", "TextBox", "ClearButtonFrame", "ImageFrame"}]
      206 GETUPVAL                         R36 1
      207 GETTABLEKS                       R36 R36 K43 ["createElement"]
      209 LOADK                            R37 K54 ["UIListLayout"]
      210 DUPTABLE                         R38 K81 [{"SortOrder", "FillDirection"}]
      211 GETIMPORT                        R39 K59 [Enum.SortOrder.LayoutOrder]
      213 SETTABLEKS                       R39 R38 K57 ["SortOrder"]
      215 GETIMPORT                        R39 K83 [Enum.FillDirection.Horizontal]
      217 SETTABLEKS                       R39 R38 K80 ["FillDirection"]
      219 CALL                             R36 2 1
      220 SETTABLEKS                       R36 R35 K54 ["UIListLayout"]
      222 GETUPVAL                         R36 1
      223 GETTABLEKS                       R36 R36 K43 ["createElement"]
      225 LOADK                            R37 K76 ["TextBox"]
      226 NEWTABLE                         R38 16 0
      228 GETUPVAL                         R39 3
      229 GETTABLEKS                       R39 R39 K84 ["FONT"]
      231 SETTABLEKS                       R39 R38 K85 ["Font"]
      233 GETUPVAL                         R39 3
      234 GETTABLEKS                       R39 R39 K86 ["FONT_SIZE_TITLE"]
      236 SETTABLEKS                       R39 R38 K87 ["TextSize"]
      238 GETTABLEKS                       R39 R3 K11 ["assetConfig"]
      240 GETTABLEKS                       R39 R39 K88 ["textColor"]
      242 SETTABLEKS                       R39 R38 K89 ["TextColor3"]
      244 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      246 CALL                             R39 1 1
      247 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      249 GETIMPORT                        R39 K92 [UDim2.new]
      251 LOADN                            R40 1
      252 LOADN                            R41 176
      253 LOADN                            R42 0
      254 LOADN                            R43 40
      255 CALL                             R39 4 1
      256 SETTABLEKS                       R39 R38 K93 ["Size"]
      258 LOADN                            R39 1
      259 SETTABLEKS                       R39 R38 K61 ["BackgroundTransparency"]
      261 LOADB                            R39 0
      262 SETTABLEKS                       R39 R38 K94 ["ClearTextOnFocus"]
      264 GETIMPORT                        R39 K97 [Enum.TextXAlignment.Left]
      266 SETTABLEKS                       R39 R38 K95 ["TextXAlignment"]
      268 GETTABLEKS                       R40 R1 K8 ["Enabled"]
      270 JUMPIFNOT                        R40 ; [+2]
      271 MOVE                             R39 R6
      272 JUMPIF                           R39 ; [+1]
      273 LOADK                            R39 K98 [""]
      274 SETTABLEKS                       R39 R38 K99 ["Text"]
      276 GETTABLEKS                       R39 R1 K8 ["Enabled"]
      278 SETTABLEKS                       R39 R38 K100 ["TextEditable"]
      280 OR                               R39 R13 R12
      281 SETTABLEKS                       R39 R38 K101 ["PlaceholderText"]
      283 JUMPIFNOT                        R13 ; [+3]
      284 GETTABLEKS                       R39 R3 K102 ["warningColor"]
      286 JUMPIF                           R39 ; [+2]
      287 GETTABLEKS                       R39 R10 K103 ["placeholderText"]
      289 SETTABLEKS                       R39 R38 K104 ["PlaceholderColor3"]
      291 GETUPVAL                         R39 1
      292 GETTABLEKS                       R39 R39 K105 ["Ref"]
      294 GETTABLEKS                       R40 R0 K21 ["textBoxRef"]
      296 SETTABLE                         R40 R38 R39
      297 GETUPVAL                         R39 1
      298 GETTABLEKS                       R39 R39 K106 ["Change"]
      300 GETTABLEKS                       R39 R39 K99 ["Text"]
      302 GETTABLEKS                       R40 R0 K107 ["onTextChanged"]
      304 SETTABLE                         R40 R38 R39
      305 GETUPVAL                         R39 1
      306 GETTABLEKS                       R39 R39 K70 ["Event"]
      308 GETTABLEKS                       R39 R39 K108 ["Focused"]
      310 GETTABLEKS                       R40 R0 K109 ["onTextBoxFocused"]
      312 SETTABLE                         R40 R38 R39
      313 GETUPVAL                         R39 1
      314 GETTABLEKS                       R39 R39 K70 ["Event"]
      316 GETTABLEKS                       R39 R39 K110 ["FocusLost"]
      318 GETTABLEKS                       R40 R0 K111 ["onTextBoxFocusLost"]
      320 SETTABLE                         R40 R38 R39
      321 DUPTABLE                         R39 K113 [{"TextPadding", "Dropdown"}]
      322 GETUPVAL                         R40 1
      323 GETTABLEKS                       R40 R40 K43 ["createElement"]
      325 LOADK                            R41 K114 ["UIPadding"]
      326 DUPTABLE                         R42 K116 [{"PaddingLeft"}]
      327 GETIMPORT                        R43 K118 [UDim.new]
      329 LOADN                            R44 0
      330 MOVE                             R45 R23
      331 CALL                             R43 2 1
      332 SETTABLEKS                       R43 R42 K115 ["PaddingLeft"]
      334 CALL                             R40 2 1
      335 SETTABLEKS                       R40 R39 K36 ["TextPadding"]
      337 GETUPVAL                         R40 1
      338 GETTABLEKS                       R40 R40 K43 ["createElement"]
      340 GETUPVAL                         R41 4
      341 DUPTABLE                         R42 K125 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Width"}]
      342 AND                              R44 R15 R16
      343 NOT                              R43 R44
      344 SETTABLEKS                       R43 R42 K119 ["Hide"]
      346 GETTABLEKS                       R43 R0 K1 ["state"]
      348 GETTABLEKS                       R43 R43 K42 ["mergedItems"]
      350 SETTABLEKS                       R43 R42 K120 ["Items"]
      352 GETTABLEKS                       R43 R0 K126 ["hideDropdown"]
      354 SETTABLEKS                       R43 R42 K121 ["OnFocusLost"]
      356 GETTABLEKS                       R43 R0 K127 ["onItemClicked"]
      358 SETTABLEKS                       R43 R42 K122 ["OnItemActivated"]
      360 NEWCLOSURE                       R43 P0
      361 CAPTURE                          VAL R0
      362 CAPTURE                          VAL R3
      363 CAPTURE                          REF R17
      364 SETTABLEKS                       R43 R42 K123 ["OnRenderItem"]
      366 JUMPIFNOT                        R17 ; [+3]
      367 GETTABLEKS                       R43 R17 K124 ["Width"]
      369 JUMPIF                           R43 ; [+1]
      370 LOADNIL                          R43
      371 SETTABLEKS                       R43 R42 K124 ["Width"]
      373 CALL                             R40 2 1
      374 SETTABLEKS                       R40 R39 K112 ["Dropdown"]
      376 CALL                             R36 3 1
      377 SETTABLEKS                       R36 R35 K76 ["TextBox"]
      379 GETUPVAL                         R36 1
      380 GETTABLEKS                       R36 R36 K43 ["createElement"]
      382 LOADK                            R37 K44 ["Frame"]
      383 DUPTABLE                         R38 K128 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      384 LOADN                            R39 1
      385 SETTABLEKS                       R39 R38 K61 ["BackgroundTransparency"]
      387 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      389 CALL                             R39 1 1
      390 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      392 GETIMPORT                        R39 K92 [UDim2.new]
      394 LOADN                            R40 0
      395 LOADN                            R41 40
      396 LOADN                            R42 0
      397 LOADN                            R43 40
      398 CALL                             R39 4 1
      399 SETTABLEKS                       R39 R38 K93 ["Size"]
      401 DUPTABLE                         R39 K130 [{"ClearButton"}]
      402 GETUPVAL                         R40 1
      403 GETTABLEKS                       R40 R40 K43 ["createElement"]
      405 LOADK                            R41 K131 ["ImageButton"]
      406 NEWTABLE                         R42 16 0
      408 GETIMPORT                        R43 K133 [Vector2.new]
      410 LOADK                            R44 K134 [0.5]
      411 LOADK                            R45 K134 [0.5]
      412 CALL                             R43 2 1
      413 SETTABLEKS                       R43 R42 K135 ["AnchorPoint"]
      415 GETIMPORT                        R43 K92 [UDim2.new]
      417 LOADK                            R44 K134 [0.5]
      418 LOADN                            R45 0
      419 LOADK                            R46 K134 [0.5]
      420 LOADN                            R47 0
      421 CALL                             R43 4 1
      422 SETTABLEKS                       R43 R42 K136 ["Position"]
      424 GETIMPORT                        R43 K92 [UDim2.new]
      426 LOADN                            R44 0
      427 LOADN                            R45 24
      428 LOADN                            R46 0
      429 LOADN                            R47 24
      430 CALL                             R43 4 1
      431 SETTABLEKS                       R43 R42 K93 ["Size"]
      433 LOADN                            R43 1
      434 SETTABLEKS                       R43 R42 K61 ["BackgroundTransparency"]
      436 JUMPIFNOTEQKS                    R6 K98 [""] ; [+2]
      438 LOADB                            R43 0 +1
      439 LOADB                            R43 1
      440 SETTABLEKS                       R43 R42 K137 ["Visible"]
      442 JUMPIFNOT                        R9 ; [+4]
      443 GETUPVAL                         R43 2
      444 GETTABLEKS                       R43 R43 K138 ["CLEAR_ICON_HOVER"]
      446 JUMPIF                           R43 ; [+3]
      447 GETUPVAL                         R43 2
      448 GETTABLEKS                       R43 R43 K139 ["CLEAR_ICON"]
      450 SETTABLEKS                       R43 R42 K63 ["Image"]
      452 GETTABLEKS                       R43 R10 K140 ["clearButton"]
      454 GETTABLEKS                       R43 R43 K141 ["image"]
      456 SETTABLEKS                       R43 R42 K64 ["ImageColor3"]
      458 GETUPVAL                         R43 1
      459 GETTABLEKS                       R43 R43 K70 ["Event"]
      461 GETTABLEKS                       R43 R43 K71 ["MouseEnter"]
      463 GETTABLEKS                       R44 R0 K142 ["onClearButtonHovered"]
      465 SETTABLE                         R44 R42 R43
      466 GETUPVAL                         R43 1
      467 GETTABLEKS                       R43 R43 K70 ["Event"]
      469 GETTABLEKS                       R43 R43 K73 ["MouseMoved"]
      471 GETTABLEKS                       R44 R0 K142 ["onClearButtonHovered"]
      473 SETTABLE                         R44 R42 R43
      474 GETUPVAL                         R43 1
      475 GETTABLEKS                       R43 R43 K70 ["Event"]
      477 GETTABLEKS                       R43 R43 K74 ["MouseLeave"]
      479 GETTABLEKS                       R44 R0 K143 ["onClearButtonHoverEnded"]
      481 SETTABLE                         R44 R42 R43
      482 GETUPVAL                         R43 1
      483 GETTABLEKS                       R43 R43 K70 ["Event"]
      485 GETTABLEKS                       R43 R43 K144 ["MouseButton1Down"]
      487 GETTABLEKS                       R44 R0 K145 ["onClearButtonClicked"]
      489 SETTABLE                         R44 R42 R43
      490 CALL                             R40 2 1
      491 SETTABLEKS                       R40 R39 K129 ["ClearButton"]
      493 CALL                             R36 3 1
      494 SETTABLEKS                       R36 R35 K77 ["ClearButtonFrame"]
      496 GETUPVAL                         R36 1
      497 GETTABLEKS                       R36 R36 K43 ["createElement"]
      499 LOADK                            R37 K44 ["Frame"]
      500 DUPTABLE                         R38 K128 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      501 LOADN                            R39 1
      502 SETTABLEKS                       R39 R38 K61 ["BackgroundTransparency"]
      504 NAMECALL                         R39 R4 K90 ["getNextOrder"]
      506 CALL                             R39 1 1
      507 SETTABLEKS                       R39 R38 K5 ["LayoutOrder"]
      509 GETIMPORT                        R39 K92 [UDim2.new]
      511 LOADN                            R40 0
      512 LOADN                            R41 40
      513 LOADN                            R42 0
      514 LOADN                            R43 40
      515 CALL                             R39 4 1
      516 SETTABLEKS                       R39 R38 K93 ["Size"]
      518 DUPTABLE                         R39 K146 [{"Image"}]
      519 GETUPVAL                         R40 1
      520 GETTABLEKS                       R40 R40 K43 ["createElement"]
      522 LOADK                            R41 K60 ["ImageLabel"]
      523 DUPTABLE                         R42 K147 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
      524 GETIMPORT                        R43 K133 [Vector2.new]
      526 LOADK                            R44 K134 [0.5]
      527 LOADK                            R45 K134 [0.5]
      528 CALL                             R43 2 1
      529 SETTABLEKS                       R43 R42 K135 ["AnchorPoint"]
      531 GETIMPORT                        R43 K92 [UDim2.new]
      533 LOADK                            R44 K134 [0.5]
      534 LOADN                            R45 0
      535 LOADK                            R46 K134 [0.5]
      536 LOADN                            R47 0
      537 CALL                             R43 4 1
      538 SETTABLEKS                       R43 R42 K136 ["Position"]
      540 GETIMPORT                        R43 K92 [UDim2.new]
      542 LOADN                            R44 0
      543 LOADN                            R45 20
      544 LOADN                            R46 0
      545 LOADN                            R47 20
      546 CALL                             R43 4 1
      547 SETTABLEKS                       R43 R42 K93 ["Size"]
      549 LOADN                            R43 1
      550 SETTABLEKS                       R43 R42 K61 ["BackgroundTransparency"]
      552 GETUPVAL                         R43 2
      553 GETTABLEKS                       R43 R43 K148 ["SEARCH_ICON"]
      555 SETTABLEKS                       R43 R42 K63 ["Image"]
      557 GETTABLEKS                       R43 R3 K11 ["assetConfig"]
      559 GETTABLEKS                       R43 R43 K12 ["packagePermissions"]
      561 GETTABLEKS                       R43 R43 K13 ["searchBar"]
      563 GETTABLEKS                       R43 R43 K149 ["searchIcon"]
      565 SETTABLEKS                       R43 R42 K64 ["ImageColor3"]
      567 CALL                             R40 2 1
      568 SETTABLEKS                       R40 R39 K63 ["Image"]
      570 CALL                             R36 3 1
      571 SETTABLEKS                       R36 R35 K78 ["ImageFrame"]
      573 CALL                             R32 3 1
      574 SETTABLEKS                       R32 R31 K55 ["Background"]
      576 CALL                             R28 3 -1
      577 CLOSEUPVALS                      R17
      578 RETURN                           R28 -1

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
