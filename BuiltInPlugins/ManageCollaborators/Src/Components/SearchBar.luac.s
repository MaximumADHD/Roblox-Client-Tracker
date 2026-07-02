PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "self-center auto-xy stroke-standard stroke-default radius-small bg-shift-300", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K7 [{["Text"], ["tag"] = "auto-xy padding-x-small padding-y-xsmall text-label-small content-default"}]
       14 GETTABLEKS                       R7 R0 K5 ["Text"]
       16 SETTABLEKS                       R7 R6 K5 ["Text"]
       18 CALL                             R4 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsSearchTermLengthLimit"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["state"]
        7 GETTABLEKS                       R1 R1 K2 ["text"]
        9 LENGTH                           R0 R1
       10 LOADN                            R1 26
       11 JUMPIFNOTLT                      R1 R0 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["props"]
       17 GETTABLEKS                       R0 R0 K4 ["onSearchRequested"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K1 ["state"]
       22 GETTABLEKS                       R1 R1 K2 ["text"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["lastDelay"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+30]
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKS                       R0 K2 [""] ; [+27]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+24]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K3 ["requestSearch"]
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K0 ["state"]
       20 GETTABLEKS                       R0 R0 K4 ["showDropdown"]
       22 JUMPIF                           R0 ; [+14]
       23 GETIMPORT                        R0 K6 [next]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K0 ["state"]
       28 GETTABLEKS                       R1 R1 K7 ["mergedItems"]
       30 CALL                             R0 1 1
       31 JUMPIFEQKNIL                     R0 ; [+5]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K4 ["showDropdown"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

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
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K7 ["fflagManageCollaboratorsSearchTermLengthLimit"]
       19 JUMPIFNOT                        R3 ; [+6]
       20 LENGTH                           R4 R1
       21 LOADN                            R5 26
       22 JUMPIFLT                         R5 R4 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 JUMPIFNOT                        R2 ; [+85]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K8 ["state"]
       30 GETTABLEKS                       R4 R4 K9 ["text"]
       32 JUMPIFNOTEQ                      R4 R1 ; [+8]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K8 ["state"]
       37 GETTABLEKS                       R4 R4 K10 ["isLengthExceeded"]
       39 JUMPIFEQ                         R4 R3 ; [+72]
       41 GETUPVAL                         R4 0
       42 DUPTABLE                         R6 K11 [{"text", "isLengthExceeded"}]
       43 SETTABLEKS                       R1 R6 K9 ["text"]
       45 SETTABLEKS                       R3 R6 K10 ["isLengthExceeded"]
       47 NAMECALL                         R4 R4 K12 ["setState"]
       49 CALL                             R4 2 0
       50 JUMPIFNOT                        R3 ; [+1]
       51 RETURN                           R0 0
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K13 ["props"]
       55 GETTABLEKS                       R4 R4 K14 ["onTextChanged"]
       57 JUMPIFNOT                        R4 ; [+7]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K13 ["props"]
       61 GETTABLEKS                       R4 R4 K14 ["onTextChanged"]
       63 MOVE                             R5 R1
       64 CALL                             R4 1 0
       65 NEWTABLE                         R4 0 0
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K8 ["state"]
       70 SETTABLEKS                       R4 R5 K15 ["lastDelay"]
       72 GETIMPORT                        R5 K17 [delay]
       74 LOADK                            R6 K18 [0.5]
       75 NEWCLOSURE                       R7 P0
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CALL                             R5 2 0
       81 GETUPVAL                         R5 2
       82 MOVE                             R7 R1
       83 GETTABLEKS                       R8 R2 K19 ["TextSize"]
       85 GETTABLEKS                       R9 R2 K20 ["Font"]
       87 GETIMPORT                        R10 K23 [Vector2.new]
       89 LOADN                            R11 0
       90 LOADK                            R12 K24 [∞]
       91 CALL                             R10 2 -1
       92 NAMECALL                         R5 R5 K25 ["GetTextSize"]
       94 CALL                             R5 -1 1
       95 GETTABLEKS                       R6 R5 K26 ["x"]
       97 GETTABLEKS                       R7 R2 K27 ["AbsoluteSize"]
       99 GETTABLEKS                       R7 R7 K26 ["x"]
      101 JUMPIFNOTLT                      R7 R6 ; [+6]
      103 GETIMPORT                        R6 K31 [Enum.TextXAlignment.Right]
      105 SETTABLEKS                       R6 R2 K29 ["TextXAlignment"]
      107 RETURN                           R0 0
      108 GETIMPORT                        R6 K33 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R6 R2 K29 ["TextXAlignment"]
      112 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R5 K4 [{["isFocused"] = True}]
        7 NAMECALL                         R3 R3 K5 ["setState"]
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 1
       11 JUMPIF                           R3 ; [+4]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K6 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       15 JUMPIFNOT                        R3 ; [+12]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["props"]
       19 GETTABLEKS                       R3 R3 K8 ["onTextBoxFocused"]
       21 JUMPIFNOT                        R3 ; [+6]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K7 ["props"]
       25 GETTABLEKS                       R3 R3 K8 ["onTextBoxFocused"]
       27 CALL                             R3 0 0
       28 JUMPIF                           R0 ; [+3]
       29 NAMECALL                         R3 R2 K9 ["ReleaseFocus"]
       31 CALL                             R3 1 0
       32 GETIMPORT                        R3 K11 [next]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K12 ["state"]
       37 GETTABLEKS                       R4 R4 K13 ["mergedItems"]
       39 CALL                             R3 1 1
       40 JUMPIFEQKNIL                     R3 ; [+5]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K14 ["showDropdown"]
       45 CALL                             R3 0 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["isUnmounting"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R5 K4 [{["isFocused"] = False, ["isContainerHovered"] = False}]
        9 NAMECALL                         R3 R3 K5 ["setState"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["state"]
       15 GETTABLEKS                       R3 R3 K7 ["dropdownItem"]
       17 JUMPIF                           R3 ; [+4]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K8 ["hideDropdown"]
       21 CALL                             R3 0 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
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
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isFocused"]
        5 JUMPIF                           R0 ; [+20]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K6 [{["showDropdown"] = False, ["dropdownItem"], ["isKeyHovered"] = False}]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K7 ["None"]
       11 SETTABLEKS                       R3 R2 K4 ["dropdownItem"]
       13 NAMECALL                         R0 R0 K8 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["state"]
       19 GETTABLEKS                       R0 R0 K9 ["isClearButtonHovered"]
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K10 ["onClearButtonClicked"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{[1], ["isKeyHovered"] = True}]
        2 SETTABLEKS                       R0 R3 K0 ["dropdownItem"]
        4 NAMECALL                         R1 R1 K4 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["dropdownItem"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+11]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K4 [{["dropdownItem"], ["isKeyHovered"] = False}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K5 ["None"]
       12 SETTABLEKS                       R4 R3 K1 ["dropdownItem"]
       14 NAMECALL                         R1 R1 K6 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

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
       70 JUMPIFNOTEQKS                    R17 K28 ["string"] ; [+135]
       72 JUMPIFEQKS                       R0 K29 ["LoadingIndicator"] ; [+133]
       74 JUMPIFEQKS                       R0 K30 ["NoResults"] ; [+131]
       76 GETUPVAL                         R17 1
       77 JUMPIFNOT                        R17 ; [+16]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R17 R17 K31 ["createElement"]
       81 GETUPVAL                         R18 3
       82 DUPTABLE                         R19 K36 [{["Text"], ["tag"] = "auto-xy padding-x-large padding-y-medium text-caption-large content-emphasis", ["LayoutOrder"]}]
       83 LOADK                            R22 K37 ["CollaboratorTypes"]
       84 MOVE                             R23 R0
       85 NAMECALL                         R20 R6 K38 ["getText"]
       87 CALL                             R20 3 1
       88 SETTABLEKS                       R20 R19 K32 ["Text"]
       90 SETTABLEKS                       R1 R19 K35 ["LayoutOrder"]
       92 CALL                             R17 2 -1
       93 RETURN                           R17 -1
       94 GETUPVAL                         R17 4
       95 GETTABLEKS                       R17 R17 K31 ["createElement"]
       97 LOADK                            R18 K39 ["Frame"]
       98 DUPTABLE                         R19 K44 [{["Size"], ["BackgroundColor3"], ["LayoutOrder"], ["BorderSizePixel"] = 0}]
       99 GETIMPORT                        R20 K46 [UDim2.new]
      101 LOADN                            R21 0
      102 MOVE                             R22 R16
      103 LOADN                            R23 0
      104 MOVE                             R24 R10
      105 CALL                             R20 4 1
      106 SETTABLEKS                       R20 R19 K40 ["Size"]
      108 GETTABLEKS                       R20 R7 K23 ["dropDown"]
      110 GETTABLEKS                       R20 R20 K47 ["backgroundColor"]
      112 SETTABLEKS                       R20 R19 K41 ["BackgroundColor3"]
      114 SETTABLEKS                       R1 R19 K35 ["LayoutOrder"]
      116 DUPTABLE                         R20 K50 [{"CollabTypeText", "FriendsEditAccessText"}]
      117 GETUPVAL                         R21 4
      118 GETTABLEKS                       R21 R21 K31 ["createElement"]
      120 LOADK                            R22 K51 ["TextLabel"]
      121 GETUPVAL                         R23 5
      122 GETTABLEKS                       R23 R23 K52 ["Dictionary"]
      124 GETTABLEKS                       R23 R23 K53 ["join"]
      126 GETTABLEKS                       R24 R4 K4 ["searchBar"]
      128 GETTABLEKS                       R24 R24 K23 ["dropDown"]
      130 GETTABLEKS                       R24 R24 K54 ["collaboratorTypeText"]
      132 DUPTABLE                         R25 K59 [{["Text"], ["TextXAlignment"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      133 LOADK                            R28 K37 ["CollaboratorTypes"]
      134 MOVE                             R29 R0
      135 NAMECALL                         R26 R6 K38 ["getText"]
      137 CALL                             R26 3 1
      138 SETTABLEKS                       R26 R25 K32 ["Text"]
      140 GETIMPORT                        R26 K62 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R26 R25 K55 ["TextXAlignment"]
      144 GETTABLEKS                       R26 R4 K4 ["searchBar"]
      146 GETTABLEKS                       R26 R26 K63 ["collabTypeTextPosition"]
      148 SETTABLEKS                       R26 R25 K56 ["Position"]
      150 CALL                             R23 2 -1
      151 CALL                             R21 -1 1
      152 SETTABLEKS                       R21 R20 K48 ["CollabTypeText"]
      154 JUMPIF                           R15 ; [+46]
      155 JUMPIF                           R5 ; [+45]
      156 GETUPVAL                         R22 6
      157 JUMPIFNOTEQ                      R0 R22 ; [+43]
      159 GETUPVAL                         R21 4
      160 GETTABLEKS                       R21 R21 K31 ["createElement"]
      162 LOADK                            R22 K51 ["TextLabel"]
      163 GETUPVAL                         R23 5
      164 GETTABLEKS                       R23 R23 K52 ["Dictionary"]
      166 GETTABLEKS                       R23 R23 K53 ["join"]
      168 GETTABLEKS                       R24 R4 K4 ["searchBar"]
      170 GETTABLEKS                       R24 R24 K23 ["dropDown"]
      172 GETTABLEKS                       R24 R24 K54 ["collaboratorTypeText"]
      174 DUPTABLE                         R25 K59 [{["Text"], ["TextXAlignment"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      175 GETUPVAL                         R27 7
      176 JUMPIFNOT                        R27 ; [+6]
      177 LOADK                            R28 K64 ["Description"]
      178 LOADK                            R29 K65 ["ConnectionsEditAccess"]
      179 NAMECALL                         R26 R6 K38 ["getText"]
      181 CALL                             R26 3 1
      182 JUMP                             ; [+5]
      183 LOADK                            R28 K64 ["Description"]
      184 LOADK                            R29 K66 ["FriendsEditAccess"]
      185 NAMECALL                         R26 R6 K38 ["getText"]
      187 CALL                             R26 3 1
      188 SETTABLEKS                       R26 R25 K32 ["Text"]
      190 GETIMPORT                        R26 K68 [Enum.TextXAlignment.Right]
      192 SETTABLEKS                       R26 R25 K55 ["TextXAlignment"]
      194 GETTABLEKS                       R26 R7 K69 ["friendsAccessTextPosition"]
      196 SETTABLEKS                       R26 R25 K56 ["Position"]
      198 CALL                             R23 2 -1
      199 CALL                             R21 -1 1
      200 JUMPIF                           R21 ; [+1]
      201 LOADNIL                          R21
      202 SETTABLEKS                       R21 R20 K49 ["FriendsEditAccessText"]
      204 CALL                             R17 3 -1
      205 RETURN                           R17 -1
      206 JUMPIFNOTEQKS                    R0 K30 ["NoResults"] ; [+57]
      208 GETUPVAL                         R17 4
      209 GETTABLEKS                       R17 R17 K31 ["createElement"]
      211 LOADK                            R18 K51 ["TextLabel"]
      212 GETUPVAL                         R19 5
      213 GETTABLEKS                       R19 R19 K52 ["Dictionary"]
      215 GETTABLEKS                       R19 R19 K53 ["join"]
      217 GETTABLEKS                       R20 R4 K70 ["fontStyle"]
      219 GETTABLEKS                       R20 R20 K71 ["Normal"]
      221 DUPTABLE                         R21 K74 [{["Size"], ["Text"], ["TextXAlignment"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["LayoutOrder"]}]
      222 GETIMPORT                        R22 K46 [UDim2.new]
      224 LOADN                            R23 0
      225 MOVE                             R24 R16
      226 LOADN                            R25 0
      227 MOVE                             R26 R11
      228 CALL                             R22 4 1
      229 SETTABLEKS                       R22 R21 K40 ["Size"]
      231 SETTABLEKS                       R9 R21 K32 ["Text"]
      233 GETIMPORT                        R22 K62 [Enum.TextXAlignment.Left]
      235 SETTABLEKS                       R22 R21 K55 ["TextXAlignment"]
      237 GETTABLEKS                       R22 R7 K23 ["dropDown"]
      239 GETTABLEKS                       R22 R22 K47 ["backgroundColor"]
      241 SETTABLEKS                       R22 R21 K41 ["BackgroundColor3"]
      243 SETTABLEKS                       R1 R21 K35 ["LayoutOrder"]
      245 CALL                             R19 2 1
      246 DUPTABLE                         R20 K76 [{"Padding"}]
      247 GETUPVAL                         R21 4
      248 GETTABLEKS                       R21 R21 K31 ["createElement"]
      250 LOADK                            R22 K77 ["UIPadding"]
      251 DUPTABLE                         R23 K79 [{"PaddingLeft"}]
      252 GETIMPORT                        R24 K81 [UDim.new]
      254 LOADN                            R25 0
      255 MOVE                             R26 R12
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K78 ["PaddingLeft"]
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K75 ["Padding"]
      262 CALL                             R17 3 -1
      263 RETURN                           R17 -1
      264 JUMPIFNOTEQKS                    R0 K29 ["LoadingIndicator"] ; [+50]
      266 GETUPVAL                         R17 4
      267 GETTABLEKS                       R17 R17 K31 ["createElement"]
      269 LOADK                            R18 K39 ["Frame"]
      270 DUPTABLE                         R19 K82 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      271 GETIMPORT                        R20 K46 [UDim2.new]
      273 LOADN                            R21 0
      274 MOVE                             R22 R16
      275 LOADN                            R23 0
      276 MOVE                             R24 R11
      277 CALL                             R20 4 1
      278 SETTABLEKS                       R20 R19 K40 ["Size"]
      280 GETTABLEKS                       R20 R7 K23 ["dropDown"]
      282 GETTABLEKS                       R20 R20 K47 ["backgroundColor"]
      284 SETTABLEKS                       R20 R19 K41 ["BackgroundColor3"]
      286 SETTABLEKS                       R1 R19 K35 ["LayoutOrder"]
      288 DUPTABLE                         R20 K83 [{"LoadingIndicator"}]
      289 GETUPVAL                         R21 4
      290 GETTABLEKS                       R21 R21 K31 ["createElement"]
      292 GETUPVAL                         R22 8
      293 DUPTABLE                         R23 K87 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 3}]
      294 GETIMPORT                        R24 K89 [Vector2.new]
      296 LOADK                            R25 K90 [0.5]
      297 LOADK                            R26 K90 [0.5]
      298 CALL                             R24 2 1
      299 SETTABLEKS                       R24 R23 K84 ["AnchorPoint"]
      301 GETIMPORT                        R24 K46 [UDim2.new]
      303 LOADK                            R25 K90 [0.5]
      304 LOADN                            R26 0
      305 LOADK                            R27 K90 [0.5]
      306 LOADN                            R28 0
      307 CALL                             R24 4 1
      308 SETTABLEKS                       R24 R23 K56 ["Position"]
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K29 ["LoadingIndicator"]
      313 CALL                             R17 3 -1
      314 RETURN                           R17 -1
      315 GETTABLEKS                       R17 R0 K91 ["Key"]
      317 GETTABLEKS                       R18 R0 K92 ["IsFriend"]
      319 GETTABLEKS                       R20 R17 K93 ["Type"]
      321 GETUPVAL                         R21 9
      322 GETTABLEKS                       R21 R21 K94 ["UserSubjectKey"]
      324 JUMPIFEQ                         R20 R21 ; [+2]
      326 LOADB                            R19 0 +1
      327 LOADB                            R19 1
      328 GETTABLEKS                       R21 R17 K95 ["IsEligible"]
      330 NOT                              R20 R21
      331 LOADNIL                          R21
      332 JUMPIFNOT                        R20 ; [+9]
      333 GETTABLEKS                       R21 R17 K96 ["EligibilityText"]
      335 JUMPIF                           R21 ; [+6]
      336 LOADK                            R24 K97 ["SearchBar"]
      337 LOADK                            R25 K98 ["UnknownError"]
      338 NAMECALL                         R22 R6 K38 ["getText"]
      340 CALL                             R22 3 1
      341 MOVE                             R21 R22
      342 JUMPIFNOT                        R18 ; [+3]
      343 GETTABLEKS                       R22 R7 K99 ["nameHeight"]
      345 JUMP                             ; [+1]
      346 MOVE                             R22 R11
      347 LOADB                            R23 0
      348 JUMPIFNOTEQ                      R8 R17 ; [+2]
      350 NOT                              R23 R20
      351 GETUPVAL                         R24 10
      352 GETTABLEKS                       R24 R24 K18 ["new"]
      354 CALL                             R24 0 1
      355 JUMPIFNOT                        R23 ; [+7]
      356 GETTABLEKS                       R25 R7 K23 ["dropDown"]
      358 GETTABLEKS                       R25 R25 K100 ["hovered"]
      360 GETTABLEKS                       R25 R25 K47 ["backgroundColor"]
      362 JUMPIF                           R25 ; [+4]
      363 GETTABLEKS                       R25 R7 K23 ["dropDown"]
      365 GETTABLEKS                       R25 R25 K47 ["backgroundColor"]
      367 GETUPVAL                         R26 1
      368 JUMPIFNOT                        R26 ; [+195]
      369 MOVE                             R26 R20
      370 JUMPIFNOT                        R26 ; [+4]
      371 GETTABLEKS                       R26 R3 K13 ["Is17PlusGame"]
      373 JUMPIFNOT                        R26 ; [+1]
      374 MOVE                             R26 R19
      375 GETUPVAL                         R27 2
      376 GETTABLEKS                       R27 R27 K31 ["createElement"]
      378 GETUPVAL                         R28 11
      379 DUPTABLE                         R29 K103 [{["tag"] = "size-full-1800 auto-xy", ["LayoutOrder"], ["onActivated"]}]
      380 SETTABLEKS                       R1 R29 K35 ["LayoutOrder"]
      382 JUMPIF                           R20 ; [+2]
      383 MOVE                             R30 R2
      384 JUMP                             ; [+1]
      385 LOADNIL                          R30
      386 SETTABLEKS                       R30 R29 K102 ["onActivated"]
      388 DUPTABLE                         R30 K106 [{"GrayOutBox", "ItemDetails"}]
      389 JUMPIFNOT                        R20 ; [+23]
      390 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      392 JUMPIFNOT                        R32 ; [+20]
      393 GETUPVAL                         R31 2
      394 GETTABLEKS                       R31 R31 K31 ["createElement"]
      396 GETUPVAL                         R32 11
      397 DUPTABLE                         R33 K109 [{["backgroundStyle"], ["tag"] = "anchor-top-left size-full", ["LayoutOrder"]}]
      398 DUPTABLE                         R34 K113 [{["Color3"], ["Transparency"] = 0.63}]
      399 GETIMPORT                        R35 K114 [Color3.new]
      401 LOADN                            R36 0
      402 LOADN                            R37 0
      403 LOADN                            R38 0
      404 CALL                             R35 3 1
      405 SETTABLEKS                       R35 R34 K110 ["Color3"]
      407 SETTABLEKS                       R34 R33 K107 ["backgroundStyle"]
      409 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      411 CALL                             R31 2 1
      412 JUMP                             ; [+1]
      413 LOADNIL                          R31
      414 SETTABLEKS                       R31 R30 K104 ["GrayOutBox"]
      416 GETUPVAL                         R31 2
      417 GETTABLEKS                       R31 R31 K31 ["createElement"]
      419 GETUPVAL                         R32 11
      420 DUPTABLE                         R33 K116 [{["tag"] = "row gap-medium size-full padding-x-xxlarge padding-y-large", ["LayoutOrder"]}]
      421 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      423 DUPTABLE                         R34 K120 [{"Icon", "NamesAndFriendStatus", "Label"}]
      424 JUMPIFNOT                        R19 ; [+21]
      425 GETUPVAL                         R35 2
      426 GETTABLEKS                       R35 R35 K31 ["createElement"]
      428 GETUPVAL                         R36 12
      429 DUPTABLE                         R37 K123 [{"userId", "size", "LayoutOrder"}]
      430 GETTABLEKS                       R38 R17 K124 ["Id"]
      432 SETTABLEKS                       R38 R37 K121 ["userId"]
      434 GETUPVAL                         R38 13
      435 GETTABLEKS                       R38 R38 K125 ["XSmall"]
      437 SETTABLEKS                       R38 R37 K122 ["size"]
      439 NAMECALL                         R38 R24 K126 ["getNextOrder"]
      441 CALL                             R38 1 1
      442 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      444 CALL                             R35 2 1
      445 JUMP                             ; [+16]
      446 GETUPVAL                         R35 2
      447 GETTABLEKS                       R35 R35 K31 ["createElement"]
      449 GETUPVAL                         R36 11
      450 DUPTABLE                         R37 K128 [{["tag"] = "size-600-600 radius-small", ["LayoutOrder"]}]
      451 NAMECALL                         R38 R24 K126 ["getNextOrder"]
      453 CALL                             R38 1 1
      454 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      456 DUPTABLE                         R38 K129 [{"Icon"}]
      457 GETTABLEKS                       R39 R0 K117 ["Icon"]
      459 SETTABLEKS                       R39 R38 K117 ["Icon"]
      461 CALL                             R35 3 1
      462 SETTABLEKS                       R35 R34 K117 ["Icon"]
      464 GETUPVAL                         R35 2
      465 GETTABLEKS                       R35 R35 K31 ["createElement"]
      467 GETUPVAL                         R36 11
      468 DUPTABLE                         R37 K131 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
      469 NAMECALL                         R38 R24 K126 ["getNextOrder"]
      471 CALL                             R38 1 1
      472 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      474 DUPTABLE                         R38 K134 [{"PrimaryName", "AtName"}]
      475 GETUPVAL                         R39 2
      476 GETTABLEKS                       R39 R39 K31 ["createElement"]
      478 GETUPVAL                         R40 3
      479 DUPTABLE                         R41 K136 [{["Text"], ["tag"] = "auto-xy text-body-large text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
      480 GETTABLEKS                       R43 R17 K137 ["DisplayName"]
      482 JUMPIFNOT                        R43 ; [+3]
      483 GETTABLEKS                       R42 R17 K137 ["DisplayName"]
      485 JUMP                             ; [+2]
      486 GETTABLEKS                       R42 R0 K138 ["Name"]
      488 SETTABLEKS                       R42 R41 K32 ["Text"]
      490 CALL                             R39 2 1
      491 SETTABLEKS                       R39 R38 K132 ["PrimaryName"]
      493 JUMPIFNOT                        R19 ; [+13]
      494 GETUPVAL                         R39 2
      495 GETTABLEKS                       R39 R39 K31 ["createElement"]
      497 GETUPVAL                         R40 3
      498 DUPTABLE                         R41 K141 [{["Text"], ["tag"] = "auto-xy text-body-large content-default", ["LayoutOrder"] = 2}]
      499 LOADK                            R43 K142 ["@"]
      500 GETTABLEKS                       R44 R0 K138 ["Name"]
      502 CONCAT                           R42 R43 R44
      503 SETTABLEKS                       R42 R41 K32 ["Text"]
      505 CALL                             R39 2 1
      506 JUMP                             ; [+1]
      507 LOADNIL                          R39
      508 SETTABLEKS                       R39 R38 K133 ["AtName"]
      510 CALL                             R35 3 1
      511 SETTABLEKS                       R35 R34 K118 ["NamesAndFriendStatus"]
      513 JUMPIFNOT                        R26 ; [+14]
      514 GETUPVAL                         R35 2
      515 GETTABLEKS                       R35 R35 K31 ["createElement"]
      517 GETUPVAL                         R36 14
      518 DUPTABLE                         R37 K143 [{"Text", "LayoutOrder"}]
      519 SETTABLEKS                       R21 R37 K32 ["Text"]
      521 NAMECALL                         R38 R24 K126 ["getNextOrder"]
      523 CALL                             R38 1 1
      524 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      526 CALL                             R35 2 1
      527 JUMP                             ; [+29]
      528 JUMPIFNOT                        R18 ; [+27]
      529 GETUPVAL                         R35 2
      530 GETTABLEKS                       R35 R35 K31 ["createElement"]
      532 GETUPVAL                         R36 14
      533 DUPTABLE                         R37 K143 [{"Text", "LayoutOrder"}]
      534 GETUPVAL                         R39 7
      535 JUMPIFNOT                        R39 ; [+6]
      536 LOADK                            R40 K97 ["SearchBar"]
      537 LOADK                            R41 K144 ["ConnectionLabel"]
      538 NAMECALL                         R38 R6 K38 ["getText"]
      540 CALL                             R38 3 1
      541 JUMP                             ; [+5]
      542 LOADK                            R40 K97 ["SearchBar"]
      543 LOADK                            R41 K145 ["FriendLabel"]
      544 NAMECALL                         R38 R6 K38 ["getText"]
      546 CALL                             R38 3 1
      547 SETTABLEKS                       R38 R37 K32 ["Text"]
      549 NAMECALL                         R38 R24 K126 ["getNextOrder"]
      551 CALL                             R38 1 1
      552 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      554 CALL                             R35 2 1
      555 JUMP                             ; [+1]
      556 LOADNIL                          R35
      557 SETTABLEKS                       R35 R34 K119 ["Label"]
      559 CALL                             R31 3 1
      560 SETTABLEKS                       R31 R30 K105 ["ItemDetails"]
      562 CALL                             R27 3 -1
      563 RETURN                           R27 -1
      564 GETUPVAL                         R26 4
      565 GETTABLEKS                       R26 R26 K31 ["createElement"]
      567 LOADK                            R27 K146 ["ImageButton"]
      568 NEWTABLE                         R28 16 0
      570 GETIMPORT                        R29 K46 [UDim2.new]
      572 LOADN                            R30 0
      573 MOVE                             R31 R16
      574 LOADN                            R32 0
      575 MOVE                             R33 R11
      576 CALL                             R29 4 1
      577 SETTABLEKS                       R29 R28 K40 ["Size"]
      579 SETTABLEKS                       R25 R28 K41 ["BackgroundColor3"]
      581 LOADN                            R29 0
      582 SETTABLEKS                       R29 R28 K42 ["BorderSizePixel"]
      584 SETTABLEKS                       R1 R28 K35 ["LayoutOrder"]
      586 LOADB                            R29 0
      587 SETTABLEKS                       R29 R28 K147 ["AutoButtonColor"]
      589 NOT                              R29 R20
      590 SETTABLEKS                       R29 R28 K148 ["Active"]
      592 GETUPVAL                         R29 4
      593 GETTABLEKS                       R29 R29 K149 ["Event"]
      595 GETTABLEKS                       R29 R29 K150 ["Activated"]
      597 SETTABLE                         R2 R28 R29
      598 GETUPVAL                         R29 4
      599 GETTABLEKS                       R29 R29 K149 ["Event"]
      601 GETTABLEKS                       R29 R29 K151 ["MouseEnter"]
      603 NEWCLOSURE                       R30 P0
      604 CAPTURE                          UPVAL U0
      605 CAPTURE                          VAL R17
      606 SETTABLE                         R30 R28 R29
      607 GETUPVAL                         R29 4
      608 GETTABLEKS                       R29 R29 K149 ["Event"]
      610 GETTABLEKS                       R29 R29 K152 ["MouseLeave"]
      612 NEWCLOSURE                       R30 P1
      613 CAPTURE                          UPVAL U0
      614 CAPTURE                          VAL R17
      615 SETTABLE                         R30 R28 R29
      616 NEWTABLE                         R29 1 1
      618 JUMPIFNOT                        R20 ; [+28]
      619 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      621 JUMPIFNOT                        R32 ; [+25]
      622 GETUPVAL                         R31 4
      623 GETTABLEKS                       R31 R31 K31 ["createElement"]
      625 LOADK                            R32 K39 ["Frame"]
      626 DUPTABLE                         R33 K154 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 0.75, ["LayoutOrder"]}]
      627 GETIMPORT                        R34 K89 [Vector2.new]
      629 LOADN                            R35 0
      630 LOADN                            R36 0
      631 CALL                             R34 2 1
      632 SETTABLEKS                       R34 R33 K84 ["AnchorPoint"]
      634 GETIMPORT                        R34 K46 [UDim2.new]
      636 LOADN                            R35 0
      637 MOVE                             R36 R16
      638 LOADN                            R37 0
      639 MOVE                             R38 R11
      640 CALL                             R34 4 1
      641 SETTABLEKS                       R34 R33 K40 ["Size"]
      643 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      645 CALL                             R31 2 1
      646 JUMP                             ; [+1]
      647 LOADNIL                          R31
      648 SETTABLEKS                       R31 R29 K104 ["GrayOutBox"]
      650 GETUPVAL                         R30 4
      651 GETTABLEKS                       R30 R30 K31 ["createElement"]
      653 GETUPVAL                         R31 15
      654 DUPTABLE                         R32 K155 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      655 SETTABLEKS                       R1 R32 K35 ["LayoutOrder"]
      657 DUPTABLE                         R33 K159 [{"IconFrame", "NameAndFriendStatus", "RestrictionLabel"}]
      658 GETUPVAL                         R34 4
      659 GETTABLEKS                       R34 R34 K31 ["createElement"]
      661 LOADK                            R35 K39 ["Frame"]
      662 DUPTABLE                         R36 K160 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      663 NAMECALL                         R37 R24 K126 ["getNextOrder"]
      665 CALL                             R37 1 1
      666 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      668 GETIMPORT                        R37 K46 [UDim2.new]
      670 LOADN                            R38 0
      671 MOVE                             R39 R11
      672 LOADN                            R40 0
      673 MOVE                             R41 R11
      674 CALL                             R37 4 1
      675 SETTABLEKS                       R37 R36 K40 ["Size"]
      677 DUPTABLE                         R37 K162 [{"SmallIcon", "Padding"}]
      678 GETUPVAL                         R38 4
      679 GETTABLEKS                       R38 R38 K31 ["createElement"]
      681 LOADK                            R39 K39 ["Frame"]
      682 DUPTABLE                         R40 K163 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      683 GETIMPORT                        R41 K89 [Vector2.new]
      685 LOADK                            R42 K90 [0.5]
      686 LOADK                            R43 K90 [0.5]
      687 CALL                             R41 2 1
      688 SETTABLEKS                       R41 R40 K84 ["AnchorPoint"]
      690 GETIMPORT                        R41 K46 [UDim2.new]
      692 LOADK                            R42 K90 [0.5]
      693 LOADN                            R43 0
      694 LOADK                            R44 K90 [0.5]
      695 LOADN                            R45 0
      696 CALL                             R41 4 1
      697 SETTABLEKS                       R41 R40 K56 ["Position"]
      699 GETIMPORT                        R41 K46 [UDim2.new]
      701 LOADN                            R42 0
      702 GETTABLEKS                       R43 R7 K164 ["thumbnailSize"]
      704 LOADN                            R44 0
      705 GETTABLEKS                       R45 R7 K164 ["thumbnailSize"]
      707 CALL                             R41 4 1
      708 SETTABLEKS                       R41 R40 K40 ["Size"]
      710 SETTABLEKS                       R25 R40 K41 ["BackgroundColor3"]
      712 DUPTABLE                         R41 K129 [{"Icon"}]
      713 GETTABLEKS                       R42 R0 K117 ["Icon"]
      715 SETTABLEKS                       R42 R41 K117 ["Icon"]
      717 CALL                             R38 3 1
      718 SETTABLEKS                       R38 R37 K161 ["SmallIcon"]
      720 GETUPVAL                         R38 4
      721 GETTABLEKS                       R38 R38 K31 ["createElement"]
      723 LOADK                            R39 K77 ["UIPadding"]
      724 DUPTABLE                         R40 K79 [{"PaddingLeft"}]
      725 GETIMPORT                        R41 K81 [UDim.new]
      727 LOADN                            R42 0
      728 GETTABLEKS                       R43 R7 K165 ["thumbnailPaddingLeft"]
      730 CALL                             R41 2 1
      731 SETTABLEKS                       R41 R40 K78 ["PaddingLeft"]
      733 CALL                             R38 2 1
      734 SETTABLEKS                       R38 R37 K75 ["Padding"]
      736 CALL                             R34 3 1
      737 SETTABLEKS                       R34 R33 K156 ["IconFrame"]
      739 GETUPVAL                         R34 4
      740 GETTABLEKS                       R34 R34 K31 ["createElement"]
      742 LOADK                            R35 K39 ["Frame"]
      743 DUPTABLE                         R36 K166 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      744 NAMECALL                         R37 R24 K126 ["getNextOrder"]
      746 CALL                             R37 1 1
      747 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      749 GETIMPORT                        R37 K46 [UDim2.new]
      751 LOADN                            R38 0
      752 GETTABLEKS                       R39 R7 K167 ["nameLabelWidth"]
      754 LOADN                            R40 1
      755 LOADN                            R41 0
      756 CALL                             R37 4 1
      757 SETTABLEKS                       R37 R36 K40 ["Size"]
      759 DUPTABLE                         R37 K171 [{"Layout", "TextFrame", "FriendFrame"}]
      760 GETUPVAL                         R38 4
      761 GETTABLEKS                       R38 R38 K31 ["createElement"]
      763 LOADK                            R39 K172 ["UIListLayout"]
      764 DUPTABLE                         R40 K175 [{"FillDirection", "SortOrder", "Padding"}]
      765 GETIMPORT                        R41 K177 [Enum.FillDirection.Vertical]
      767 SETTABLEKS                       R41 R40 K173 ["FillDirection"]
      769 GETIMPORT                        R41 K178 [Enum.SortOrder.LayoutOrder]
      771 SETTABLEKS                       R41 R40 K174 ["SortOrder"]
      773 GETIMPORT                        R41 K81 [UDim.new]
      775 LOADN                            R42 0
      776 LOADN                            R43 0
      777 CALL                             R41 2 1
      778 SETTABLEKS                       R41 R40 K75 ["Padding"]
      780 CALL                             R38 2 1
      781 SETTABLEKS                       R38 R37 K168 ["Layout"]
      783 GETUPVAL                         R38 4
      784 GETTABLEKS                       R38 R38 K31 ["createElement"]
      786 LOADK                            R39 K51 ["TextLabel"]
      787 GETUPVAL                         R40 5
      788 GETTABLEKS                       R40 R40 K52 ["Dictionary"]
      790 GETTABLEKS                       R40 R40 K53 ["join"]
      792 GETTABLEKS                       R41 R4 K70 ["fontStyle"]
      794 GETTABLEKS                       R41 R41 K71 ["Normal"]
      796 DUPTABLE                         R42 K182 [{["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["ClipsDescendants"] = True, ["LayoutOrder"] = 1, ["BorderSizePixel"] = 0}]
      797 GETIMPORT                        R43 K46 [UDim2.new]
      799 LOADN                            R44 0
      800 GETTABLEKS                       R45 R7 K167 ["nameLabelWidth"]
      802 LOADN                            R46 0
      803 MOVE                             R47 R22
      804 CALL                             R43 4 1
      805 SETTABLEKS                       R43 R42 K40 ["Size"]
      807 GETTABLEKS                       R43 R0 K138 ["Name"]
      809 SETTABLEKS                       R43 R42 K32 ["Text"]
      811 GETIMPORT                        R43 K62 [Enum.TextXAlignment.Left]
      813 SETTABLEKS                       R43 R42 K55 ["TextXAlignment"]
      815 GETIMPORT                        R43 K184 [Enum.TextYAlignment.Center]
      817 SETTABLEKS                       R43 R42 K179 ["TextYAlignment"]
      819 JUMPIFNOT                        R23 ; [+7]
      820 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      822 GETTABLEKS                       R43 R43 K100 ["hovered"]
      824 GETTABLEKS                       R43 R43 K185 ["displayText"]
      826 JUMPIF                           R43 ; [+4]
      827 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      829 GETTABLEKS                       R43 R43 K185 ["displayText"]
      831 SETTABLEKS                       R43 R42 K180 ["TextColor3"]
      833 CALL                             R40 2 1
      834 DUPTABLE                         R41 K76 [{"Padding"}]
      835 GETUPVAL                         R42 4
      836 GETTABLEKS                       R42 R42 K31 ["createElement"]
      838 LOADK                            R43 K77 ["UIPadding"]
      839 DUPTABLE                         R44 K79 [{"PaddingLeft"}]
      840 GETIMPORT                        R45 K81 [UDim.new]
      842 LOADN                            R46 0
      843 GETTABLEKS                       R47 R7 K186 ["renderItemTextPadding"]
      845 CALL                             R45 2 1
      846 SETTABLEKS                       R45 R44 K78 ["PaddingLeft"]
      848 CALL                             R42 2 1
      849 SETTABLEKS                       R42 R41 K75 ["Padding"]
      851 CALL                             R38 3 1
      852 SETTABLEKS                       R38 R37 K169 ["TextFrame"]
      854 JUMPIFNOT                        R18 ; [+146]
      855 GETUPVAL                         R38 4
      856 GETTABLEKS                       R38 R38 K31 ["createElement"]
      858 GETUPVAL                         R39 15
      859 DUPTABLE                         R40 K187 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      860 DUPTABLE                         R41 K190 [{"Padding", "FriendImageLabel", "FriendTextLabel"}]
      861 GETUPVAL                         R42 4
      862 GETTABLEKS                       R42 R42 K31 ["createElement"]
      864 LOADK                            R43 K77 ["UIPadding"]
      865 DUPTABLE                         R44 K192 [{"PaddingLeft", "PaddingBottom"}]
      866 GETIMPORT                        R45 K81 [UDim.new]
      868 LOADN                            R46 0
      869 GETTABLEKS                       R47 R7 K186 ["renderItemTextPadding"]
      871 CALL                             R45 2 1
      872 SETTABLEKS                       R45 R44 K78 ["PaddingLeft"]
      874 GETIMPORT                        R45 K81 [UDim.new]
      876 LOADN                            R46 0
      877 GETTABLEKS                       R47 R7 K186 ["renderItemTextPadding"]
      879 CALL                             R45 2 1
      880 SETTABLEKS                       R45 R44 K191 ["PaddingBottom"]
      882 CALL                             R42 2 1
      883 SETTABLEKS                       R42 R41 K75 ["Padding"]
      885 GETUPVAL                         R42 4
      886 GETTABLEKS                       R42 R42 K31 ["createElement"]
      888 LOADK                            R43 K193 ["ImageLabel"]
      889 DUPTABLE                         R44 K195 [{["Size"], ["Image"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      890 GETIMPORT                        R45 K46 [UDim2.new]
      892 LOADN                            R46 0
      893 GETTABLEKS                       R47 R7 K196 ["friendIcon"]
      895 GETTABLEKS                       R47 R47 K22 ["Width"]
      897 LOADN                            R48 0
      898 GETTABLEKS                       R49 R7 K196 ["friendIcon"]
      900 GETTABLEKS                       R49 R49 K197 ["Height"]
      902 CALL                             R45 4 1
      903 SETTABLEKS                       R45 R44 K40 ["Size"]
      905 GETTABLEKS                       R45 R7 K196 ["friendIcon"]
      907 GETTABLEKS                       R45 R45 K194 ["Image"]
      909 SETTABLEKS                       R45 R44 K194 ["Image"]
      911 CALL                             R42 2 1
      912 SETTABLEKS                       R42 R41 K188 ["FriendImageLabel"]
      914 GETUPVAL                         R42 4
      915 GETTABLEKS                       R42 R42 K31 ["createElement"]
      917 LOADK                            R43 K51 ["TextLabel"]
      918 GETUPVAL                         R44 5
      919 GETTABLEKS                       R44 R44 K52 ["Dictionary"]
      921 GETTABLEKS                       R44 R44 K53 ["join"]
      923 GETTABLEKS                       R45 R4 K70 ["fontStyle"]
      925 GETTABLEKS                       R45 R45 K198 ["Subtext"]
      927 DUPTABLE                         R46 K200 [{["Size"], ["AutomaticSize"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["BorderSizePixel"] = 0}]
      928 GETIMPORT                        R47 K46 [UDim2.new]
      930 LOADN                            R48 1
      931 LOADN                            R49 0
      932 LOADN                            R50 0
      933 GETTABLEKS                       R51 R7 K196 ["friendIcon"]
      935 GETTABLEKS                       R51 R51 K201 ["LabelHeight"]
      937 CALL                             R47 4 1
      938 SETTABLEKS                       R47 R46 K40 ["Size"]
      940 GETIMPORT                        R47 K202 [Enum.AutomaticSize.X]
      942 SETTABLEKS                       R47 R46 K199 ["AutomaticSize"]
      944 GETUPVAL                         R48 7
      945 JUMPIFNOT                        R48 ; [+6]
      946 LOADK                            R49 K97 ["SearchBar"]
      947 LOADK                            R50 K144 ["ConnectionLabel"]
      948 NAMECALL                         R47 R6 K38 ["getText"]
      950 CALL                             R47 3 1
      951 JUMP                             ; [+5]
      952 LOADK                            R49 K97 ["SearchBar"]
      953 LOADK                            R50 K145 ["FriendLabel"]
      954 NAMECALL                         R47 R6 K38 ["getText"]
      956 CALL                             R47 3 1
      957 SETTABLEKS                       R47 R46 K32 ["Text"]
      959 GETIMPORT                        R47 K62 [Enum.TextXAlignment.Left]
      961 SETTABLEKS                       R47 R46 K55 ["TextXAlignment"]
      963 JUMPIFNOT                        R23 ; [+7]
      964 GETTABLEKS                       R47 R7 K23 ["dropDown"]
      966 GETTABLEKS                       R47 R47 K100 ["hovered"]
      968 GETTABLEKS                       R47 R47 K185 ["displayText"]
      970 JUMPIF                           R47 ; [+4]
      971 GETTABLEKS                       R47 R7 K23 ["dropDown"]
      973 GETTABLEKS                       R47 R47 K185 ["displayText"]
      975 SETTABLEKS                       R47 R46 K180 ["TextColor3"]
      977 CALL                             R44 2 1
      978 DUPTABLE                         R45 K76 [{"Padding"}]
      979 GETUPVAL                         R46 4
      980 GETTABLEKS                       R46 R46 K31 ["createElement"]
      982 LOADK                            R47 K77 ["UIPadding"]
      983 DUPTABLE                         R48 K79 [{"PaddingLeft"}]
      984 GETIMPORT                        R49 K81 [UDim.new]
      986 LOADN                            R50 0
      987 GETTABLEKS                       R52 R7 K186 ["renderItemTextPadding"]
      989 DIVK                             R51 R52 K140 [2]
      990 CALL                             R49 2 1
      991 SETTABLEKS                       R49 R48 K78 ["PaddingLeft"]
      993 CALL                             R46 2 1
      994 SETTABLEKS                       R46 R45 K75 ["Padding"]
      996 CALL                             R42 3 1
      997 SETTABLEKS                       R42 R41 K189 ["FriendTextLabel"]
      999 CALL                             R38 3 1
     1000 JUMP                             ; [+1]
     1001 LOADNIL                          R38
     1002 SETTABLEKS                       R38 R37 K170 ["FriendFrame"]
     1004 CALL                             R34 3 1
     1005 SETTABLEKS                       R34 R33 K157 ["NameAndFriendStatus"]
     1007 JUMPIFNOT                        R20 ; [+58]
     1008 GETTABLEKS                       R35 R3 K13 ["Is17PlusGame"]
     1010 JUMPIFNOT                        R35 ; [+55]
     1011 JUMPIFNOT                        R19 ; [+54]
     1012 GETUPVAL                         R34 4
     1013 GETTABLEKS                       R34 R34 K31 ["createElement"]
     1015 LOADK                            R35 K51 ["TextLabel"]
     1016 GETUPVAL                         R36 5
     1017 GETTABLEKS                       R36 R36 K52 ["Dictionary"]
     1019 GETTABLEKS                       R36 R36 K53 ["join"]
     1021 GETTABLEKS                       R37 R4 K70 ["fontStyle"]
     1023 GETTABLEKS                       R37 R37 K71 ["Normal"]
     1025 DUPTABLE                         R38 K203 [{["Size"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["BorderSizePixel"] = 0}]
     1026 GETIMPORT                        R39 K46 [UDim2.new]
     1028 LOADN                            R40 0
     1029 GETTABLEKS                       R41 R7 K23 ["dropDown"]
     1031 GETTABLEKS                       R41 R41 K204 ["eligibilityLabelWidth"]
     1033 LOADN                            R42 0
     1034 MOVE                             R43 R11
     1035 CALL                             R39 4 1
     1036 SETTABLEKS                       R39 R38 K40 ["Size"]
     1038 SETTABLEKS                       R21 R38 K32 ["Text"]
     1040 GETIMPORT                        R39 K62 [Enum.TextXAlignment.Left]
     1042 SETTABLEKS                       R39 R38 K55 ["TextXAlignment"]
     1044 JUMPIFNOT                        R23 ; [+7]
     1045 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1047 GETTABLEKS                       R39 R39 K100 ["hovered"]
     1049 GETTABLEKS                       R39 R39 K185 ["displayText"]
     1051 JUMPIF                           R39 ; [+4]
     1052 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1054 GETTABLEKS                       R39 R39 K185 ["displayText"]
     1056 SETTABLEKS                       R39 R38 K180 ["TextColor3"]
     1058 NAMECALL                         R39 R24 K126 ["getNextOrder"]
     1060 CALL                             R39 1 1
     1061 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
     1063 CALL                             R36 2 -1
     1064 CALL                             R34 -1 1
     1065 JUMP                             ; [+1]
     1066 LOADNIL                          R34
     1067 SETTABLEKS                       R34 R33 K158 ["RestrictionLabel"]
     1069 CALL                             R30 3 -1
     1070 SETLIST                          R29 R30 -1 [1]
     1072 CALL                             R26 3 -1
     1073 RETURN                           R26 -1

PROTO_20:
        0 DUPTABLE                         R1 K14 [{[1] = "", ["isFocused"] = False, ["isContainerHovered"] = False, ["isClearButtonHovered"] = False, ["isKeyHovered"] = False, ["isLengthExceeded"], ["showDropdown"] = False, ["dropdownItem"] = , ["lastDelay"], ["lastResults"], ["mergedItems"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K15 ["fflagManageCollaboratorsSearchTermLengthLimit"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADB                            R2 0
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K7 ["isLengthExceeded"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K11 ["lastDelay"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K12 ["lastResults"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K13 ["mergedItems"]
       22 SETTABLEKS                       R1 R0 K16 ["state"]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K17 ["createRef"]
       27 CALL                             R1 0 1
       28 SETTABLEKS                       R1 R0 K18 ["textBoxRef"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K19 ["requestSearch"]
       35 NEWCLOSURE                       R1 P1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K20 ["onContainerHovered"]
       39 NEWCLOSURE                       R1 P2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K21 ["onContainerHoverEnded"]
       43 NEWCLOSURE                       R1 P3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R1 R0 K22 ["onTextChanged"]
       49 NEWCLOSURE                       R1 P4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U0
       53 SETTABLEKS                       R1 R0 K23 ["onTextBoxFocused"]
       55 NEWCLOSURE                       R1 P5
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K24 ["onTextBoxFocusLost"]
       60 NEWCLOSURE                       R1 P6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K25 ["onClearButtonHovered"]
       64 NEWCLOSURE                       R1 P7
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K26 ["onClearButtonHoverEnded"]
       68 NEWCLOSURE                       R1 P8
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K27 ["onClearButtonClicked"]
       72 NEWCLOSURE                       R1 P9
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K28 ["onItemClicked"]
       76 NEWCLOSURE                       R1 P10
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R1 R0 K8 ["showDropdown"]
       80 NEWCLOSURE                       R1 P11
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U1
       83 SETTABLEKS                       R1 R0 K29 ["hideDropdown"]
       85 NEWCLOSURE                       R1 P12
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R1 R0 K30 ["onKeyMouseEnter"]
       89 NEWCLOSURE                       R1 P13
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U1
       92 SETTABLEKS                       R1 R0 K31 ["onKeyMouseLeave"]
       94 NEWCLOSURE                       R1 P14
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          UPVAL U14
      107 CAPTURE                          UPVAL U15
      108 CAPTURE                          UPVAL U16
      109 CAPTURE                          UPVAL U17
      110 CAPTURE                          UPVAL U18
      111 SETTABLEKS                       R1 R0 K32 ["onRenderItem"]
      113 GETTABLEKS                       R1 R0 K33 ["props"]
      115 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      117 JUMPIFNOT                        R1 ; [+6]
      118 GETTABLEKS                       R1 R0 K33 ["props"]
      120 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      122 LOADK                            R2 K1 [""]
      123 CALL                             R1 1 0
      124 RETURN                           R0 0

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
       59 GETTABLEKS                       R12 R1 K17 ["DefaultText"]
       61 GETTABLEKS                       R13 R1 K18 ["ErrorText"]
       63 GETTABLEKS                       R14 R1 K19 ["ErrorSubtitle"]
       65 GETTABLEKS                       R15 R1 K20 ["Localization"]
       67 GETUPVAL                         R17 0
       68 GETTABLEKS                       R17 R17 K21 ["fflagManageCollaboratorsSearchTermLengthLimit"]
       70 JUMPIFNOT                        R17 ; [+17]
       71 GETTABLEKS                       R17 R4 K22 ["isLengthExceeded"]
       73 JUMPIFNOT                        R17 ; [+14]
       74 LOADK                            R18 K23 ["SearchBar"]
       75 LOADK                            R19 K24 ["LengthExceeded"]
       76 DUPTABLE                         R20 K26 [{"maxLength"}]
       77 LOADN                            R22 26
       78 FASTCALL1                        TOSTRING R22 ; [+2]
       79 GETIMPORT                        R21 K28 [tostring]
       81 CALL                             R21 1 1
       82 SETTABLEKS                       R21 R20 K25 ["maxLength"]
       84 NAMECALL                         R16 R15 K29 ["getText"]
       86 CALL                             R16 4 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R16
       89 LOADNIL                          R17
       90 GETUPVAL                         R18 0
       91 GETTABLEKS                       R18 R18 K30 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       93 JUMPIFNOT                        R18 ; [+1]
       94 JUMPIF                           R14 ; [+1]
       95 JUMPIFNOT                        R16 ; [+3]
       96 GETTABLEKS                       R17 R11 K31 ["borderError"]
       98 JUMP                             ; [+10]
       99 JUMPIFNOT                        R7 ; [+3]
      100 GETTABLEKS                       R17 R11 K32 ["borderSelected"]
      102 JUMP                             ; [+6]
      103 JUMPIFNOT                        R8 ; [+3]
      104 GETTABLEKS                       R17 R11 K33 ["borderHover"]
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R17 R11 K34 ["border"]
      109 GETUPVAL                         R18 0
      110 GETTABLEKS                       R18 R18 K21 ["fflagManageCollaboratorsSearchTermLengthLimit"]
      112 JUMPIFNOT                        R18 ; [+2]
      113 GETTABLEKS                       R18 R4 K22 ["isLengthExceeded"]
      115 GETUPVAL                         R20 1
      116 JUMPIFNOT                        R20 ; [+5]
      117 GETTABLEKS                       R19 R4 K35 ["showDropdown"]
      119 JUMPIFNOT                        R19 ; [+13]
      120 NOT                              R19 R18
      121 JUMP                             ; [+11]
      122 GETTABLEKS                       R19 R4 K35 ["showDropdown"]
      124 JUMPIFNOT                        R19 ; [+8]
      125 LOADB                            R19 0
      126 GETTABLEKS                       R20 R0 K3 ["state"]
      128 GETTABLEKS                       R20 R20 K6 ["text"]
      130 JUMPIFEQKS                       R20 K36 [""] ; [+2]
      132 NOT                              R19 R18
      133 GETTABLEKS                       R20 R0 K37 ["textBoxRef"]
      135 JUMPIFNOT                        R20 ; [+4]
      136 GETTABLEKS                       R20 R0 K37 ["textBoxRef"]
      138 GETTABLEKS                       R20 R20 K38 ["current"]
      140 JUMPIFNOT                        R20 ; [+2]
      141 GETTABLEKS                       R20 R20 K39 ["Parent"]
      143 LOADNIL                          R21
      144 JUMPIFNOT                        R20 ; [+17]
      145 GETTABLEKS                       R22 R20 K40 ["AbsolutePosition"]
      147 GETTABLEKS                       R23 R20 K41 ["AbsoluteSize"]
      149 ADD                              R24 R22 R23
      150 GETIMPORT                        R25 K44 [Rect.new]
      152 GETTABLEKS                       R26 R22 K45 ["X"]
      154 GETTABLEKS                       R27 R22 K46 ["Y"]
      156 GETTABLEKS                       R28 R24 K45 ["X"]
      158 GETTABLEKS                       R29 R24 K46 ["Y"]
      160 CALL                             R25 4 1
      161 MOVE                             R21 R25
      162 GETTABLEKS                       R22 R1 K47 ["Results"]
      164 JUMPIF                           R22 ; [+2]
      165 NEWTABLE                         R22 0 0
      167 GETTABLEKS                       R23 R4 K48 ["lastResults"]
      169 JUMPIFEQ                         R23 R22 ; [+9]
      171 MOVE                             R25 R22
      172 NAMECALL                         R23 R0 K49 ["mergeResultsTable"]
      174 CALL                             R23 2 1
      175 SETTABLEKS                       R23 R4 K50 ["mergedItems"]
      177 SETTABLEKS                       R22 R4 K48 ["lastResults"]
      179 GETUPVAL                         R23 2
      180 GETTABLEKS                       R23 R23 K51 ["createElement"]
      182 GETUPVAL                         R24 3
      183 DUPTABLE                         R25 K54 [{["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      184 SETTABLEKS                       R5 R25 K5 ["LayoutOrder"]
      186 DUPTABLE                         R26 K57 [{"ErrorLabel", "Background"}]
      187 GETUPVAL                         R28 0
      188 GETTABLEKS                       R28 R28 K30 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      190 JUMPIFNOT                        R28 ; [+1]
      191 JUMPIF                           R14 ; [+2]
      192 MOVE                             R27 R16
      193 JUMPIFNOT                        R27 ; [+56]
      194 GETUPVAL                         R27 2
      195 GETTABLEKS                       R27 R27 K51 ["createElement"]
      197 LOADK                            R28 K58 ["TextLabel"]
      198 GETUPVAL                         R29 4
      199 GETTABLEKS                       R29 R29 K59 ["Dictionary"]
      201 GETTABLEKS                       R29 R29 K60 ["join"]
      203 GETTABLEKS                       R30 R2 K61 ["fontStyle"]
      205 GETTABLEKS                       R30 R30 K62 ["Subtext"]
      207 DUPTABLE                         R31 K69 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"], ["Text"], ["TextColor3"], ["TextXAlignment"], ["TextTruncate"]}]
      208 GETIMPORT                        R32 K71 [UDim2.new]
      210 LOADN                            R33 1
      211 LOADN                            R34 0
      212 LOADN                            R35 0
      213 LOADN                            R36 20
      214 CALL                             R32 4 1
      215 SETTABLEKS                       R32 R31 K64 ["Size"]
      217 OR                               R32 R14 R16
      218 SETTABLEKS                       R32 R31 K65 ["Text"]
      220 GETTABLEKS                       R32 R11 K31 ["borderError"]
      222 SETTABLEKS                       R32 R31 K66 ["TextColor3"]
      224 GETIMPORT                        R32 K74 [Enum.TextXAlignment.Left]
      226 SETTABLEKS                       R32 R31 K67 ["TextXAlignment"]
      228 GETIMPORT                        R32 K76 [Enum.TextTruncate.AtEnd]
      230 SETTABLEKS                       R32 R31 K68 ["TextTruncate"]
      232 CALL                             R29 2 1
      233 DUPTABLE                         R30 K78 [{"Padding"}]
      234 GETUPVAL                         R31 2
      235 GETTABLEKS                       R31 R31 K51 ["createElement"]
      237 LOADK                            R32 K79 ["UIPadding"]
      238 DUPTABLE                         R33 K81 [{"PaddingTop"}]
      239 GETIMPORT                        R34 K83 [UDim.new]
      241 LOADN                            R35 0
      242 LOADN                            R36 4
      243 CALL                             R34 2 1
      244 SETTABLEKS                       R34 R33 K80 ["PaddingTop"]
      246 CALL                             R31 2 1
      247 SETTABLEKS                       R31 R30 K77 ["Padding"]
      249 CALL                             R27 3 1
      250 SETTABLEKS                       R27 R26 K55 ["ErrorLabel"]
      252 GETUPVAL                         R27 2
      253 GETTABLEKS                       R27 R27 K51 ["createElement"]
      255 GETUPVAL                         R28 5
      256 NEWTABLE                         R29 8 0
      258 LOADN                            R30 1
      259 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      261 GETUPVAL                         R30 6
      262 GETTABLEKS                       R30 R30 K84 ["ROUNDED_BORDER_IMAGE"]
      264 SETTABLEKS                       R30 R29 K85 ["Image"]
      266 SETTABLEKS                       R17 R29 K86 ["ImageColor3"]
      268 GETIMPORT                        R30 K89 [Enum.ScaleType.Slice]
      270 SETTABLEKS                       R30 R29 K87 ["ScaleType"]
      272 GETUPVAL                         R30 6
      273 GETTABLEKS                       R30 R30 K90 ["ROUNDED_FRAME_SLICE"]
      275 SETTABLEKS                       R30 R29 K91 ["SliceCenter"]
      277 GETUPVAL                         R30 2
      278 GETTABLEKS                       R30 R30 K92 ["Event"]
      280 GETTABLEKS                       R30 R30 K93 ["MouseEnter"]
      282 GETTABLEKS                       R31 R0 K94 ["onContainerHovered"]
      284 SETTABLE                         R31 R29 R30
      285 GETUPVAL                         R30 2
      286 GETTABLEKS                       R30 R30 K92 ["Event"]
      288 GETTABLEKS                       R30 R30 K95 ["MouseMoved"]
      290 GETTABLEKS                       R31 R0 K94 ["onContainerHovered"]
      292 SETTABLE                         R31 R29 R30
      293 GETUPVAL                         R30 2
      294 GETTABLEKS                       R30 R30 K92 ["Event"]
      296 GETTABLEKS                       R30 R30 K96 ["MouseLeave"]
      298 GETTABLEKS                       R31 R0 K97 ["onContainerHoverEnded"]
      300 SETTABLE                         R31 R29 R30
      301 DUPTABLE                         R30 K100 [{"Padding", "TextBox", "ClearButtonFrame"}]
      302 GETUPVAL                         R31 2
      303 GETTABLEKS                       R31 R31 K51 ["createElement"]
      305 LOADK                            R32 K79 ["UIPadding"]
      306 DUPTABLE                         R33 K102 [{"PaddingLeft"}]
      307 GETIMPORT                        R34 K83 [UDim.new]
      309 LOADN                            R35 0
      310 LOADN                            R36 12
      311 CALL                             R34 2 1
      312 SETTABLEKS                       R34 R33 K101 ["PaddingLeft"]
      314 CALL                             R31 2 1
      315 SETTABLEKS                       R31 R30 K77 ["Padding"]
      317 GETUPVAL                         R31 2
      318 GETTABLEKS                       R31 R31 K51 ["createElement"]
      320 LOADK                            R32 K98 ["TextBox"]
      321 GETUPVAL                         R33 4
      322 GETTABLEKS                       R33 R33 K59 ["Dictionary"]
      324 GETTABLEKS                       R33 R33 K60 ["join"]
      326 GETTABLEKS                       R34 R2 K61 ["fontStyle"]
      328 GETTABLEKS                       R34 R34 K103 ["Normal"]
      330 NEWTABLE                         R35 16 0
      332 LOADN                            R36 1
      333 SETTABLEKS                       R36 R35 K5 ["LayoutOrder"]
      335 GETIMPORT                        R36 K71 [UDim2.new]
      337 LOADN                            R37 1
      338 GETTABLEKS                       R39 R11 K104 ["searchBarHeight"]
      340 MINUS                            R38 R39
      341 LOADN                            R39 0
      342 GETTABLEKS                       R40 R11 K104 ["searchBarHeight"]
      344 CALL                             R36 4 1
      345 SETTABLEKS                       R36 R35 K64 ["Size"]
      347 LOADN                            R36 1
      348 SETTABLEKS                       R36 R35 K52 ["BackgroundTransparency"]
      350 LOADB                            R36 1
      351 SETTABLEKS                       R36 R35 K105 ["ClipsDescendants"]
      353 LOADB                            R36 0
      354 SETTABLEKS                       R36 R35 K106 ["ClearTextOnFocus"]
      356 GETIMPORT                        R36 K74 [Enum.TextXAlignment.Left]
      358 SETTABLEKS                       R36 R35 K67 ["TextXAlignment"]
      360 GETTABLEKS                       R37 R1 K8 ["Enabled"]
      362 JUMPIFNOT                        R37 ; [+2]
      363 MOVE                             R36 R6
      364 JUMPIF                           R36 ; [+1]
      365 LOADK                            R36 K36 [""]
      366 SETTABLEKS                       R36 R35 K65 ["Text"]
      368 GETTABLEKS                       R36 R1 K8 ["Enabled"]
      370 SETTABLEKS                       R36 R35 K107 ["TextEditable"]
      372 OR                               R36 R13 R12
      373 SETTABLEKS                       R36 R35 K108 ["PlaceholderText"]
      375 JUMPIFNOT                        R13 ; [+3]
      376 GETTABLEKS                       R36 R2 K109 ["warningColor"]
      378 JUMPIF                           R36 ; [+2]
      379 GETTABLEKS                       R36 R11 K110 ["placeholderText"]
      381 SETTABLEKS                       R36 R35 K111 ["PlaceholderColor3"]
      383 GETUPVAL                         R36 2
      384 GETTABLEKS                       R36 R36 K112 ["Ref"]
      386 GETTABLEKS                       R37 R0 K37 ["textBoxRef"]
      388 SETTABLE                         R37 R35 R36
      389 GETUPVAL                         R36 2
      390 GETTABLEKS                       R36 R36 K113 ["Change"]
      392 GETTABLEKS                       R36 R36 K65 ["Text"]
      394 GETTABLEKS                       R37 R0 K114 ["onTextChanged"]
      396 SETTABLE                         R37 R35 R36
      397 GETUPVAL                         R36 2
      398 GETTABLEKS                       R36 R36 K92 ["Event"]
      400 GETTABLEKS                       R36 R36 K115 ["Focused"]
      402 NEWCLOSURE                       R37 P0
      403 CAPTURE                          VAL R0
      404 CAPTURE                          VAL R1
      405 SETTABLE                         R37 R35 R36
      406 GETUPVAL                         R36 2
      407 GETTABLEKS                       R36 R36 K92 ["Event"]
      409 GETTABLEKS                       R36 R36 K116 ["FocusLost"]
      411 GETTABLEKS                       R37 R0 K117 ["onTextBoxFocusLost"]
      413 SETTABLE                         R37 R35 R36
      414 CALL                             R33 2 1
      415 DUPTABLE                         R34 K119 [{"Dropdown"}]
      416 MOVE                             R35 R20
      417 JUMPIFNOT                        R35 ; [+37]
      418 GETUPVAL                         R35 2
      419 GETTABLEKS                       R35 R35 K51 ["createElement"]
      421 GETUPVAL                         R36 7
      422 DUPTABLE                         R37 K129 [{["Hide"], ["Items"], ["OnFocusLost"], ["OnItemActivated"], ["OnRenderItem"], ["Style"] = "Search", ["Width"], ["MaxHeight"]}]
      423 NOT                              R38 R19
      424 SETTABLEKS                       R38 R37 K120 ["Hide"]
      426 GETTABLEKS                       R38 R0 K3 ["state"]
      428 GETTABLEKS                       R38 R38 K50 ["mergedItems"]
      430 SETTABLEKS                       R38 R37 K121 ["Items"]
      432 GETTABLEKS                       R38 R0 K130 ["hideDropdown"]
      434 SETTABLEKS                       R38 R37 K122 ["OnFocusLost"]
      436 GETTABLEKS                       R38 R0 K131 ["onItemClicked"]
      438 SETTABLEKS                       R38 R37 K123 ["OnItemActivated"]
      440 GETTABLEKS                       R38 R0 K132 ["onRenderItem"]
      442 SETTABLEKS                       R38 R37 K124 ["OnRenderItem"]
      444 GETTABLEKS                       R38 R21 K127 ["Width"]
      446 SETTABLEKS                       R38 R37 K127 ["Width"]
      448 GETTABLEKS                       R38 R11 K133 ["dropDown"]
      450 GETTABLEKS                       R38 R38 K134 ["maxHeight"]
      452 SETTABLEKS                       R38 R37 K128 ["MaxHeight"]
      454 CALL                             R35 2 1
      455 SETTABLEKS                       R35 R34 K118 ["Dropdown"]
      457 CALL                             R31 3 1
      458 SETTABLEKS                       R31 R30 K98 ["TextBox"]
      460 GETUPVAL                         R31 2
      461 GETTABLEKS                       R31 R31 K51 ["createElement"]
      463 LOADK                            R32 K135 ["Frame"]
      464 DUPTABLE                         R33 K136 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"]}]
      465 GETIMPORT                        R34 K71 [UDim2.new]
      467 LOADN                            R35 0
      468 GETTABLEKS                       R36 R11 K104 ["searchBarHeight"]
      470 LOADN                            R37 0
      471 GETTABLEKS                       R38 R11 K104 ["searchBarHeight"]
      473 CALL                             R34 4 1
      474 SETTABLEKS                       R34 R33 K64 ["Size"]
      476 DUPTABLE                         R34 K138 [{"ClearButton"}]
      477 GETUPVAL                         R35 2
      478 GETTABLEKS                       R35 R35 K51 ["createElement"]
      480 LOADK                            R36 K139 ["ImageButton"]
      481 NEWTABLE                         R37 16 0
      483 GETIMPORT                        R38 K141 [Vector2.new]
      485 LOADK                            R39 K142 [0.5]
      486 LOADK                            R40 K142 [0.5]
      487 CALL                             R38 2 1
      488 SETTABLEKS                       R38 R37 K143 ["AnchorPoint"]
      490 GETIMPORT                        R38 K71 [UDim2.new]
      492 LOADK                            R39 K142 [0.5]
      493 LOADN                            R40 0
      494 LOADK                            R41 K142 [0.5]
      495 LOADN                            R42 0
      496 CALL                             R38 4 1
      497 SETTABLEKS                       R38 R37 K144 ["Position"]
      499 GETIMPORT                        R38 K71 [UDim2.new]
      501 LOADN                            R39 0
      502 GETTABLEKS                       R40 R11 K145 ["clearButtonIconSize"]
      504 LOADN                            R41 0
      505 GETTABLEKS                       R42 R11 K145 ["clearButtonIconSize"]
      507 CALL                             R38 4 1
      508 SETTABLEKS                       R38 R37 K64 ["Size"]
      510 LOADN                            R38 1
      511 SETTABLEKS                       R38 R37 K52 ["BackgroundTransparency"]
      513 JUMPIFNOTEQKS                    R6 K36 [""] ; [+2]
      515 LOADB                            R38 0 +1
      516 LOADB                            R38 1
      517 SETTABLEKS                       R38 R37 K146 ["Visible"]
      519 GETTABLEKS                       R38 R2 K147 ["deleteIcon"]
      521 SETTABLEKS                       R38 R37 K85 ["Image"]
      523 GETUPVAL                         R38 2
      524 GETTABLEKS                       R38 R38 K92 ["Event"]
      526 GETTABLEKS                       R38 R38 K93 ["MouseEnter"]
      528 GETTABLEKS                       R39 R0 K148 ["onClearButtonHovered"]
      530 SETTABLE                         R39 R37 R38
      531 GETUPVAL                         R38 2
      532 GETTABLEKS                       R38 R38 K92 ["Event"]
      534 GETTABLEKS                       R38 R38 K95 ["MouseMoved"]
      536 GETTABLEKS                       R39 R0 K148 ["onClearButtonHovered"]
      538 SETTABLE                         R39 R37 R38
      539 GETUPVAL                         R38 2
      540 GETTABLEKS                       R38 R38 K92 ["Event"]
      542 GETTABLEKS                       R38 R38 K96 ["MouseLeave"]
      544 GETTABLEKS                       R39 R0 K149 ["onClearButtonHoverEnded"]
      546 SETTABLE                         R39 R37 R38
      547 GETUPVAL                         R38 2
      548 GETTABLEKS                       R38 R38 K92 ["Event"]
      550 GETTABLEKS                       R38 R38 K150 ["MouseButton1Down"]
      552 GETTABLEKS                       R39 R0 K151 ["onClearButtonClicked"]
      554 SETTABLE                         R39 R37 R38
      555 CALL                             R35 2 1
      556 SETTABLEKS                       R35 R34 K137 ["ClearButton"]
      558 CALL                             R31 3 1
      559 SETTABLEKS                       R31 R30 K99 ["ClearButtonFrame"]
      561 CALL                             R27 3 1
      562 SETTABLEKS                       R27 R26 K56 ["Background"]
      564 CALL                             R23 3 -1
      565 RETURN                           R23 -1

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
      118 GETIMPORT                        R23 K4 [require]
      120 GETTABLEKS                       R24 R0 K35 ["Bin"]
      122 GETTABLEKS                       R24 R24 K36 ["defineLuaFlags"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K32 [game]
      127 LOADK                            R26 K37 ["StudioManageCollabFixFocusError"]
      128 NAMECALL                         R24 R24 K38 ["GetFastFlag"]
      130 CALL                             R24 2 1
      131 GETIMPORT                        R25 K32 [game]
      133 LOADK                            R27 K39 ["StudioFriendToConnection"]
      134 NAMECALL                         R25 R25 K38 ["GetFastFlag"]
      136 CALL                             R25 2 1
      137 GETIMPORT                        R26 K32 [game]
      139 LOADK                            R28 K40 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      140 NAMECALL                         R26 R26 K38 ["GetFastFlag"]
      142 CALL                             R26 2 1
      143 GETIMPORT                        R27 K32 [game]
      145 LOADK                            R29 K41 ["Collab8818_ShowSearchItemDisplayName"]
      146 NAMECALL                         R27 R27 K38 ["GetFastFlag"]
      148 CALL                             R27 2 1
      149 GETIMPORT                        R28 K4 [require]
      151 GETTABLEKS                       R29 R0 K15 ["Src"]
      153 GETTABLEKS                       R29 R29 K16 ["Util"]
      155 GETTABLEKS                       R29 R29 K42 ["IsLikelyCollaboratorPrefetchEnabled"]
      157 CALL                             R28 1 1
      158 MOVE                             R29 R28
      159 CALL                             R29 0 1
      160 MOVE                             R30 R20
      161 LOADK                            R31 K43 ["Frame"]
      162 LOADK                            R32 K44 ["UIListLayout"]
      163 DUPTABLE                         R33 K47 [{"SortOrder", "Padding"}]
      164 GETIMPORT                        R34 K50 [Enum.SortOrder.LayoutOrder]
      166 SETTABLEKS                       R34 R33 K45 ["SortOrder"]
      168 GETIMPORT                        R34 K53 [UDim.new]
      170 LOADN                            R35 0
      171 LOADN                            R36 0
      172 CALL                             R34 2 1
      173 SETTABLEKS                       R34 R33 K46 ["Padding"]
      175 CALL                             R30 3 1
      176 MOVE                             R31 R20
      177 LOADK                            R32 K43 ["Frame"]
      178 LOADK                            R33 K44 ["UIListLayout"]
      179 DUPTABLE                         R34 K55 [{"SortOrder", "Padding", "FillDirection"}]
      180 GETIMPORT                        R35 K50 [Enum.SortOrder.LayoutOrder]
      182 SETTABLEKS                       R35 R34 K45 ["SortOrder"]
      184 GETIMPORT                        R35 K53 [UDim.new]
      186 LOADN                            R36 0
      187 LOADN                            R37 0
      188 CALL                             R35 2 1
      189 SETTABLEKS                       R35 R34 K46 ["Padding"]
      191 GETIMPORT                        R35 K57 [Enum.FillDirection.Horizontal]
      193 SETTABLEKS                       R35 R34 K54 ["FillDirection"]
      195 CALL                             R31 3 1
      196 MOVE                             R32 R20
      197 LOADK                            R33 K58 ["ImageLabel"]
      198 LOADK                            R34 K44 ["UIListLayout"]
      199 DUPTABLE                         R35 K55 [{"SortOrder", "Padding", "FillDirection"}]
      200 GETIMPORT                        R36 K50 [Enum.SortOrder.LayoutOrder]
      202 SETTABLEKS                       R36 R35 K45 ["SortOrder"]
      204 GETIMPORT                        R36 K53 [UDim.new]
      206 LOADN                            R37 0
      207 LOADN                            R38 0
      208 CALL                             R36 2 1
      209 SETTABLEKS                       R36 R35 K46 ["Padding"]
      211 GETIMPORT                        R36 K57 [Enum.FillDirection.Horizontal]
      213 SETTABLEKS                       R36 R35 K54 ["FillDirection"]
      215 CALL                             R32 3 1
      216 LOADNIL                          R33
      217 JUMPIFNOT                        R27 ; [+4]
      218 DUPCLOSURE                       R33 K59 [PROTO_0]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R6
      222 GETTABLEKS                       R34 R1 K60 ["PureComponent"]
      224 LOADK                            R36 K61 ["SearchBar"]
      225 NAMECALL                         R34 R34 K62 ["extend"]
      227 CALL                             R34 2 1
      228 DUPCLOSURE                       R35 K63 [PROTO_1]
      229 NEWCLOSURE                       R36 P2
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R26
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R8
      247 CAPTURE                          REF R33
      248 CAPTURE                          VAL R31
      249 SETTABLEKS                       R36 R34 K64 ["init"]
      251 DUPCLOSURE                       R36 K65 [PROTO_22]
      252 SETTABLEKS                       R36 R34 K66 ["mergeResultsTable"]
      254 DUPCLOSURE                       R36 K67 [PROTO_24]
      255 CAPTURE                          VAL R23
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R2
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R9
      262 CAPTURE                          VAL R19
      263 SETTABLEKS                       R36 R34 K68 ["render"]
      265 DUPCLOSURE                       R36 K69 [PROTO_25]
      266 CAPTURE                          VAL R24
      267 SETTABLEKS                       R36 R34 K70 ["didMount"]
      269 DUPCLOSURE                       R36 K71 [PROTO_26]
      270 CAPTURE                          VAL R24
      271 SETTABLEKS                       R36 R34 K72 ["willUnmount"]
      273 MOVE                             R36 R11
      274 DUPTABLE                         R37 K74 [{"Stylizer", "Localization", "Mouse"}]
      275 SETTABLEKS                       R14 R37 K23 ["Stylizer"]
      277 SETTABLEKS                       R12 R37 K21 ["Localization"]
      279 GETTABLEKS                       R38 R10 K73 ["Mouse"]
      281 SETTABLEKS                       R38 R37 K73 ["Mouse"]
      283 CALL                             R36 1 1
      284 MOVE                             R37 R34
      285 CALL                             R36 1 1
      286 MOVE                             R34 R36
      287 CLOSEUPVALS                      R33
      288 RETURN                           R34 1
