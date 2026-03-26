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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AmbiguousAsset"]
        6 GETTABLEKS                       R1 R2 K2 ["instances"]
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
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["AmbiguousAsset"]
        8 GETTABLEKS                       R2 R5 K3 ["instances"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R5 K4 ["Key"]
       15 JUMPIFNOTEQ                      R7 R1 ; [+7]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K5 ["SetAssignedPalette"]
       20 MOVE                             R8 R5
       21 CALL                             R7 1 0
       22 RETURN                           R0 0
       23 FORGLOOP                         R2 2 ; [-11]
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"tag", "Size"}]
        5 LOADK                            R3 K4 ["col gap-small auto-y"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETIMPORT                        R3 K7 [UDim2.fromOffset]
       10 LOADN                            R4 130
       11 LOADN                            R5 0
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 DUPTABLE                         R3 K9 [{"Dropdown"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["createElement"]
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K18 [{"label", "placeholder", "value", "items", "onItemChanged", "isDisabled", "width", "size"}]
       21 LOADK                            R7 K19 [""]
       22 SETTABLEKS                       R7 R6 K10 ["label"]
       24 GETUPVAL                         R7 3
       25 LOADK                            R9 K20 ["DisambiguationMenu"]
       26 LOADK                            R10 K21 ["Category"]
       27 NAMECALL                         R7 R7 K22 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K11 ["placeholder"]
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R8 R9 K23 ["AssignedPalette"]
       35 JUMPIFNOT                        R8 ; [+6]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R8 R9 K23 ["AssignedPalette"]
       39 GETTABLEKS                       R7 R8 K24 ["Key"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 SETTABLEKS                       R7 R6 K12 ["value"]
       45 GETUPVAL                         R7 5
       46 SETTABLEKS                       R7 R6 K13 ["items"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R7 R6 K14 ["onItemChanged"]
       52 LOADB                            R7 0
       53 SETTABLEKS                       R7 R6 K15 ["isDisabled"]
       55 GETIMPORT                        R7 K27 [UDim.new]
       57 LOADN                            R8 0
       58 LOADN                            R9 130
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K16 ["width"]
       62 GETUPVAL                         R8 6
       63 GETTABLEKS                       R7 R8 K28 ["Small"]
       65 SETTABLEKS                       R7 R6 K17 ["size"]
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K8 ["Dropdown"]
       70 CALL                             R0 3 -1
       71 RETURN                           R0 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AmbiguousAsset"]
        6 GETTABLEKS                       R1 R2 K2 ["instances"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K5 [table.sort]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K6 [PROTO_6]
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["AssetPalettes"]
        5 GETTABLEKS                       R5 R0 K4 ["Key"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["Label"]
       12 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetAssignedPalette"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_11:
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
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R7 R0 K3 ["AmbiguousAsset"]
       23 GETTABLEKS                       R6 R7 K4 ["instances"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 LOADK                            R6 K1 ["DisambiguationMenu"]
       29 GETTABLEKS                       R8 R0 K6 ["AssetTypeSubtitleText"]
       31 ORK                              R7 R8 K5 [""]
       32 NAMECALL                         R4 R1 K7 ["getText"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K2 ["useMemo"]
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
       50 GETTABLEKS                       R10 R0 K3 ["AmbiguousAsset"]
       52 GETTABLEKS                       R9 R10 K4 ["instances"]
       54 GETTABLEKS                       R10 R0 K9 ["SetAssignedPalette"]
       56 MOVE                             R11 R3
       57 SETLIST                          R7 R8 4 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R6 R7 K10 ["createElement"]
       63 GETUPVAL                         R7 8
       64 DUPTABLE                         R8 K15 [{"Instance", "Name", "Subtitle", "LayoutOrder"}]
       65 GETTABLEKS                       R10 R0 K3 ["AmbiguousAsset"]
       67 GETTABLEKS                       R9 R10 K16 ["worldModel"]
       69 SETTABLEKS                       R9 R8 K11 ["Instance"]
       71 GETTABLEKS                       R11 R0 K3 ["AmbiguousAsset"]
       73 GETTABLEKS                       R10 R11 K16 ["worldModel"]
       75 GETTABLEKS                       R9 R10 K12 ["Name"]
       77 SETTABLEKS                       R9 R8 K12 ["Name"]
       79 SETTABLEKS                       R4 R8 K13 ["Subtitle"]
       81 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       83 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       85 MOVE                             R9 R5
       86 CALL                             R6 3 -1
       87 RETURN                           R6 -1
       88 LOADNIL                          R3
       89 GETUPVAL                         R4 9
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+18]
       92 GETUPVAL                         R5 3
       93 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       95 NEWCLOSURE                       R5 P2
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R1
       99 NEWTABLE                         R6 0 1
      101 GETTABLEKS                       R8 R0 K3 ["AmbiguousAsset"]
      103 GETTABLEKS                       R7 R8 K4 ["instances"]
      105 SETLIST                          R6 R7 1 [1]
      107 CALL                             R4 2 1
      108 MOVE                             R3 R4
      109 JUMP                             ; [+16]
      110 GETUPVAL                         R5 4
      111 GETTABLEKS                       R4 R5 K17 ["collectArray"]
      113 GETTABLEKS                       R6 R0 K3 ["AmbiguousAsset"]
      115 GETTABLEKS                       R5 R6 K4 ["instances"]
      117 NEWCLOSURE                       R6 P3
      118 CAPTURE                          VAL R1
      119 CALL                             R4 2 1
      120 MOVE                             R3 R4
      121 GETIMPORT                        R4 K20 [table.sort]
      123 MOVE                             R5 R3
      124 DUPCLOSURE                       R6 K21 [PROTO_9]
      125 CALL                             R4 2 0
      126 GETUPVAL                         R5 3
      127 GETTABLEKS                       R4 R5 K10 ["createElement"]
      129 GETUPVAL                         R5 8
      130 DUPTABLE                         R6 K22 [{"Name", "Instance", "LayoutOrder"}]
      131 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
      133 GETTABLEKS                       R8 R9 K16 ["worldModel"]
      135 GETTABLEKS                       R7 R8 K12 ["Name"]
      137 SETTABLEKS                       R7 R6 K12 ["Name"]
      139 GETTABLEKS                       R8 R0 K3 ["AmbiguousAsset"]
      141 GETTABLEKS                       R7 R8 K16 ["worldModel"]
      143 SETTABLEKS                       R7 R6 K11 ["Instance"]
      145 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
      147 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
      149 DUPTABLE                         R7 K24 [{"Dropdown"}]
      150 GETUPVAL                         R9 3
      151 GETTABLEKS                       R8 R9 K10 ["createElement"]
      153 GETUPVAL                         R9 10
      154 DUPTABLE                         R10 K27 [{"AutomaticSize", "Size"}]
      155 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
      157 SETTABLEKS                       R11 R10 K25 ["AutomaticSize"]
      159 GETIMPORT                        R11 K33 [UDim2.new]
      161 LOADN                            R12 0
      162 GETTABLEKS                       R13 R2 K34 ["DropdownWidth"]
      164 LOADN                            R14 0
      165 LOADN                            R15 0
      166 CALL                             R11 4 1
      167 SETTABLEKS                       R11 R10 K26 ["Size"]
      169 DUPTABLE                         R11 K36 [{"DropdownMenu"}]
      170 GETUPVAL                         R13 3
      171 GETTABLEKS                       R12 R13 K10 ["createElement"]
      173 GETUPVAL                         R13 11
      174 DUPTABLE                         R14 K42 [{"PlaceholderText", "Width", "SelectedId", "OnItemActivated", "Items"}]
      175 LOADK                            R17 K1 ["DisambiguationMenu"]
      176 LOADK                            R18 K43 ["DropdownPlaceholder"]
      177 NAMECALL                         R15 R1 K7 ["getText"]
      179 CALL                             R15 3 1
      180 SETTABLEKS                       R15 R14 K37 ["PlaceholderText"]
      182 GETTABLEKS                       R15 R2 K34 ["DropdownWidth"]
      184 SETTABLEKS                       R15 R14 K38 ["Width"]
      186 GETTABLEKS                       R15 R0 K8 ["AssignedPalette"]
      188 SETTABLEKS                       R15 R14 K39 ["SelectedId"]
      190 NEWCLOSURE                       R15 P5
      191 CAPTURE                          VAL R0
      192 SETTABLEKS                       R15 R14 K40 ["OnItemActivated"]
      194 SETTABLEKS                       R3 R14 K41 ["Items"]
      196 CALL                             R12 2 1
      197 SETTABLEKS                       R12 R11 K35 ["DropdownMenu"]
      199 CALL                             R8 3 1
      200 SETTABLEKS                       R8 R7 K23 ["Dropdown"]
      202 CALL                             R4 3 -1
      203 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["DisambiguationMenu"]
       36 GETTABLEKS                       R5 R6 K13 ["DisambiguationMenuEntry"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Flags"]
       45 GETTABLEKS                       R6 R7 K15 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Flags"]
       54 GETTABLEKS                       R7 R8 K16 ["getFFlagFixLayeredClothingAssignment"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R10 K17 ["Resources"]
       63 GETTABLEKS                       R8 R9 K18 ["Theme"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R10 K19 ["Types"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R2 K20 ["UI"]
       75 GETTABLEKS                       R10 R9 K21 ["Pane"]
       77 GETTABLEKS                       R11 R9 K22 ["SelectInput"]
       79 GETTABLEKS                       R13 R2 K23 ["ContextServices"]
       81 GETTABLEKS                       R12 R13 K24 ["Localization"]
       83 GETTABLEKS                       R14 R2 K23 ["ContextServices"]
       85 GETTABLEKS                       R13 R14 K25 ["Stylizer"]
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R16 R0 K6 ["Packages"]
       91 GETTABLEKS                       R15 R16 K26 ["Foundation"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R16 R14 K27 ["Dropdown"]
       96 GETTABLEKS                       R15 R16 K28 ["Root"]
       98 GETTABLEKS                       R17 R14 K29 ["Enums"]
      100 GETTABLEKS                       R16 R17 K30 ["InputSize"]
      102 GETTABLEKS                       R17 R14 K31 ["View"]
      104 DUPCLOSURE                       R18 K32 [PROTO_11]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R11
      117 RETURN                           R18 1
