PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["LookComposerDialog is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["use"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["new"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K5 ["createElement"]
       21 GETUPVAL                         R5 5
       22 DUPTABLE                         R6 K7 [{"tag"}]
       23 LOADK                            R7 K8 ["col align-x-center align-y-center size-full gap-medium padding-large"]
       24 SETTABLEKS                       R7 R6 K6 ["tag"]
       26 DUPTABLE                         R7 K12 [{"WarningIcon", "Title", "Subtitle"}]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R8 R8 K5 ["createElement"]
       30 GETUPVAL                         R9 5
       31 DUPTABLE                         R10 K15 [{"tag", "Size", "LayoutOrder"}]
       32 LOADK                            R11 K16 ["col align-x-center align-y-center"]
       33 SETTABLEKS                       R11 R10 K6 ["tag"]
       35 GETIMPORT                        R11 K19 [UDim2.fromOffset]
       37 LOADN                            R12 150
       38 LOADN                            R13 150
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K13 ["Size"]
       42 NAMECALL                         R11 R3 K20 ["getNextOrder"]
       44 CALL                             R11 1 1
       45 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       47 DUPTABLE                         R11 K22 [{"Icon"}]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R12 R12 K5 ["createElement"]
       51 GETUPVAL                         R13 6
       52 DUPTABLE                         R14 K25 [{"name", "size"}]
       53 GETUPVAL                         R15 7
       54 GETTABLEKS                       R15 R15 K26 ["Enums"]
       56 GETTABLEKS                       R15 R15 K27 ["IconName"]
       58 GETTABLEKS                       R15 R15 K28 ["TriangleExclamation"]
       60 SETTABLEKS                       R15 R14 K23 ["name"]
       62 GETTABLEKS                       R15 R2 K13 ["Size"]
       64 GETTABLEKS                       R15 R15 K29 ["Size_1500"]
       66 SETTABLEKS                       R15 R14 K24 ["size"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K21 ["Icon"]
       71 CALL                             R8 3 1
       72 SETTABLEKS                       R8 R7 K9 ["WarningIcon"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K5 ["createElement"]
       77 GETUPVAL                         R9 8
       78 DUPTABLE                         R10 K31 [{"Text", "tag", "LayoutOrder"}]
       79 LOADK                            R13 K32 ["LookComposerDialog"]
       80 LOADK                            R14 K33 ["CreateLookFailedTitle"]
       81 NAMECALL                         R11 R1 K34 ["getText"]
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K30 ["Text"]
       86 LOADK                            R11 K35 ["text-heading-small auto-xy content-default text-center"]
       87 SETTABLEKS                       R11 R10 K6 ["tag"]
       89 NAMECALL                         R11 R3 K20 ["getNextOrder"]
       91 CALL                             R11 1 1
       92 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K10 ["Title"]
       97 GETUPVAL                         R8 4
       98 GETTABLEKS                       R8 R8 K5 ["createElement"]
      100 GETUPVAL                         R9 8
      101 DUPTABLE                         R10 K31 [{"Text", "tag", "LayoutOrder"}]
      102 GETTABLEKS                       R11 R0 K36 ["errorMessage"]
      104 SETTABLEKS                       R11 R10 K30 ["Text"]
      106 LOADK                            R11 K37 ["text-body-medium auto-xy content-muted text-center"]
      107 SETTABLEKS                       R11 R10 K6 ["tag"]
      109 NAMECALL                         R11 R3 K20 ["getNextOrder"]
      111 CALL                             R11 1 1
      112 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R7 K11 ["Subtitle"]
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["Icon"]
       27 GETTABLEKS                       R6 R2 K12 ["Hooks"]
       29 GETTABLEKS                       R6 R6 K13 ["useTokens"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R8 K14 ["Framework"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       40 GETTABLEKS                       R8 R8 K16 ["Localization"]
       42 GETTABLEKS                       R9 R7 K17 ["Util"]
       44 GETTABLEKS                       R9 R9 K18 ["LayoutOrderIterator"]
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R0 K19 ["Src"]
       50 GETTABLEKS                       R11 R11 K20 ["Flags"]
       52 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerLookComposer"]
       54 CALL                             R10 1 1
       55 DUPCLOSURE                       R11 K22 [PROTO_0]
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 RETURN                           R11 1
