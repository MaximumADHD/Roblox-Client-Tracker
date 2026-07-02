PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["dialogItems"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       10 JUMPIFNOTEQKS                    R6 K2 ["BodyColor"] ; [+31]
       12 LOADK                            R7 K3 ["BodyColor_"]
       13 FASTCALL1                        TOSTRING R4 ; [+3]
       14 MOVE                             R9 R4
       15 GETIMPORT                        R8 K5 [tostring]
       17 CALL                             R8 1 1
       18 CONCAT                           R6 R7 R8
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K11 [{"LayoutOrder", "color", "rowState", "onRowStateChanged"}]
       24 SETTABLEKS                       R4 R9 K7 ["LayoutOrder"]
       26 GETTABLEKS                       R10 R5 K8 ["color"]
       28 SETTABLEKS                       R10 R9 K8 ["color"]
       30 GETTABLEKS                       R10 R5 K9 ["rowState"]
       32 SETTABLEKS                       R10 R9 K9 ["rowState"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R10 R9 K10 ["onRowStateChanged"]
       39 CALL                             R7 2 1
       40 SETTABLE                         R7 R0 R6
       41 JUMP                             ; [+101]
       42 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       44 JUMPIFNOTEQKS                    R6 K12 ["Asset"] ; [+48]
       46 LOADK                            R7 K13 ["Asset_"]
       47 GETTABLEKS                       R9 R5 K14 ["id"]
       49 FASTCALL1                        TOSTRING R9 ; [+2]
       50 GETIMPORT                        R8 K5 [tostring]
       52 CALL                             R8 1 1
       53 CONCAT                           R6 R7 R8
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K6 ["createElement"]
       57 GETUPVAL                         R8 3
       58 DUPTABLE                         R9 K20 [{"LayoutOrder", "assetId", "name", "creator", "creatorHasVerifiedBadge", "price", "rowState", "onRowStateChanged"}]
       59 SETTABLEKS                       R4 R9 K7 ["LayoutOrder"]
       61 GETTABLEKS                       R10 R5 K14 ["id"]
       63 SETTABLEKS                       R10 R9 K15 ["assetId"]
       65 GETTABLEKS                       R10 R5 K16 ["name"]
       67 SETTABLEKS                       R10 R9 K16 ["name"]
       69 GETTABLEKS                       R10 R5 K17 ["creator"]
       71 SETTABLEKS                       R10 R9 K17 ["creator"]
       73 GETTABLEKS                       R10 R5 K18 ["creatorHasVerifiedBadge"]
       75 SETTABLEKS                       R10 R9 K18 ["creatorHasVerifiedBadge"]
       77 GETTABLEKS                       R10 R5 K19 ["price"]
       79 SETTABLEKS                       R10 R9 K19 ["price"]
       81 GETTABLEKS                       R10 R5 K9 ["rowState"]
       83 SETTABLEKS                       R10 R9 K9 ["rowState"]
       85 NEWCLOSURE                       R10 P1
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R10 R9 K10 ["onRowStateChanged"]
       90 CALL                             R7 2 1
       91 SETTABLE                         R7 R0 R6
       92 JUMP                             ; [+50]
       93 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       95 JUMPIFNOTEQKS                    R6 K21 ["Bundle"] ; [+47]
       97 LOADK                            R7 K22 ["Bundle_"]
       98 GETTABLEKS                       R9 R5 K14 ["id"]
      100 FASTCALL1                        TOSTRING R9 ; [+2]
      101 GETIMPORT                        R8 K5 [tostring]
      103 CALL                             R8 1 1
      104 CONCAT                           R6 R7 R8
      105 GETUPVAL                         R7 1
      106 GETTABLEKS                       R7 R7 K6 ["createElement"]
      108 GETUPVAL                         R8 4
      109 DUPTABLE                         R9 K24 [{"LayoutOrder", "bundleId", "name", "creator", "creatorHasVerifiedBadge", "price", "rowState", "onRowStateChanged"}]
      110 SETTABLEKS                       R4 R9 K7 ["LayoutOrder"]
      112 GETTABLEKS                       R10 R5 K14 ["id"]
      114 SETTABLEKS                       R10 R9 K23 ["bundleId"]
      116 GETTABLEKS                       R10 R5 K16 ["name"]
      118 SETTABLEKS                       R10 R9 K16 ["name"]
      120 GETTABLEKS                       R10 R5 K17 ["creator"]
      122 SETTABLEKS                       R10 R9 K17 ["creator"]
      124 GETTABLEKS                       R10 R5 K18 ["creatorHasVerifiedBadge"]
      126 SETTABLEKS                       R10 R9 K18 ["creatorHasVerifiedBadge"]
      128 GETTABLEKS                       R10 R5 K19 ["price"]
      130 SETTABLEKS                       R10 R9 K19 ["price"]
      132 GETTABLEKS                       R10 R5 K9 ["rowState"]
      134 SETTABLEKS                       R10 R9 K9 ["rowState"]
      136 NEWCLOSURE                       R10 P2
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R10 R9 K10 ["onRowStateChanged"]
      141 CALL                             R7 2 1
      142 SETTABLE                         R7 R0 R6
      143 FORGLOOP                         R1 2 ; [-136]
      145 RETURN                           R0 1

PROTO_4:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["dialogItems"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["rowState"]
        9 JUMPIFNOTEQKS                    R6 K2 ["Selected"] ; [+2]
       11 ADDK                             R0 R0 K3 [1]
       12 FORGLOOP                         R1 2 ; [-6]
       14 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R4 0 2
       20 GETTABLEKS                       R5 R0 K2 ["dialogItems"]
       22 GETTABLEKS                       R6 R0 K3 ["setDialogItemRowState"]
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R5 0 1
       34 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K4 ["createElement"]
       42 GETUPVAL                         R5 6
       43 DUPTABLE                         R6 K8 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       44 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       46 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       48 DUPTABLE                         R7 K12 [{"DividerContainer", "Header", "ItemsList"}]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K4 ["createElement"]
       52 GETUPVAL                         R9 6
       53 DUPTABLE                         R10 K15 [{["tag"] = "size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"] = 1}]
       54 DUPTABLE                         R11 K17 [{"Divider"}]
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K4 ["createElement"]
       58 GETUPVAL                         R13 7
       59 CALL                             R12 1 1
       60 SETTABLEKS                       R12 R11 K16 ["Divider"]
       62 CALL                             R8 3 1
       63 SETTABLEKS                       R8 R7 K9 ["DividerContainer"]
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K4 ["createElement"]
       68 GETUPVAL                         R9 6
       69 DUPTABLE                         R10 K20 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"] = 2}]
       70 DUPTABLE                         R11 K24 [{"Title", "Spacer", "ItemCount"}]
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R12 R12 K4 ["createElement"]
       74 GETUPVAL                         R13 8
       75 DUPTABLE                         R14 K27 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"] = 1}]
       76 LOADK                            R17 K28 ["LookComposerDialog"]
       77 LOADK                            R18 K29 ["LookDetails"]
       78 NAMECALL                         R15 R1 K30 ["getText"]
       80 CALL                             R15 3 1
       81 SETTABLEKS                       R15 R14 K25 ["Text"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K21 ["Title"]
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K4 ["createElement"]
       89 GETUPVAL                         R13 6
       90 DUPTABLE                         R14 K32 [{["tag"] = "grow", ["LayoutOrder"] = 2}]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K22 ["Spacer"]
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R12 R12 K4 ["createElement"]
       97 GETUPVAL                         R13 8
       98 DUPTABLE                         R14 K35 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 3}]
       99 FASTCALL1                        TOSTRING R3 ; [+3]
      100 MOVE                             R20 R3
      101 GETIMPORT                        R19 K37 [tostring]
      103 CALL                             R19 1 1
      104 MOVE                             R16 R19
      105 LOADK                            R17 K38 [" "]
      106 LOADK                            R20 K28 ["LookComposerDialog"]
      107 LOADK                            R21 K39 ["Items"]
      108 NAMECALL                         R18 R1 K30 ["getText"]
      110 CALL                             R18 3 1
      111 CONCAT                           R15 R16 R18
      112 SETTABLEKS                       R15 R14 K25 ["Text"]
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K23 ["ItemCount"]
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K10 ["Header"]
      120 GETUPVAL                         R8 2
      121 GETTABLEKS                       R8 R8 K4 ["createElement"]
      123 GETUPVAL                         R9 6
      124 DUPTABLE                         R10 K41 [{["tag"] = "col gap-small size-full-0 auto-y padding-top-medium", ["LayoutOrder"] = 3}]
      125 MOVE                             R11 R2
      126 CALL                             R8 3 1
      127 SETTABLEKS                       R8 R7 K11 ["ItemsList"]
      129 CALL                             R4 3 -1
      130 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Divider"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R7 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Flags"]
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagAvatarPreviewerLookComposer"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETIMPORT                        R11 K1 [script]
       58 GETTABLEKS                       R11 R11 K19 ["Parent"]
       60 GETTABLEKS                       R11 R11 K20 ["AssetRow"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETIMPORT                        R12 K1 [script]
       67 GETTABLEKS                       R12 R12 K19 ["Parent"]
       69 GETTABLEKS                       R12 R12 K21 ["BundleRow"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETIMPORT                        R13 K1 [script]
       76 GETTABLEKS                       R13 R13 K19 ["Parent"]
       78 GETTABLEKS                       R13 R13 K22 ["BodyColorRow"]
       80 CALL                             R12 1 1
       81 DUPCLOSURE                       R13 K23 [PROTO_5]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 RETURN                           R13 1
