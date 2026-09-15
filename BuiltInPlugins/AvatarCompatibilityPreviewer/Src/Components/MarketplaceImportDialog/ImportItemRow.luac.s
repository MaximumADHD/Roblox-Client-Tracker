PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRemoveItem"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["priceInfo"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createNextOrder"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["createElement"]
       13 GETUPVAL                         R5 3
       14 DUPTABLE                         R6 K7 [{["tag"] = "row gap-small size-full-0 auto-y padding-y-small", ["LayoutOrder"]}]
       15 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       17 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       19 DUPTABLE                         R7 K11 [{"Thumbnail", "ItemContent", "RemoveButton"}]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K3 ["createElement"]
       23 GETUPVAL                         R9 3
       24 DUPTABLE                         R10 K13 [{["tag"] = "col auto-xy padding-y-xsmall", ["LayoutOrder"]}]
       25 MOVE                             R11 R3
       26 CALL                             R11 0 1
       27 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K3 ["createElement"]
       32 GETUPVAL                         R12 4
       33 DUPTABLE                         R13 K16 [{["Image"], ["tag"] = "size-1000-1000 radius-medium"}]
       34 GETTABLEKS                       R15 R1 K17 ["itemType"]
       36 JUMPIFNOTEQKS                    R15 K18 ["Asset"] ; [+6]
       38 GETUPVAL                         R14 5
       39 GETTABLEKS                       R15 R1 K19 ["itemId"]
       41 CALL                             R14 1 1
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R14 6
       44 GETTABLEKS                       R15 R1 K19 ["itemId"]
       46 CALL                             R14 1 1
       47 SETTABLEKS                       R14 R13 K14 ["Image"]
       49 CALL                             R11 2 -1
       50 CALL                             R8 -1 1
       51 SETTABLEKS                       R8 R7 K8 ["Thumbnail"]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K3 ["createElement"]
       56 GETUPVAL                         R9 3
       57 DUPTABLE                         R10 K21 [{["tag"] = "col align-x-left grow", ["LayoutOrder"]}]
       58 MOVE                             R11 R3
       59 CALL                             R11 0 1
       60 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       62 DUPTABLE                         R11 K25 [{"ItemName", "CreatorNameView", "ItemId"}]
       63 GETUPVAL                         R12 2
       64 GETTABLEKS                       R12 R12 K3 ["createElement"]
       66 GETUPVAL                         R13 7
       67 DUPTABLE                         R14 K30 [{["Text"], ["testId"] = "import-item-name", ["tag"] = "auto-xy text-title-small content-system-contrast", ["LayoutOrder"]}]
       68 GETTABLEKS                       R15 R1 K31 ["name"]
       70 SETTABLEKS                       R15 R14 K26 ["Text"]
       72 MOVE                             R15 R3
       73 CALL                             R15 0 1
       74 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K22 ["ItemName"]
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K3 ["createElement"]
       82 GETUPVAL                         R13 3
       83 DUPTABLE                         R14 K33 [{["tag"] = "row gap-xxsmall auto-xy", ["LayoutOrder"]}]
       84 MOVE                             R15 R3
       85 CALL                             R15 0 1
       86 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       88 DUPTABLE                         R15 K36 [{"CreatorName", "VerificationBadge"}]
       89 GETUPVAL                         R16 2
       90 GETTABLEKS                       R16 R16 K3 ["createElement"]
       92 GETUPVAL                         R17 7
       93 DUPTABLE                         R18 K38 [{["Text"], ["tag"] = "auto-xy text-body-small content-system-contrast"}]
       94 GETTABLEKS                       R19 R1 K39 ["creatorName"]
       96 SETTABLEKS                       R19 R18 K26 ["Text"]
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K34 ["CreatorName"]
      101 GETTABLEKS                       R17 R1 K40 ["hasVerifiedBadge"]
      103 JUMPIFNOT                        R17 ; [+22]
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R16 R16 K3 ["createElement"]
      107 GETUPVAL                         R17 8
      108 DUPTABLE                         R18 K43 [{"name", "size", "variant"}]
      109 GETUPVAL                         R19 9
      110 GETTABLEKS                       R19 R19 K44 ["VerifiedMono"]
      112 SETTABLEKS                       R19 R18 K31 ["name"]
      114 GETUPVAL                         R19 10
      115 GETTABLEKS                       R19 R19 K45 ["XSmall"]
      117 SETTABLEKS                       R19 R18 K41 ["size"]
      119 GETUPVAL                         R19 11
      120 GETTABLEKS                       R19 R19 K46 ["Filled"]
      122 SETTABLEKS                       R19 R18 K42 ["variant"]
      124 CALL                             R16 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R15 K35 ["VerificationBadge"]
      129 CALL                             R12 3 1
      130 SETTABLEKS                       R12 R11 K23 ["CreatorNameView"]
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R12 R12 K3 ["createElement"]
      135 GETUPVAL                         R13 7
      136 DUPTABLE                         R14 K47 [{["Text"], ["testId"], ["tag"] = "auto-xy text-body-small content-system-contrast", ["LayoutOrder"]}]
      137 MOVE                             R15 R2
      138 JUMPIF                           R15 ; [+6]
      139 GETTABLEKS                       R16 R1 K19 ["itemId"]
      141 FASTCALL1                        TOSTRING R16 ; [+2]
      142 GETIMPORT                        R15 K49 [tostring]
      144 CALL                             R15 1 1
      145 SETTABLEKS                       R15 R14 K26 ["Text"]
      147 LOADK                            R15 K50 ["import-item-price-%*"]
      148 GETTABLEKS                       R17 R1 K19 ["itemId"]
      150 NAMECALL                         R15 R15 K51 ["format"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K27 ["testId"]
      155 MOVE                             R15 R3
      156 CALL                             R15 0 1
      157 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      159 CALL                             R12 2 1
      160 SETTABLEKS                       R12 R11 K24 ["ItemId"]
      162 CALL                             R8 3 1
      163 SETTABLEKS                       R8 R7 K9 ["ItemContent"]
      165 GETUPVAL                         R8 2
      166 GETTABLEKS                       R8 R8 K3 ["createElement"]
      168 GETUPVAL                         R9 3
      169 DUPTABLE                         R10 K53 [{["tag"] = "col self-center auto-xy", ["LayoutOrder"]}]
      170 MOVE                             R11 R3
      171 CALL                             R11 0 1
      172 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      174 GETUPVAL                         R11 2
      175 GETTABLEKS                       R11 R11 K3 ["createElement"]
      177 GETUPVAL                         R12 12
      178 DUPTABLE                         R13 K58 [{["size"], ["icon"], ["isCircular"] = True, ["variant"], ["onActivated"]}]
      179 GETUPVAL                         R14 13
      180 GETTABLEKS                       R14 R14 K59 ["Small"]
      182 SETTABLEKS                       R14 R13 K41 ["size"]
      184 GETUPVAL                         R14 9
      185 GETTABLEKS                       R14 R14 K60 ["CircleMinus"]
      187 SETTABLEKS                       R14 R13 K54 ["icon"]
      189 GETUPVAL                         R14 14
      190 GETTABLEKS                       R14 R14 K61 ["Utility"]
      192 SETTABLEKS                       R14 R13 K42 ["variant"]
      194 NEWCLOSURE                       R14 P0
      195 CAPTURE                          VAL R0
      196 CAPTURE                          VAL R1
      197 SETTABLEKS                       R14 R13 K57 ["onActivated"]
      199 CALL                             R11 2 -1
      200 CALL                             R8 -1 1
      201 SETTABLEKS                       R8 R7 K10 ["RemoveButton"]
      203 CALL                             R4 3 -1
      204 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       32 GETTABLEKS                       R5 R3 K10 ["Enums"]
       34 GETTABLEKS                       R5 R5 K12 ["IconName"]
       36 GETTABLEKS                       R6 R3 K10 ["Enums"]
       38 GETTABLEKS                       R6 R6 K13 ["IconSize"]
       40 GETTABLEKS                       R7 R3 K10 ["Enums"]
       42 GETTABLEKS                       R7 R7 K14 ["IconVariant"]
       44 GETTABLEKS                       R8 R3 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       48 GETTABLEKS                       R9 R3 K16 ["Button"]
       50 GETTABLEKS                       R10 R3 K17 ["Icon"]
       52 GETTABLEKS                       R11 R3 K18 ["Image"]
       54 GETTABLEKS                       R12 R3 K19 ["Text"]
       56 GETTABLEKS                       R13 R3 K20 ["View"]
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R0 K21 ["Src"]
       62 GETTABLEKS                       R15 R15 K22 ["Util"]
       64 GETTABLEKS                       R15 R15 K23 ["getAssetThumbnail"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K5 [require]
       69 GETTABLEKS                       R16 R0 K21 ["Src"]
       71 GETTABLEKS                       R16 R16 K22 ["Util"]
       73 GETTABLEKS                       R16 R16 K24 ["getBundleThumbnail"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K5 [require]
       78 GETTABLEKS                       R17 R0 K21 ["Src"]
       80 GETTABLEKS                       R17 R17 K25 ["Hooks"]
       82 GETTABLEKS                       R17 R17 K26 ["usePriceText"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K5 [require]
       87 GETTABLEKS                       R18 R0 K21 ["Src"]
       89 GETTABLEKS                       R18 R18 K27 ["Types"]
       91 CALL                             R17 1 1
       92 DUPCLOSURE                       R18 K28 [PROTO_1]
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R4
      108 RETURN                           R18 1
