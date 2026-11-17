PROTO_0:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 GETTABLEKS                       R2 R0 K3 ["Key"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K4 ["AssetPalettes"]
        7 GETTABLEKS                       R5 R0 K3 ["Key"]
        9 NAMECALL                         R2 R2 K5 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AmbiguousAsset"]
        6 GETTABLEKS                       R1 R1 K2 ["instances"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K5 [table.sort]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K6 [PROTO_1]
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["AmbiguousAsset"]
        8 GETTABLEKS                       R2 R2 K3 ["instances"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R5 K4 ["Key"]
       15 JUMPIFNOTEQ                      R7 R1 ; [+7]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K5 ["SetAssignedPalette"]
       20 MOVE                             R8 R5
       21 CALL                             R7 1 0
       22 RETURN                           R0 0
       23 FORGLOOP                         R2 2 ; [-11]
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["tag"] = "col gap-small auto-y", ["Size"]}]
        5 GETIMPORT                        R3 K7 [UDim2.fromOffset]
        7 LOADN                            R4 130
        8 LOADN                            R5 0
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 DUPTABLE                         R3 K9 [{"Dropdown"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K22 [{["testId"] = "ambiguous-asset-type", ["label"] = "", ["placeholder"], ["value"], ["items"], ["onItemChanged"], ["isDisabled"] = False, ["width"], ["size"]}]
       18 GETUPVAL                         R7 3
       19 LOADK                            R9 K23 ["DisambiguationMenu"]
       20 LOADK                            R10 K24 ["Category"]
       21 NAMECALL                         R7 R7 K25 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K14 ["placeholder"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K26 ["AssignedPalette"]
       29 JUMPIFNOT                        R8 ; [+6]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K26 ["AssignedPalette"]
       33 GETTABLEKS                       R7 R7 K27 ["Key"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R7
       37 SETTABLEKS                       R7 R6 K15 ["value"]
       39 GETUPVAL                         R7 5
       40 SETTABLEKS                       R7 R6 K16 ["items"]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          UPVAL U4
       44 SETTABLEKS                       R7 R6 K17 ["onItemChanged"]
       46 GETIMPORT                        R7 K30 [UDim.new]
       48 LOADN                            R8 0
       49 LOADN                            R9 130
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K20 ["width"]
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R7 R7 K31 ["Small"]
       56 SETTABLEKS                       R7 R6 K21 ["size"]
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K8 ["Dropdown"]
       61 CALL                             R0 3 -1
       62 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["AssetPalettes"]
        5 GETTABLEKS                       R5 R0 K4 ["Key"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["Label"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AmbiguousAsset"]
        6 GETTABLEKS                       R1 R1 K2 ["instances"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K5 [table.sort]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K6 [PROTO_6]
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetAssignedPalette"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+76]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K3 ["AmbiguousAsset"]
       23 GETTABLEKS                       R6 R6 K4 ["instances"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 LOADK                            R6 K1 ["DisambiguationMenu"]
       29 GETTABLEKS                       R8 R0 K6 ["AssetTypeSubtitleText"]
       31 ORK                              R7 R8 K5 [""]
       32 NAMECALL                         R4 R1 K7 ["getText"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U7
       46 NEWTABLE                         R7 0 4
       48 GETTABLEKS                       R8 R0 K8 ["AssignedPalette"]
       50 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
       52 GETTABLEKS                       R9 R9 K4 ["instances"]
       54 GETTABLEKS                       R10 R0 K9 ["SetAssignedPalette"]
       56 MOVE                             R11 R3
       57 SETLIST                          R7 R8 4 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K10 ["createElement"]
       63 GETUPVAL                         R7 8
       64 DUPTABLE                         R8 K15 [{"Instance", "Name", "Subtitle", "LayoutOrder"}]
       65 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
       67 GETTABLEKS                       R9 R9 K16 ["worldModel"]
       69 SETTABLEKS                       R9 R8 K11 ["Instance"]
       71 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
       73 GETTABLEKS                       R9 R9 K16 ["worldModel"]
       75 GETTABLEKS                       R9 R9 K12 ["Name"]
       77 SETTABLEKS                       R9 R8 K12 ["Name"]
       79 SETTABLEKS                       R4 R8 K13 ["Subtitle"]
       81 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       83 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       85 MOVE                             R9 R5
       86 CALL                             R6 3 -1
       87 RETURN                           R6 -1
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       91 NEWCLOSURE                       R4 P2
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 NEWTABLE                         R5 0 1
       97 GETTABLEKS                       R6 R0 K3 ["AmbiguousAsset"]
       99 GETTABLEKS                       R6 R6 K4 ["instances"]
      101 SETLIST                          R5 R6 1 [1]
      103 CALL                             R3 2 1
      104 GETUPVAL                         R4 3
      105 GETTABLEKS                       R4 R4 K10 ["createElement"]
      107 GETUPVAL                         R5 8
      108 DUPTABLE                         R6 K17 [{"Name", "Instance", "LayoutOrder"}]
      109 GETTABLEKS                       R7 R0 K3 ["AmbiguousAsset"]
      111 GETTABLEKS                       R7 R7 K16 ["worldModel"]
      113 GETTABLEKS                       R7 R7 K12 ["Name"]
      115 SETTABLEKS                       R7 R6 K12 ["Name"]
      117 GETTABLEKS                       R7 R0 K3 ["AmbiguousAsset"]
      119 GETTABLEKS                       R7 R7 K16 ["worldModel"]
      121 SETTABLEKS                       R7 R6 K11 ["Instance"]
      123 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
      125 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
      127 DUPTABLE                         R7 K19 [{"Dropdown"}]
      128 GETUPVAL                         R8 3
      129 GETTABLEKS                       R8 R8 K10 ["createElement"]
      131 GETUPVAL                         R9 9
      132 DUPTABLE                         R10 K22 [{"AutomaticSize", "Size"}]
      133 GETIMPORT                        R11 K25 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R11 R10 K20 ["AutomaticSize"]
      137 GETIMPORT                        R11 K28 [UDim2.new]
      139 LOADN                            R12 0
      140 GETTABLEKS                       R13 R2 K29 ["DropdownWidth"]
      142 LOADN                            R14 0
      143 LOADN                            R15 0
      144 CALL                             R11 4 1
      145 SETTABLEKS                       R11 R10 K21 ["Size"]
      147 DUPTABLE                         R11 K31 [{"DropdownMenu"}]
      148 GETUPVAL                         R12 3
      149 GETTABLEKS                       R12 R12 K10 ["createElement"]
      151 GETUPVAL                         R13 10
      152 DUPTABLE                         R14 K37 [{"PlaceholderText", "Width", "SelectedId", "OnItemActivated", "Items"}]
      153 LOADK                            R17 K1 ["DisambiguationMenu"]
      154 LOADK                            R18 K38 ["DropdownPlaceholder"]
      155 NAMECALL                         R15 R1 K7 ["getText"]
      157 CALL                             R15 3 1
      158 SETTABLEKS                       R15 R14 K32 ["PlaceholderText"]
      160 GETTABLEKS                       R15 R2 K29 ["DropdownWidth"]
      162 SETTABLEKS                       R15 R14 K33 ["Width"]
      164 GETTABLEKS                       R15 R0 K8 ["AssignedPalette"]
      166 SETTABLEKS                       R15 R14 K34 ["SelectedId"]
      168 NEWCLOSURE                       R15 P3
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R15 R14 K35 ["OnItemActivated"]
      172 SETTABLEKS                       R3 R14 K36 ["Items"]
      174 CALL                             R12 2 1
      175 SETTABLEKS                       R12 R11 K30 ["DropdownMenu"]
      177 CALL                             R8 3 1
      178 SETTABLEKS                       R8 R7 K18 ["Dropdown"]
      180 CALL                             R4 3 -1
      181 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["DisambiguationMenu"]
       36 GETTABLEKS                       R5 R5 K13 ["DisambiguationMenuEntry"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Flags"]
       45 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Resources"]
       54 GETTABLEKS                       R7 R7 K17 ["Theme"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K18 ["Types"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R2 K19 ["UI"]
       66 GETTABLEKS                       R9 R8 K20 ["Pane"]
       68 GETTABLEKS                       R10 R8 K21 ["SelectInput"]
       70 GETTABLEKS                       R11 R2 K22 ["ContextServices"]
       72 GETTABLEKS                       R11 R11 K23 ["Localization"]
       74 GETTABLEKS                       R12 R2 K22 ["ContextServices"]
       76 GETTABLEKS                       R12 R12 K24 ["Stylizer"]
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K6 ["Packages"]
       82 GETTABLEKS                       R14 R14 K25 ["Foundation"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R13 K26 ["Dropdown"]
       87 GETTABLEKS                       R14 R14 K27 ["Root"]
       89 GETTABLEKS                       R15 R13 K28 ["Enums"]
       91 GETTABLEKS                       R15 R15 K29 ["InputSize"]
       93 GETTABLEKS                       R16 R13 K30 ["View"]
       95 DUPCLOSURE                       R17 K31 [PROTO_9]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R10
      107 RETURN                           R17 1
