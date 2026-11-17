PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["DisambiguationMenuFooter should only be used when FFlagAvatarPreviewerUpdateDialogUI is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["use"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["new"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K5 ["createElement"]
       19 GETUPVAL                         R4 4
       20 DUPTABLE                         R5 K11 [{["tag"], ["Size"], ["LayoutOrder"], ["ZIndex"] = 50}]
       21 GETUPVAL                         R7 5
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K12 ["row align-x-right gap-small size-full-0 auto-y padding-right-large"]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K13 ["row align-x-right gap-small size-full-0 auto-y padding-right-small"]
       27 SETTABLEKS                       R6 R5 K6 ["tag"]
       29 GETIMPORT                        R6 K15 [UDim2.new]
       31 LOADN                            R7 1
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 LOADN                            R10 60
       35 CALL                             R6 4 1
       36 SETTABLEKS                       R6 R5 K7 ["Size"]
       38 GETTABLEKS                       R6 R0 K16 ["layoutOrder"]
       40 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       42 DUPTABLE                         R6 K19 [{"SaveButton", "CancelButton"}]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K5 ["createElement"]
       46 GETUPVAL                         R8 6
       47 DUPTABLE                         R9 K25 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
       48 LOADK                            R12 K26 ["DisambiguationMenu"]
       49 LOADK                            R13 K27 ["Save"]
       50 NAMECALL                         R10 R1 K28 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K20 ["text"]
       55 GETUPVAL                         R10 7
       56 GETTABLEKS                       R10 R10 K29 ["Emphasis"]
       58 SETTABLEKS                       R10 R9 K21 ["variant"]
       60 GETTABLEKS                       R10 R0 K30 ["onSave"]
       62 SETTABLEKS                       R10 R9 K22 ["onActivated"]
       64 GETTABLEKS                       R11 R0 K31 ["allSelectionsMade"]
       66 NOT                              R10 R11
       67 SETTABLEKS                       R10 R9 K23 ["isDisabled"]
       69 GETUPVAL                         R10 8
       70 GETTABLEKS                       R10 R10 K32 ["Small"]
       72 SETTABLEKS                       R10 R9 K24 ["size"]
       74 NAMECALL                         R10 R2 K33 ["getNextOrder"]
       76 CALL                             R10 1 1
       77 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K17 ["SaveButton"]
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K5 ["createElement"]
       85 GETUPVAL                         R8 6
       86 DUPTABLE                         R9 K35 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"]}]
       87 LOADK                            R12 K26 ["DisambiguationMenu"]
       88 LOADK                            R13 K36 ["Cancel"]
       89 NAMECALL                         R10 R1 K28 ["getText"]
       91 CALL                             R10 3 1
       92 SETTABLEKS                       R10 R9 K20 ["text"]
       94 GETUPVAL                         R10 7
       95 GETTABLEKS                       R10 R10 K37 ["Standard"]
       97 SETTABLEKS                       R10 R9 K21 ["variant"]
       99 GETTABLEKS                       R10 R0 K38 ["onCancel"]
      101 SETTABLEKS                       R10 R9 K22 ["onActivated"]
      103 GETUPVAL                         R10 8
      104 GETTABLEKS                       R10 R10 K32 ["Small"]
      106 SETTABLEKS                       R10 R9 K24 ["size"]
      108 NAMECALL                         R10 R2 K33 ["getNextOrder"]
      110 CALL                             R10 1 1
      111 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K18 ["CancelButton"]
      116 CALL                             R3 3 -1
      117 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K6 ["Packages"]
       33 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K14 ["Button"]
       38 GETTABLEKS                       R7 R5 K15 ["Enums"]
       40 GETTABLEKS                       R7 R7 K16 ["ButtonVariant"]
       42 GETTABLEKS                       R8 R5 K15 ["Enums"]
       44 GETTABLEKS                       R8 R8 K17 ["InputSize"]
       46 GETTABLEKS                       R9 R5 K18 ["View"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K19 ["Src"]
       52 GETTABLEKS                       R11 R11 K20 ["Flags"]
       54 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K19 ["Src"]
       61 GETTABLEKS                       R12 R12 K20 ["Flags"]
       63 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
       65 CALL                             R11 1 1
       66 DUPCLOSURE                       R12 K23 [PROTO_0]
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 RETURN                           R12 1
