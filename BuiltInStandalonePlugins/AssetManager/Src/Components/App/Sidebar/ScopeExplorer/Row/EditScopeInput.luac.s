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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R0 K2 ["StagedFolder"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 2
       38 MOVE                             R9 R5
       39 GETTABLEKS                       R10 R0 K2 ["StagedFolder"]
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R9 0 2
       53 MOVE                             R10 R4
       54 GETTABLEKS                       R11 R0 K4 ["Depth"]
       56 SETLIST                          R9 R10 2 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K5 ["createElement"]
       62 GETUPVAL                         R9 7
       63 GETTABLEKS                       R9 R9 K6 ["View"]
       65 DUPTABLE                         R10 K10 [{["LayoutOrder"], ["tag"] = "size-0-0 auto-xy padding-left-xsmall text-label-small text-truncate-end"}]
       66 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       68 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R11 R11 K5 ["createElement"]
       73 GETUPVAL                         R12 8
       74 DUPTABLE                         R13 K16 [{"LayoutOrder", "InitialText", "ItemPath", "ItemType", "Size", "OnComplete"}]
       75 GETTABLEKS                       R14 R0 K7 ["LayoutOrder"]
       77 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       79 SETTABLEKS                       R5 R13 K11 ["InitialText"]
       81 GETTABLEKS                       R14 R0 K2 ["StagedFolder"]
       83 GETTABLEKS                       R14 R14 K17 ["Path"]
       85 SETTABLEKS                       R14 R13 K12 ["ItemPath"]
       87 GETUPVAL                         R14 9
       88 GETTABLEKS                       R14 R14 K18 ["AssetType"]
       90 GETTABLEKS                       R14 R14 K19 ["Folder"]
       92 SETTABLEKS                       R14 R13 K13 ["ItemType"]
       94 SETTABLEKS                       R7 R13 K14 ["Size"]
       96 SETTABLEKS                       R6 R13 K15 ["OnComplete"]
       98 CALL                             R11 2 -1
       99 CALL                             R8 -1 -1
      100 RETURN                           R8 -1

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
       95 DUPCLOSURE                       R13 K25 [PROTO_3]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R6
      106 RETURN                           R13 1
