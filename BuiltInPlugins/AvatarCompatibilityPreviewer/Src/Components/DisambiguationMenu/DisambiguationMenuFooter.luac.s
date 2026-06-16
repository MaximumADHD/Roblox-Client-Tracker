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
       21 GETUPVAL                         R7 5
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K11 ["row gap-small align-x-right size-full-0 auto-y padding-right-large"]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K12 ["row gap-small align-x-right size-full-0 auto-y padding-right-small"]
       27 SETTABLEKS                       R6 R5 K6 ["tag"]
       29 GETIMPORT                        R6 K14 [UDim2.new]
       31 LOADN                            R7 1
       32 LOADN                            R8 0
       33 LOADN                            R9 0
       34 LOADN                            R10 60
       35 CALL                             R6 4 1
       36 SETTABLEKS                       R6 R5 K7 ["Size"]
       38 GETTABLEKS                       R6 R0 K15 ["layoutOrder"]
       40 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       42 LOADN                            R6 50
       43 SETTABLEKS                       R6 R5 K9 ["ZIndex"]
       45 DUPTABLE                         R6 K18 [{"SaveButton", "CancelButton"}]
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K5 ["createElement"]
       49 GETUPVAL                         R8 6
       50 DUPTABLE                         R9 K24 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
       51 LOADK                            R12 K25 ["DisambiguationMenu"]
       52 LOADK                            R13 K26 ["Save"]
       53 NAMECALL                         R10 R1 K27 ["getText"]
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K19 ["text"]
       58 GETUPVAL                         R10 7
       59 GETTABLEKS                       R10 R10 K28 ["Emphasis"]
       61 SETTABLEKS                       R10 R9 K20 ["variant"]
       63 GETTABLEKS                       R10 R0 K29 ["onSave"]
       65 SETTABLEKS                       R10 R9 K21 ["onActivated"]
       67 GETTABLEKS                       R11 R0 K30 ["allSelectionsMade"]
       69 NOT                              R10 R11
       70 SETTABLEKS                       R10 R9 K22 ["isDisabled"]
       72 GETUPVAL                         R10 8
       73 GETTABLEKS                       R10 R10 K31 ["Small"]
       75 SETTABLEKS                       R10 R9 K23 ["size"]
       77 NAMECALL                         R10 R2 K32 ["getNextOrder"]
       79 CALL                             R10 1 1
       80 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K16 ["SaveButton"]
       85 GETUPVAL                         R7 3
       86 GETTABLEKS                       R7 R7 K5 ["createElement"]
       88 GETUPVAL                         R8 6
       89 DUPTABLE                         R9 K24 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
       90 LOADK                            R12 K25 ["DisambiguationMenu"]
       91 LOADK                            R13 K33 ["Cancel"]
       92 NAMECALL                         R10 R1 K27 ["getText"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K19 ["text"]
       97 GETUPVAL                         R10 7
       98 GETTABLEKS                       R10 R10 K34 ["Standard"]
      100 SETTABLEKS                       R10 R9 K20 ["variant"]
      102 GETTABLEKS                       R10 R0 K35 ["onCancel"]
      104 SETTABLEKS                       R10 R9 K21 ["onActivated"]
      106 LOADB                            R10 0
      107 SETTABLEKS                       R10 R9 K22 ["isDisabled"]
      109 GETUPVAL                         R10 8
      110 GETTABLEKS                       R10 R10 K31 ["Small"]
      112 SETTABLEKS                       R10 R9 K23 ["size"]
      114 NAMECALL                         R10 R2 K32 ["getNextOrder"]
      116 CALL                             R10 1 1
      117 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      119 CALL                             R7 2 1
      120 SETTABLEKS                       R7 R6 K17 ["CancelButton"]
      122 CALL                             R3 3 -1
      123 RETURN                           R3 -1

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
