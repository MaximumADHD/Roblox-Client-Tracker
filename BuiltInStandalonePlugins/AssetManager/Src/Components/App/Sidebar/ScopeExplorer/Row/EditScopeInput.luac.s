PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["StagedFolder"]
        3 GETTABLEKS                       R1 R1 K1 ["Uid"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["NewFolderUid"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+8]
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K3 ["Asset"]
       12 LOADK                            R3 K4 ["NewFolder"]
       13 NAMECALL                         R0 R0 K5 ["getText"]
       15 CALL                             R0 3 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["StagedFolder"]
       20 GETTABLEKS                       R0 R0 K6 ["Name"]
       22 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R3 R2
        1 JUMPIFNOT                        R3 ; [+8]
        2 GETTABLEKS                       R4 R2 K0 ["KeyCode"]
        4 GETIMPORT                        R5 K3 [Enum.KeyCode.Escape]
        6 JUMPIFEQ                         R4 R5 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIF                           R3 ; [+1]
       11 JUMPIF                           R0 ; [+5]
       12 GETUPVAL                         R4 0
       13 NAMECALL                         R4 R4 K4 ["removeStagedFolder"]
       15 CALL                             R4 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 1
       18 JUMPIFNOT                        R0 ; [+2]
       19 MOVE                             R6 R1
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R6 2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K5 ["StagedFolder"]
       25 NAMECALL                         R4 R4 K6 ["uploadStagedFolder"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R3 0
        3 ADDK                             R2 R3 K3 [-40]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K4 ["IconWidthXSmall"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K5 ["Depth"]
       10 MUL                              R3 R4 R5
       11 SUB                              R1 R2 R3
       12 LOADN                            R2 0
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["EditScopeInput usage flagged with FFlagAmrOrganizationFoundation"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["use"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["use"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["use"]
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 5
       23 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R7 0 1
       31 GETTABLEKS                       R8 R0 K5 ["StagedFolder"]
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 5
       37 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R8 0 2
       46 MOVE                             R9 R5
       47 GETTABLEKS                       R10 R0 K5 ["StagedFolder"]
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R9 0 2
       61 MOVE                             R10 R4
       62 GETTABLEKS                       R11 R0 K7 ["Depth"]
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K8 ["createElement"]
       70 GETUPVAL                         R9 8
       71 GETTABLEKS                       R9 R9 K9 ["View"]
       73 DUPTABLE                         R10 K12 [{"LayoutOrder", "tag"}]
       74 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       76 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       78 LOADK                            R11 K13 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
       79 SETTABLEKS                       R11 R10 K11 ["tag"]
       81 GETUPVAL                         R11 5
       82 GETTABLEKS                       R11 R11 K8 ["createElement"]
       84 GETUPVAL                         R12 9
       85 DUPTABLE                         R13 K19 [{"LayoutOrder", "InitialText", "ItemPath", "ItemType", "Size", "OnComplete"}]
       86 GETTABLEKS                       R14 R0 K10 ["LayoutOrder"]
       88 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       90 SETTABLEKS                       R5 R13 K14 ["InitialText"]
       92 GETTABLEKS                       R14 R0 K5 ["StagedFolder"]
       94 GETTABLEKS                       R14 R14 K20 ["Path"]
       96 SETTABLEKS                       R14 R13 K15 ["ItemPath"]
       98 GETUPVAL                         R14 10
       99 GETTABLEKS                       R14 R14 K21 ["AssetType"]
      101 GETTABLEKS                       R14 R14 K22 ["Folder"]
      103 SETTABLEKS                       R14 R13 K16 ["ItemType"]
      105 SETTABLEKS                       R7 R13 K17 ["Size"]
      107 SETTABLEKS                       R6 R13 K18 ["OnComplete"]
      109 CALL                             R11 2 -1
      110 CALL                             R8 -1 -1
      111 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Resources"]
       45 GETTABLEKS                       R8 R8 K15 ["Constants"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Resources"]
       54 GETTABLEKS                       R9 R9 K16 ["StyleConstants"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K18 ["ExplorerController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K21 ["useSidebarWidth"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K22 ["Components"]
       90 GETTABLEKS                       R13 R13 K23 ["Shared"]
       92 GETTABLEKS                       R13 R13 K24 ["EditNameInput"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K12 ["Src"]
       99 GETTABLEKS                       R14 R14 K25 ["Flags"]
      101 GETTABLEKS                       R14 R14 K26 ["getFFlagAmrOrganizationFoundation"]
      103 CALL                             R13 1 1
      104 DUPCLOSURE                       R14 K27 [PROTO_3]
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R6
      116 RETURN                           R14 1
