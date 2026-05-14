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
       20 DUPTABLE                         R5 K10 [{"tag", "Size", "LayoutOrder", "ZIndex"}]
       21 LOADK                            R6 K11 ["row gap-small align-x-right size-full-0 auto-y padding-right-small"]
       22 SETTABLEKS                       R6 R5 K6 ["tag"]
       24 GETIMPORT                        R6 K13 [UDim2.new]
       26 LOADN                            R7 1
       27 LOADN                            R8 0
       28 LOADN                            R9 0
       29 LOADN                            R10 60
       30 CALL                             R6 4 1
       31 SETTABLEKS                       R6 R5 K7 ["Size"]
       33 GETTABLEKS                       R6 R0 K14 ["layoutOrder"]
       35 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       37 LOADN                            R6 50
       38 SETTABLEKS                       R6 R5 K9 ["ZIndex"]
       40 DUPTABLE                         R6 K17 [{"SaveButton", "CancelButton"}]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K5 ["createElement"]
       44 GETUPVAL                         R8 5
       45 DUPTABLE                         R9 K23 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
       46 LOADK                            R12 K24 ["DisambiguationMenu"]
       47 LOADK                            R13 K25 ["Save"]
       48 NAMECALL                         R10 R1 K26 ["getText"]
       50 CALL                             R10 3 1
       51 SETTABLEKS                       R10 R9 K18 ["text"]
       53 GETUPVAL                         R10 6
       54 GETTABLEKS                       R10 R10 K27 ["Emphasis"]
       56 SETTABLEKS                       R10 R9 K19 ["variant"]
       58 GETTABLEKS                       R10 R0 K28 ["onSave"]
       60 SETTABLEKS                       R10 R9 K20 ["onActivated"]
       62 GETTABLEKS                       R11 R0 K29 ["allSelectionsMade"]
       64 NOT                              R10 R11
       65 SETTABLEKS                       R10 R9 K21 ["isDisabled"]
       67 GETUPVAL                         R10 7
       68 GETTABLEKS                       R10 R10 K30 ["Small"]
       70 SETTABLEKS                       R10 R9 K22 ["size"]
       72 NAMECALL                         R10 R2 K31 ["getNextOrder"]
       74 CALL                             R10 1 1
       75 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K15 ["SaveButton"]
       80 GETUPVAL                         R7 3
       81 GETTABLEKS                       R7 R7 K5 ["createElement"]
       83 GETUPVAL                         R8 5
       84 DUPTABLE                         R9 K23 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
       85 LOADK                            R12 K24 ["DisambiguationMenu"]
       86 LOADK                            R13 K32 ["Cancel"]
       87 NAMECALL                         R10 R1 K26 ["getText"]
       89 CALL                             R10 3 1
       90 SETTABLEKS                       R10 R9 K18 ["text"]
       92 GETUPVAL                         R10 6
       93 GETTABLEKS                       R10 R10 K33 ["Standard"]
       95 SETTABLEKS                       R10 R9 K19 ["variant"]
       97 GETTABLEKS                       R10 R0 K34 ["onCancel"]
       99 SETTABLEKS                       R10 R9 K20 ["onActivated"]
      101 LOADB                            R10 0
      102 SETTABLEKS                       R10 R9 K21 ["isDisabled"]
      104 GETUPVAL                         R10 7
      105 GETTABLEKS                       R10 R10 K30 ["Small"]
      107 SETTABLEKS                       R10 R9 K22 ["size"]
      109 NAMECALL                         R10 R2 K31 ["getNextOrder"]
      111 CALL                             R10 1 1
      112 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K16 ["CancelButton"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

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
       57 DUPCLOSURE                       R11 K22 [PROTO_0]
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 RETURN                           R11 1
