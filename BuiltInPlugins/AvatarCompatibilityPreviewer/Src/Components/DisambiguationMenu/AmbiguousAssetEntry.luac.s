PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["AssetPalettes"]
        5 GETTABLEKS                       R5 R0 K4 ["Key"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["Label"]
       12 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
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
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["AssetPalettes"]
        5 GETTABLEKS                       R5 R0 K4 ["Key"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["Label"]
       12 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetAssignedPalette"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 LOADNIL                          R3
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+19]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 2
       22 MOVE                             R7 R1
       23 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
       25 GETTABLEKS                       R8 R9 K4 ["instances"]
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R4 R5 K5 ["collectArray"]
       35 GETTABLEKS                       R6 R0 K3 ["AmbiguousAsset"]
       37 GETTABLEKS                       R5 R6 K4 ["instances"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R1
       41 CALL                             R4 2 1
       42 MOVE                             R3 R4
       43 GETIMPORT                        R4 K8 [table.sort]
       45 MOVE                             R5 R3
       46 DUPCLOSURE                       R6 K9 [PROTO_4]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K10 ["createElement"]
       51 GETUPVAL                         R5 5
       52 DUPTABLE                         R6 K14 [{"Name", "Instance", "LayoutOrder"}]
       53 GETTABLEKS                       R9 R0 K3 ["AmbiguousAsset"]
       55 GETTABLEKS                       R8 R9 K15 ["worldModel"]
       57 GETTABLEKS                       R7 R8 K11 ["Name"]
       59 SETTABLEKS                       R7 R6 K11 ["Name"]
       61 GETTABLEKS                       R8 R0 K3 ["AmbiguousAsset"]
       63 GETTABLEKS                       R7 R8 K15 ["worldModel"]
       65 SETTABLEKS                       R7 R6 K12 ["Instance"]
       67 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       69 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       71 DUPTABLE                         R7 K17 [{"Dropdown"}]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R8 R9 K10 ["createElement"]
       75 GETUPVAL                         R9 6
       76 DUPTABLE                         R10 K20 [{"AutomaticSize", "Size"}]
       77 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
       79 SETTABLEKS                       R11 R10 K18 ["AutomaticSize"]
       81 GETIMPORT                        R11 K26 [UDim2.new]
       83 LOADN                            R12 0
       84 GETTABLEKS                       R13 R2 K27 ["DropdownWidth"]
       86 LOADN                            R14 0
       87 LOADN                            R15 0
       88 CALL                             R11 4 1
       89 SETTABLEKS                       R11 R10 K19 ["Size"]
       91 DUPTABLE                         R11 K29 [{"DropdownMenu"}]
       92 GETUPVAL                         R13 3
       93 GETTABLEKS                       R12 R13 K10 ["createElement"]
       95 GETUPVAL                         R13 7
       96 DUPTABLE                         R14 K35 [{"PlaceholderText", "Width", "SelectedId", "OnItemActivated", "Items"}]
       97 LOADK                            R17 K1 ["DisambiguationMenu"]
       98 LOADK                            R18 K36 ["DropdownPlaceholder"]
       99 NAMECALL                         R15 R1 K37 ["getText"]
      101 CALL                             R15 3 1
      102 SETTABLEKS                       R15 R14 K30 ["PlaceholderText"]
      104 GETTABLEKS                       R15 R2 K27 ["DropdownWidth"]
      106 SETTABLEKS                       R15 R14 K31 ["Width"]
      108 GETTABLEKS                       R15 R0 K38 ["AssignedPalette"]
      110 SETTABLEKS                       R15 R14 K32 ["SelectedId"]
      112 NEWCLOSURE                       R15 P3
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R15 R14 K33 ["OnItemActivated"]
      116 SETTABLEKS                       R3 R14 K34 ["Items"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K28 ["DropdownMenu"]
      121 CALL                             R8 3 1
      122 SETTABLEKS                       R8 R7 K16 ["Dropdown"]
      124 CALL                             R4 3 -1
      125 RETURN                           R4 -1

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
       45 GETTABLEKS                       R6 R7 K15 ["getFFlagFixLayeredClothingAssignment"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R9 K16 ["Resources"]
       54 GETTABLEKS                       R7 R8 K17 ["Theme"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R9 K18 ["Types"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R2 K19 ["UI"]
       66 GETTABLEKS                       R9 R8 K20 ["Pane"]
       68 GETTABLEKS                       R10 R8 K21 ["SelectInput"]
       70 GETTABLEKS                       R12 R2 K22 ["ContextServices"]
       72 GETTABLEKS                       R11 R12 K23 ["Localization"]
       74 GETTABLEKS                       R13 R2 K22 ["ContextServices"]
       76 GETTABLEKS                       R12 R13 K24 ["Stylizer"]
       78 DUPCLOSURE                       R13 K25 [PROTO_6]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 RETURN                           R13 1
