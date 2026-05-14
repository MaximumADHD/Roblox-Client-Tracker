PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["creators"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 DUPTABLE                         R8 K3 [{"id", "text"}]
        9 GETTABLEKS                       R9 R5 K1 ["id"]
       11 SETTABLEKS                       R9 R8 K1 ["id"]
       13 GETTABLEKS                       R9 R5 K2 ["text"]
       15 SETTABLEKS                       R9 R8 K2 ["text"]
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K6 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-16]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCreatorChanged"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
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
       14 NEWTABLE                         R4 0 1
       16 GETTABLEKS                       R5 R0 K2 ["creators"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K4 ["onCreatorChanged"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K5 ["createElement"]
       36 GETUPVAL                         R5 3
       37 DUPTABLE                         R6 K11 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
       38 LOADK                            R7 K12 ["col gap-small auto-y"]
       39 SETTABLEKS                       R7 R6 K6 ["tag"]
       41 GETIMPORT                        R7 K15 [UDim2.new]
       43 LOADN                            R8 1
       44 LOADN                            R9 0
       45 LOADN                            R10 0
       46 LOADN                            R11 0
       47 CALL                             R7 4 1
       48 SETTABLEKS                       R7 R6 K7 ["Size"]
       50 GETIMPORT                        R7 K18 [Enum.AutomaticSize.Y]
       52 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       54 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       56 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       58 GETTABLEKS                       R8 R0 K19 ["disabled"]
       60 JUMPIFNOT                        R8 ; [+2]
       61 LOADK                            R7 K20 [0.5]
       62 JUMP                             ; [+1]
       63 LOADN                            R7 0
       64 SETTABLEKS                       R7 R6 K10 ["GroupTransparency"]
       66 DUPTABLE                         R7 K23 [{"Title", "DropdownWrapper"}]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K5 ["createElement"]
       70 GETUPVAL                         R9 4
       71 DUPTABLE                         R10 K25 [{"Text", "tag", "LayoutOrder"}]
       72 LOADK                            R13 K26 ["LookComposerDialog"]
       73 LOADK                            R14 K27 ["Creator"]
       74 NAMECALL                         R11 R1 K28 ["getText"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K24 ["Text"]
       79 LOADK                            R11 K29 ["text-label-medium auto-xy content-emphasis"]
       80 SETTABLEKS                       R11 R10 K6 ["tag"]
       82 LOADN                            R11 1
       83 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K21 ["Title"]
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R8 R8 K5 ["createElement"]
       91 GETUPVAL                         R9 5
       92 DUPTABLE                         R10 K37 [{"label", "value", "items", "onItemChanged", "isDisabled", "width", "size", "LayoutOrder"}]
       93 LOADK                            R11 K38 [""]
       94 SETTABLEKS                       R11 R10 K30 ["label"]
       96 GETTABLEKS                       R11 R0 K39 ["selectedCreatorId"]
       98 SETTABLEKS                       R11 R10 K31 ["value"]
      100 SETTABLEKS                       R2 R10 K32 ["items"]
      102 SETTABLEKS                       R3 R10 K33 ["onItemChanged"]
      104 GETTABLEKS                       R11 R0 K19 ["disabled"]
      106 SETTABLEKS                       R11 R10 K34 ["isDisabled"]
      108 GETIMPORT                        R11 K41 [UDim.new]
      110 LOADN                            R12 1
      111 LOADN                            R13 0
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K35 ["width"]
      115 LOADK                            R11 K42 ["Small"]
      116 SETTABLEKS                       R11 R10 K36 ["size"]
      118 LOADN                            R11 2
      119 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K22 ["DropdownWrapper"]
      124 CALL                             R4 3 -1
      125 RETURN                           R4 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["Dropdown"]
       25 GETTABLEKS                       R4 R4 K11 ["Root"]
       27 GETTABLEKS                       R5 R2 K12 ["Text"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R7 R7 K13 ["Framework"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       38 GETTABLEKS                       R7 R7 K15 ["Localization"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Flags"]
       46 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarPreviewerLookComposer"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K19 [PROTO_2]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 RETURN                           R9 1
