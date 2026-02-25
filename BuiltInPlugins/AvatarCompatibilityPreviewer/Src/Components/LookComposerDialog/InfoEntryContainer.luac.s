PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["createElement"]
       12 GETUPVAL                         R3 3
       13 DUPTABLE                         R4 K6 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
       14 LOADK                            R5 K7 ["row gap-large align-y-top"]
       15 SETTABLEKS                       R5 R4 K2 ["tag"]
       17 GETIMPORT                        R5 K9 [UDim2.new]
       19 LOADK                            R6 K10 [0.5]
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 LOADN                            R9 0
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K3 ["Size"]
       26 GETIMPORT                        R5 K13 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R5 R4 K4 ["AutomaticSize"]
       30 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       32 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       34 DUPTABLE                         R5 K16 [{"Preview", "InfoColumn"}]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K1 ["createElement"]
       38 GETUPVAL                         R7 3
       39 DUPTABLE                         R8 K17 [{"LayoutOrder", "AutomaticSize"}]
       40 NAMECALL                         R9 R1 K18 ["getNextOrder"]
       42 CALL                             R9 1 1
       43 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       45 GETIMPORT                        R9 K20 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
       49 DUPTABLE                         R9 K22 [{"Thumbnail"}]
       50 GETTABLEKS                       R10 R0 K23 ["lookPreview"]
       52 SETTABLEKS                       R10 R9 K21 ["Thumbnail"]
       54 CALL                             R6 3 1
       55 SETTABLEKS                       R6 R5 K14 ["Preview"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R6 R7 K1 ["createElement"]
       60 GETUPVAL                         R7 3
       61 DUPTABLE                         R8 K24 [{"tag", "LayoutOrder"}]
       62 LOADK                            R9 K25 ["col gap-large grow auto-y"]
       63 SETTABLEKS                       R9 R8 K2 ["tag"]
       65 NAMECALL                         R9 R1 K18 ["getNextOrder"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       70 DUPTABLE                         R9 K29 [{"CreatorDropdown", "SkinColor", "TotalPrice"}]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R10 R11 K1 ["createElement"]
       74 GETUPVAL                         R11 4
       75 DUPTABLE                         R12 K34 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "disabled"}]
       76 NAMECALL                         R13 R1 K18 ["getNextOrder"]
       78 CALL                             R13 1 1
       79 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       81 GETTABLEKS                       R13 R0 K30 ["selectedCreatorId"]
       83 SETTABLEKS                       R13 R12 K30 ["selectedCreatorId"]
       85 GETTABLEKS                       R13 R0 K31 ["creators"]
       87 SETTABLEKS                       R13 R12 K31 ["creators"]
       89 GETTABLEKS                       R13 R0 K32 ["onCreatorChanged"]
       91 SETTABLEKS                       R13 R12 K32 ["onCreatorChanged"]
       93 GETTABLEKS                       R13 R0 K35 ["isAvatarLook"]
       95 SETTABLEKS                       R13 R12 K33 ["disabled"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K26 ["CreatorDropdown"]
      100 GETTABLEKS                       R11 R0 K35 ["isAvatarLook"]
      102 JUMPIF                           R11 ; [+26]
      103 GETTABLEKS                       R11 R0 K36 ["skinColor"]
      105 JUMPIFNOT                        R11 ; [+23]
      106 GETTABLEKS                       R11 R0 K37 ["onSkinColorChanged"]
      108 JUMPIFNOT                        R11 ; [+20]
      109 GETUPVAL                         R11 2
      110 GETTABLEKS                       R10 R11 K1 ["createElement"]
      112 GETUPVAL                         R11 5
      113 DUPTABLE                         R12 K40 [{"LayoutOrder", "selectedColor", "onColorChanged"}]
      114 NAMECALL                         R13 R1 K18 ["getNextOrder"]
      116 CALL                             R13 1 1
      117 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      119 GETTABLEKS                       R13 R0 K36 ["skinColor"]
      121 SETTABLEKS                       R13 R12 K38 ["selectedColor"]
      123 GETTABLEKS                       R13 R0 K37 ["onSkinColorChanged"]
      125 SETTABLEKS                       R13 R12 K39 ["onColorChanged"]
      127 CALL                             R10 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R10
      130 SETTABLEKS                       R10 R9 K27 ["SkinColor"]
      132 GETUPVAL                         R11 2
      133 GETTABLEKS                       R10 R11 K1 ["createElement"]
      135 GETUPVAL                         R11 6
      136 DUPTABLE                         R12 K42 [{"LayoutOrder", "price"}]
      137 NAMECALL                         R13 R1 K18 ["getNextOrder"]
      139 CALL                             R13 1 1
      140 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      142 GETTABLEKS                       R13 R0 K43 ["totalPrice"]
      144 SETTABLEKS                       R13 R12 K41 ["price"]
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K28 ["TotalPrice"]
      149 CALL                             R6 3 1
      150 SETTABLEKS                       R6 R5 K15 ["InfoColumn"]
      152 CALL                             R2 3 -1
      153 RETURN                           R2 -1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K10 ["Parent"]
       29 GETTABLEKS                       R5 R6 K11 ["CreatorSelectionDropdown"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K10 ["Parent"]
       38 GETTABLEKS                       R6 R7 K12 ["TotalPrice"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K10 ["Parent"]
       47 GETTABLEKS                       R7 R8 K13 ["SkinColorPicker"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Packages"]
       54 GETTABLEKS                       R8 R9 K14 ["Framework"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R9 R7 K15 ["Util"]
       59 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Src"]
       65 GETTABLEKS                       R11 R12 K18 ["Flags"]
       67 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K20 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 RETURN                           R10 1
