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
       25 DUPTABLE                         R5 K9 [{["tag"] = "row align-y-top gap-large", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
       26 GETIMPORT                        R6 K11 [UDim2.new]
       28 LOADK                            R7 K12 [0.5]
       29 LOADN                            R8 0
       30 LOADN                            R9 0
       31 LOADN                            R10 0
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K6 ["Size"]
       35 GETIMPORT                        R6 K15 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R6 R5 K7 ["AutomaticSize"]
       39 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       41 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       43 DUPTABLE                         R6 K18 [{"Preview", "InfoColumn"}]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K3 ["createElement"]
       47 GETUPVAL                         R8 3
       48 DUPTABLE                         R9 K19 [{"LayoutOrder", "AutomaticSize"}]
       49 NAMECALL                         R10 R2 K20 ["getNextOrder"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       54 GETIMPORT                        R10 K22 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       58 DUPTABLE                         R10 K24 [{"Thumbnail"}]
       59 GETTABLEKS                       R11 R0 K25 ["lookPreview"]
       61 SETTABLEKS                       R11 R10 K23 ["Thumbnail"]
       63 CALL                             R7 3 1
       64 SETTABLEKS                       R7 R6 K16 ["Preview"]
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K3 ["createElement"]
       69 GETUPVAL                         R8 3
       70 DUPTABLE                         R9 K27 [{["tag"] = "col grow gap-large auto-y", ["LayoutOrder"]}]
       71 NAMECALL                         R10 R2 K20 ["getNextOrder"]
       73 CALL                             R10 1 1
       74 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       76 DUPTABLE                         R10 K31 [{"CreatorDropdown", "SkinColor", "TotalPrice"}]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K3 ["createElement"]
       80 GETUPVAL                         R12 4
       81 DUPTABLE                         R13 K36 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "disabled"}]
       82 NAMECALL                         R14 R2 K20 ["getNextOrder"]
       84 CALL                             R14 1 1
       85 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       87 GETTABLEKS                       R14 R0 K32 ["selectedCreatorId"]
       89 SETTABLEKS                       R14 R13 K32 ["selectedCreatorId"]
       91 GETTABLEKS                       R14 R0 K33 ["creators"]
       93 SETTABLEKS                       R14 R13 K33 ["creators"]
       95 GETTABLEKS                       R14 R0 K34 ["onCreatorChanged"]
       97 SETTABLEKS                       R14 R13 K34 ["onCreatorChanged"]
       99 GETUPVAL                         R15 5
      100 CALL                             R15 0 1
      101 JUMPIFNOT                        R15 ; [+2]
      102 LOADB                            R14 0
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R14 R0 K37 ["isAvatarLook"]
      106 SETTABLEKS                       R14 R13 K35 ["disabled"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K28 ["CreatorDropdown"]
      111 GETTABLEKS                       R12 R0 K37 ["isAvatarLook"]
      113 JUMPIF                           R12 ; [+26]
      114 GETTABLEKS                       R12 R0 K38 ["skinColor"]
      116 JUMPIFNOT                        R12 ; [+23]
      117 GETTABLEKS                       R12 R0 K39 ["onSkinColorChanged"]
      119 JUMPIFNOT                        R12 ; [+20]
      120 GETUPVAL                         R11 1
      121 GETTABLEKS                       R11 R11 K3 ["createElement"]
      123 GETUPVAL                         R12 6
      124 DUPTABLE                         R13 K42 [{"LayoutOrder", "selectedColor", "onColorChanged"}]
      125 NAMECALL                         R14 R2 K20 ["getNextOrder"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      130 GETTABLEKS                       R14 R0 K38 ["skinColor"]
      132 SETTABLEKS                       R14 R13 K40 ["selectedColor"]
      134 GETTABLEKS                       R14 R0 K39 ["onSkinColorChanged"]
      136 SETTABLEKS                       R14 R13 K41 ["onColorChanged"]
      138 CALL                             R11 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R11
      141 SETTABLEKS                       R11 R10 K29 ["SkinColor"]
      143 GETUPVAL                         R11 1
      144 GETTABLEKS                       R11 R11 K3 ["createElement"]
      146 GETUPVAL                         R12 7
      147 DUPTABLE                         R13 K44 [{"LayoutOrder", "price"}]
      148 NAMECALL                         R14 R2 K20 ["getNextOrder"]
      150 CALL                             R14 1 1
      151 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      153 SETTABLEKS                       R1 R13 K43 ["price"]
      155 CALL                             R11 2 1
      156 SETTABLEKS                       R11 R10 K30 ["TotalPrice"]
      158 CALL                             R7 3 1
      159 SETTABLEKS                       R7 R6 K17 ["InfoColumn"]
      161 CALL                             R3 3 -1
      162 RETURN                           R3 -1

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
       74 GETTABLEKS                       R11 R11 K18 ["Flags"]
       76 GETTABLEKS                       R11 R11 K20 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K17 ["Src"]
       83 GETTABLEKS                       R12 R12 K21 ["Types"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K22 [PROTO_1]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 RETURN                           R12 1
