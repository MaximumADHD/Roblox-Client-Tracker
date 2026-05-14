PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R4 K4 ["auto-xy bg-shift-300 radius-small stroke-standard stroke-default self-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["createElement"]
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K6 [{"Text", "tag"}]
       17 GETTABLEKS                       R7 R0 K5 ["Text"]
       19 SETTABLEKS                       R7 R6 K5 ["Text"]
       21 LOADK                            R7 K7 ["auto-xy content-default text-label-small padding-y-xsmall padding-x-small"]
       22 SETTABLEKS                       R7 R6 K1 ["tag"]
       24 CALL                             R4 2 -1
       25 CALL                             R1 -1 -1
       26 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 LOADK                            R3 K0 ["\n"]
        2 LOADK                            R4 K1 [" "]
        3 NAMECALL                         R1 R0 K2 ["gsub"]
        5 CALL                             R1 3 1
        6 JUMPIF                           R1 ; [+1]
        7 LOADK                            R1 K3 [""]
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onSearchRequested"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["text"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       16 JUMPIFNOT                        R2 ; [+73]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K7 ["state"]
       20 GETTABLEKS                       R3 R3 K8 ["text"]
       22 JUMPIFEQ                         R3 R1 ; [+67]
       24 GETUPVAL                         R3 0
       25 DUPTABLE                         R5 K9 [{"text"}]
       26 SETTABLEKS                       R1 R5 K8 ["text"]
       28 NAMECALL                         R3 R3 K10 ["setState"]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K11 ["props"]
       34 GETTABLEKS                       R3 R3 K12 ["onTextChanged"]
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K11 ["props"]
       40 GETTABLEKS                       R3 R3 K12 ["onTextChanged"]
       42 MOVE                             R4 R1
       43 CALL                             R3 1 0
       44 NEWTABLE                         R3 0 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K7 ["state"]
       49 SETTABLEKS                       R3 R4 K13 ["lastDelay"]
       51 GETIMPORT                        R4 K15 [delay]
       53 LOADK                            R5 K16 [0.5]
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R1
       58 CALL                             R4 2 0
       59 GETUPVAL                         R4 1
       60 MOVE                             R6 R1
       61 GETTABLEKS                       R7 R2 K17 ["TextSize"]
       63 GETTABLEKS                       R8 R2 K18 ["Font"]
       65 GETIMPORT                        R9 K21 [Vector2.new]
       67 LOADN                            R10 0
       68 LOADK                            R11 K22 [∞]
       69 CALL                             R9 2 -1
       70 NAMECALL                         R4 R4 K23 ["GetTextSize"]
       72 CALL                             R4 -1 1
       73 GETTABLEKS                       R5 R4 K24 ["x"]
       75 GETTABLEKS                       R6 R2 K25 ["AbsoluteSize"]
       77 GETTABLEKS                       R6 R6 K24 ["x"]
       79 JUMPIFNOTLT                      R6 R5 ; [+6]
       81 GETIMPORT                        R5 K29 [Enum.TextXAlignment.Right]
       83 SETTABLEKS                       R5 R2 K27 ["TextXAlignment"]
       85 RETURN                           R0 0
       86 GETIMPORT                        R5 K31 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R5 R2 K27 ["TextXAlignment"]
       90 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R5 K3 [{"isFocused"}]
        7 LOADB                            R6 1
        8 SETTABLEKS                       R6 R5 K2 ["isFocused"]
       10 NAMECALL                         R3 R3 K4 ["setState"]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 JUMPIFNOT                        R3 ; [+12]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["props"]
       18 GETTABLEKS                       R3 R3 K6 ["onTextBoxFocused"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["props"]
       24 GETTABLEKS                       R3 R3 K6 ["onTextBoxFocused"]
       26 CALL                             R3 0 0
       27 JUMPIF                           R0 ; [+3]
       28 NAMECALL                         R3 R2 K7 ["ReleaseFocus"]
       30 CALL                             R3 1 0
       31 GETIMPORT                        R3 K9 [next]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K10 ["state"]
       36 GETTABLEKS                       R4 R4 K11 ["mergedItems"]
       38 CALL                             R3 1 1
       39 JUMPIFEQKNIL                     R3 ; [+5]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K12 ["showDropdown"]
       44 CALL                             R3 0 0
       45 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["isUnmounting"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R5 K3 [{"isFocused", "isContainerHovered"}]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K1 ["isFocused"]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K2 ["isContainerHovered"]
       15 NAMECALL                         R3 R3 K4 ["setState"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["state"]
       21 GETTABLEKS                       R3 R3 K6 ["dropdownItem"]
       23 JUMPIF                           R3 ; [+4]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K7 ["hideDropdown"]
       27 CALL                             R3 0 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnItemClicked"]
        5 GETTABLEKS                       R2 R0 K2 ["Key"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["hideDropdown"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showDropdown"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isFocused"]
        5 JUMPIF                           R0 ; [+26]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K5 [{"showDropdown", "dropdownItem", "isKeyHovered"}]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["showDropdown"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K6 ["None"]
       14 SETTABLEKS                       R3 R2 K3 ["dropdownItem"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K4 ["isKeyHovered"]
       19 NAMECALL                         R0 R0 K7 ["setState"]
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["state"]
       25 GETTABLEKS                       R0 R0 K8 ["isClearButtonHovered"]
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K9 ["onClearButtonClicked"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"dropdownItem", "isKeyHovered"}]
        2 SETTABLEKS                       R0 R3 K0 ["dropdownItem"]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["isKeyHovered"]
        7 NAMECALL                         R1 R1 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["dropdownItem"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+14]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"dropdownItem", "isKeyHovered"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["None"]
       12 SETTABLEKS                       R4 R3 K1 ["dropdownItem"]
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R3 K2 ["isKeyHovered"]
       17 NAMECALL                         R1 R1 K5 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onKeyMouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onKeyMouseLeave"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        5 GETTABLEKS                       R5 R3 K2 ["IsGroupGame"]
        7 GETTABLEKS                       R6 R3 K3 ["Localization"]
        9 GETTABLEKS                       R7 R4 K4 ["searchBar"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K5 ["state"]
       14 GETTABLEKS                       R8 R8 K6 ["dropdownItem"]
       16 GETTABLEKS                       R9 R3 K7 ["NoResultsText"]
       18 GETTABLEKS                       R10 R3 K8 ["HeaderHeight"]
       20 GETTABLEKS                       R11 R3 K9 ["ItemHeight"]
       22 GETTABLEKS                       R12 R7 K10 ["textPadding"]
       24 LOADNIL                          R13
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R14 R14 K11 ["textBoxRef"]
       28 JUMPIFNOT                        R14 ; [+5]
       29 GETUPVAL                         R14 0
       30 GETTABLEKS                       R14 R14 K11 ["textBoxRef"]
       32 GETTABLEKS                       R14 R14 K12 ["current"]
       34 GETTABLEKS                       R15 R3 K13 ["Is17PlusGame"]
       36 JUMPIFNOT                        R14 ; [+19]
       37 GETTABLEKS                       R14 R14 K14 ["Parent"]
       39 GETTABLEKS                       R16 R14 K15 ["AbsolutePosition"]
       41 GETTABLEKS                       R17 R14 K16 ["AbsoluteSize"]
       43 ADD                              R18 R16 R17
       44 GETIMPORT                        R19 K19 [Rect.new]
       46 GETTABLEKS                       R20 R16 K20 ["X"]
       48 GETTABLEKS                       R21 R16 K21 ["Y"]
       50 GETTABLEKS                       R22 R18 K20 ["X"]
       52 GETTABLEKS                       R23 R18 K21 ["Y"]
       54 CALL                             R19 4 1
       55 MOVE                             R13 R19
       56 GETTABLEKS                       R17 R13 K22 ["Width"]
       58 GETTABLEKS                       R18 R7 K23 ["dropDown"]
       60 GETTABLEKS                       R18 R18 K24 ["item"]
       62 GETTABLEKS                       R18 R18 K25 ["offset"]
       64 SUB                              R16 R17 R18
       65 FASTCALL1                        TYPEOF R0 ; [+3]
       66 MOVE                             R18 R0
       67 GETIMPORT                        R17 K27 [typeof]
       69 CALL                             R17 1 1
       70 JUMPIFNOTEQKS                    R17 K28 ["string"] ; [+153]
       72 JUMPIFEQKS                       R0 K29 ["LoadingIndicator"] ; [+151]
       74 JUMPIFEQKS                       R0 K30 ["NoResults"] ; [+149]
       76 GETUPVAL                         R17 1
       77 JUMPIFNOT                        R17 ; [+19]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R17 R17 K31 ["createElement"]
       81 GETUPVAL                         R18 3
       82 DUPTABLE                         R19 K35 [{"Text", "tag", "LayoutOrder"}]
       83 LOADK                            R22 K36 ["CollaboratorTypes"]
       84 MOVE                             R23 R0
       85 NAMECALL                         R20 R6 K37 ["getText"]
       87 CALL                             R20 3 1
       88 SETTABLEKS                       R20 R19 K32 ["Text"]
       90 LOADK                            R20 K38 ["text-caption-large content-emphasis padding-x-large padding-y-medium auto-xy"]
       91 SETTABLEKS                       R20 R19 K33 ["tag"]
       93 SETTABLEKS                       R1 R19 K34 ["LayoutOrder"]
       95 CALL                             R17 2 -1
       96 RETURN                           R17 -1
       97 GETUPVAL                         R17 4
       98 GETTABLEKS                       R17 R17 K31 ["createElement"]
      100 LOADK                            R18 K39 ["Frame"]
      101 DUPTABLE                         R19 K43 [{"Size", "BackgroundColor3", "LayoutOrder", "BorderSizePixel"}]
      102 GETIMPORT                        R20 K45 [UDim2.new]
      104 LOADN                            R21 0
      105 MOVE                             R22 R16
      106 LOADN                            R23 0
      107 MOVE                             R24 R10
      108 CALL                             R20 4 1
      109 SETTABLEKS                       R20 R19 K40 ["Size"]
      111 GETTABLEKS                       R20 R7 K23 ["dropDown"]
      113 GETTABLEKS                       R20 R20 K46 ["backgroundColor"]
      115 SETTABLEKS                       R20 R19 K41 ["BackgroundColor3"]
      117 SETTABLEKS                       R1 R19 K34 ["LayoutOrder"]
      119 LOADN                            R20 0
      120 SETTABLEKS                       R20 R19 K42 ["BorderSizePixel"]
      122 DUPTABLE                         R20 K49 [{"CollabTypeText", "FriendsEditAccessText"}]
      123 GETUPVAL                         R21 4
      124 GETTABLEKS                       R21 R21 K31 ["createElement"]
      126 LOADK                            R22 K50 ["TextLabel"]
      127 GETUPVAL                         R23 5
      128 GETTABLEKS                       R23 R23 K51 ["Dictionary"]
      130 GETTABLEKS                       R23 R23 K52 ["join"]
      132 GETTABLEKS                       R24 R4 K4 ["searchBar"]
      134 GETTABLEKS                       R24 R24 K23 ["dropDown"]
      136 GETTABLEKS                       R24 R24 K53 ["collaboratorTypeText"]
      138 DUPTABLE                         R25 K57 [{"Text", "TextXAlignment", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      139 LOADK                            R28 K36 ["CollaboratorTypes"]
      140 MOVE                             R29 R0
      141 NAMECALL                         R26 R6 K37 ["getText"]
      143 CALL                             R26 3 1
      144 SETTABLEKS                       R26 R25 K32 ["Text"]
      146 GETIMPORT                        R26 K60 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R26 R25 K54 ["TextXAlignment"]
      150 GETTABLEKS                       R26 R4 K4 ["searchBar"]
      152 GETTABLEKS                       R26 R26 K61 ["collabTypeTextPosition"]
      154 SETTABLEKS                       R26 R25 K55 ["Position"]
      156 LOADN                            R26 1
      157 SETTABLEKS                       R26 R25 K56 ["BackgroundTransparency"]
      159 LOADN                            R26 0
      160 SETTABLEKS                       R26 R25 K42 ["BorderSizePixel"]
      162 CALL                             R23 2 -1
      163 CALL                             R21 -1 1
      164 SETTABLEKS                       R21 R20 K47 ["CollabTypeText"]
      166 JUMPIF                           R15 ; [+52]
      167 JUMPIF                           R5 ; [+51]
      168 GETUPVAL                         R22 6
      169 JUMPIFNOTEQ                      R0 R22 ; [+49]
      171 GETUPVAL                         R21 4
      172 GETTABLEKS                       R21 R21 K31 ["createElement"]
      174 LOADK                            R22 K50 ["TextLabel"]
      175 GETUPVAL                         R23 5
      176 GETTABLEKS                       R23 R23 K51 ["Dictionary"]
      178 GETTABLEKS                       R23 R23 K52 ["join"]
      180 GETTABLEKS                       R24 R4 K4 ["searchBar"]
      182 GETTABLEKS                       R24 R24 K23 ["dropDown"]
      184 GETTABLEKS                       R24 R24 K53 ["collaboratorTypeText"]
      186 DUPTABLE                         R25 K57 [{"Text", "TextXAlignment", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      187 GETUPVAL                         R27 7
      188 JUMPIFNOT                        R27 ; [+6]
      189 LOADK                            R28 K62 ["Description"]
      190 LOADK                            R29 K63 ["ConnectionsEditAccess"]
      191 NAMECALL                         R26 R6 K37 ["getText"]
      193 CALL                             R26 3 1
      194 JUMP                             ; [+5]
      195 LOADK                            R28 K62 ["Description"]
      196 LOADK                            R29 K64 ["FriendsEditAccess"]
      197 NAMECALL                         R26 R6 K37 ["getText"]
      199 CALL                             R26 3 1
      200 SETTABLEKS                       R26 R25 K32 ["Text"]
      202 GETIMPORT                        R26 K66 [Enum.TextXAlignment.Right]
      204 SETTABLEKS                       R26 R25 K54 ["TextXAlignment"]
      206 GETTABLEKS                       R26 R7 K67 ["friendsAccessTextPosition"]
      208 SETTABLEKS                       R26 R25 K55 ["Position"]
      210 LOADN                            R26 1
      211 SETTABLEKS                       R26 R25 K56 ["BackgroundTransparency"]
      213 LOADN                            R26 0
      214 SETTABLEKS                       R26 R25 K42 ["BorderSizePixel"]
      216 CALL                             R23 2 -1
      217 CALL                             R21 -1 1
      218 JUMPIF                           R21 ; [+1]
      219 LOADNIL                          R21
      220 SETTABLEKS                       R21 R20 K48 ["FriendsEditAccessText"]
      222 CALL                             R17 3 -1
      223 RETURN                           R17 -1
      224 JUMPIFNOTEQKS                    R0 K30 ["NoResults"] ; [+63]
      226 GETUPVAL                         R17 4
      227 GETTABLEKS                       R17 R17 K31 ["createElement"]
      229 LOADK                            R18 K50 ["TextLabel"]
      230 GETUPVAL                         R19 5
      231 GETTABLEKS                       R19 R19 K51 ["Dictionary"]
      233 GETTABLEKS                       R19 R19 K52 ["join"]
      235 GETTABLEKS                       R20 R4 K68 ["fontStyle"]
      237 GETTABLEKS                       R20 R20 K69 ["Normal"]
      239 DUPTABLE                         R21 K71 [{"Size", "Text", "TextXAlignment", "BackgroundColor3", "BorderSizePixel", "TextWrapped", "LayoutOrder"}]
      240 GETIMPORT                        R22 K45 [UDim2.new]
      242 LOADN                            R23 0
      243 MOVE                             R24 R16
      244 LOADN                            R25 0
      245 MOVE                             R26 R11
      246 CALL                             R22 4 1
      247 SETTABLEKS                       R22 R21 K40 ["Size"]
      249 SETTABLEKS                       R9 R21 K32 ["Text"]
      251 GETIMPORT                        R22 K60 [Enum.TextXAlignment.Left]
      253 SETTABLEKS                       R22 R21 K54 ["TextXAlignment"]
      255 GETTABLEKS                       R22 R7 K23 ["dropDown"]
      257 GETTABLEKS                       R22 R22 K46 ["backgroundColor"]
      259 SETTABLEKS                       R22 R21 K41 ["BackgroundColor3"]
      261 LOADN                            R22 0
      262 SETTABLEKS                       R22 R21 K42 ["BorderSizePixel"]
      264 LOADB                            R22 1
      265 SETTABLEKS                       R22 R21 K70 ["TextWrapped"]
      267 SETTABLEKS                       R1 R21 K34 ["LayoutOrder"]
      269 CALL                             R19 2 1
      270 DUPTABLE                         R20 K73 [{"Padding"}]
      271 GETUPVAL                         R21 4
      272 GETTABLEKS                       R21 R21 K31 ["createElement"]
      274 LOADK                            R22 K74 ["UIPadding"]
      275 DUPTABLE                         R23 K76 [{"PaddingLeft"}]
      276 GETIMPORT                        R24 K78 [UDim.new]
      278 LOADN                            R25 0
      279 MOVE                             R26 R12
      280 CALL                             R24 2 1
      281 SETTABLEKS                       R24 R23 K75 ["PaddingLeft"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K72 ["Padding"]
      286 CALL                             R17 3 -1
      287 RETURN                           R17 -1
      288 JUMPIFNOTEQKS                    R0 K29 ["LoadingIndicator"] ; [+56]
      290 GETUPVAL                         R17 4
      291 GETTABLEKS                       R17 R17 K31 ["createElement"]
      293 LOADK                            R18 K39 ["Frame"]
      294 DUPTABLE                         R19 K79 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      295 GETIMPORT                        R20 K45 [UDim2.new]
      297 LOADN                            R21 0
      298 MOVE                             R22 R16
      299 LOADN                            R23 0
      300 MOVE                             R24 R11
      301 CALL                             R20 4 1
      302 SETTABLEKS                       R20 R19 K40 ["Size"]
      304 GETTABLEKS                       R20 R7 K23 ["dropDown"]
      306 GETTABLEKS                       R20 R20 K46 ["backgroundColor"]
      308 SETTABLEKS                       R20 R19 K41 ["BackgroundColor3"]
      310 LOADN                            R20 0
      311 SETTABLEKS                       R20 R19 K42 ["BorderSizePixel"]
      313 SETTABLEKS                       R1 R19 K34 ["LayoutOrder"]
      315 DUPTABLE                         R20 K80 [{"LoadingIndicator"}]
      316 GETUPVAL                         R21 4
      317 GETTABLEKS                       R21 R21 K31 ["createElement"]
      319 GETUPVAL                         R22 8
      320 DUPTABLE                         R23 K83 [{"AnchorPoint", "Position", "ZIndex"}]
      321 GETIMPORT                        R24 K85 [Vector2.new]
      323 LOADK                            R25 K86 [0.5]
      324 LOADK                            R26 K86 [0.5]
      325 CALL                             R24 2 1
      326 SETTABLEKS                       R24 R23 K81 ["AnchorPoint"]
      328 GETIMPORT                        R24 K45 [UDim2.new]
      330 LOADK                            R25 K86 [0.5]
      331 LOADN                            R26 0
      332 LOADK                            R27 K86 [0.5]
      333 LOADN                            R28 0
      334 CALL                             R24 4 1
      335 SETTABLEKS                       R24 R23 K55 ["Position"]
      337 LOADN                            R24 3
      338 SETTABLEKS                       R24 R23 K82 ["ZIndex"]
      340 CALL                             R21 2 1
      341 SETTABLEKS                       R21 R20 K29 ["LoadingIndicator"]
      343 CALL                             R17 3 -1
      344 RETURN                           R17 -1
      345 GETTABLEKS                       R17 R0 K87 ["Key"]
      347 GETTABLEKS                       R18 R0 K88 ["IsFriend"]
      349 GETTABLEKS                       R20 R17 K89 ["Type"]
      351 GETUPVAL                         R21 9
      352 GETTABLEKS                       R21 R21 K90 ["UserSubjectKey"]
      354 JUMPIFEQ                         R20 R21 ; [+2]
      356 LOADB                            R19 0 +1
      357 LOADB                            R19 1
      358 GETTABLEKS                       R21 R17 K91 ["IsEligible"]
      360 NOT                              R20 R21
      361 LOADNIL                          R21
      362 JUMPIFNOT                        R20 ; [+9]
      363 GETTABLEKS                       R21 R17 K92 ["EligibilityText"]
      365 JUMPIF                           R21 ; [+6]
      366 LOADK                            R24 K93 ["SearchBar"]
      367 LOADK                            R25 K94 ["UnknownError"]
      368 NAMECALL                         R22 R6 K37 ["getText"]
      370 CALL                             R22 3 1
      371 MOVE                             R21 R22
      372 JUMPIFNOT                        R18 ; [+3]
      373 GETTABLEKS                       R22 R7 K95 ["nameHeight"]
      375 JUMP                             ; [+1]
      376 MOVE                             R22 R11
      377 LOADB                            R23 0
      378 JUMPIFNOTEQ                      R8 R17 ; [+2]
      380 NOT                              R23 R20
      381 GETUPVAL                         R24 10
      382 GETTABLEKS                       R24 R24 K18 ["new"]
      384 CALL                             R24 0 1
      385 JUMPIFNOT                        R23 ; [+7]
      386 GETTABLEKS                       R25 R7 K23 ["dropDown"]
      388 GETTABLEKS                       R25 R25 K96 ["hovered"]
      390 GETTABLEKS                       R25 R25 K46 ["backgroundColor"]
      392 JUMPIF                           R25 ; [+4]
      393 GETTABLEKS                       R25 R7 K23 ["dropDown"]
      395 GETTABLEKS                       R25 R25 K46 ["backgroundColor"]
      397 GETUPVAL                         R26 1
      398 JUMPIFNOT                        R26 ; [+225]
      399 MOVE                             R26 R20
      400 JUMPIFNOT                        R26 ; [+4]
      401 GETTABLEKS                       R26 R3 K13 ["Is17PlusGame"]
      403 JUMPIFNOT                        R26 ; [+1]
      404 MOVE                             R26 R19
      405 GETUPVAL                         R27 2
      406 GETTABLEKS                       R27 R27 K31 ["createElement"]
      408 GETUPVAL                         R28 11
      409 DUPTABLE                         R29 K98 [{"tag", "LayoutOrder", "onActivated"}]
      410 LOADK                            R30 K99 ["auto-xy size-full-1800"]
      411 SETTABLEKS                       R30 R29 K33 ["tag"]
      413 SETTABLEKS                       R1 R29 K34 ["LayoutOrder"]
      415 JUMPIF                           R20 ; [+2]
      416 MOVE                             R30 R2
      417 JUMP                             ; [+1]
      418 LOADNIL                          R30
      419 SETTABLEKS                       R30 R29 K97 ["onActivated"]
      421 DUPTABLE                         R30 K102 [{"GrayOutBox", "ItemDetails"}]
      422 JUMPIFNOT                        R20 ; [+29]
      423 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      425 JUMPIFNOT                        R32 ; [+26]
      426 GETUPVAL                         R31 2
      427 GETTABLEKS                       R31 R31 K31 ["createElement"]
      429 GETUPVAL                         R32 11
      430 DUPTABLE                         R33 K104 [{"backgroundStyle", "tag", "LayoutOrder"}]
      431 DUPTABLE                         R34 K107 [{"Color3", "Transparency"}]
      432 GETIMPORT                        R35 K108 [Color3.new]
      434 LOADN                            R36 0
      435 LOADN                            R37 0
      436 LOADN                            R38 0
      437 CALL                             R35 3 1
      438 SETTABLEKS                       R35 R34 K105 ["Color3"]
      440 LOADK                            R35 K109 [0.63]
      441 SETTABLEKS                       R35 R34 K106 ["Transparency"]
      443 SETTABLEKS                       R34 R33 K103 ["backgroundStyle"]
      445 LOADK                            R34 K110 ["anchor-top-left size-full"]
      446 SETTABLEKS                       R34 R33 K33 ["tag"]
      448 SETTABLEKS                       R1 R33 K34 ["LayoutOrder"]
      450 CALL                             R31 2 1
      451 JUMP                             ; [+1]
      452 LOADNIL                          R31
      453 SETTABLEKS                       R31 R30 K100 ["GrayOutBox"]
      455 GETUPVAL                         R31 2
      456 GETTABLEKS                       R31 R31 K31 ["createElement"]
      458 GETUPVAL                         R32 11
      459 DUPTABLE                         R33 K111 [{"tag", "LayoutOrder"}]
      460 LOADK                            R34 K112 ["row gap-medium padding-x-xxlarge padding-y-large size-full"]
      461 SETTABLEKS                       R34 R33 K33 ["tag"]
      463 SETTABLEKS                       R1 R33 K34 ["LayoutOrder"]
      465 DUPTABLE                         R34 K116 [{"Icon", "NamesAndFriendStatus", "Label"}]
      466 JUMPIFNOT                        R19 ; [+21]
      467 GETUPVAL                         R35 2
      468 GETTABLEKS                       R35 R35 K31 ["createElement"]
      470 GETUPVAL                         R36 12
      471 DUPTABLE                         R37 K119 [{"userId", "size", "LayoutOrder"}]
      472 GETTABLEKS                       R38 R17 K120 ["Id"]
      474 SETTABLEKS                       R38 R37 K117 ["userId"]
      476 GETUPVAL                         R38 13
      477 GETTABLEKS                       R38 R38 K121 ["XSmall"]
      479 SETTABLEKS                       R38 R37 K118 ["size"]
      481 NAMECALL                         R38 R24 K122 ["getNextOrder"]
      483 CALL                             R38 1 1
      484 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      486 CALL                             R35 2 1
      487 JUMP                             ; [+19]
      488 GETUPVAL                         R35 2
      489 GETTABLEKS                       R35 R35 K31 ["createElement"]
      491 GETUPVAL                         R36 11
      492 DUPTABLE                         R37 K111 [{"tag", "LayoutOrder"}]
      493 LOADK                            R38 K123 ["size-600-600 radius-small"]
      494 SETTABLEKS                       R38 R37 K33 ["tag"]
      496 NAMECALL                         R38 R24 K122 ["getNextOrder"]
      498 CALL                             R38 1 1
      499 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      501 DUPTABLE                         R38 K124 [{"Icon"}]
      502 GETTABLEKS                       R39 R0 K113 ["Icon"]
      504 SETTABLEKS                       R39 R38 K113 ["Icon"]
      506 CALL                             R35 3 1
      507 SETTABLEKS                       R35 R34 K113 ["Icon"]
      509 GETUPVAL                         R35 2
      510 GETTABLEKS                       R35 R35 K31 ["createElement"]
      512 GETUPVAL                         R36 11
      513 DUPTABLE                         R37 K111 [{"tag", "LayoutOrder"}]
      514 LOADK                            R38 K125 ["col auto-y grow"]
      515 SETTABLEKS                       R38 R37 K33 ["tag"]
      517 NAMECALL                         R38 R24 K122 ["getNextOrder"]
      519 CALL                             R38 1 1
      520 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      522 DUPTABLE                         R38 K128 [{"PrimaryName", "AtName"}]
      523 GETUPVAL                         R39 2
      524 GETTABLEKS                       R39 R39 K31 ["createElement"]
      526 GETUPVAL                         R40 3
      527 DUPTABLE                         R41 K35 [{"Text", "tag", "LayoutOrder"}]
      528 GETTABLEKS                       R43 R17 K129 ["DisplayName"]
      530 JUMPIFNOT                        R43 ; [+3]
      531 GETTABLEKS                       R42 R17 K129 ["DisplayName"]
      533 JUMP                             ; [+2]
      534 GETTABLEKS                       R42 R0 K130 ["Name"]
      536 SETTABLEKS                       R42 R41 K32 ["Text"]
      538 LOADK                            R42 K131 ["text-body-large text-align-x-left auto-xy content-emphasis"]
      539 SETTABLEKS                       R42 R41 K33 ["tag"]
      541 LOADN                            R42 1
      542 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      544 CALL                             R39 2 1
      545 SETTABLEKS                       R39 R38 K126 ["PrimaryName"]
      547 JUMPIFNOT                        R19 ; [+19]
      548 GETUPVAL                         R39 2
      549 GETTABLEKS                       R39 R39 K31 ["createElement"]
      551 GETUPVAL                         R40 3
      552 DUPTABLE                         R41 K35 [{"Text", "tag", "LayoutOrder"}]
      553 LOADK                            R43 K132 ["@"]
      554 GETTABLEKS                       R44 R0 K130 ["Name"]
      556 CONCAT                           R42 R43 R44
      557 SETTABLEKS                       R42 R41 K32 ["Text"]
      559 LOADK                            R42 K133 ["auto-xy text-body-large content-default"]
      560 SETTABLEKS                       R42 R41 K33 ["tag"]
      562 LOADN                            R42 2
      563 SETTABLEKS                       R42 R41 K34 ["LayoutOrder"]
      565 CALL                             R39 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R39
      568 SETTABLEKS                       R39 R38 K127 ["AtName"]
      570 CALL                             R35 3 1
      571 SETTABLEKS                       R35 R34 K114 ["NamesAndFriendStatus"]
      573 JUMPIFNOT                        R26 ; [+14]
      574 GETUPVAL                         R35 2
      575 GETTABLEKS                       R35 R35 K31 ["createElement"]
      577 GETUPVAL                         R36 14
      578 DUPTABLE                         R37 K134 [{"Text", "LayoutOrder"}]
      579 SETTABLEKS                       R21 R37 K32 ["Text"]
      581 NAMECALL                         R38 R24 K122 ["getNextOrder"]
      583 CALL                             R38 1 1
      584 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      586 CALL                             R35 2 1
      587 JUMP                             ; [+29]
      588 JUMPIFNOT                        R18 ; [+27]
      589 GETUPVAL                         R35 2
      590 GETTABLEKS                       R35 R35 K31 ["createElement"]
      592 GETUPVAL                         R36 14
      593 DUPTABLE                         R37 K134 [{"Text", "LayoutOrder"}]
      594 GETUPVAL                         R39 7
      595 JUMPIFNOT                        R39 ; [+6]
      596 LOADK                            R40 K93 ["SearchBar"]
      597 LOADK                            R41 K135 ["ConnectionLabel"]
      598 NAMECALL                         R38 R6 K37 ["getText"]
      600 CALL                             R38 3 1
      601 JUMP                             ; [+5]
      602 LOADK                            R40 K93 ["SearchBar"]
      603 LOADK                            R41 K136 ["FriendLabel"]
      604 NAMECALL                         R38 R6 K37 ["getText"]
      606 CALL                             R38 3 1
      607 SETTABLEKS                       R38 R37 K32 ["Text"]
      609 NAMECALL                         R38 R24 K122 ["getNextOrder"]
      611 CALL                             R38 1 1
      612 SETTABLEKS                       R38 R37 K34 ["LayoutOrder"]
      614 CALL                             R35 2 1
      615 JUMP                             ; [+1]
      616 LOADNIL                          R35
      617 SETTABLEKS                       R35 R34 K115 ["Label"]
      619 CALL                             R31 3 1
      620 SETTABLEKS                       R31 R30 K101 ["ItemDetails"]
      622 CALL                             R27 3 -1
      623 RETURN                           R27 -1
      624 GETUPVAL                         R26 4
      625 GETTABLEKS                       R26 R26 K31 ["createElement"]
      627 LOADK                            R27 K137 ["ImageButton"]
      628 NEWTABLE                         R28 16 0
      630 GETIMPORT                        R29 K45 [UDim2.new]
      632 LOADN                            R30 0
      633 MOVE                             R31 R16
      634 LOADN                            R32 0
      635 MOVE                             R33 R11
      636 CALL                             R29 4 1
      637 SETTABLEKS                       R29 R28 K40 ["Size"]
      639 SETTABLEKS                       R25 R28 K41 ["BackgroundColor3"]
      641 LOADN                            R29 0
      642 SETTABLEKS                       R29 R28 K42 ["BorderSizePixel"]
      644 SETTABLEKS                       R1 R28 K34 ["LayoutOrder"]
      646 LOADB                            R29 0
      647 SETTABLEKS                       R29 R28 K138 ["AutoButtonColor"]
      649 NOT                              R29 R20
      650 SETTABLEKS                       R29 R28 K139 ["Active"]
      652 GETUPVAL                         R29 4
      653 GETTABLEKS                       R29 R29 K140 ["Event"]
      655 GETTABLEKS                       R29 R29 K141 ["Activated"]
      657 SETTABLE                         R2 R28 R29
      658 GETUPVAL                         R29 4
      659 GETTABLEKS                       R29 R29 K140 ["Event"]
      661 GETTABLEKS                       R29 R29 K142 ["MouseEnter"]
      663 NEWCLOSURE                       R30 P0
      664 CAPTURE                          UPVAL U0
      665 CAPTURE                          VAL R17
      666 SETTABLE                         R30 R28 R29
      667 GETUPVAL                         R29 4
      668 GETTABLEKS                       R29 R29 K140 ["Event"]
      670 GETTABLEKS                       R29 R29 K143 ["MouseLeave"]
      672 NEWCLOSURE                       R30 P1
      673 CAPTURE                          UPVAL U0
      674 CAPTURE                          VAL R17
      675 SETTABLE                         R30 R28 R29
      676 NEWTABLE                         R29 1 1
      678 JUMPIFNOT                        R20 ; [+31]
      679 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      681 JUMPIFNOT                        R32 ; [+28]
      682 GETUPVAL                         R31 4
      683 GETTABLEKS                       R31 R31 K31 ["createElement"]
      685 LOADK                            R32 K39 ["Frame"]
      686 DUPTABLE                         R33 K144 [{"AnchorPoint", "Size", "BackgroundTransparency", "LayoutOrder"}]
      687 GETIMPORT                        R34 K85 [Vector2.new]
      689 LOADN                            R35 0
      690 LOADN                            R36 0
      691 CALL                             R34 2 1
      692 SETTABLEKS                       R34 R33 K81 ["AnchorPoint"]
      694 GETIMPORT                        R34 K45 [UDim2.new]
      696 LOADN                            R35 0
      697 MOVE                             R36 R16
      698 LOADN                            R37 0
      699 MOVE                             R38 R11
      700 CALL                             R34 4 1
      701 SETTABLEKS                       R34 R33 K40 ["Size"]
      703 LOADK                            R34 K145 [0.75]
      704 SETTABLEKS                       R34 R33 K56 ["BackgroundTransparency"]
      706 SETTABLEKS                       R1 R33 K34 ["LayoutOrder"]
      708 CALL                             R31 2 1
      709 JUMP                             ; [+1]
      710 LOADNIL                          R31
      711 SETTABLEKS                       R31 R29 K100 ["GrayOutBox"]
      713 GETUPVAL                         R30 4
      714 GETTABLEKS                       R30 R30 K31 ["createElement"]
      716 GETUPVAL                         R31 15
      717 DUPTABLE                         R32 K146 [{"LayoutOrder", "BackgroundTransparency"}]
      718 SETTABLEKS                       R1 R32 K34 ["LayoutOrder"]
      720 LOADN                            R33 1
      721 SETTABLEKS                       R33 R32 K56 ["BackgroundTransparency"]
      723 DUPTABLE                         R33 K150 [{"IconFrame", "NameAndFriendStatus", "RestrictionLabel"}]
      724 GETUPVAL                         R34 4
      725 GETTABLEKS                       R34 R34 K31 ["createElement"]
      727 LOADK                            R35 K39 ["Frame"]
      728 DUPTABLE                         R36 K151 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      729 LOADN                            R37 1
      730 SETTABLEKS                       R37 R36 K56 ["BackgroundTransparency"]
      732 NAMECALL                         R37 R24 K122 ["getNextOrder"]
      734 CALL                             R37 1 1
      735 SETTABLEKS                       R37 R36 K34 ["LayoutOrder"]
      737 GETIMPORT                        R37 K45 [UDim2.new]
      739 LOADN                            R38 0
      740 MOVE                             R39 R11
      741 LOADN                            R40 0
      742 MOVE                             R41 R11
      743 CALL                             R37 4 1
      744 SETTABLEKS                       R37 R36 K40 ["Size"]
      746 DUPTABLE                         R37 K153 [{"SmallIcon", "Padding"}]
      747 GETUPVAL                         R38 4
      748 GETTABLEKS                       R38 R38 K31 ["createElement"]
      750 LOADK                            R39 K39 ["Frame"]
      751 DUPTABLE                         R40 K154 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      752 GETIMPORT                        R41 K85 [Vector2.new]
      754 LOADK                            R42 K86 [0.5]
      755 LOADK                            R43 K86 [0.5]
      756 CALL                             R41 2 1
      757 SETTABLEKS                       R41 R40 K81 ["AnchorPoint"]
      759 GETIMPORT                        R41 K45 [UDim2.new]
      761 LOADK                            R42 K86 [0.5]
      762 LOADN                            R43 0
      763 LOADK                            R44 K86 [0.5]
      764 LOADN                            R45 0
      765 CALL                             R41 4 1
      766 SETTABLEKS                       R41 R40 K55 ["Position"]
      768 GETIMPORT                        R41 K45 [UDim2.new]
      770 LOADN                            R42 0
      771 GETTABLEKS                       R43 R7 K155 ["thumbnailSize"]
      773 LOADN                            R44 0
      774 GETTABLEKS                       R45 R7 K155 ["thumbnailSize"]
      776 CALL                             R41 4 1
      777 SETTABLEKS                       R41 R40 K40 ["Size"]
      779 SETTABLEKS                       R25 R40 K41 ["BackgroundColor3"]
      781 LOADN                            R41 0
      782 SETTABLEKS                       R41 R40 K42 ["BorderSizePixel"]
      784 DUPTABLE                         R41 K124 [{"Icon"}]
      785 GETTABLEKS                       R42 R0 K113 ["Icon"]
      787 SETTABLEKS                       R42 R41 K113 ["Icon"]
      789 CALL                             R38 3 1
      790 SETTABLEKS                       R38 R37 K152 ["SmallIcon"]
      792 GETUPVAL                         R38 4
      793 GETTABLEKS                       R38 R38 K31 ["createElement"]
      795 LOADK                            R39 K74 ["UIPadding"]
      796 DUPTABLE                         R40 K76 [{"PaddingLeft"}]
      797 GETIMPORT                        R41 K78 [UDim.new]
      799 LOADN                            R42 0
      800 GETTABLEKS                       R43 R7 K156 ["thumbnailPaddingLeft"]
      802 CALL                             R41 2 1
      803 SETTABLEKS                       R41 R40 K75 ["PaddingLeft"]
      805 CALL                             R38 2 1
      806 SETTABLEKS                       R38 R37 K72 ["Padding"]
      808 CALL                             R34 3 1
      809 SETTABLEKS                       R34 R33 K147 ["IconFrame"]
      811 GETUPVAL                         R34 4
      812 GETTABLEKS                       R34 R34 K31 ["createElement"]
      814 LOADK                            R35 K39 ["Frame"]
      815 DUPTABLE                         R36 K157 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      816 NAMECALL                         R37 R24 K122 ["getNextOrder"]
      818 CALL                             R37 1 1
      819 SETTABLEKS                       R37 R36 K34 ["LayoutOrder"]
      821 GETIMPORT                        R37 K45 [UDim2.new]
      823 LOADN                            R38 0
      824 GETTABLEKS                       R39 R7 K158 ["nameLabelWidth"]
      826 LOADN                            R40 1
      827 LOADN                            R41 0
      828 CALL                             R37 4 1
      829 SETTABLEKS                       R37 R36 K40 ["Size"]
      831 LOADN                            R37 1
      832 SETTABLEKS                       R37 R36 K56 ["BackgroundTransparency"]
      834 DUPTABLE                         R37 K162 [{"Layout", "TextFrame", "FriendFrame"}]
      835 GETUPVAL                         R38 4
      836 GETTABLEKS                       R38 R38 K31 ["createElement"]
      838 LOADK                            R39 K163 ["UIListLayout"]
      839 DUPTABLE                         R40 K166 [{"FillDirection", "SortOrder", "Padding"}]
      840 GETIMPORT                        R41 K168 [Enum.FillDirection.Vertical]
      842 SETTABLEKS                       R41 R40 K164 ["FillDirection"]
      844 GETIMPORT                        R41 K169 [Enum.SortOrder.LayoutOrder]
      846 SETTABLEKS                       R41 R40 K165 ["SortOrder"]
      848 GETIMPORT                        R41 K78 [UDim.new]
      850 LOADN                            R42 0
      851 LOADN                            R43 0
      852 CALL                             R41 2 1
      853 SETTABLEKS                       R41 R40 K72 ["Padding"]
      855 CALL                             R38 2 1
      856 SETTABLEKS                       R38 R37 K159 ["Layout"]
      858 GETUPVAL                         R38 4
      859 GETTABLEKS                       R38 R38 K31 ["createElement"]
      861 LOADK                            R39 K50 ["TextLabel"]
      862 GETUPVAL                         R40 5
      863 GETTABLEKS                       R40 R40 K51 ["Dictionary"]
      865 GETTABLEKS                       R40 R40 K52 ["join"]
      867 GETTABLEKS                       R41 R4 K68 ["fontStyle"]
      869 GETTABLEKS                       R41 R41 K69 ["Normal"]
      871 DUPTABLE                         R42 K173 [{"Size", "Text", "TextXAlignment", "TextYAlignment", "TextColor3", "BackgroundTransparency", "TextWrapped", "ClipsDescendants", "LayoutOrder", "BorderSizePixel"}]
      872 GETIMPORT                        R43 K45 [UDim2.new]
      874 LOADN                            R44 0
      875 GETTABLEKS                       R45 R7 K158 ["nameLabelWidth"]
      877 LOADN                            R46 0
      878 MOVE                             R47 R22
      879 CALL                             R43 4 1
      880 SETTABLEKS                       R43 R42 K40 ["Size"]
      882 GETTABLEKS                       R43 R0 K130 ["Name"]
      884 SETTABLEKS                       R43 R42 K32 ["Text"]
      886 GETIMPORT                        R43 K60 [Enum.TextXAlignment.Left]
      888 SETTABLEKS                       R43 R42 K54 ["TextXAlignment"]
      890 GETIMPORT                        R43 K175 [Enum.TextYAlignment.Center]
      892 SETTABLEKS                       R43 R42 K170 ["TextYAlignment"]
      894 JUMPIFNOT                        R23 ; [+7]
      895 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      897 GETTABLEKS                       R43 R43 K96 ["hovered"]
      899 GETTABLEKS                       R43 R43 K176 ["displayText"]
      901 JUMPIF                           R43 ; [+4]
      902 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      904 GETTABLEKS                       R43 R43 K176 ["displayText"]
      906 SETTABLEKS                       R43 R42 K171 ["TextColor3"]
      908 LOADN                            R43 1
      909 SETTABLEKS                       R43 R42 K56 ["BackgroundTransparency"]
      911 LOADB                            R43 1
      912 SETTABLEKS                       R43 R42 K70 ["TextWrapped"]
      914 LOADB                            R43 1
      915 SETTABLEKS                       R43 R42 K172 ["ClipsDescendants"]
      917 LOADN                            R43 1
      918 SETTABLEKS                       R43 R42 K34 ["LayoutOrder"]
      920 LOADN                            R43 0
      921 SETTABLEKS                       R43 R42 K42 ["BorderSizePixel"]
      923 CALL                             R40 2 1
      924 DUPTABLE                         R41 K73 [{"Padding"}]
      925 GETUPVAL                         R42 4
      926 GETTABLEKS                       R42 R42 K31 ["createElement"]
      928 LOADK                            R43 K74 ["UIPadding"]
      929 DUPTABLE                         R44 K76 [{"PaddingLeft"}]
      930 GETIMPORT                        R45 K78 [UDim.new]
      932 LOADN                            R46 0
      933 GETTABLEKS                       R47 R7 K177 ["renderItemTextPadding"]
      935 CALL                             R45 2 1
      936 SETTABLEKS                       R45 R44 K75 ["PaddingLeft"]
      938 CALL                             R42 2 1
      939 SETTABLEKS                       R42 R41 K72 ["Padding"]
      941 CALL                             R38 3 1
      942 SETTABLEKS                       R38 R37 K160 ["TextFrame"]
      944 JUMPIFNOT                        R18 ; [+167]
      945 GETUPVAL                         R38 4
      946 GETTABLEKS                       R38 R38 K31 ["createElement"]
      948 GETUPVAL                         R39 15
      949 DUPTABLE                         R40 K146 [{"LayoutOrder", "BackgroundTransparency"}]
      950 LOADN                            R41 2
      951 SETTABLEKS                       R41 R40 K34 ["LayoutOrder"]
      953 LOADN                            R41 1
      954 SETTABLEKS                       R41 R40 K56 ["BackgroundTransparency"]
      956 DUPTABLE                         R41 K180 [{"Padding", "FriendImageLabel", "FriendTextLabel"}]
      957 GETUPVAL                         R42 4
      958 GETTABLEKS                       R42 R42 K31 ["createElement"]
      960 LOADK                            R43 K74 ["UIPadding"]
      961 DUPTABLE                         R44 K182 [{"PaddingLeft", "PaddingBottom"}]
      962 GETIMPORT                        R45 K78 [UDim.new]
      964 LOADN                            R46 0
      965 GETTABLEKS                       R47 R7 K177 ["renderItemTextPadding"]
      967 CALL                             R45 2 1
      968 SETTABLEKS                       R45 R44 K75 ["PaddingLeft"]
      970 GETIMPORT                        R45 K78 [UDim.new]
      972 LOADN                            R46 0
      973 GETTABLEKS                       R47 R7 K177 ["renderItemTextPadding"]
      975 CALL                             R45 2 1
      976 SETTABLEKS                       R45 R44 K181 ["PaddingBottom"]
      978 CALL                             R42 2 1
      979 SETTABLEKS                       R42 R41 K72 ["Padding"]
      981 GETUPVAL                         R42 4
      982 GETTABLEKS                       R42 R42 K31 ["createElement"]
      984 LOADK                            R43 K183 ["ImageLabel"]
      985 DUPTABLE                         R44 K185 [{"Size", "Image", "BackgroundTransparency", "LayoutOrder"}]
      986 GETIMPORT                        R45 K45 [UDim2.new]
      988 LOADN                            R46 0
      989 GETTABLEKS                       R47 R7 K186 ["friendIcon"]
      991 GETTABLEKS                       R47 R47 K22 ["Width"]
      993 LOADN                            R48 0
      994 GETTABLEKS                       R49 R7 K186 ["friendIcon"]
      996 GETTABLEKS                       R49 R49 K187 ["Height"]
      998 CALL                             R45 4 1
      999 SETTABLEKS                       R45 R44 K40 ["Size"]
     1001 GETTABLEKS                       R45 R7 K186 ["friendIcon"]
     1003 GETTABLEKS                       R45 R45 K184 ["Image"]
     1005 SETTABLEKS                       R45 R44 K184 ["Image"]
     1007 LOADN                            R45 1
     1008 SETTABLEKS                       R45 R44 K56 ["BackgroundTransparency"]
     1010 LOADN                            R45 1
     1011 SETTABLEKS                       R45 R44 K34 ["LayoutOrder"]
     1013 CALL                             R42 2 1
     1014 SETTABLEKS                       R42 R41 K178 ["FriendImageLabel"]
     1016 GETUPVAL                         R42 4
     1017 GETTABLEKS                       R42 R42 K31 ["createElement"]
     1019 LOADK                            R43 K50 ["TextLabel"]
     1020 GETUPVAL                         R44 5
     1021 GETTABLEKS                       R44 R44 K51 ["Dictionary"]
     1023 GETTABLEKS                       R44 R44 K52 ["join"]
     1025 GETTABLEKS                       R45 R4 K68 ["fontStyle"]
     1027 GETTABLEKS                       R45 R45 K188 ["Subtext"]
     1029 DUPTABLE                         R46 K190 [{"Size", "AutomaticSize", "Text", "TextXAlignment", "TextColor3", "BackgroundTransparency", "LayoutOrder", "BorderSizePixel"}]
     1030 GETIMPORT                        R47 K45 [UDim2.new]
     1032 LOADN                            R48 1
     1033 LOADN                            R49 0
     1034 LOADN                            R50 0
     1035 GETTABLEKS                       R51 R7 K186 ["friendIcon"]
     1037 GETTABLEKS                       R51 R51 K191 ["LabelHeight"]
     1039 CALL                             R47 4 1
     1040 SETTABLEKS                       R47 R46 K40 ["Size"]
     1042 GETIMPORT                        R47 K192 [Enum.AutomaticSize.X]
     1044 SETTABLEKS                       R47 R46 K189 ["AutomaticSize"]
     1046 GETUPVAL                         R48 7
     1047 JUMPIFNOT                        R48 ; [+6]
     1048 LOADK                            R49 K93 ["SearchBar"]
     1049 LOADK                            R50 K135 ["ConnectionLabel"]
     1050 NAMECALL                         R47 R6 K37 ["getText"]
     1052 CALL                             R47 3 1
     1053 JUMP                             ; [+5]
     1054 LOADK                            R49 K93 ["SearchBar"]
     1055 LOADK                            R50 K136 ["FriendLabel"]
     1056 NAMECALL                         R47 R6 K37 ["getText"]
     1058 CALL                             R47 3 1
     1059 SETTABLEKS                       R47 R46 K32 ["Text"]
     1061 GETIMPORT                        R47 K60 [Enum.TextXAlignment.Left]
     1063 SETTABLEKS                       R47 R46 K54 ["TextXAlignment"]
     1065 JUMPIFNOT                        R23 ; [+7]
     1066 GETTABLEKS                       R47 R7 K23 ["dropDown"]
     1068 GETTABLEKS                       R47 R47 K96 ["hovered"]
     1070 GETTABLEKS                       R47 R47 K176 ["displayText"]
     1072 JUMPIF                           R47 ; [+4]
     1073 GETTABLEKS                       R47 R7 K23 ["dropDown"]
     1075 GETTABLEKS                       R47 R47 K176 ["displayText"]
     1077 SETTABLEKS                       R47 R46 K171 ["TextColor3"]
     1079 LOADN                            R47 1
     1080 SETTABLEKS                       R47 R46 K56 ["BackgroundTransparency"]
     1082 LOADN                            R47 2
     1083 SETTABLEKS                       R47 R46 K34 ["LayoutOrder"]
     1085 LOADN                            R47 0
     1086 SETTABLEKS                       R47 R46 K42 ["BorderSizePixel"]
     1088 CALL                             R44 2 1
     1089 DUPTABLE                         R45 K73 [{"Padding"}]
     1090 GETUPVAL                         R46 4
     1091 GETTABLEKS                       R46 R46 K31 ["createElement"]
     1093 LOADK                            R47 K74 ["UIPadding"]
     1094 DUPTABLE                         R48 K76 [{"PaddingLeft"}]
     1095 GETIMPORT                        R49 K78 [UDim.new]
     1097 LOADN                            R50 0
     1098 GETTABLEKS                       R52 R7 K177 ["renderItemTextPadding"]
     1100 DIVK                             R51 R52 K193 [2]
     1101 CALL                             R49 2 1
     1102 SETTABLEKS                       R49 R48 K75 ["PaddingLeft"]
     1104 CALL                             R46 2 1
     1105 SETTABLEKS                       R46 R45 K72 ["Padding"]
     1107 CALL                             R42 3 1
     1108 SETTABLEKS                       R42 R41 K179 ["FriendTextLabel"]
     1110 CALL                             R38 3 1
     1111 JUMP                             ; [+1]
     1112 LOADNIL                          R38
     1113 SETTABLEKS                       R38 R37 K161 ["FriendFrame"]
     1115 CALL                             R34 3 1
     1116 SETTABLEKS                       R34 R33 K148 ["NameAndFriendStatus"]
     1118 JUMPIFNOT                        R20 ; [+64]
     1119 GETTABLEKS                       R35 R3 K13 ["Is17PlusGame"]
     1121 JUMPIFNOT                        R35 ; [+61]
     1122 JUMPIFNOT                        R19 ; [+60]
     1123 GETUPVAL                         R34 4
     1124 GETTABLEKS                       R34 R34 K31 ["createElement"]
     1126 LOADK                            R35 K50 ["TextLabel"]
     1127 GETUPVAL                         R36 5
     1128 GETTABLEKS                       R36 R36 K51 ["Dictionary"]
     1130 GETTABLEKS                       R36 R36 K52 ["join"]
     1132 GETTABLEKS                       R37 R4 K68 ["fontStyle"]
     1134 GETTABLEKS                       R37 R37 K69 ["Normal"]
     1136 DUPTABLE                         R38 K194 [{"Size", "Text", "TextXAlignment", "TextColor3", "BackgroundTransparency", "LayoutOrder", "BorderSizePixel"}]
     1137 GETIMPORT                        R39 K45 [UDim2.new]
     1139 LOADN                            R40 0
     1140 GETTABLEKS                       R41 R7 K23 ["dropDown"]
     1142 GETTABLEKS                       R41 R41 K195 ["eligibilityLabelWidth"]
     1144 LOADN                            R42 0
     1145 MOVE                             R43 R11
     1146 CALL                             R39 4 1
     1147 SETTABLEKS                       R39 R38 K40 ["Size"]
     1149 SETTABLEKS                       R21 R38 K32 ["Text"]
     1151 GETIMPORT                        R39 K60 [Enum.TextXAlignment.Left]
     1153 SETTABLEKS                       R39 R38 K54 ["TextXAlignment"]
     1155 JUMPIFNOT                        R23 ; [+7]
     1156 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1158 GETTABLEKS                       R39 R39 K96 ["hovered"]
     1160 GETTABLEKS                       R39 R39 K176 ["displayText"]
     1162 JUMPIF                           R39 ; [+4]
     1163 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1165 GETTABLEKS                       R39 R39 K176 ["displayText"]
     1167 SETTABLEKS                       R39 R38 K171 ["TextColor3"]
     1169 LOADN                            R39 1
     1170 SETTABLEKS                       R39 R38 K56 ["BackgroundTransparency"]
     1172 NAMECALL                         R39 R24 K122 ["getNextOrder"]
     1174 CALL                             R39 1 1
     1175 SETTABLEKS                       R39 R38 K34 ["LayoutOrder"]
     1177 LOADN                            R39 0
     1178 SETTABLEKS                       R39 R38 K42 ["BorderSizePixel"]
     1180 CALL                             R36 2 -1
     1181 CALL                             R34 -1 1
     1182 JUMP                             ; [+1]
     1183 LOADNIL                          R34
     1184 SETTABLEKS                       R34 R33 K149 ["RestrictionLabel"]
     1186 CALL                             R30 3 -1
     1187 SETLIST                          R29 R30 -1 [1]
     1189 CALL                             R26 3 -1
     1190 RETURN                           R26 -1

PROTO_20:
        0 DUPTABLE                         R1 K10 [{"text", "isFocused", "isContainerHovered", "isClearButtonHovered", "isKeyHovered", "showDropdown", "dropdownItem", "lastDelay", "lastResults", "mergedItems"}]
        1 LOADK                            R2 K11 [""]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isFocused"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isContainerHovered"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["isClearButtonHovered"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["isKeyHovered"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K5 ["showDropdown"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K6 ["dropdownItem"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K7 ["lastDelay"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R1 K8 ["lastResults"]
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R1 K9 ["mergedItems"]
       34 SETTABLEKS                       R1 R0 K12 ["state"]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K13 ["createRef"]
       39 CALL                             R1 0 1
       40 SETTABLEKS                       R1 R0 K14 ["textBoxRef"]
       42 NEWCLOSURE                       R1 P0
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K15 ["requestSearch"]
       46 NEWCLOSURE                       R1 P1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K16 ["onContainerHovered"]
       50 NEWCLOSURE                       R1 P2
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K17 ["onContainerHoverEnded"]
       54 NEWCLOSURE                       R1 P3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R1 R0 K18 ["onTextChanged"]
       59 NEWCLOSURE                       R1 P4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R1 R0 K19 ["onTextBoxFocused"]
       64 NEWCLOSURE                       R1 P5
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K20 ["onTextBoxFocusLost"]
       69 NEWCLOSURE                       R1 P6
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K21 ["onClearButtonHovered"]
       73 NEWCLOSURE                       R1 P7
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R1 R0 K22 ["onClearButtonHoverEnded"]
       77 NEWCLOSURE                       R1 P8
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R1 R0 K23 ["onClearButtonClicked"]
       81 NEWCLOSURE                       R1 P9
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R1 R0 K24 ["onItemClicked"]
       85 NEWCLOSURE                       R1 P10
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R1 R0 K5 ["showDropdown"]
       89 NEWCLOSURE                       R1 P11
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U0
       92 SETTABLEKS                       R1 R0 K25 ["hideDropdown"]
       94 NEWCLOSURE                       R1 P12
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R1 R0 K26 ["onKeyMouseEnter"]
       98 NEWCLOSURE                       R1 P13
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U0
      101 SETTABLEKS                       R1 R0 K27 ["onKeyMouseLeave"]
      103 NEWCLOSURE                       R1 P14
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          UPVAL U14
      117 CAPTURE                          UPVAL U15
      118 CAPTURE                          UPVAL U16
      119 CAPTURE                          UPVAL U17
      120 SETTABLEKS                       R1 R0 K28 ["onRenderItem"]
      122 GETTABLEKS                       R1 R0 K29 ["props"]
      124 GETTABLEKS                       R1 R1 K18 ["onTextChanged"]
      126 JUMPIFNOT                        R1 ; [+6]
      127 GETTABLEKS                       R1 R0 K29 ["props"]
      129 GETTABLEKS                       R1 R1 K18 ["onTextChanged"]
      131 LOADK                            R2 K11 [""]
      132 CALL                             R1 1 0
      133 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["onTextBoxFocused"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Mouse"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       10 ORK                              R5 R6 K4 [0]
       11 GETTABLEKS                       R6 R4 K6 ["text"]
       13 GETTABLEKS                       R7 R4 K7 ["isFocused"]
       15 JUMPIFNOT                        R7 ; [+2]
       16 GETTABLEKS                       R7 R1 K8 ["Enabled"]
       18 GETTABLEKS                       R8 R4 K9 ["isContainerHovered"]
       20 JUMPIFNOT                        R8 ; [+2]
       21 GETTABLEKS                       R8 R1 K8 ["Enabled"]
       23 GETTABLEKS                       R10 R0 K3 ["state"]
       25 GETTABLEKS                       R10 R10 K10 ["isClearButtonHovered"]
       27 JUMPIF                           R10 ; [+5]
       28 GETTABLEKS                       R9 R0 K3 ["state"]
       30 GETTABLEKS                       R9 R9 K11 ["isKeyHovered"]
       32 JUMPIFNOT                        R9 ; [+2]
       33 GETTABLEKS                       R9 R1 K8 ["Enabled"]
       35 GETTABLEKS                       R10 R0 K3 ["state"]
       37 GETTABLEKS                       R10 R10 K9 ["isContainerHovered"]
       39 JUMPIFNOT                        R10 ; [+2]
       40 GETTABLEKS                       R10 R1 K8 ["Enabled"]
       42 JUMPIFNOT                        R9 ; [+5]
       43 LOADK                            R13 K12 ["PointingHand"]
       44 NAMECALL                         R11 R3 K13 ["__pushCursor"]
       46 CALL                             R11 2 0
       47 JUMP                             ; [+9]
       48 JUMPIFNOT                        R10 ; [+5]
       49 LOADK                            R13 K14 ["IBeam"]
       50 NAMECALL                         R11 R3 K13 ["__pushCursor"]
       52 CALL                             R11 2 0
       53 JUMP                             ; [+3]
       54 NAMECALL                         R11 R3 K15 ["__resetCursor"]
       56 CALL                             R11 1 0
       57 GETTABLEKS                       R11 R2 K16 ["searchBar"]
       59 LOADNIL                          R12
       60 JUMPIFNOT                        R7 ; [+3]
       61 GETTABLEKS                       R12 R11 K17 ["borderSelected"]
       63 JUMP                             ; [+6]
       64 JUMPIFNOT                        R8 ; [+3]
       65 GETTABLEKS                       R12 R11 K18 ["borderHover"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R12 R11 K19 ["border"]
       70 GETTABLEKS                       R13 R1 K20 ["DefaultText"]
       72 GETTABLEKS                       R14 R1 K21 ["ErrorText"]
       74 GETUPVAL                         R16 0
       75 JUMPIFNOT                        R16 ; [+3]
       76 GETTABLEKS                       R15 R4 K22 ["showDropdown"]
       78 JUMP                             ; [+11]
       79 GETTABLEKS                       R15 R4 K22 ["showDropdown"]
       81 JUMPIFNOT                        R15 ; [+8]
       82 GETTABLEKS                       R16 R0 K3 ["state"]
       84 GETTABLEKS                       R16 R16 K6 ["text"]
       86 JUMPIFNOTEQKS                    R16 K23 [""] ; [+2]
       88 LOADB                            R15 0 +1
       89 LOADB                            R15 1
       90 GETTABLEKS                       R16 R0 K24 ["textBoxRef"]
       92 JUMPIFNOT                        R16 ; [+4]
       93 GETTABLEKS                       R16 R0 K24 ["textBoxRef"]
       95 GETTABLEKS                       R16 R16 K25 ["current"]
       97 JUMPIFNOT                        R16 ; [+2]
       98 GETTABLEKS                       R16 R16 K26 ["Parent"]
      100 LOADNIL                          R17
      101 JUMPIFNOT                        R16 ; [+17]
      102 GETTABLEKS                       R18 R16 K27 ["AbsolutePosition"]
      104 GETTABLEKS                       R19 R16 K28 ["AbsoluteSize"]
      106 ADD                              R20 R18 R19
      107 GETIMPORT                        R21 K31 [Rect.new]
      109 GETTABLEKS                       R22 R18 K32 ["X"]
      111 GETTABLEKS                       R23 R18 K33 ["Y"]
      113 GETTABLEKS                       R24 R20 K32 ["X"]
      115 GETTABLEKS                       R25 R20 K33 ["Y"]
      117 CALL                             R21 4 1
      118 MOVE                             R17 R21
      119 GETTABLEKS                       R18 R1 K34 ["Results"]
      121 JUMPIF                           R18 ; [+2]
      122 NEWTABLE                         R18 0 0
      124 GETTABLEKS                       R19 R4 K35 ["lastResults"]
      126 JUMPIFEQ                         R19 R18 ; [+9]
      128 MOVE                             R21 R18
      129 NAMECALL                         R19 R0 K36 ["mergeResultsTable"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R4 K37 ["mergedItems"]
      134 SETTABLEKS                       R18 R4 K35 ["lastResults"]
      136 GETUPVAL                         R19 1
      137 GETTABLEKS                       R19 R19 K38 ["createElement"]
      139 GETUPVAL                         R20 2
      140 DUPTABLE                         R21 K40 [{"BackgroundTransparency", "LayoutOrder"}]
      141 LOADN                            R22 1
      142 SETTABLEKS                       R22 R21 K39 ["BackgroundTransparency"]
      144 SETTABLEKS                       R5 R21 K5 ["LayoutOrder"]
      146 DUPTABLE                         R22 K42 [{"Background"}]
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R23 R23 K38 ["createElement"]
      150 GETUPVAL                         R24 3
      151 NEWTABLE                         R25 8 0
      153 LOADN                            R26 1
      154 SETTABLEKS                       R26 R25 K39 ["BackgroundTransparency"]
      156 GETUPVAL                         R26 4
      157 GETTABLEKS                       R26 R26 K43 ["ROUNDED_BORDER_IMAGE"]
      159 SETTABLEKS                       R26 R25 K44 ["Image"]
      161 SETTABLEKS                       R12 R25 K45 ["ImageColor3"]
      163 GETIMPORT                        R26 K49 [Enum.ScaleType.Slice]
      165 SETTABLEKS                       R26 R25 K47 ["ScaleType"]
      167 GETUPVAL                         R26 4
      168 GETTABLEKS                       R26 R26 K50 ["ROUNDED_FRAME_SLICE"]
      170 SETTABLEKS                       R26 R25 K51 ["SliceCenter"]
      172 GETUPVAL                         R26 1
      173 GETTABLEKS                       R26 R26 K52 ["Event"]
      175 GETTABLEKS                       R26 R26 K53 ["MouseEnter"]
      177 GETTABLEKS                       R27 R0 K54 ["onContainerHovered"]
      179 SETTABLE                         R27 R25 R26
      180 GETUPVAL                         R26 1
      181 GETTABLEKS                       R26 R26 K52 ["Event"]
      183 GETTABLEKS                       R26 R26 K55 ["MouseMoved"]
      185 GETTABLEKS                       R27 R0 K54 ["onContainerHovered"]
      187 SETTABLE                         R27 R25 R26
      188 GETUPVAL                         R26 1
      189 GETTABLEKS                       R26 R26 K52 ["Event"]
      191 GETTABLEKS                       R26 R26 K56 ["MouseLeave"]
      193 GETTABLEKS                       R27 R0 K57 ["onContainerHoverEnded"]
      195 SETTABLE                         R27 R25 R26
      196 DUPTABLE                         R26 K61 [{"Padding", "TextBox", "ClearButtonFrame"}]
      197 GETUPVAL                         R27 1
      198 GETTABLEKS                       R27 R27 K38 ["createElement"]
      200 LOADK                            R28 K62 ["UIPadding"]
      201 DUPTABLE                         R29 K64 [{"PaddingLeft"}]
      202 GETIMPORT                        R30 K66 [UDim.new]
      204 LOADN                            R31 0
      205 LOADN                            R32 12
      206 CALL                             R30 2 1
      207 SETTABLEKS                       R30 R29 K63 ["PaddingLeft"]
      209 CALL                             R27 2 1
      210 SETTABLEKS                       R27 R26 K58 ["Padding"]
      212 GETUPVAL                         R27 1
      213 GETTABLEKS                       R27 R27 K38 ["createElement"]
      215 LOADK                            R28 K59 ["TextBox"]
      216 GETUPVAL                         R29 5
      217 GETTABLEKS                       R29 R29 K67 ["Dictionary"]
      219 GETTABLEKS                       R29 R29 K68 ["join"]
      221 GETTABLEKS                       R30 R2 K69 ["fontStyle"]
      223 GETTABLEKS                       R30 R30 K70 ["Normal"]
      225 NEWTABLE                         R31 16 0
      227 LOADN                            R32 1
      228 SETTABLEKS                       R32 R31 K5 ["LayoutOrder"]
      230 GETIMPORT                        R32 K72 [UDim2.new]
      232 LOADN                            R33 1
      233 GETTABLEKS                       R35 R11 K73 ["searchBarHeight"]
      235 MINUS                            R34 R35
      236 LOADN                            R35 0
      237 GETTABLEKS                       R36 R11 K73 ["searchBarHeight"]
      239 CALL                             R32 4 1
      240 SETTABLEKS                       R32 R31 K74 ["Size"]
      242 LOADN                            R32 1
      243 SETTABLEKS                       R32 R31 K39 ["BackgroundTransparency"]
      245 LOADB                            R32 1
      246 SETTABLEKS                       R32 R31 K75 ["ClipsDescendants"]
      248 LOADB                            R32 0
      249 SETTABLEKS                       R32 R31 K76 ["ClearTextOnFocus"]
      251 GETIMPORT                        R32 K79 [Enum.TextXAlignment.Left]
      253 SETTABLEKS                       R32 R31 K77 ["TextXAlignment"]
      255 GETTABLEKS                       R33 R1 K8 ["Enabled"]
      257 JUMPIFNOT                        R33 ; [+2]
      258 MOVE                             R32 R6
      259 JUMPIF                           R32 ; [+1]
      260 LOADK                            R32 K23 [""]
      261 SETTABLEKS                       R32 R31 K80 ["Text"]
      263 GETTABLEKS                       R32 R1 K8 ["Enabled"]
      265 SETTABLEKS                       R32 R31 K81 ["TextEditable"]
      267 OR                               R32 R14 R13
      268 SETTABLEKS                       R32 R31 K82 ["PlaceholderText"]
      270 JUMPIFNOT                        R14 ; [+3]
      271 GETTABLEKS                       R32 R2 K83 ["warningColor"]
      273 JUMPIF                           R32 ; [+2]
      274 GETTABLEKS                       R32 R11 K84 ["placeholderText"]
      276 SETTABLEKS                       R32 R31 K85 ["PlaceholderColor3"]
      278 GETUPVAL                         R32 1
      279 GETTABLEKS                       R32 R32 K86 ["Ref"]
      281 GETTABLEKS                       R33 R0 K24 ["textBoxRef"]
      283 SETTABLE                         R33 R31 R32
      284 GETUPVAL                         R32 1
      285 GETTABLEKS                       R32 R32 K87 ["Change"]
      287 GETTABLEKS                       R32 R32 K80 ["Text"]
      289 GETTABLEKS                       R33 R0 K88 ["onTextChanged"]
      291 SETTABLE                         R33 R31 R32
      292 GETUPVAL                         R32 1
      293 GETTABLEKS                       R32 R32 K52 ["Event"]
      295 GETTABLEKS                       R32 R32 K89 ["Focused"]
      297 NEWCLOSURE                       R33 P0
      298 CAPTURE                          VAL R0
      299 CAPTURE                          VAL R1
      300 SETTABLE                         R33 R31 R32
      301 GETUPVAL                         R32 1
      302 GETTABLEKS                       R32 R32 K52 ["Event"]
      304 GETTABLEKS                       R32 R32 K90 ["FocusLost"]
      306 GETTABLEKS                       R33 R0 K91 ["onTextBoxFocusLost"]
      308 SETTABLE                         R33 R31 R32
      309 CALL                             R29 2 1
      310 DUPTABLE                         R30 K93 [{"Dropdown"}]
      311 MOVE                             R31 R16
      312 JUMPIFNOT                        R31 ; [+40]
      313 GETUPVAL                         R31 1
      314 GETTABLEKS                       R31 R31 K38 ["createElement"]
      316 GETUPVAL                         R32 6
      317 DUPTABLE                         R33 K102 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Style", "Width", "MaxHeight"}]
      318 NOT                              R34 R15
      319 SETTABLEKS                       R34 R33 K94 ["Hide"]
      321 GETTABLEKS                       R34 R0 K3 ["state"]
      323 GETTABLEKS                       R34 R34 K37 ["mergedItems"]
      325 SETTABLEKS                       R34 R33 K95 ["Items"]
      327 GETTABLEKS                       R34 R0 K103 ["hideDropdown"]
      329 SETTABLEKS                       R34 R33 K96 ["OnFocusLost"]
      331 GETTABLEKS                       R34 R0 K104 ["onItemClicked"]
      333 SETTABLEKS                       R34 R33 K97 ["OnItemActivated"]
      335 GETTABLEKS                       R34 R0 K105 ["onRenderItem"]
      337 SETTABLEKS                       R34 R33 K98 ["OnRenderItem"]
      339 LOADK                            R34 K106 ["Search"]
      340 SETTABLEKS                       R34 R33 K99 ["Style"]
      342 GETTABLEKS                       R34 R17 K100 ["Width"]
      344 SETTABLEKS                       R34 R33 K100 ["Width"]
      346 GETTABLEKS                       R34 R11 K107 ["dropDown"]
      348 GETTABLEKS                       R34 R34 K108 ["maxHeight"]
      350 SETTABLEKS                       R34 R33 K101 ["MaxHeight"]
      352 CALL                             R31 2 1
      353 SETTABLEKS                       R31 R30 K92 ["Dropdown"]
      355 CALL                             R27 3 1
      356 SETTABLEKS                       R27 R26 K59 ["TextBox"]
      358 GETUPVAL                         R27 1
      359 GETTABLEKS                       R27 R27 K38 ["createElement"]
      361 LOADK                            R28 K109 ["Frame"]
      362 DUPTABLE                         R29 K110 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      363 LOADN                            R30 1
      364 SETTABLEKS                       R30 R29 K39 ["BackgroundTransparency"]
      366 LOADN                            R30 2
      367 SETTABLEKS                       R30 R29 K5 ["LayoutOrder"]
      369 GETIMPORT                        R30 K72 [UDim2.new]
      371 LOADN                            R31 0
      372 GETTABLEKS                       R32 R11 K73 ["searchBarHeight"]
      374 LOADN                            R33 0
      375 GETTABLEKS                       R34 R11 K73 ["searchBarHeight"]
      377 CALL                             R30 4 1
      378 SETTABLEKS                       R30 R29 K74 ["Size"]
      380 DUPTABLE                         R30 K112 [{"ClearButton"}]
      381 GETUPVAL                         R31 1
      382 GETTABLEKS                       R31 R31 K38 ["createElement"]
      384 LOADK                            R32 K113 ["ImageButton"]
      385 NEWTABLE                         R33 16 0
      387 GETIMPORT                        R34 K115 [Vector2.new]
      389 LOADK                            R35 K116 [0.5]
      390 LOADK                            R36 K116 [0.5]
      391 CALL                             R34 2 1
      392 SETTABLEKS                       R34 R33 K117 ["AnchorPoint"]
      394 GETIMPORT                        R34 K72 [UDim2.new]
      396 LOADK                            R35 K116 [0.5]
      397 LOADN                            R36 0
      398 LOADK                            R37 K116 [0.5]
      399 LOADN                            R38 0
      400 CALL                             R34 4 1
      401 SETTABLEKS                       R34 R33 K118 ["Position"]
      403 GETIMPORT                        R34 K72 [UDim2.new]
      405 LOADN                            R35 0
      406 GETTABLEKS                       R36 R11 K119 ["clearButtonIconSize"]
      408 LOADN                            R37 0
      409 GETTABLEKS                       R38 R11 K119 ["clearButtonIconSize"]
      411 CALL                             R34 4 1
      412 SETTABLEKS                       R34 R33 K74 ["Size"]
      414 LOADN                            R34 1
      415 SETTABLEKS                       R34 R33 K39 ["BackgroundTransparency"]
      417 JUMPIFNOTEQKS                    R6 K23 [""] ; [+2]
      419 LOADB                            R34 0 +1
      420 LOADB                            R34 1
      421 SETTABLEKS                       R34 R33 K120 ["Visible"]
      423 GETTABLEKS                       R34 R2 K121 ["deleteIcon"]
      425 SETTABLEKS                       R34 R33 K44 ["Image"]
      427 GETUPVAL                         R34 1
      428 GETTABLEKS                       R34 R34 K52 ["Event"]
      430 GETTABLEKS                       R34 R34 K53 ["MouseEnter"]
      432 GETTABLEKS                       R35 R0 K122 ["onClearButtonHovered"]
      434 SETTABLE                         R35 R33 R34
      435 GETUPVAL                         R34 1
      436 GETTABLEKS                       R34 R34 K52 ["Event"]
      438 GETTABLEKS                       R34 R34 K55 ["MouseMoved"]
      440 GETTABLEKS                       R35 R0 K122 ["onClearButtonHovered"]
      442 SETTABLE                         R35 R33 R34
      443 GETUPVAL                         R34 1
      444 GETTABLEKS                       R34 R34 K52 ["Event"]
      446 GETTABLEKS                       R34 R34 K56 ["MouseLeave"]
      448 GETTABLEKS                       R35 R0 K123 ["onClearButtonHoverEnded"]
      450 SETTABLE                         R35 R33 R34
      451 GETUPVAL                         R34 1
      452 GETTABLEKS                       R34 R34 K52 ["Event"]
      454 GETTABLEKS                       R34 R34 K124 ["MouseButton1Down"]
      456 GETTABLEKS                       R35 R0 K125 ["onClearButtonClicked"]
      458 SETTABLE                         R35 R33 R34
      459 CALL                             R31 2 1
      460 SETTABLEKS                       R31 R30 K111 ["ClearButton"]
      462 CALL                             R27 3 1
      463 SETTABLEKS                       R27 R26 K60 ["ClearButtonFrame"]
      465 CALL                             R23 3 1
      466 SETTABLEKS                       R23 R22 K41 ["Background"]
      468 CALL                             R19 3 -1
      469 RETURN                           R19 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["isUnmounting"]
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["isUnmounting"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["View"]
       39 GETTABLEKS                       R6 R4 K11 ["Text"]
       41 GETTABLEKS                       R7 R4 K12 ["Avatar"]
       43 GETTABLEKS                       R8 R4 K13 ["Enums"]
       45 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Util"]
       53 GETTABLEKS                       R10 R10 K17 ["Constants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R0 K5 ["Packages"]
       60 GETTABLEKS                       R11 R11 K18 ["Framework"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R10 R10 K19 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K20 ["withContext"]
       67 GETTABLEKS                       R12 R10 K21 ["Localization"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETTABLEKS                       R14 R0 K5 ["Packages"]
       73 GETTABLEKS                       R14 R14 K18 ["Framework"]
       75 CALL                             R13 1 1
       76 GETTABLEKS                       R14 R13 K22 ["Style"]
       78 GETTABLEKS                       R14 R14 K23 ["Stylizer"]
       80 GETTABLEKS                       R15 R13 K16 ["Util"]
       82 GETTABLEKS                       R15 R15 K24 ["LayoutOrderIterator"]
       84 GETTABLEKS                       R16 R9 K25 ["COLLABORATORTYPE_USER"]
       86 GETIMPORT                        R17 K4 [require]
       88 GETTABLEKS                       R18 R0 K15 ["Src"]
       90 GETTABLEKS                       R18 R18 K16 ["Util"]
       92 GETTABLEKS                       R18 R18 K26 ["PermissionsConstants"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R18 R13 K27 ["UI"]
       97 GETTABLEKS                       R19 R18 K28 ["DropdownMenu"]
       99 GETIMPORT                        R20 K4 [require]
      101 GETTABLEKS                       R21 R0 K15 ["Src"]
      103 GETTABLEKS                       R21 R21 K16 ["Util"]
      105 GETTABLEKS                       R21 R21 K29 ["CreateFitToContent"]
      107 CALL                             R20 1 1
      108 GETTABLEKS                       R21 R13 K27 ["UI"]
      110 GETTABLEKS                       R21 R21 K30 ["LoadingIndicator"]
      112 GETIMPORT                        R22 K32 [game]
      114 LOADK                            R24 K33 ["TextService"]
      115 NAMECALL                         R22 R22 K34 ["GetService"]
      117 CALL                             R22 2 1
      118 GETIMPORT                        R23 K32 [game]
      120 LOADK                            R25 K35 ["StudioManageCollabFixFocusError"]
      121 NAMECALL                         R23 R23 K36 ["GetFastFlag"]
      123 CALL                             R23 2 1
      124 GETIMPORT                        R24 K32 [game]
      126 LOADK                            R26 K37 ["StudioFriendToConnection"]
      127 NAMECALL                         R24 R24 K36 ["GetFastFlag"]
      129 CALL                             R24 2 1
      130 GETIMPORT                        R25 K32 [game]
      132 LOADK                            R27 K38 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      133 NAMECALL                         R25 R25 K36 ["GetFastFlag"]
      135 CALL                             R25 2 1
      136 GETIMPORT                        R26 K32 [game]
      138 LOADK                            R28 K39 ["Collab8818_ShowSearchItemDisplayName"]
      139 NAMECALL                         R26 R26 K36 ["GetFastFlag"]
      141 CALL                             R26 2 1
      142 GETIMPORT                        R27 K4 [require]
      144 GETTABLEKS                       R28 R0 K15 ["Src"]
      146 GETTABLEKS                       R28 R28 K16 ["Util"]
      148 GETTABLEKS                       R28 R28 K40 ["IsLikelyCollaboratorPrefetchEnabled"]
      150 CALL                             R27 1 1
      151 MOVE                             R28 R27
      152 CALL                             R28 0 1
      153 MOVE                             R29 R20
      154 LOADK                            R30 K41 ["Frame"]
      155 LOADK                            R31 K42 ["UIListLayout"]
      156 DUPTABLE                         R32 K45 [{"SortOrder", "Padding"}]
      157 GETIMPORT                        R33 K48 [Enum.SortOrder.LayoutOrder]
      159 SETTABLEKS                       R33 R32 K43 ["SortOrder"]
      161 GETIMPORT                        R33 K51 [UDim.new]
      163 LOADN                            R34 0
      164 LOADN                            R35 0
      165 CALL                             R33 2 1
      166 SETTABLEKS                       R33 R32 K44 ["Padding"]
      168 CALL                             R29 3 1
      169 MOVE                             R30 R20
      170 LOADK                            R31 K41 ["Frame"]
      171 LOADK                            R32 K42 ["UIListLayout"]
      172 DUPTABLE                         R33 K53 [{"SortOrder", "Padding", "FillDirection"}]
      173 GETIMPORT                        R34 K48 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R34 R33 K43 ["SortOrder"]
      177 GETIMPORT                        R34 K51 [UDim.new]
      179 LOADN                            R35 0
      180 LOADN                            R36 0
      181 CALL                             R34 2 1
      182 SETTABLEKS                       R34 R33 K44 ["Padding"]
      184 GETIMPORT                        R34 K55 [Enum.FillDirection.Horizontal]
      186 SETTABLEKS                       R34 R33 K52 ["FillDirection"]
      188 CALL                             R30 3 1
      189 MOVE                             R31 R20
      190 LOADK                            R32 K56 ["ImageLabel"]
      191 LOADK                            R33 K42 ["UIListLayout"]
      192 DUPTABLE                         R34 K53 [{"SortOrder", "Padding", "FillDirection"}]
      193 GETIMPORT                        R35 K48 [Enum.SortOrder.LayoutOrder]
      195 SETTABLEKS                       R35 R34 K43 ["SortOrder"]
      197 GETIMPORT                        R35 K51 [UDim.new]
      199 LOADN                            R36 0
      200 LOADN                            R37 0
      201 CALL                             R35 2 1
      202 SETTABLEKS                       R35 R34 K44 ["Padding"]
      204 GETIMPORT                        R35 K55 [Enum.FillDirection.Horizontal]
      206 SETTABLEKS                       R35 R34 K52 ["FillDirection"]
      208 CALL                             R31 3 1
      209 LOADNIL                          R32
      210 JUMPIFNOT                        R26 ; [+4]
      211 DUPCLOSURE                       R32 K57 [PROTO_0]
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R6
      215 GETTABLEKS                       R33 R1 K58 ["PureComponent"]
      217 LOADK                            R35 K59 ["SearchBar"]
      218 NAMECALL                         R33 R33 K60 ["extend"]
      220 CALL                             R33 2 1
      221 DUPCLOSURE                       R34 K61 [PROTO_1]
      222 NEWCLOSURE                       R35 P2
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R5
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R8
      239 CAPTURE                          REF R32
      240 CAPTURE                          VAL R30
      241 SETTABLEKS                       R35 R33 K62 ["init"]
      243 DUPCLOSURE                       R35 K63 [PROTO_22]
      244 SETTABLEKS                       R35 R33 K64 ["mergeResultsTable"]
      246 DUPCLOSURE                       R35 K65 [PROTO_24]
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R29
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R19
      254 SETTABLEKS                       R35 R33 K66 ["render"]
      256 DUPCLOSURE                       R35 K67 [PROTO_25]
      257 CAPTURE                          VAL R23
      258 SETTABLEKS                       R35 R33 K68 ["didMount"]
      260 DUPCLOSURE                       R35 K69 [PROTO_26]
      261 CAPTURE                          VAL R23
      262 SETTABLEKS                       R35 R33 K70 ["willUnmount"]
      264 MOVE                             R35 R11
      265 DUPTABLE                         R36 K72 [{"Stylizer", "Localization", "Mouse"}]
      266 SETTABLEKS                       R14 R36 K23 ["Stylizer"]
      268 SETTABLEKS                       R12 R36 K21 ["Localization"]
      270 GETTABLEKS                       R37 R10 K71 ["Mouse"]
      272 SETTABLEKS                       R37 R36 K71 ["Mouse"]
      274 CALL                             R35 1 1
      275 MOVE                             R36 R33
      276 CALL                             R35 1 1
      277 MOVE                             R33 R35
      278 CLOSEUPVALS                      R32
      279 RETURN                           R33 1
