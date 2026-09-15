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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Pressed"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["onKeyMouseEnter"]
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["Default"]
       19 JUMPIFNOTEQ                      R0 R1 ; [+6]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K4 ["onKeyMouseLeave"]
       24 GETUPVAL                         R2 2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onKeyMouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onKeyMouseLeave"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
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
      368 JUMPIFNOT                        R26 ; [+207]
      369 MOVE                             R26 R20
      370 JUMPIFNOT                        R26 ; [+4]
      371 GETTABLEKS                       R26 R3 K13 ["Is17PlusGame"]
      373 JUMPIFNOT                        R26 ; [+1]
      374 MOVE                             R26 R19
      375 GETUPVAL                         R27 2
      376 GETTABLEKS                       R27 R27 K31 ["createElement"]
      378 GETUPVAL                         R28 11
      379 DUPTABLE                         R29 K104 [{["tag"] = "size-full-1800 auto-xy", ["LayoutOrder"], ["onActivated"], ["onStateChanged"]}]
      380 SETTABLEKS                       R1 R29 K35 ["LayoutOrder"]
      382 JUMPIF                           R20 ; [+2]
      383 MOVE                             R30 R2
      384 JUMP                             ; [+1]
      385 LOADNIL                          R30
      386 SETTABLEKS                       R30 R29 K102 ["onActivated"]
      388 GETUPVAL                         R31 12
      389 GETTABLEKS                       R31 R31 K105 ["fflagFixMCSearchWidgetErrors"]
      391 JUMPIFNOT                        R31 ; [+5]
      392 NEWCLOSURE                       R30 P0
      393 CAPTURE                          UPVAL U13
      394 CAPTURE                          UPVAL U0
      395 CAPTURE                          VAL R17
      396 JUMP                             ; [+1]
      397 LOADNIL                          R30
      398 SETTABLEKS                       R30 R29 K103 ["onStateChanged"]
      400 DUPTABLE                         R30 K108 [{"GrayOutBox", "ItemDetails"}]
      401 JUMPIFNOT                        R20 ; [+23]
      402 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      404 JUMPIFNOT                        R32 ; [+20]
      405 GETUPVAL                         R31 2
      406 GETTABLEKS                       R31 R31 K31 ["createElement"]
      408 GETUPVAL                         R32 11
      409 DUPTABLE                         R33 K111 [{["backgroundStyle"], ["tag"] = "anchor-top-left size-full", ["LayoutOrder"]}]
      410 DUPTABLE                         R34 K115 [{["Color3"], ["Transparency"] = 0.63}]
      411 GETIMPORT                        R35 K116 [Color3.new]
      413 LOADN                            R36 0
      414 LOADN                            R37 0
      415 LOADN                            R38 0
      416 CALL                             R35 3 1
      417 SETTABLEKS                       R35 R34 K112 ["Color3"]
      419 SETTABLEKS                       R34 R33 K109 ["backgroundStyle"]
      421 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      423 CALL                             R31 2 1
      424 JUMP                             ; [+1]
      425 LOADNIL                          R31
      426 SETTABLEKS                       R31 R30 K106 ["GrayOutBox"]
      428 GETUPVAL                         R31 2
      429 GETTABLEKS                       R31 R31 K31 ["createElement"]
      431 GETUPVAL                         R32 11
      432 DUPTABLE                         R33 K118 [{["tag"] = "row gap-medium size-full padding-x-xxlarge padding-y-large", ["LayoutOrder"]}]
      433 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      435 DUPTABLE                         R34 K122 [{"Icon", "NamesAndFriendStatus", "Label"}]
      436 JUMPIFNOT                        R19 ; [+21]
      437 GETUPVAL                         R35 2
      438 GETTABLEKS                       R35 R35 K31 ["createElement"]
      440 GETUPVAL                         R36 14
      441 DUPTABLE                         R37 K125 [{"userId", "size", "LayoutOrder"}]
      442 GETTABLEKS                       R38 R17 K126 ["Id"]
      444 SETTABLEKS                       R38 R37 K123 ["userId"]
      446 GETUPVAL                         R38 15
      447 GETTABLEKS                       R38 R38 K127 ["XSmall"]
      449 SETTABLEKS                       R38 R37 K124 ["size"]
      451 NAMECALL                         R38 R24 K128 ["getNextOrder"]
      453 CALL                             R38 1 1
      454 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      456 CALL                             R35 2 1
      457 JUMP                             ; [+16]
      458 GETUPVAL                         R35 2
      459 GETTABLEKS                       R35 R35 K31 ["createElement"]
      461 GETUPVAL                         R36 11
      462 DUPTABLE                         R37 K130 [{["tag"] = "size-600-600 radius-small", ["LayoutOrder"]}]
      463 NAMECALL                         R38 R24 K128 ["getNextOrder"]
      465 CALL                             R38 1 1
      466 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      468 DUPTABLE                         R38 K131 [{"Icon"}]
      469 GETTABLEKS                       R39 R0 K119 ["Icon"]
      471 SETTABLEKS                       R39 R38 K119 ["Icon"]
      473 CALL                             R35 3 1
      474 SETTABLEKS                       R35 R34 K119 ["Icon"]
      476 GETUPVAL                         R35 2
      477 GETTABLEKS                       R35 R35 K31 ["createElement"]
      479 GETUPVAL                         R36 11
      480 DUPTABLE                         R37 K133 [{["tag"] = "col grow auto-y", ["LayoutOrder"]}]
      481 NAMECALL                         R38 R24 K128 ["getNextOrder"]
      483 CALL                             R38 1 1
      484 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      486 DUPTABLE                         R38 K136 [{"PrimaryName", "AtName"}]
      487 GETUPVAL                         R39 2
      488 GETTABLEKS                       R39 R39 K31 ["createElement"]
      490 GETUPVAL                         R40 3
      491 DUPTABLE                         R41 K138 [{["Text"], ["tag"] = "auto-xy text-body-large text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
      492 GETTABLEKS                       R43 R17 K139 ["DisplayName"]
      494 JUMPIFNOT                        R43 ; [+3]
      495 GETTABLEKS                       R42 R17 K139 ["DisplayName"]
      497 JUMP                             ; [+2]
      498 GETTABLEKS                       R42 R0 K140 ["Name"]
      500 SETTABLEKS                       R42 R41 K32 ["Text"]
      502 CALL                             R39 2 1
      503 SETTABLEKS                       R39 R38 K134 ["PrimaryName"]
      505 JUMPIFNOT                        R19 ; [+13]
      506 GETUPVAL                         R39 2
      507 GETTABLEKS                       R39 R39 K31 ["createElement"]
      509 GETUPVAL                         R40 3
      510 DUPTABLE                         R41 K143 [{["Text"], ["tag"] = "auto-xy text-body-large content-default", ["LayoutOrder"] = 2}]
      511 LOADK                            R43 K144 ["@"]
      512 GETTABLEKS                       R44 R0 K140 ["Name"]
      514 CONCAT                           R42 R43 R44
      515 SETTABLEKS                       R42 R41 K32 ["Text"]
      517 CALL                             R39 2 1
      518 JUMP                             ; [+1]
      519 LOADNIL                          R39
      520 SETTABLEKS                       R39 R38 K135 ["AtName"]
      522 CALL                             R35 3 1
      523 SETTABLEKS                       R35 R34 K120 ["NamesAndFriendStatus"]
      525 JUMPIFNOT                        R26 ; [+14]
      526 GETUPVAL                         R35 2
      527 GETTABLEKS                       R35 R35 K31 ["createElement"]
      529 GETUPVAL                         R36 16
      530 DUPTABLE                         R37 K145 [{"Text", "LayoutOrder"}]
      531 SETTABLEKS                       R21 R37 K32 ["Text"]
      533 NAMECALL                         R38 R24 K128 ["getNextOrder"]
      535 CALL                             R38 1 1
      536 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      538 CALL                             R35 2 1
      539 JUMP                             ; [+29]
      540 JUMPIFNOT                        R18 ; [+27]
      541 GETUPVAL                         R35 2
      542 GETTABLEKS                       R35 R35 K31 ["createElement"]
      544 GETUPVAL                         R36 16
      545 DUPTABLE                         R37 K145 [{"Text", "LayoutOrder"}]
      546 GETUPVAL                         R39 7
      547 JUMPIFNOT                        R39 ; [+6]
      548 LOADK                            R40 K97 ["SearchBar"]
      549 LOADK                            R41 K146 ["ConnectionLabel"]
      550 NAMECALL                         R38 R6 K38 ["getText"]
      552 CALL                             R38 3 1
      553 JUMP                             ; [+5]
      554 LOADK                            R40 K97 ["SearchBar"]
      555 LOADK                            R41 K147 ["FriendLabel"]
      556 NAMECALL                         R38 R6 K38 ["getText"]
      558 CALL                             R38 3 1
      559 SETTABLEKS                       R38 R37 K32 ["Text"]
      561 NAMECALL                         R38 R24 K128 ["getNextOrder"]
      563 CALL                             R38 1 1
      564 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      566 CALL                             R35 2 1
      567 JUMP                             ; [+1]
      568 LOADNIL                          R35
      569 SETTABLEKS                       R35 R34 K121 ["Label"]
      571 CALL                             R31 3 1
      572 SETTABLEKS                       R31 R30 K107 ["ItemDetails"]
      574 CALL                             R27 3 -1
      575 RETURN                           R27 -1
      576 GETUPVAL                         R26 4
      577 GETTABLEKS                       R26 R26 K31 ["createElement"]
      579 LOADK                            R27 K148 ["ImageButton"]
      580 NEWTABLE                         R28 16 0
      582 GETIMPORT                        R29 K46 [UDim2.new]
      584 LOADN                            R30 0
      585 MOVE                             R31 R16
      586 LOADN                            R32 0
      587 MOVE                             R33 R11
      588 CALL                             R29 4 1
      589 SETTABLEKS                       R29 R28 K40 ["Size"]
      591 SETTABLEKS                       R25 R28 K41 ["BackgroundColor3"]
      593 LOADN                            R29 0
      594 SETTABLEKS                       R29 R28 K42 ["BorderSizePixel"]
      596 SETTABLEKS                       R1 R28 K35 ["LayoutOrder"]
      598 LOADB                            R29 0
      599 SETTABLEKS                       R29 R28 K149 ["AutoButtonColor"]
      601 NOT                              R29 R20
      602 SETTABLEKS                       R29 R28 K150 ["Active"]
      604 GETUPVAL                         R29 4
      605 GETTABLEKS                       R29 R29 K151 ["Event"]
      607 GETTABLEKS                       R29 R29 K152 ["Activated"]
      609 SETTABLE                         R2 R28 R29
      610 GETUPVAL                         R29 4
      611 GETTABLEKS                       R29 R29 K151 ["Event"]
      613 GETTABLEKS                       R29 R29 K153 ["MouseEnter"]
      615 NEWCLOSURE                       R30 P1
      616 CAPTURE                          UPVAL U0
      617 CAPTURE                          VAL R17
      618 SETTABLE                         R30 R28 R29
      619 GETUPVAL                         R29 4
      620 GETTABLEKS                       R29 R29 K151 ["Event"]
      622 GETTABLEKS                       R29 R29 K154 ["MouseLeave"]
      624 NEWCLOSURE                       R30 P2
      625 CAPTURE                          UPVAL U0
      626 CAPTURE                          VAL R17
      627 SETTABLE                         R30 R28 R29
      628 NEWTABLE                         R29 1 1
      630 JUMPIFNOT                        R20 ; [+28]
      631 GETTABLEKS                       R32 R3 K13 ["Is17PlusGame"]
      633 JUMPIFNOT                        R32 ; [+25]
      634 GETUPVAL                         R31 4
      635 GETTABLEKS                       R31 R31 K31 ["createElement"]
      637 LOADK                            R32 K39 ["Frame"]
      638 DUPTABLE                         R33 K156 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 0.75, ["LayoutOrder"]}]
      639 GETIMPORT                        R34 K89 [Vector2.new]
      641 LOADN                            R35 0
      642 LOADN                            R36 0
      643 CALL                             R34 2 1
      644 SETTABLEKS                       R34 R33 K84 ["AnchorPoint"]
      646 GETIMPORT                        R34 K46 [UDim2.new]
      648 LOADN                            R35 0
      649 MOVE                             R36 R16
      650 LOADN                            R37 0
      651 MOVE                             R38 R11
      652 CALL                             R34 4 1
      653 SETTABLEKS                       R34 R33 K40 ["Size"]
      655 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      657 CALL                             R31 2 1
      658 JUMP                             ; [+1]
      659 LOADNIL                          R31
      660 SETTABLEKS                       R31 R29 K106 ["GrayOutBox"]
      662 GETUPVAL                         R30 4
      663 GETTABLEKS                       R30 R30 K31 ["createElement"]
      665 GETUPVAL                         R31 17
      666 DUPTABLE                         R32 K157 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      667 SETTABLEKS                       R1 R32 K35 ["LayoutOrder"]
      669 DUPTABLE                         R33 K161 [{"IconFrame", "NameAndFriendStatus", "RestrictionLabel"}]
      670 GETUPVAL                         R34 4
      671 GETTABLEKS                       R34 R34 K31 ["createElement"]
      673 LOADK                            R35 K39 ["Frame"]
      674 DUPTABLE                         R36 K162 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      675 NAMECALL                         R37 R24 K128 ["getNextOrder"]
      677 CALL                             R37 1 1
      678 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      680 GETIMPORT                        R37 K46 [UDim2.new]
      682 LOADN                            R38 0
      683 MOVE                             R39 R11
      684 LOADN                            R40 0
      685 MOVE                             R41 R11
      686 CALL                             R37 4 1
      687 SETTABLEKS                       R37 R36 K40 ["Size"]
      689 DUPTABLE                         R37 K164 [{"SmallIcon", "Padding"}]
      690 GETUPVAL                         R38 4
      691 GETTABLEKS                       R38 R38 K31 ["createElement"]
      693 LOADK                            R39 K39 ["Frame"]
      694 DUPTABLE                         R40 K165 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      695 GETIMPORT                        R41 K89 [Vector2.new]
      697 LOADK                            R42 K90 [0.5]
      698 LOADK                            R43 K90 [0.5]
      699 CALL                             R41 2 1
      700 SETTABLEKS                       R41 R40 K84 ["AnchorPoint"]
      702 GETIMPORT                        R41 K46 [UDim2.new]
      704 LOADK                            R42 K90 [0.5]
      705 LOADN                            R43 0
      706 LOADK                            R44 K90 [0.5]
      707 LOADN                            R45 0
      708 CALL                             R41 4 1
      709 SETTABLEKS                       R41 R40 K56 ["Position"]
      711 GETIMPORT                        R41 K46 [UDim2.new]
      713 LOADN                            R42 0
      714 GETTABLEKS                       R43 R7 K166 ["thumbnailSize"]
      716 LOADN                            R44 0
      717 GETTABLEKS                       R45 R7 K166 ["thumbnailSize"]
      719 CALL                             R41 4 1
      720 SETTABLEKS                       R41 R40 K40 ["Size"]
      722 SETTABLEKS                       R25 R40 K41 ["BackgroundColor3"]
      724 DUPTABLE                         R41 K131 [{"Icon"}]
      725 GETTABLEKS                       R42 R0 K119 ["Icon"]
      727 SETTABLEKS                       R42 R41 K119 ["Icon"]
      729 CALL                             R38 3 1
      730 SETTABLEKS                       R38 R37 K163 ["SmallIcon"]
      732 GETUPVAL                         R38 4
      733 GETTABLEKS                       R38 R38 K31 ["createElement"]
      735 LOADK                            R39 K77 ["UIPadding"]
      736 DUPTABLE                         R40 K79 [{"PaddingLeft"}]
      737 GETIMPORT                        R41 K81 [UDim.new]
      739 LOADN                            R42 0
      740 GETTABLEKS                       R43 R7 K167 ["thumbnailPaddingLeft"]
      742 CALL                             R41 2 1
      743 SETTABLEKS                       R41 R40 K78 ["PaddingLeft"]
      745 CALL                             R38 2 1
      746 SETTABLEKS                       R38 R37 K75 ["Padding"]
      748 CALL                             R34 3 1
      749 SETTABLEKS                       R34 R33 K158 ["IconFrame"]
      751 GETUPVAL                         R34 4
      752 GETTABLEKS                       R34 R34 K31 ["createElement"]
      754 LOADK                            R35 K39 ["Frame"]
      755 DUPTABLE                         R36 K168 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      756 NAMECALL                         R37 R24 K128 ["getNextOrder"]
      758 CALL                             R37 1 1
      759 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      761 GETIMPORT                        R37 K46 [UDim2.new]
      763 LOADN                            R38 0
      764 GETTABLEKS                       R39 R7 K169 ["nameLabelWidth"]
      766 LOADN                            R40 1
      767 LOADN                            R41 0
      768 CALL                             R37 4 1
      769 SETTABLEKS                       R37 R36 K40 ["Size"]
      771 DUPTABLE                         R37 K173 [{"Layout", "TextFrame", "FriendFrame"}]
      772 GETUPVAL                         R38 4
      773 GETTABLEKS                       R38 R38 K31 ["createElement"]
      775 LOADK                            R39 K174 ["UIListLayout"]
      776 DUPTABLE                         R40 K177 [{"FillDirection", "SortOrder", "Padding"}]
      777 GETIMPORT                        R41 K179 [Enum.FillDirection.Vertical]
      779 SETTABLEKS                       R41 R40 K175 ["FillDirection"]
      781 GETIMPORT                        R41 K180 [Enum.SortOrder.LayoutOrder]
      783 SETTABLEKS                       R41 R40 K176 ["SortOrder"]
      785 GETIMPORT                        R41 K81 [UDim.new]
      787 LOADN                            R42 0
      788 LOADN                            R43 0
      789 CALL                             R41 2 1
      790 SETTABLEKS                       R41 R40 K75 ["Padding"]
      792 CALL                             R38 2 1
      793 SETTABLEKS                       R38 R37 K170 ["Layout"]
      795 GETUPVAL                         R38 4
      796 GETTABLEKS                       R38 R38 K31 ["createElement"]
      798 LOADK                            R39 K51 ["TextLabel"]
      799 GETUPVAL                         R40 5
      800 GETTABLEKS                       R40 R40 K52 ["Dictionary"]
      802 GETTABLEKS                       R40 R40 K53 ["join"]
      804 GETTABLEKS                       R41 R4 K70 ["fontStyle"]
      806 GETTABLEKS                       R41 R41 K71 ["Normal"]
      808 DUPTABLE                         R42 K184 [{["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["ClipsDescendants"] = True, ["LayoutOrder"] = 1, ["BorderSizePixel"] = 0}]
      809 GETIMPORT                        R43 K46 [UDim2.new]
      811 LOADN                            R44 0
      812 GETTABLEKS                       R45 R7 K169 ["nameLabelWidth"]
      814 LOADN                            R46 0
      815 MOVE                             R47 R22
      816 CALL                             R43 4 1
      817 SETTABLEKS                       R43 R42 K40 ["Size"]
      819 GETTABLEKS                       R43 R0 K140 ["Name"]
      821 SETTABLEKS                       R43 R42 K32 ["Text"]
      823 GETIMPORT                        R43 K62 [Enum.TextXAlignment.Left]
      825 SETTABLEKS                       R43 R42 K55 ["TextXAlignment"]
      827 GETIMPORT                        R43 K186 [Enum.TextYAlignment.Center]
      829 SETTABLEKS                       R43 R42 K181 ["TextYAlignment"]
      831 JUMPIFNOT                        R23 ; [+7]
      832 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      834 GETTABLEKS                       R43 R43 K100 ["hovered"]
      836 GETTABLEKS                       R43 R43 K187 ["displayText"]
      838 JUMPIF                           R43 ; [+4]
      839 GETTABLEKS                       R43 R7 K23 ["dropDown"]
      841 GETTABLEKS                       R43 R43 K187 ["displayText"]
      843 SETTABLEKS                       R43 R42 K182 ["TextColor3"]
      845 CALL                             R40 2 1
      846 DUPTABLE                         R41 K76 [{"Padding"}]
      847 GETUPVAL                         R42 4
      848 GETTABLEKS                       R42 R42 K31 ["createElement"]
      850 LOADK                            R43 K77 ["UIPadding"]
      851 DUPTABLE                         R44 K79 [{"PaddingLeft"}]
      852 GETIMPORT                        R45 K81 [UDim.new]
      854 LOADN                            R46 0
      855 GETTABLEKS                       R47 R7 K188 ["renderItemTextPadding"]
      857 CALL                             R45 2 1
      858 SETTABLEKS                       R45 R44 K78 ["PaddingLeft"]
      860 CALL                             R42 2 1
      861 SETTABLEKS                       R42 R41 K75 ["Padding"]
      863 CALL                             R38 3 1
      864 SETTABLEKS                       R38 R37 K171 ["TextFrame"]
      866 JUMPIFNOT                        R18 ; [+146]
      867 GETUPVAL                         R38 4
      868 GETTABLEKS                       R38 R38 K31 ["createElement"]
      870 GETUPVAL                         R39 17
      871 DUPTABLE                         R40 K189 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      872 DUPTABLE                         R41 K192 [{"Padding", "FriendImageLabel", "FriendTextLabel"}]
      873 GETUPVAL                         R42 4
      874 GETTABLEKS                       R42 R42 K31 ["createElement"]
      876 LOADK                            R43 K77 ["UIPadding"]
      877 DUPTABLE                         R44 K194 [{"PaddingLeft", "PaddingBottom"}]
      878 GETIMPORT                        R45 K81 [UDim.new]
      880 LOADN                            R46 0
      881 GETTABLEKS                       R47 R7 K188 ["renderItemTextPadding"]
      883 CALL                             R45 2 1
      884 SETTABLEKS                       R45 R44 K78 ["PaddingLeft"]
      886 GETIMPORT                        R45 K81 [UDim.new]
      888 LOADN                            R46 0
      889 GETTABLEKS                       R47 R7 K188 ["renderItemTextPadding"]
      891 CALL                             R45 2 1
      892 SETTABLEKS                       R45 R44 K193 ["PaddingBottom"]
      894 CALL                             R42 2 1
      895 SETTABLEKS                       R42 R41 K75 ["Padding"]
      897 GETUPVAL                         R42 4
      898 GETTABLEKS                       R42 R42 K31 ["createElement"]
      900 LOADK                            R43 K195 ["ImageLabel"]
      901 DUPTABLE                         R44 K197 [{["Size"], ["Image"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      902 GETIMPORT                        R45 K46 [UDim2.new]
      904 LOADN                            R46 0
      905 GETTABLEKS                       R47 R7 K198 ["friendIcon"]
      907 GETTABLEKS                       R47 R47 K22 ["Width"]
      909 LOADN                            R48 0
      910 GETTABLEKS                       R49 R7 K198 ["friendIcon"]
      912 GETTABLEKS                       R49 R49 K199 ["Height"]
      914 CALL                             R45 4 1
      915 SETTABLEKS                       R45 R44 K40 ["Size"]
      917 GETTABLEKS                       R45 R7 K198 ["friendIcon"]
      919 GETTABLEKS                       R45 R45 K196 ["Image"]
      921 SETTABLEKS                       R45 R44 K196 ["Image"]
      923 CALL                             R42 2 1
      924 SETTABLEKS                       R42 R41 K190 ["FriendImageLabel"]
      926 GETUPVAL                         R42 4
      927 GETTABLEKS                       R42 R42 K31 ["createElement"]
      929 LOADK                            R43 K51 ["TextLabel"]
      930 GETUPVAL                         R44 5
      931 GETTABLEKS                       R44 R44 K52 ["Dictionary"]
      933 GETTABLEKS                       R44 R44 K53 ["join"]
      935 GETTABLEKS                       R45 R4 K70 ["fontStyle"]
      937 GETTABLEKS                       R45 R45 K200 ["Subtext"]
      939 DUPTABLE                         R46 K202 [{["Size"], ["AutomaticSize"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["BorderSizePixel"] = 0}]
      940 GETIMPORT                        R47 K46 [UDim2.new]
      942 LOADN                            R48 1
      943 LOADN                            R49 0
      944 LOADN                            R50 0
      945 GETTABLEKS                       R51 R7 K198 ["friendIcon"]
      947 GETTABLEKS                       R51 R51 K203 ["LabelHeight"]
      949 CALL                             R47 4 1
      950 SETTABLEKS                       R47 R46 K40 ["Size"]
      952 GETIMPORT                        R47 K204 [Enum.AutomaticSize.X]
      954 SETTABLEKS                       R47 R46 K201 ["AutomaticSize"]
      956 GETUPVAL                         R48 7
      957 JUMPIFNOT                        R48 ; [+6]
      958 LOADK                            R49 K97 ["SearchBar"]
      959 LOADK                            R50 K146 ["ConnectionLabel"]
      960 NAMECALL                         R47 R6 K38 ["getText"]
      962 CALL                             R47 3 1
      963 JUMP                             ; [+5]
      964 LOADK                            R49 K97 ["SearchBar"]
      965 LOADK                            R50 K147 ["FriendLabel"]
      966 NAMECALL                         R47 R6 K38 ["getText"]
      968 CALL                             R47 3 1
      969 SETTABLEKS                       R47 R46 K32 ["Text"]
      971 GETIMPORT                        R47 K62 [Enum.TextXAlignment.Left]
      973 SETTABLEKS                       R47 R46 K55 ["TextXAlignment"]
      975 JUMPIFNOT                        R23 ; [+7]
      976 GETTABLEKS                       R47 R7 K23 ["dropDown"]
      978 GETTABLEKS                       R47 R47 K100 ["hovered"]
      980 GETTABLEKS                       R47 R47 K187 ["displayText"]
      982 JUMPIF                           R47 ; [+4]
      983 GETTABLEKS                       R47 R7 K23 ["dropDown"]
      985 GETTABLEKS                       R47 R47 K187 ["displayText"]
      987 SETTABLEKS                       R47 R46 K182 ["TextColor3"]
      989 CALL                             R44 2 1
      990 DUPTABLE                         R45 K76 [{"Padding"}]
      991 GETUPVAL                         R46 4
      992 GETTABLEKS                       R46 R46 K31 ["createElement"]
      994 LOADK                            R47 K77 ["UIPadding"]
      995 DUPTABLE                         R48 K79 [{"PaddingLeft"}]
      996 GETIMPORT                        R49 K81 [UDim.new]
      998 LOADN                            R50 0
      999 GETTABLEKS                       R52 R7 K188 ["renderItemTextPadding"]
     1001 DIVK                             R51 R52 K142 [2]
     1002 CALL                             R49 2 1
     1003 SETTABLEKS                       R49 R48 K78 ["PaddingLeft"]
     1005 CALL                             R46 2 1
     1006 SETTABLEKS                       R46 R45 K75 ["Padding"]
     1008 CALL                             R42 3 1
     1009 SETTABLEKS                       R42 R41 K191 ["FriendTextLabel"]
     1011 CALL                             R38 3 1
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R38
     1014 SETTABLEKS                       R38 R37 K172 ["FriendFrame"]
     1016 CALL                             R34 3 1
     1017 SETTABLEKS                       R34 R33 K159 ["NameAndFriendStatus"]
     1019 JUMPIFNOT                        R20 ; [+58]
     1020 GETTABLEKS                       R35 R3 K13 ["Is17PlusGame"]
     1022 JUMPIFNOT                        R35 ; [+55]
     1023 JUMPIFNOT                        R19 ; [+54]
     1024 GETUPVAL                         R34 4
     1025 GETTABLEKS                       R34 R34 K31 ["createElement"]
     1027 LOADK                            R35 K51 ["TextLabel"]
     1028 GETUPVAL                         R36 5
     1029 GETTABLEKS                       R36 R36 K52 ["Dictionary"]
     1031 GETTABLEKS                       R36 R36 K53 ["join"]
     1033 GETTABLEKS                       R37 R4 K70 ["fontStyle"]
     1035 GETTABLEKS                       R37 R37 K71 ["Normal"]
     1037 DUPTABLE                         R38 K205 [{["Size"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["BorderSizePixel"] = 0}]
     1038 GETIMPORT                        R39 K46 [UDim2.new]
     1040 LOADN                            R40 0
     1041 GETTABLEKS                       R41 R7 K23 ["dropDown"]
     1043 GETTABLEKS                       R41 R41 K206 ["eligibilityLabelWidth"]
     1045 LOADN                            R42 0
     1046 MOVE                             R43 R11
     1047 CALL                             R39 4 1
     1048 SETTABLEKS                       R39 R38 K40 ["Size"]
     1050 SETTABLEKS                       R21 R38 K32 ["Text"]
     1052 GETIMPORT                        R39 K62 [Enum.TextXAlignment.Left]
     1054 SETTABLEKS                       R39 R38 K55 ["TextXAlignment"]
     1056 JUMPIFNOT                        R23 ; [+7]
     1057 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1059 GETTABLEKS                       R39 R39 K100 ["hovered"]
     1061 GETTABLEKS                       R39 R39 K187 ["displayText"]
     1063 JUMPIF                           R39 ; [+4]
     1064 GETTABLEKS                       R39 R7 K23 ["dropDown"]
     1066 GETTABLEKS                       R39 R39 K187 ["displayText"]
     1068 SETTABLEKS                       R39 R38 K182 ["TextColor3"]
     1070 NAMECALL                         R39 R24 K128 ["getNextOrder"]
     1072 CALL                             R39 1 1
     1073 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
     1075 CALL                             R36 2 -1
     1076 CALL                             R34 -1 1
     1077 JUMP                             ; [+1]
     1078 LOADNIL                          R34
     1079 SETTABLEKS                       R34 R33 K160 ["RestrictionLabel"]
     1081 CALL                             R30 3 -1
     1082 SETLIST                          R29 R30 -1 [1]
     1084 CALL                             R26 3 -1
     1085 RETURN                           R26 -1

PROTO_21:
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
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U15
      109 CAPTURE                          UPVAL U16
      110 CAPTURE                          UPVAL U17
      111 CAPTURE                          UPVAL U18
      112 CAPTURE                          UPVAL U19
      113 SETTABLEKS                       R1 R0 K32 ["onRenderItem"]
      115 GETTABLEKS                       R1 R0 K33 ["props"]
      117 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      119 JUMPIFNOT                        R1 ; [+6]
      120 GETTABLEKS                       R1 R0 K33 ["props"]
      122 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      124 LOADK                            R2 K1 [""]
      125 CALL                             R1 1 0
      126 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["onTextBoxFocused"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["isUnmounting"]
        5 RETURN                           R0 0

PROTO_27:
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
       47 GETTABLEKS                       R9 R4 K13 ["Enums"]
       49 GETTABLEKS                       R9 R9 K15 ["ControlState"]
       51 GETIMPORT                        R10 K4 [require]
       53 GETTABLEKS                       R11 R0 K16 ["Src"]
       55 GETTABLEKS                       R11 R11 K17 ["Util"]
       57 GETTABLEKS                       R11 R11 K18 ["Constants"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K4 [require]
       62 GETTABLEKS                       R12 R0 K5 ["Packages"]
       64 GETTABLEKS                       R12 R12 K19 ["Framework"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R11 R11 K20 ["ContextServices"]
       69 GETTABLEKS                       R12 R11 K21 ["withContext"]
       71 GETTABLEKS                       R13 R11 K22 ["Localization"]
       73 GETIMPORT                        R14 K4 [require]
       75 GETTABLEKS                       R15 R0 K5 ["Packages"]
       77 GETTABLEKS                       R15 R15 K19 ["Framework"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R14 K23 ["Style"]
       82 GETTABLEKS                       R15 R15 K24 ["Stylizer"]
       84 GETTABLEKS                       R16 R14 K17 ["Util"]
       86 GETTABLEKS                       R16 R16 K25 ["LayoutOrderIterator"]
       88 GETTABLEKS                       R17 R10 K26 ["COLLABORATORTYPE_USER"]
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R19 R0 K16 ["Src"]
       94 GETTABLEKS                       R19 R19 K17 ["Util"]
       96 GETTABLEKS                       R19 R19 K27 ["PermissionsConstants"]
       98 CALL                             R18 1 1
       99 GETTABLEKS                       R19 R14 K28 ["UI"]
      101 GETTABLEKS                       R20 R19 K29 ["DropdownMenu"]
      103 GETIMPORT                        R21 K4 [require]
      105 GETTABLEKS                       R22 R0 K16 ["Src"]
      107 GETTABLEKS                       R22 R22 K17 ["Util"]
      109 GETTABLEKS                       R22 R22 K30 ["CreateFitToContent"]
      111 CALL                             R21 1 1
      112 GETTABLEKS                       R22 R14 K28 ["UI"]
      114 GETTABLEKS                       R22 R22 K31 ["LoadingIndicator"]
      116 GETIMPORT                        R23 K33 [game]
      118 LOADK                            R25 K34 ["TextService"]
      119 NAMECALL                         R23 R23 K35 ["GetService"]
      121 CALL                             R23 2 1
      122 GETIMPORT                        R24 K4 [require]
      124 GETTABLEKS                       R25 R0 K36 ["Bin"]
      126 GETTABLEKS                       R25 R25 K37 ["defineLuaFlags"]
      128 CALL                             R24 1 1
      129 GETIMPORT                        R25 K33 [game]
      131 LOADK                            R27 K38 ["StudioManageCollabFixFocusError"]
      132 NAMECALL                         R25 R25 K39 ["GetFastFlag"]
      134 CALL                             R25 2 1
      135 GETIMPORT                        R26 K33 [game]
      137 LOADK                            R28 K40 ["StudioFriendToConnection"]
      138 NAMECALL                         R26 R26 K39 ["GetFastFlag"]
      140 CALL                             R26 2 1
      141 GETIMPORT                        R27 K33 [game]
      143 LOADK                            R29 K41 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      144 NAMECALL                         R27 R27 K39 ["GetFastFlag"]
      146 CALL                             R27 2 1
      147 GETIMPORT                        R28 K33 [game]
      149 LOADK                            R30 K42 ["Collab8818_ShowSearchItemDisplayName"]
      150 NAMECALL                         R28 R28 K39 ["GetFastFlag"]
      152 CALL                             R28 2 1
      153 GETIMPORT                        R29 K4 [require]
      155 GETTABLEKS                       R30 R0 K16 ["Src"]
      157 GETTABLEKS                       R30 R30 K17 ["Util"]
      159 GETTABLEKS                       R30 R30 K43 ["IsLikelyCollaboratorPrefetchEnabled"]
      161 CALL                             R29 1 1
      162 MOVE                             R30 R29
      163 CALL                             R30 0 1
      164 MOVE                             R31 R21
      165 LOADK                            R32 K44 ["Frame"]
      166 LOADK                            R33 K45 ["UIListLayout"]
      167 DUPTABLE                         R34 K48 [{"SortOrder", "Padding"}]
      168 GETIMPORT                        R35 K51 [Enum.SortOrder.LayoutOrder]
      170 SETTABLEKS                       R35 R34 K46 ["SortOrder"]
      172 GETIMPORT                        R35 K54 [UDim.new]
      174 LOADN                            R36 0
      175 LOADN                            R37 0
      176 CALL                             R35 2 1
      177 SETTABLEKS                       R35 R34 K47 ["Padding"]
      179 CALL                             R31 3 1
      180 MOVE                             R32 R21
      181 LOADK                            R33 K44 ["Frame"]
      182 LOADK                            R34 K45 ["UIListLayout"]
      183 DUPTABLE                         R35 K56 [{"SortOrder", "Padding", "FillDirection"}]
      184 GETIMPORT                        R36 K51 [Enum.SortOrder.LayoutOrder]
      186 SETTABLEKS                       R36 R35 K46 ["SortOrder"]
      188 GETIMPORT                        R36 K54 [UDim.new]
      190 LOADN                            R37 0
      191 LOADN                            R38 0
      192 CALL                             R36 2 1
      193 SETTABLEKS                       R36 R35 K47 ["Padding"]
      195 GETIMPORT                        R36 K58 [Enum.FillDirection.Horizontal]
      197 SETTABLEKS                       R36 R35 K55 ["FillDirection"]
      199 CALL                             R32 3 1
      200 MOVE                             R33 R21
      201 LOADK                            R34 K59 ["ImageLabel"]
      202 LOADK                            R35 K45 ["UIListLayout"]
      203 DUPTABLE                         R36 K56 [{"SortOrder", "Padding", "FillDirection"}]
      204 GETIMPORT                        R37 K51 [Enum.SortOrder.LayoutOrder]
      206 SETTABLEKS                       R37 R36 K46 ["SortOrder"]
      208 GETIMPORT                        R37 K54 [UDim.new]
      210 LOADN                            R38 0
      211 LOADN                            R39 0
      212 CALL                             R37 2 1
      213 SETTABLEKS                       R37 R36 K47 ["Padding"]
      215 GETIMPORT                        R37 K58 [Enum.FillDirection.Horizontal]
      217 SETTABLEKS                       R37 R36 K55 ["FillDirection"]
      219 CALL                             R33 3 1
      220 LOADNIL                          R34
      221 JUMPIFNOT                        R28 ; [+4]
      222 DUPCLOSURE                       R34 K60 [PROTO_0]
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R6
      226 GETTABLEKS                       R35 R1 K61 ["PureComponent"]
      228 LOADK                            R37 K62 ["SearchBar"]
      229 NAMECALL                         R35 R35 K63 ["extend"]
      231 CALL                             R35 2 1
      232 DUPCLOSURE                       R36 K64 [PROTO_1]
      233 NEWCLOSURE                       R37 P2
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R22
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R7
      251 CAPTURE                          VAL R8
      252 CAPTURE                          REF R34
      253 CAPTURE                          VAL R32
      254 SETTABLEKS                       R37 R35 K65 ["init"]
      256 DUPCLOSURE                       R37 K66 [PROTO_23]
      257 SETTABLEKS                       R37 R35 K67 ["mergeResultsTable"]
      259 DUPCLOSURE                       R37 K68 [PROTO_25]
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R30
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R31
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R33
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R20
      268 SETTABLEKS                       R37 R35 K69 ["render"]
      270 DUPCLOSURE                       R37 K70 [PROTO_26]
      271 CAPTURE                          VAL R25
      272 SETTABLEKS                       R37 R35 K71 ["didMount"]
      274 DUPCLOSURE                       R37 K72 [PROTO_27]
      275 CAPTURE                          VAL R25
      276 SETTABLEKS                       R37 R35 K73 ["willUnmount"]
      278 MOVE                             R37 R12
      279 DUPTABLE                         R38 K75 [{"Stylizer", "Localization", "Mouse"}]
      280 SETTABLEKS                       R15 R38 K24 ["Stylizer"]
      282 SETTABLEKS                       R13 R38 K22 ["Localization"]
      284 GETTABLEKS                       R39 R11 K74 ["Mouse"]
      286 SETTABLEKS                       R39 R38 K74 ["Mouse"]
      288 CALL                             R37 1 1
      289 MOVE                             R38 R35
      290 CALL                             R37 1 1
      291 MOVE                             R35 R37
      292 CLOSEUPVALS                      R34
      293 RETURN                           R35 1
