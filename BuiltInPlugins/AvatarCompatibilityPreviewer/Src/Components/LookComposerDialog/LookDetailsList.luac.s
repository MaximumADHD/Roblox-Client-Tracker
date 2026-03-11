PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setDialogItemRowState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["dialogItems"]
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
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K6 ["createElement"]
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
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K6 ["createElement"]
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
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R7 R8 K6 ["createElement"]
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
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R1 R4 K0 ["dialogItems"]
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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["useMemo"]
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
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R5 0 1
       34 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R4 R5 K4 ["createElement"]
       42 GETUPVAL                         R5 6
       43 DUPTABLE                         R6 K7 [{"tag", "LayoutOrder"}]
       44 LOADK                            R7 K8 ["col gap-medium size-full-0 auto-y"]
       45 SETTABLEKS                       R7 R6 K5 ["tag"]
       47 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       49 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       51 DUPTABLE                         R7 K12 [{"DividerContainer", "Header", "ItemsList"}]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K4 ["createElement"]
       55 GETUPVAL                         R9 6
       56 DUPTABLE                         R10 K7 [{"tag", "LayoutOrder"}]
       57 LOADK                            R11 K13 ["size-full-0 auto-y padding-bottom-medium"]
       58 SETTABLEKS                       R11 R10 K5 ["tag"]
       60 LOADN                            R11 1
       61 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       63 DUPTABLE                         R11 K15 [{"Divider"}]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R12 R13 K4 ["createElement"]
       67 GETUPVAL                         R13 7
       68 CALL                             R12 1 1
       69 SETTABLEKS                       R12 R11 K14 ["Divider"]
       71 CALL                             R8 3 1
       72 SETTABLEKS                       R8 R7 K9 ["DividerContainer"]
       74 GETUPVAL                         R9 2
       75 GETTABLEKS                       R8 R9 K4 ["createElement"]
       77 GETUPVAL                         R9 6
       78 DUPTABLE                         R10 K7 [{"tag", "LayoutOrder"}]
       79 LOADK                            R11 K16 ["row size-full-0 auto-y align-y-center"]
       80 SETTABLEKS                       R11 R10 K5 ["tag"]
       82 LOADN                            R11 2
       83 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       85 DUPTABLE                         R11 K20 [{"Title", "Spacer", "ItemCount"}]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R12 R13 K4 ["createElement"]
       89 GETUPVAL                         R13 8
       90 DUPTABLE                         R14 K22 [{"Text", "tag", "LayoutOrder"}]
       91 LOADK                            R17 K23 ["LookComposerDialog"]
       92 LOADK                            R18 K24 ["LookDetails"]
       93 NAMECALL                         R15 R1 K25 ["getText"]
       95 CALL                             R15 3 1
       96 SETTABLEKS                       R15 R14 K21 ["Text"]
       98 LOADK                            R15 K26 ["text-label-medium auto-xy content-emphasis"]
       99 SETTABLEKS                       R15 R14 K5 ["tag"]
      101 LOADN                            R15 1
      102 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K17 ["Title"]
      107 GETUPVAL                         R13 2
      108 GETTABLEKS                       R12 R13 K4 ["createElement"]
      110 GETUPVAL                         R13 6
      111 DUPTABLE                         R14 K7 [{"tag", "LayoutOrder"}]
      112 LOADK                            R15 K27 ["grow"]
      113 SETTABLEKS                       R15 R14 K5 ["tag"]
      115 LOADN                            R15 2
      116 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K18 ["Spacer"]
      121 GETUPVAL                         R13 2
      122 GETTABLEKS                       R12 R13 K4 ["createElement"]
      124 GETUPVAL                         R13 8
      125 DUPTABLE                         R14 K22 [{"Text", "tag", "LayoutOrder"}]
      126 FASTCALL1                        TOSTRING R3 ; [+3]
      127 MOVE                             R20 R3
      128 GETIMPORT                        R19 K29 [tostring]
      130 CALL                             R19 1 1
      131 MOVE                             R16 R19
      132 LOADK                            R17 K30 [" "]
      133 LOADK                            R20 K23 ["LookComposerDialog"]
      134 LOADK                            R21 K31 ["Items"]
      135 NAMECALL                         R18 R1 K25 ["getText"]
      137 CALL                             R18 3 1
      138 CONCAT                           R15 R16 R18
      139 SETTABLEKS                       R15 R14 K21 ["Text"]
      141 LOADK                            R15 K32 ["text-label-medium auto-xy content-default"]
      142 SETTABLEKS                       R15 R14 K5 ["tag"]
      144 LOADN                            R15 3
      145 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K19 ["ItemCount"]
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K10 ["Header"]
      153 GETUPVAL                         R9 2
      154 GETTABLEKS                       R8 R9 K4 ["createElement"]
      156 GETUPVAL                         R9 6
      157 DUPTABLE                         R10 K7 [{"tag", "LayoutOrder"}]
      158 LOADK                            R11 K33 ["col gap-small size-full-0 auto-y padding-top-medium"]
      159 SETTABLEKS                       R11 R10 K5 ["tag"]
      161 LOADN                            R11 3
      162 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      164 MOVE                             R11 R2
      165 CALL                             R8 3 1
      166 SETTABLEKS                       R8 R7 K11 ["ItemsList"]
      168 CALL                             R4 3 -1
      169 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Divider"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R11 R0 K15 ["Src"]
       42 GETTABLEKS                       R10 R11 K16 ["Flags"]
       44 GETTABLEKS                       R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R11 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETIMPORT                        R13 K1 [script]
       58 GETTABLEKS                       R12 R13 K19 ["Parent"]
       60 GETTABLEKS                       R11 R12 K20 ["AssetRow"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R13 R14 K19 ["Parent"]
       69 GETTABLEKS                       R12 R13 K21 ["BundleRow"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETIMPORT                        R15 K1 [script]
       76 GETTABLEKS                       R14 R15 K19 ["Parent"]
       78 GETTABLEKS                       R13 R14 K22 ["BodyColorRow"]
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
