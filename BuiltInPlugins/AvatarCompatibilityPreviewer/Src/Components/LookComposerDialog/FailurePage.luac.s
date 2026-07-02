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
       22 DUPTABLE                         R6 K8 [{["tag"] = "col align-x-center align-y-center gap-medium size-full padding-large"}]
       23 DUPTABLE                         R7 K12 [{"WarningIcon", "Title", "Subtitle"}]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K5 ["createElement"]
       27 GETUPVAL                         R9 5
       28 DUPTABLE                         R10 K16 [{["tag"] = "col align-x-center align-y-center", ["Size"], ["LayoutOrder"]}]
       29 GETIMPORT                        R11 K19 [UDim2.fromOffset]
       31 LOADN                            R12 150
       32 LOADN                            R13 150
       33 CALL                             R11 2 1
       34 SETTABLEKS                       R11 R10 K14 ["Size"]
       36 NAMECALL                         R11 R3 K20 ["getNextOrder"]
       38 CALL                             R11 1 1
       39 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       41 DUPTABLE                         R11 K22 [{"Icon"}]
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K5 ["createElement"]
       45 GETUPVAL                         R13 6
       46 DUPTABLE                         R14 K25 [{"name", "size"}]
       47 GETUPVAL                         R15 7
       48 GETTABLEKS                       R15 R15 K26 ["Enums"]
       50 GETTABLEKS                       R15 R15 K27 ["IconName"]
       52 GETTABLEKS                       R15 R15 K28 ["TriangleExclamation"]
       54 SETTABLEKS                       R15 R14 K23 ["name"]
       56 GETTABLEKS                       R15 R2 K14 ["Size"]
       58 GETTABLEKS                       R15 R15 K29 ["Size_1500"]
       60 SETTABLEKS                       R15 R14 K24 ["size"]
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K21 ["Icon"]
       65 CALL                             R8 3 1
       66 SETTABLEKS                       R8 R7 K9 ["WarningIcon"]
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K5 ["createElement"]
       71 GETUPVAL                         R9 8
       72 DUPTABLE                         R10 K32 [{["Text"], ["tag"] = "text-center auto-xy text-heading-small content-default", ["LayoutOrder"]}]
       73 LOADK                            R13 K33 ["LookComposerDialog"]
       74 LOADK                            R14 K34 ["CreateLookFailedTitle"]
       75 NAMECALL                         R11 R1 K35 ["getText"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K30 ["Text"]
       80 NAMECALL                         R11 R3 K20 ["getNextOrder"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K10 ["Title"]
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K5 ["createElement"]
       91 GETUPVAL                         R9 8
       92 DUPTABLE                         R10 K37 [{["Text"], ["tag"] = "text-center auto-xy text-body-medium content-muted", ["LayoutOrder"]}]
       93 GETTABLEKS                       R11 R0 K38 ["errorMessage"]
       95 SETTABLEKS                       R11 R10 K30 ["Text"]
       97 NAMECALL                         R11 R3 K20 ["getNextOrder"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K11 ["Subtitle"]
      105 CALL                             R4 3 -1
      106 RETURN                           R4 -1

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
