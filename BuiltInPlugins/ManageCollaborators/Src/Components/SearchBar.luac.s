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
       90 LOADK                            R12 K24 [Infinity]
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
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["props"]
       13 GETTABLEKS                       R3 R3 K7 ["onTextBoxFocused"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["props"]
       19 GETTABLEKS                       R3 R3 K7 ["onTextBoxFocused"]
       21 CALL                             R3 0 0
       22 JUMPIF                           R0 ; [+3]
       23 NAMECALL                         R3 R2 K8 ["ReleaseFocus"]
       25 CALL                             R3 1 0
       26 GETIMPORT                        R3 K10 [next]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K11 ["state"]
       31 GETTABLEKS                       R4 R4 K12 ["mergedItems"]
       33 CALL                             R3 1 1
       34 JUMPIFEQKNIL                     R3 ; [+5]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K13 ["showDropdown"]
       39 CALL                             R3 0 0
       40 RETURN                           R0 0

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
      331 MOVE                             R21 R20
      332 JUMPIFNOT                        R21 ; [+9]
      333 GETTABLEKS                       R21 R3 K13 ["Is17PlusGame"]
      335 JUMPIF                           R21 ; [+6]
      336 GETTABLEKS                       R22 R17 K96 ["ShowRestriction"]
      338 JUMPIFEQKB                       R22 TRUE ; [+2]
      340 LOADB                            R21 0 +1
      341 LOADB                            R21 1
      342 LOADNIL                          R22
      343 JUMPIFNOT                        R20 ; [+9]
      344 GETTABLEKS                       R22 R17 K97 ["EligibilityText"]
      346 JUMPIF                           R22 ; [+6]
      347 LOADK                            R25 K98 ["SearchBar"]
      348 LOADK                            R26 K99 ["UnknownError"]
      349 NAMECALL                         R23 R6 K38 ["getText"]
      351 CALL                             R23 3 1
      352 MOVE                             R22 R23
      353 JUMPIFNOT                        R18 ; [+3]
      354 GETTABLEKS                       R23 R7 K100 ["nameHeight"]
      356 JUMP                             ; [+1]
      357 MOVE                             R23 R11
      358 LOADB                            R24 0
      359 JUMPIFNOTEQ                      R8 R17 ; [+2]
      361 NOT                              R24 R20
      362 GETUPVAL                         R25 10
      363 GETTABLEKS                       R25 R25 K18 ["new"]
      365 CALL                             R25 0 1
      366 JUMPIFNOT                        R24 ; [+7]
      367 GETTABLEKS                       R26 R7 K23 ["dropDown"]
      369 GETTABLEKS                       R26 R26 K101 ["hovered"]
      371 GETTABLEKS                       R26 R26 K47 ["backgroundColor"]
      373 JUMPIF                           R26 ; [+4]
      374 GETTABLEKS                       R26 R7 K23 ["dropDown"]
      376 GETTABLEKS                       R26 R26 K47 ["backgroundColor"]
      378 GETUPVAL                         R27 1
      379 JUMPIFNOT                        R27 ; [+252]
      380 AND                              R27 R21 R19
      381 MOVE                             R28 R27
      382 JUMPIFNOT                        R28 ; [+6]
      383 GETTABLEKS                       R29 R17 K102 ["ShowCantInvite"]
      385 JUMPIFEQKB                       R29 TRUE ; [+2]
      387 LOADB                            R28 0 +1
      388 LOADB                            R28 1
      389 JUMPIFNOT                        R19 ; [+21]
      390 GETUPVAL                         R29 2
      391 GETTABLEKS                       R29 R29 K31 ["createElement"]
      393 GETUPVAL                         R30 11
      394 DUPTABLE                         R31 K105 [{"userId", "size", "LayoutOrder"}]
      395 GETTABLEKS                       R32 R17 K106 ["Id"]
      397 SETTABLEKS                       R32 R31 K103 ["userId"]
      399 GETUPVAL                         R32 12
      400 GETTABLEKS                       R32 R32 K107 ["XSmall"]
      402 SETTABLEKS                       R32 R31 K104 ["size"]
      404 NAMECALL                         R32 R25 K108 ["getNextOrder"]
      406 CALL                             R32 1 1
      407 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      409 CALL                             R29 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R29
      412 GETUPVAL                         R30 2
      413 GETTABLEKS                       R30 R30 K31 ["createElement"]
      415 GETUPVAL                         R31 13
      416 DUPTABLE                         R32 K112 [{["tag"] = "size-full-1800 auto-xy", ["LayoutOrder"], ["onActivated"], ["onStateChanged"]}]
      417 SETTABLEKS                       R1 R32 K35 ["LayoutOrder"]
      419 JUMPIF                           R20 ; [+2]
      420 MOVE                             R33 R2
      421 JUMP                             ; [+1]
      422 LOADNIL                          R33
      423 SETTABLEKS                       R33 R32 K110 ["onActivated"]
      425 GETUPVAL                         R34 14
      426 GETTABLEKS                       R34 R34 K113 ["fflagFixMCSearchWidgetErrors"]
      428 JUMPIFNOT                        R34 ; [+5]
      429 NEWCLOSURE                       R33 P0
      430 CAPTURE                          UPVAL U15
      431 CAPTURE                          UPVAL U0
      432 CAPTURE                          VAL R17
      433 JUMP                             ; [+1]
      434 LOADNIL                          R33
      435 SETTABLEKS                       R33 R32 K111 ["onStateChanged"]
      437 DUPTABLE                         R33 K116 [{"GrayOutBox", "ItemDetails"}]
      438 JUMPIFNOT                        R21 ; [+21]
      439 JUMPIF                           R28 ; [+20]
      440 GETUPVAL                         R34 2
      441 GETTABLEKS                       R34 R34 K31 ["createElement"]
      443 GETUPVAL                         R35 13
      444 DUPTABLE                         R36 K119 [{["backgroundStyle"], ["tag"] = "anchor-top-left size-full", ["LayoutOrder"]}]
      445 DUPTABLE                         R37 K123 [{["Color3"], ["Transparency"] = 0.63}]
      446 GETIMPORT                        R38 K124 [Color3.new]
      448 LOADN                            R39 0
      449 LOADN                            R40 0
      450 LOADN                            R41 0
      451 CALL                             R38 3 1
      452 SETTABLEKS                       R38 R37 K120 ["Color3"]
      454 SETTABLEKS                       R37 R36 K117 ["backgroundStyle"]
      456 SETTABLEKS                       R1 R36 K35 ["LayoutOrder"]
      458 CALL                             R34 2 1
      459 JUMP                             ; [+1]
      460 LOADNIL                          R34
      461 SETTABLEKS                       R34 R33 K114 ["GrayOutBox"]
      463 GETUPVAL                         R34 2
      464 GETTABLEKS                       R34 R34 K31 ["createElement"]
      466 GETUPVAL                         R35 13
      467 DUPTABLE                         R36 K126 [{["tag"] = "row gap-medium size-full padding-x-xxlarge padding-y-large", ["LayoutOrder"]}]
      468 SETTABLEKS                       R1 R36 K35 ["LayoutOrder"]
      470 DUPTABLE                         R37 K130 [{"Icon", "NamesAndFriendStatus", "Label"}]
      471 JUMPIFNOT                        R28 ; [+15]
      472 GETUPVAL                         R38 2
      473 GETTABLEKS                       R38 R38 K31 ["createElement"]
      475 GETUPVAL                         R39 13
      476 DUPTABLE                         R40 K133 [{["tag"] = "auto-xy", ["GroupTransparency"] = 0.5, ["LayoutOrder"]}]
      477 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      479 CALL                             R41 1 1
      480 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      482 DUPTABLE                         R41 K135 [{"Avatar"}]
      483 SETTABLEKS                       R29 R41 K134 ["Avatar"]
      485 CALL                             R38 3 1
      486 JUMP                             ; [+19]
      487 JUMPIFNOT                        R19 ; [+2]
      488 MOVE                             R38 R29
      489 JUMP                             ; [+16]
      490 GETUPVAL                         R38 2
      491 GETTABLEKS                       R38 R38 K31 ["createElement"]
      493 GETUPVAL                         R39 13
      494 DUPTABLE                         R40 K137 [{["tag"] = "size-600-600 radius-small", ["LayoutOrder"]}]
      495 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      497 CALL                             R41 1 1
      498 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      500 DUPTABLE                         R41 K138 [{"Icon"}]
      501 GETTABLEKS                       R42 R0 K127 ["Icon"]
      503 SETTABLEKS                       R42 R41 K127 ["Icon"]
      505 CALL                             R38 3 1
      506 SETTABLEKS                       R38 R37 K127 ["Icon"]
      508 GETUPVAL                         R38 2
      509 GETTABLEKS                       R38 R38 K31 ["createElement"]
      511 GETUPVAL                         R39 13
      512 DUPTABLE                         R40 K140 [{["tag"] = "col grow auto-y", ["GroupTransparency"], ["LayoutOrder"]}]
      513 JUMPIFNOT                        R28 ; [+2]
      514 LOADK                            R41 K90 [0.5]
      515 JUMP                             ; [+1]
      516 LOADNIL                          R41
      517 SETTABLEKS                       R41 R40 K132 ["GroupTransparency"]
      519 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      521 CALL                             R41 1 1
      522 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      524 DUPTABLE                         R41 K143 [{"PrimaryName", "AtName"}]
      525 GETUPVAL                         R42 2
      526 GETTABLEKS                       R42 R42 K31 ["createElement"]
      528 GETUPVAL                         R43 3
      529 DUPTABLE                         R44 K145 [{["Text"], ["tag"] = "auto-xy text-body-large text-align-x-left content-emphasis", ["LayoutOrder"] = 1}]
      530 GETTABLEKS                       R46 R17 K146 ["DisplayName"]
      532 JUMPIFNOT                        R46 ; [+3]
      533 GETTABLEKS                       R45 R17 K146 ["DisplayName"]
      535 JUMP                             ; [+2]
      536 GETTABLEKS                       R45 R0 K147 ["Name"]
      538 SETTABLEKS                       R45 R44 K32 ["Text"]
      540 CALL                             R42 2 1
      541 SETTABLEKS                       R42 R41 K141 ["PrimaryName"]
      543 JUMPIFNOT                        R19 ; [+13]
      544 GETUPVAL                         R42 2
      545 GETTABLEKS                       R42 R42 K31 ["createElement"]
      547 GETUPVAL                         R43 3
      548 DUPTABLE                         R44 K150 [{["Text"], ["tag"] = "auto-xy text-body-large content-default", ["LayoutOrder"] = 2}]
      549 LOADK                            R46 K151 ["@"]
      550 GETTABLEKS                       R47 R0 K147 ["Name"]
      552 CONCAT                           R45 R46 R47
      553 SETTABLEKS                       R45 R44 K32 ["Text"]
      555 CALL                             R42 2 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R42
      558 SETTABLEKS                       R42 R41 K142 ["AtName"]
      560 CALL                             R38 3 1
      561 SETTABLEKS                       R38 R37 K128 ["NamesAndFriendStatus"]
      563 JUMPIFNOT                        R27 ; [+17]
      564 GETTABLEKS                       R39 R17 K102 ["ShowCantInvite"]
      566 JUMPIFNOT                        R39 ; [+14]
      567 GETUPVAL                         R38 2
      568 GETTABLEKS                       R38 R38 K31 ["createElement"]
      570 GETUPVAL                         R39 16
      571 DUPTABLE                         R40 K153 [{["Localization"], ["LayoutOrder"], ["InDropdownMenu"] = True}]
      572 SETTABLEKS                       R6 R40 K3 ["Localization"]
      574 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      576 CALL                             R41 1 1
      577 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      579 CALL                             R38 2 1
      580 JUMP                             ; [+44]
      581 JUMPIFNOT                        R27 ; [+14]
      582 GETUPVAL                         R38 2
      583 GETTABLEKS                       R38 R38 K31 ["createElement"]
      585 GETUPVAL                         R39 17
      586 DUPTABLE                         R40 K154 [{"Text", "LayoutOrder"}]
      587 SETTABLEKS                       R22 R40 K32 ["Text"]
      589 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      591 CALL                             R41 1 1
      592 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      594 CALL                             R38 2 1
      595 JUMP                             ; [+29]
      596 JUMPIFNOT                        R18 ; [+27]
      597 GETUPVAL                         R38 2
      598 GETTABLEKS                       R38 R38 K31 ["createElement"]
      600 GETUPVAL                         R39 17
      601 DUPTABLE                         R40 K154 [{"Text", "LayoutOrder"}]
      602 GETUPVAL                         R42 7
      603 JUMPIFNOT                        R42 ; [+6]
      604 LOADK                            R43 K98 ["SearchBar"]
      605 LOADK                            R44 K155 ["ConnectionLabel"]
      606 NAMECALL                         R41 R6 K38 ["getText"]
      608 CALL                             R41 3 1
      609 JUMP                             ; [+5]
      610 LOADK                            R43 K98 ["SearchBar"]
      611 LOADK                            R44 K156 ["FriendLabel"]
      612 NAMECALL                         R41 R6 K38 ["getText"]
      614 CALL                             R41 3 1
      615 SETTABLEKS                       R41 R40 K32 ["Text"]
      617 NAMECALL                         R41 R25 K108 ["getNextOrder"]
      619 CALL                             R41 1 1
      620 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      622 CALL                             R38 2 1
      623 JUMP                             ; [+1]
      624 LOADNIL                          R38
      625 SETTABLEKS                       R38 R37 K129 ["Label"]
      627 CALL                             R34 3 1
      628 SETTABLEKS                       R34 R33 K115 ["ItemDetails"]
      630 CALL                             R30 3 -1
      631 RETURN                           R30 -1
      632 GETUPVAL                         R27 4
      633 GETTABLEKS                       R27 R27 K31 ["createElement"]
      635 LOADK                            R28 K157 ["ImageButton"]
      636 NEWTABLE                         R29 16 0
      638 GETIMPORT                        R30 K46 [UDim2.new]
      640 LOADN                            R31 0
      641 MOVE                             R32 R16
      642 LOADN                            R33 0
      643 MOVE                             R34 R11
      644 CALL                             R30 4 1
      645 SETTABLEKS                       R30 R29 K40 ["Size"]
      647 SETTABLEKS                       R26 R29 K41 ["BackgroundColor3"]
      649 LOADN                            R30 0
      650 SETTABLEKS                       R30 R29 K42 ["BorderSizePixel"]
      652 SETTABLEKS                       R1 R29 K35 ["LayoutOrder"]
      654 LOADB                            R30 0
      655 SETTABLEKS                       R30 R29 K158 ["AutoButtonColor"]
      657 NOT                              R30 R20
      658 SETTABLEKS                       R30 R29 K159 ["Active"]
      660 GETUPVAL                         R30 4
      661 GETTABLEKS                       R30 R30 K160 ["Event"]
      663 GETTABLEKS                       R30 R30 K161 ["Activated"]
      665 JUMPIF                           R20 ; [+2]
      666 MOVE                             R31 R2
      667 JUMP                             ; [+1]
      668 LOADNIL                          R31
      669 SETTABLE                         R31 R29 R30
      670 GETUPVAL                         R30 4
      671 GETTABLEKS                       R30 R30 K160 ["Event"]
      673 GETTABLEKS                       R30 R30 K162 ["MouseEnter"]
      675 NEWCLOSURE                       R31 P1
      676 CAPTURE                          UPVAL U0
      677 CAPTURE                          VAL R17
      678 SETTABLE                         R31 R29 R30
      679 GETUPVAL                         R30 4
      680 GETTABLEKS                       R30 R30 K160 ["Event"]
      682 GETTABLEKS                       R30 R30 K163 ["MouseLeave"]
      684 NEWCLOSURE                       R31 P2
      685 CAPTURE                          UPVAL U0
      686 CAPTURE                          VAL R17
      687 SETTABLE                         R31 R29 R30
      688 NEWTABLE                         R30 1 1
      690 JUMPIFNOT                        R21 ; [+25]
      691 GETUPVAL                         R32 4
      692 GETTABLEKS                       R32 R32 K31 ["createElement"]
      694 LOADK                            R33 K39 ["Frame"]
      695 DUPTABLE                         R34 K165 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 0.75, ["LayoutOrder"]}]
      696 GETIMPORT                        R35 K89 [Vector2.new]
      698 LOADN                            R36 0
      699 LOADN                            R37 0
      700 CALL                             R35 2 1
      701 SETTABLEKS                       R35 R34 K84 ["AnchorPoint"]
      703 GETIMPORT                        R35 K46 [UDim2.new]
      705 LOADN                            R36 0
      706 MOVE                             R37 R16
      707 LOADN                            R38 0
      708 MOVE                             R39 R11
      709 CALL                             R35 4 1
      710 SETTABLEKS                       R35 R34 K40 ["Size"]
      712 SETTABLEKS                       R1 R34 K35 ["LayoutOrder"]
      714 CALL                             R32 2 1
      715 JUMP                             ; [+1]
      716 LOADNIL                          R32
      717 SETTABLEKS                       R32 R30 K114 ["GrayOutBox"]
      719 GETUPVAL                         R31 4
      720 GETTABLEKS                       R31 R31 K31 ["createElement"]
      722 GETUPVAL                         R32 18
      723 DUPTABLE                         R33 K166 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      724 SETTABLEKS                       R1 R33 K35 ["LayoutOrder"]
      726 DUPTABLE                         R34 K170 [{"IconFrame", "NameAndFriendStatus", "RestrictionLabel"}]
      727 GETUPVAL                         R35 4
      728 GETTABLEKS                       R35 R35 K31 ["createElement"]
      730 LOADK                            R36 K39 ["Frame"]
      731 DUPTABLE                         R37 K171 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      732 NAMECALL                         R38 R25 K108 ["getNextOrder"]
      734 CALL                             R38 1 1
      735 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      737 GETIMPORT                        R38 K46 [UDim2.new]
      739 LOADN                            R39 0
      740 MOVE                             R40 R11
      741 LOADN                            R41 0
      742 MOVE                             R42 R11
      743 CALL                             R38 4 1
      744 SETTABLEKS                       R38 R37 K40 ["Size"]
      746 DUPTABLE                         R38 K173 [{"SmallIcon", "Padding"}]
      747 GETUPVAL                         R39 4
      748 GETTABLEKS                       R39 R39 K31 ["createElement"]
      750 LOADK                            R40 K39 ["Frame"]
      751 DUPTABLE                         R41 K174 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      752 GETIMPORT                        R42 K89 [Vector2.new]
      754 LOADK                            R43 K90 [0.5]
      755 LOADK                            R44 K90 [0.5]
      756 CALL                             R42 2 1
      757 SETTABLEKS                       R42 R41 K84 ["AnchorPoint"]
      759 GETIMPORT                        R42 K46 [UDim2.new]
      761 LOADK                            R43 K90 [0.5]
      762 LOADN                            R44 0
      763 LOADK                            R45 K90 [0.5]
      764 LOADN                            R46 0
      765 CALL                             R42 4 1
      766 SETTABLEKS                       R42 R41 K56 ["Position"]
      768 GETIMPORT                        R42 K46 [UDim2.new]
      770 LOADN                            R43 0
      771 GETTABLEKS                       R44 R7 K175 ["thumbnailSize"]
      773 LOADN                            R45 0
      774 GETTABLEKS                       R46 R7 K175 ["thumbnailSize"]
      776 CALL                             R42 4 1
      777 SETTABLEKS                       R42 R41 K40 ["Size"]
      779 SETTABLEKS                       R26 R41 K41 ["BackgroundColor3"]
      781 DUPTABLE                         R42 K138 [{"Icon"}]
      782 GETTABLEKS                       R43 R0 K127 ["Icon"]
      784 SETTABLEKS                       R43 R42 K127 ["Icon"]
      786 CALL                             R39 3 1
      787 SETTABLEKS                       R39 R38 K172 ["SmallIcon"]
      789 GETUPVAL                         R39 4
      790 GETTABLEKS                       R39 R39 K31 ["createElement"]
      792 LOADK                            R40 K77 ["UIPadding"]
      793 DUPTABLE                         R41 K79 [{"PaddingLeft"}]
      794 GETIMPORT                        R42 K81 [UDim.new]
      796 LOADN                            R43 0
      797 GETTABLEKS                       R44 R7 K176 ["thumbnailPaddingLeft"]
      799 CALL                             R42 2 1
      800 SETTABLEKS                       R42 R41 K78 ["PaddingLeft"]
      802 CALL                             R39 2 1
      803 SETTABLEKS                       R39 R38 K75 ["Padding"]
      805 CALL                             R35 3 1
      806 SETTABLEKS                       R35 R34 K167 ["IconFrame"]
      808 GETUPVAL                         R35 4
      809 GETTABLEKS                       R35 R35 K31 ["createElement"]
      811 LOADK                            R36 K39 ["Frame"]
      812 DUPTABLE                         R37 K177 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      813 NAMECALL                         R38 R25 K108 ["getNextOrder"]
      815 CALL                             R38 1 1
      816 SETTABLEKS                       R38 R37 K35 ["LayoutOrder"]
      818 GETIMPORT                        R38 K46 [UDim2.new]
      820 LOADN                            R39 0
      821 GETTABLEKS                       R40 R7 K178 ["nameLabelWidth"]
      823 LOADN                            R41 1
      824 LOADN                            R42 0
      825 CALL                             R38 4 1
      826 SETTABLEKS                       R38 R37 K40 ["Size"]
      828 DUPTABLE                         R38 K182 [{"Layout", "TextFrame", "FriendFrame"}]
      829 GETUPVAL                         R39 4
      830 GETTABLEKS                       R39 R39 K31 ["createElement"]
      832 LOADK                            R40 K183 ["UIListLayout"]
      833 DUPTABLE                         R41 K186 [{"FillDirection", "SortOrder", "Padding"}]
      834 GETIMPORT                        R42 K188 [Enum.FillDirection.Vertical]
      836 SETTABLEKS                       R42 R41 K184 ["FillDirection"]
      838 GETIMPORT                        R42 K189 [Enum.SortOrder.LayoutOrder]
      840 SETTABLEKS                       R42 R41 K185 ["SortOrder"]
      842 GETIMPORT                        R42 K81 [UDim.new]
      844 LOADN                            R43 0
      845 LOADN                            R44 0
      846 CALL                             R42 2 1
      847 SETTABLEKS                       R42 R41 K75 ["Padding"]
      849 CALL                             R39 2 1
      850 SETTABLEKS                       R39 R38 K179 ["Layout"]
      852 GETUPVAL                         R39 4
      853 GETTABLEKS                       R39 R39 K31 ["createElement"]
      855 LOADK                            R40 K51 ["TextLabel"]
      856 GETUPVAL                         R41 5
      857 GETTABLEKS                       R41 R41 K52 ["Dictionary"]
      859 GETTABLEKS                       R41 R41 K53 ["join"]
      861 GETTABLEKS                       R42 R4 K70 ["fontStyle"]
      863 GETTABLEKS                       R42 R42 K71 ["Normal"]
      865 DUPTABLE                         R43 K193 [{["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["ClipsDescendants"] = True, ["LayoutOrder"] = 1, ["BorderSizePixel"] = 0}]
      866 GETIMPORT                        R44 K46 [UDim2.new]
      868 LOADN                            R45 0
      869 GETTABLEKS                       R46 R7 K178 ["nameLabelWidth"]
      871 LOADN                            R47 0
      872 MOVE                             R48 R23
      873 CALL                             R44 4 1
      874 SETTABLEKS                       R44 R43 K40 ["Size"]
      876 GETTABLEKS                       R44 R0 K147 ["Name"]
      878 SETTABLEKS                       R44 R43 K32 ["Text"]
      880 GETIMPORT                        R44 K62 [Enum.TextXAlignment.Left]
      882 SETTABLEKS                       R44 R43 K55 ["TextXAlignment"]
      884 GETIMPORT                        R44 K195 [Enum.TextYAlignment.Center]
      886 SETTABLEKS                       R44 R43 K190 ["TextYAlignment"]
      888 JUMPIFNOT                        R24 ; [+7]
      889 GETTABLEKS                       R44 R7 K23 ["dropDown"]
      891 GETTABLEKS                       R44 R44 K101 ["hovered"]
      893 GETTABLEKS                       R44 R44 K196 ["displayText"]
      895 JUMPIF                           R44 ; [+4]
      896 GETTABLEKS                       R44 R7 K23 ["dropDown"]
      898 GETTABLEKS                       R44 R44 K196 ["displayText"]
      900 SETTABLEKS                       R44 R43 K191 ["TextColor3"]
      902 CALL                             R41 2 1
      903 DUPTABLE                         R42 K76 [{"Padding"}]
      904 GETUPVAL                         R43 4
      905 GETTABLEKS                       R43 R43 K31 ["createElement"]
      907 LOADK                            R44 K77 ["UIPadding"]
      908 DUPTABLE                         R45 K79 [{"PaddingLeft"}]
      909 GETIMPORT                        R46 K81 [UDim.new]
      911 LOADN                            R47 0
      912 GETTABLEKS                       R48 R7 K197 ["renderItemTextPadding"]
      914 CALL                             R46 2 1
      915 SETTABLEKS                       R46 R45 K78 ["PaddingLeft"]
      917 CALL                             R43 2 1
      918 SETTABLEKS                       R43 R42 K75 ["Padding"]
      920 CALL                             R39 3 1
      921 SETTABLEKS                       R39 R38 K180 ["TextFrame"]
      923 JUMPIFNOT                        R18 ; [+146]
      924 GETUPVAL                         R39 4
      925 GETTABLEKS                       R39 R39 K31 ["createElement"]
      927 GETUPVAL                         R40 18
      928 DUPTABLE                         R41 K198 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      929 DUPTABLE                         R42 K201 [{"Padding", "FriendImageLabel", "FriendTextLabel"}]
      930 GETUPVAL                         R43 4
      931 GETTABLEKS                       R43 R43 K31 ["createElement"]
      933 LOADK                            R44 K77 ["UIPadding"]
      934 DUPTABLE                         R45 K203 [{"PaddingLeft", "PaddingBottom"}]
      935 GETIMPORT                        R46 K81 [UDim.new]
      937 LOADN                            R47 0
      938 GETTABLEKS                       R48 R7 K197 ["renderItemTextPadding"]
      940 CALL                             R46 2 1
      941 SETTABLEKS                       R46 R45 K78 ["PaddingLeft"]
      943 GETIMPORT                        R46 K81 [UDim.new]
      945 LOADN                            R47 0
      946 GETTABLEKS                       R48 R7 K197 ["renderItemTextPadding"]
      948 CALL                             R46 2 1
      949 SETTABLEKS                       R46 R45 K202 ["PaddingBottom"]
      951 CALL                             R43 2 1
      952 SETTABLEKS                       R43 R42 K75 ["Padding"]
      954 GETUPVAL                         R43 4
      955 GETTABLEKS                       R43 R43 K31 ["createElement"]
      957 LOADK                            R44 K204 ["ImageLabel"]
      958 DUPTABLE                         R45 K206 [{["Size"], ["Image"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      959 GETIMPORT                        R46 K46 [UDim2.new]
      961 LOADN                            R47 0
      962 GETTABLEKS                       R48 R7 K207 ["friendIcon"]
      964 GETTABLEKS                       R48 R48 K22 ["Width"]
      966 LOADN                            R49 0
      967 GETTABLEKS                       R50 R7 K207 ["friendIcon"]
      969 GETTABLEKS                       R50 R50 K208 ["Height"]
      971 CALL                             R46 4 1
      972 SETTABLEKS                       R46 R45 K40 ["Size"]
      974 GETTABLEKS                       R46 R7 K207 ["friendIcon"]
      976 GETTABLEKS                       R46 R46 K205 ["Image"]
      978 SETTABLEKS                       R46 R45 K205 ["Image"]
      980 CALL                             R43 2 1
      981 SETTABLEKS                       R43 R42 K199 ["FriendImageLabel"]
      983 GETUPVAL                         R43 4
      984 GETTABLEKS                       R43 R43 K31 ["createElement"]
      986 LOADK                            R44 K51 ["TextLabel"]
      987 GETUPVAL                         R45 5
      988 GETTABLEKS                       R45 R45 K52 ["Dictionary"]
      990 GETTABLEKS                       R45 R45 K53 ["join"]
      992 GETTABLEKS                       R46 R4 K70 ["fontStyle"]
      994 GETTABLEKS                       R46 R46 K209 ["Subtext"]
      996 DUPTABLE                         R47 K211 [{["Size"], ["AutomaticSize"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["BorderSizePixel"] = 0}]
      997 GETIMPORT                        R48 K46 [UDim2.new]
      999 LOADN                            R49 1
     1000 LOADN                            R50 0
     1001 LOADN                            R51 0
     1002 GETTABLEKS                       R52 R7 K207 ["friendIcon"]
     1004 GETTABLEKS                       R52 R52 K212 ["LabelHeight"]
     1006 CALL                             R48 4 1
     1007 SETTABLEKS                       R48 R47 K40 ["Size"]
     1009 GETIMPORT                        R48 K213 [Enum.AutomaticSize.X]
     1011 SETTABLEKS                       R48 R47 K210 ["AutomaticSize"]
     1013 GETUPVAL                         R49 7
     1014 JUMPIFNOT                        R49 ; [+6]
     1015 LOADK                            R50 K98 ["SearchBar"]
     1016 LOADK                            R51 K155 ["ConnectionLabel"]
     1017 NAMECALL                         R48 R6 K38 ["getText"]
     1019 CALL                             R48 3 1
     1020 JUMP                             ; [+5]
     1021 LOADK                            R50 K98 ["SearchBar"]
     1022 LOADK                            R51 K156 ["FriendLabel"]
     1023 NAMECALL                         R48 R6 K38 ["getText"]
     1025 CALL                             R48 3 1
     1026 SETTABLEKS                       R48 R47 K32 ["Text"]
     1028 GETIMPORT                        R48 K62 [Enum.TextXAlignment.Left]
     1030 SETTABLEKS                       R48 R47 K55 ["TextXAlignment"]
     1032 JUMPIFNOT                        R24 ; [+7]
     1033 GETTABLEKS                       R48 R7 K23 ["dropDown"]
     1035 GETTABLEKS                       R48 R48 K101 ["hovered"]
     1037 GETTABLEKS                       R48 R48 K196 ["displayText"]
     1039 JUMPIF                           R48 ; [+4]
     1040 GETTABLEKS                       R48 R7 K23 ["dropDown"]
     1042 GETTABLEKS                       R48 R48 K196 ["displayText"]
     1044 SETTABLEKS                       R48 R47 K191 ["TextColor3"]
     1046 CALL                             R45 2 1
     1047 DUPTABLE                         R46 K76 [{"Padding"}]
     1048 GETUPVAL                         R47 4
     1049 GETTABLEKS                       R47 R47 K31 ["createElement"]
     1051 LOADK                            R48 K77 ["UIPadding"]
     1052 DUPTABLE                         R49 K79 [{"PaddingLeft"}]
     1053 GETIMPORT                        R50 K81 [UDim.new]
     1055 LOADN                            R51 0
     1056 GETTABLEKS                       R53 R7 K197 ["renderItemTextPadding"]
     1058 DIVK                             R52 R53 K149 [2]
     1059 CALL                             R50 2 1
     1060 SETTABLEKS                       R50 R49 K78 ["PaddingLeft"]
     1062 CALL                             R47 2 1
     1063 SETTABLEKS                       R47 R46 K75 ["Padding"]
     1065 CALL                             R43 3 1
     1066 SETTABLEKS                       R43 R42 K200 ["FriendTextLabel"]
     1068 CALL                             R39 3 1
     1069 JUMP                             ; [+1]
     1070 LOADNIL                          R39
     1071 SETTABLEKS                       R39 R38 K181 ["FriendFrame"]
     1073 CALL                             R35 3 1
     1074 SETTABLEKS                       R35 R34 K168 ["NameAndFriendStatus"]
     1076 JUMPIFNOT                        R21 ; [+55]
     1077 JUMPIFNOT                        R19 ; [+54]
     1078 GETUPVAL                         R35 4
     1079 GETTABLEKS                       R35 R35 K31 ["createElement"]
     1081 LOADK                            R36 K51 ["TextLabel"]
     1082 GETUPVAL                         R37 5
     1083 GETTABLEKS                       R37 R37 K52 ["Dictionary"]
     1085 GETTABLEKS                       R37 R37 K53 ["join"]
     1087 GETTABLEKS                       R38 R4 K70 ["fontStyle"]
     1089 GETTABLEKS                       R38 R38 K71 ["Normal"]
     1091 DUPTABLE                         R39 K214 [{["Size"], ["Text"], ["TextXAlignment"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["BorderSizePixel"] = 0}]
     1092 GETIMPORT                        R40 K46 [UDim2.new]
     1094 LOADN                            R41 0
     1095 GETTABLEKS                       R42 R7 K23 ["dropDown"]
     1097 GETTABLEKS                       R42 R42 K215 ["eligibilityLabelWidth"]
     1099 LOADN                            R43 0
     1100 MOVE                             R44 R11
     1101 CALL                             R40 4 1
     1102 SETTABLEKS                       R40 R39 K40 ["Size"]
     1104 SETTABLEKS                       R22 R39 K32 ["Text"]
     1106 GETIMPORT                        R40 K62 [Enum.TextXAlignment.Left]
     1108 SETTABLEKS                       R40 R39 K55 ["TextXAlignment"]
     1110 JUMPIFNOT                        R24 ; [+7]
     1111 GETTABLEKS                       R40 R7 K23 ["dropDown"]
     1113 GETTABLEKS                       R40 R40 K101 ["hovered"]
     1115 GETTABLEKS                       R40 R40 K196 ["displayText"]
     1117 JUMPIF                           R40 ; [+4]
     1118 GETTABLEKS                       R40 R7 K23 ["dropDown"]
     1120 GETTABLEKS                       R40 R40 K196 ["displayText"]
     1122 SETTABLEKS                       R40 R39 K191 ["TextColor3"]
     1124 NAMECALL                         R40 R25 K108 ["getNextOrder"]
     1126 CALL                             R40 1 1
     1127 SETTABLEKS                       R40 R39 K35 ["LayoutOrder"]
     1129 CALL                             R37 2 -1
     1130 CALL                             R35 -1 1
     1131 JUMP                             ; [+1]
     1132 LOADNIL                          R35
     1133 SETTABLEKS                       R35 R34 K169 ["RestrictionLabel"]
     1135 CALL                             R31 3 -1
     1136 SETLIST                          R30 R31 -1 [1]
     1138 CALL                             R27 3 -1
     1139 RETURN                           R27 -1

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
       51 SETTABLEKS                       R1 R0 K23 ["onTextBoxFocused"]
       53 NEWCLOSURE                       R1 P5
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K24 ["onTextBoxFocusLost"]
       58 NEWCLOSURE                       R1 P6
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K25 ["onClearButtonHovered"]
       62 NEWCLOSURE                       R1 P7
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K26 ["onClearButtonHoverEnded"]
       66 NEWCLOSURE                       R1 P8
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K27 ["onClearButtonClicked"]
       70 NEWCLOSURE                       R1 P9
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R1 R0 K28 ["onItemClicked"]
       74 NEWCLOSURE                       R1 P10
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R1 R0 K8 ["showDropdown"]
       78 NEWCLOSURE                       R1 P11
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U1
       81 SETTABLEKS                       R1 R0 K29 ["hideDropdown"]
       83 NEWCLOSURE                       R1 P12
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R1 R0 K30 ["onKeyMouseEnter"]
       87 NEWCLOSURE                       R1 P13
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U1
       90 SETTABLEKS                       R1 R0 K31 ["onKeyMouseLeave"]
       92 NEWCLOSURE                       R1 P14
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          UPVAL U13
      105 CAPTURE                          UPVAL U14
      106 CAPTURE                          UPVAL U15
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U16
      109 CAPTURE                          UPVAL U17
      110 CAPTURE                          UPVAL U18
      111 CAPTURE                          UPVAL U19
      112 SETTABLEKS                       R1 R0 K32 ["onRenderItem"]
      114 GETTABLEKS                       R1 R0 K33 ["props"]
      116 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      118 JUMPIFNOT                        R1 ; [+6]
      119 GETTABLEKS                       R1 R0 K33 ["props"]
      121 GETTABLEKS                       R1 R1 K22 ["onTextChanged"]
      123 LOADK                            R2 K1 [""]
      124 CALL                             R1 1 0
      125 RETURN                           R0 0

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
      112 GETIMPORT                        R22 K4 [require]
      114 GETTABLEKS                       R23 R0 K16 ["Src"]
      116 GETTABLEKS                       R23 R23 K31 ["Components"]
      118 GETTABLEKS                       R23 R23 K32 ["EarlyTesters"]
      120 GETTABLEKS                       R23 R23 K33 ["CantInviteLabel"]
      122 CALL                             R22 1 1
      123 GETTABLEKS                       R23 R14 K28 ["UI"]
      125 GETTABLEKS                       R23 R23 K34 ["LoadingIndicator"]
      127 GETIMPORT                        R24 K36 [game]
      129 LOADK                            R26 K37 ["TextService"]
      130 NAMECALL                         R24 R24 K38 ["GetService"]
      132 CALL                             R24 2 1
      133 GETIMPORT                        R25 K4 [require]
      135 GETTABLEKS                       R26 R0 K39 ["Bin"]
      137 GETTABLEKS                       R26 R26 K40 ["defineLuaFlags"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K36 [game]
      142 LOADK                            R28 K41 ["StudioManageCollabFixFocusError"]
      143 NAMECALL                         R26 R26 K42 ["GetFastFlag"]
      145 CALL                             R26 2 1
      146 GETIMPORT                        R27 K36 [game]
      148 LOADK                            R29 K43 ["StudioFriendToConnection"]
      149 NAMECALL                         R27 R27 K42 ["GetFastFlag"]
      151 CALL                             R27 2 1
      152 GETIMPORT                        R28 K36 [game]
      154 LOADK                            R30 K44 ["Collab8818_ShowSearchItemDisplayName"]
      155 NAMECALL                         R28 R28 K42 ["GetFastFlag"]
      157 CALL                             R28 2 1
      158 GETIMPORT                        R29 K4 [require]
      160 GETTABLEKS                       R30 R0 K16 ["Src"]
      162 GETTABLEKS                       R30 R30 K17 ["Util"]
      164 GETTABLEKS                       R30 R30 K45 ["IsLikelyCollaboratorPrefetchEnabled"]
      166 CALL                             R29 1 1
      167 MOVE                             R30 R29
      168 CALL                             R30 0 1
      169 MOVE                             R31 R21
      170 LOADK                            R32 K46 ["Frame"]
      171 LOADK                            R33 K47 ["UIListLayout"]
      172 DUPTABLE                         R34 K50 [{"SortOrder", "Padding"}]
      173 GETIMPORT                        R35 K53 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R35 R34 K48 ["SortOrder"]
      177 GETIMPORT                        R35 K56 [UDim.new]
      179 LOADN                            R36 0
      180 LOADN                            R37 0
      181 CALL                             R35 2 1
      182 SETTABLEKS                       R35 R34 K49 ["Padding"]
      184 CALL                             R31 3 1
      185 MOVE                             R32 R21
      186 LOADK                            R33 K46 ["Frame"]
      187 LOADK                            R34 K47 ["UIListLayout"]
      188 DUPTABLE                         R35 K58 [{"SortOrder", "Padding", "FillDirection"}]
      189 GETIMPORT                        R36 K53 [Enum.SortOrder.LayoutOrder]
      191 SETTABLEKS                       R36 R35 K48 ["SortOrder"]
      193 GETIMPORT                        R36 K56 [UDim.new]
      195 LOADN                            R37 0
      196 LOADN                            R38 0
      197 CALL                             R36 2 1
      198 SETTABLEKS                       R36 R35 K49 ["Padding"]
      200 GETIMPORT                        R36 K60 [Enum.FillDirection.Horizontal]
      202 SETTABLEKS                       R36 R35 K57 ["FillDirection"]
      204 CALL                             R32 3 1
      205 MOVE                             R33 R21
      206 LOADK                            R34 K61 ["ImageLabel"]
      207 LOADK                            R35 K47 ["UIListLayout"]
      208 DUPTABLE                         R36 K58 [{"SortOrder", "Padding", "FillDirection"}]
      209 GETIMPORT                        R37 K53 [Enum.SortOrder.LayoutOrder]
      211 SETTABLEKS                       R37 R36 K48 ["SortOrder"]
      213 GETIMPORT                        R37 K56 [UDim.new]
      215 LOADN                            R38 0
      216 LOADN                            R39 0
      217 CALL                             R37 2 1
      218 SETTABLEKS                       R37 R36 K49 ["Padding"]
      220 GETIMPORT                        R37 K60 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R37 R36 K57 ["FillDirection"]
      224 CALL                             R33 3 1
      225 LOADNIL                          R34
      226 JUMPIFNOT                        R28 ; [+4]
      227 DUPCLOSURE                       R34 K62 [PROTO_0]
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R6
      231 GETTABLEKS                       R35 R1 K63 ["PureComponent"]
      233 LOADK                            R37 K64 ["SearchBar"]
      234 NAMECALL                         R35 R35 K65 ["extend"]
      236 CALL                             R35 2 1
      237 DUPCLOSURE                       R36 K66 [PROTO_1]
      238 NEWCLOSURE                       R37 P2
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R3
      245 CAPTURE                          VAL R6
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R9
      256 CAPTURE                          VAL R22
      257 CAPTURE                          REF R34
      258 CAPTURE                          VAL R32
      259 SETTABLEKS                       R37 R35 K67 ["init"]
      261 DUPCLOSURE                       R37 K68 [PROTO_23]
      262 SETTABLEKS                       R37 R35 K69 ["mergeResultsTable"]
      264 DUPCLOSURE                       R37 K70 [PROTO_25]
      265 CAPTURE                          VAL R25
      266 CAPTURE                          VAL R30
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R31
      269 CAPTURE                          VAL R2
      270 CAPTURE                          VAL R33
      271 CAPTURE                          VAL R10
      272 CAPTURE                          VAL R20
      273 SETTABLEKS                       R37 R35 K71 ["render"]
      275 DUPCLOSURE                       R37 K72 [PROTO_26]
      276 CAPTURE                          VAL R26
      277 SETTABLEKS                       R37 R35 K73 ["didMount"]
      279 DUPCLOSURE                       R37 K74 [PROTO_27]
      280 CAPTURE                          VAL R26
      281 SETTABLEKS                       R37 R35 K75 ["willUnmount"]
      283 MOVE                             R37 R12
      284 DUPTABLE                         R38 K77 [{"Stylizer", "Localization", "Mouse"}]
      285 SETTABLEKS                       R15 R38 K24 ["Stylizer"]
      287 SETTABLEKS                       R13 R38 K22 ["Localization"]
      289 GETTABLEKS                       R39 R11 K76 ["Mouse"]
      291 SETTABLEKS                       R39 R38 K76 ["Mouse"]
      293 CALL                             R37 1 1
      294 MOVE                             R38 R35
      295 CALL                             R37 1 1
      296 MOVE                             R35 R37
      297 CLOSEUPVALS                      R34
      298 RETURN                           R35 1
