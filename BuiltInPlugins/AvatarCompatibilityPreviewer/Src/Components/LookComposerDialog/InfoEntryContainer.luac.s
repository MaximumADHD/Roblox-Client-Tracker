PROTO_0:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["dialogItems"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
        9 JUMPIFNOTEQKS                    R6 K2 ["Asset"] ; [+9]
       11 GETTABLEKS                       R6 R5 K3 ["rowState"]
       13 JUMPIFNOTEQKS                    R6 K4 ["Selected"] ; [+5]
       15 GETTABLEKS                       R6 R5 K5 ["price"]
       17 ADD                              R0 R0 R6
       18 JUMP                             ; [+11]
       19 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       21 JUMPIFNOTEQKS                    R6 K6 ["Bundle"] ; [+8]
       23 GETTABLEKS                       R6 R5 K3 ["rowState"]
       25 JUMPIFNOTEQKS                    R6 K4 ["Selected"] ; [+4]
       27 GETTABLEKS                       R6 R5 K5 ["price"]
       29 ADD                              R0 R0 R6
       30 FORGLOOP                         R1 2 ; [-24]
       32 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R3 0 1
       12 GETTABLEKS                       R4 R0 K1 ["dialogItems"]
       14 SETLIST                          R3 R4 1 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["new"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["createElement"]
       24 GETUPVAL                         R4 3
       25 DUPTABLE                         R5 K8 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
       26 LOADK                            R6 K9 ["row gap-large align-y-top"]
       27 SETTABLEKS                       R6 R5 K4 ["tag"]
       29 GETIMPORT                        R6 K11 [UDim2.new]
       31 LOADK                            R7 K12 [0.5]
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 CALL                             R6 4 1
       36 SETTABLEKS                       R6 R5 K5 ["Size"]
       38 GETIMPORT                        R6 K15 [Enum.AutomaticSize.Y]
       40 SETTABLEKS                       R6 R5 K6 ["AutomaticSize"]
       42 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       46 DUPTABLE                         R6 K18 [{"Preview", "InfoColumn"}]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K3 ["createElement"]
       50 GETUPVAL                         R8 3
       51 DUPTABLE                         R9 K19 [{"LayoutOrder", "AutomaticSize"}]
       52 NAMECALL                         R10 R2 K20 ["getNextOrder"]
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       57 GETIMPORT                        R10 K22 [Enum.AutomaticSize.XY]
       59 SETTABLEKS                       R10 R9 K6 ["AutomaticSize"]
       61 DUPTABLE                         R10 K24 [{"Thumbnail"}]
       62 GETTABLEKS                       R11 R0 K25 ["lookPreview"]
       64 SETTABLEKS                       R11 R10 K23 ["Thumbnail"]
       66 CALL                             R7 3 1
       67 SETTABLEKS                       R7 R6 K16 ["Preview"]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K3 ["createElement"]
       72 GETUPVAL                         R8 3
       73 DUPTABLE                         R9 K26 [{"tag", "LayoutOrder"}]
       74 LOADK                            R10 K27 ["col gap-large grow auto-y"]
       75 SETTABLEKS                       R10 R9 K4 ["tag"]
       77 NAMECALL                         R10 R2 K20 ["getNextOrder"]
       79 CALL                             R10 1 1
       80 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       82 DUPTABLE                         R10 K31 [{"CreatorDropdown", "SkinColor", "TotalPrice"}]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K3 ["createElement"]
       86 GETUPVAL                         R12 4
       87 DUPTABLE                         R13 K36 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "disabled"}]
       88 NAMECALL                         R14 R2 K20 ["getNextOrder"]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       93 GETTABLEKS                       R14 R0 K32 ["selectedCreatorId"]
       95 SETTABLEKS                       R14 R13 K32 ["selectedCreatorId"]
       97 GETTABLEKS                       R14 R0 K33 ["creators"]
       99 SETTABLEKS                       R14 R13 K33 ["creators"]
      101 GETTABLEKS                       R14 R0 K34 ["onCreatorChanged"]
      103 SETTABLEKS                       R14 R13 K34 ["onCreatorChanged"]
      105 GETTABLEKS                       R14 R0 K37 ["isAvatarLook"]
      107 SETTABLEKS                       R14 R13 K35 ["disabled"]
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K28 ["CreatorDropdown"]
      112 GETTABLEKS                       R12 R0 K37 ["isAvatarLook"]
      114 JUMPIF                           R12 ; [+26]
      115 GETTABLEKS                       R12 R0 K38 ["skinColor"]
      117 JUMPIFNOT                        R12 ; [+23]
      118 GETTABLEKS                       R12 R0 K39 ["onSkinColorChanged"]
      120 JUMPIFNOT                        R12 ; [+20]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R11 R11 K3 ["createElement"]
      124 GETUPVAL                         R12 5
      125 DUPTABLE                         R13 K42 [{"LayoutOrder", "selectedColor", "onColorChanged"}]
      126 NAMECALL                         R14 R2 K20 ["getNextOrder"]
      128 CALL                             R14 1 1
      129 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      131 GETTABLEKS                       R14 R0 K38 ["skinColor"]
      133 SETTABLEKS                       R14 R13 K40 ["selectedColor"]
      135 GETTABLEKS                       R14 R0 K39 ["onSkinColorChanged"]
      137 SETTABLEKS                       R14 R13 K41 ["onColorChanged"]
      139 CALL                             R11 2 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R11
      142 SETTABLEKS                       R11 R10 K29 ["SkinColor"]
      144 GETUPVAL                         R11 1
      145 GETTABLEKS                       R11 R11 K3 ["createElement"]
      147 GETUPVAL                         R12 6
      148 DUPTABLE                         R13 K44 [{"LayoutOrder", "price"}]
      149 NAMECALL                         R14 R2 K20 ["getNextOrder"]
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      154 SETTABLEKS                       R1 R13 K43 ["price"]
      156 CALL                             R11 2 1
      157 SETTABLEKS                       R11 R10 K30 ["TotalPrice"]
      159 CALL                             R7 3 1
      160 SETTABLEKS                       R7 R6 K17 ["InfoColumn"]
      162 CALL                             R3 3 -1
      163 RETURN                           R3 -1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["CreatorSelectionDropdown"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K10 ["Parent"]
       38 GETTABLEKS                       R6 R6 K12 ["TotalPrice"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K10 ["Parent"]
       47 GETTABLEKS                       R7 R7 K13 ["SkinColorPicker"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Packages"]
       54 GETTABLEKS                       R8 R8 K14 ["Framework"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K15 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Src"]
       65 GETTABLEKS                       R10 R10 K18 ["Flags"]
       67 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerLookComposer"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K17 ["Src"]
       74 GETTABLEKS                       R11 R11 K20 ["Types"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_1]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 RETURN                           R11 1
