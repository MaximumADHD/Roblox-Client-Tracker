PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["StagedFolder"]
        3 GETTABLEKS                       R1 R2 K1 ["Uid"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["NewFolderUid"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+8]
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K3 ["Asset"]
       12 LOADK                            R3 K4 ["NewFolder"]
       13 NAMECALL                         R0 R0 K5 ["getText"]
       15 CALL                             R0 3 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K0 ["StagedFolder"]
       20 GETTABLEKS                       R0 R1 K6 ["Name"]
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
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K5 ["StagedFolder"]
       25 NAMECALL                         R4 R4 K6 ["uploadStagedFolder"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R5 R6 K1 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R0 K2 ["StagedFolder"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K3 ["useCallback"]
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
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K4 ["createElement"]
       47 GETUPVAL                         R8 6
       48 DUPTABLE                         R9 K11 [{"LayoutOrder", "InitialText", "ItemPath", "ItemType", "Size", "OnComplete"}]
       49 GETTABLEKS                       R10 R0 K5 ["LayoutOrder"]
       51 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       53 SETTABLEKS                       R5 R9 K6 ["InitialText"]
       55 GETTABLEKS                       R11 R0 K2 ["StagedFolder"]
       57 GETTABLEKS                       R10 R11 K12 ["Path"]
       59 SETTABLEKS                       R10 R9 K7 ["ItemPath"]
       61 GETUPVAL                         R12 7
       62 GETTABLEKS                       R11 R12 K13 ["AssetType"]
       64 GETTABLEKS                       R10 R11 K14 ["Folder"]
       66 SETTABLEKS                       R10 R9 K8 ["ItemType"]
       68 GETIMPORT                        R10 K17 [UDim2.fromOffset]
       70 ADDK                             R11 R4 K18 [-55]
       71 LOADN                            R12 0
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K9 ["Size"]
       75 SETTABLEKS                       R6 R9 K10 ["OnComplete"]
       77 CALL                             R7 2 -1
       78 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Types"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K11 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Resources"]
       38 GETTABLEKS                       R7 R8 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K11 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Controllers"]
       47 GETTABLEKS                       R8 R9 K16 ["ExplorerController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K11 ["Src"]
       54 GETTABLEKS                       R10 R11 K15 ["Controllers"]
       56 GETTABLEKS                       R9 R10 K17 ["ItemsController"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K11 ["Src"]
       63 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K19 ["useSidebarWidth"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R14 R0 K11 ["Src"]
       72 GETTABLEKS                       R13 R14 K20 ["Components"]
       74 GETTABLEKS                       R12 R13 K21 ["Shared"]
       76 GETTABLEKS                       R11 R12 K22 ["EditNameInput"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K23 [PROTO_2]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R5
       88 RETURN                           R11 1
