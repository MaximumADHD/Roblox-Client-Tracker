PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R2 R2 K1 ["PublishDescendantAssets"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 4
       12 GETUPVAL                         R6 5
       13 GETTABLEKS                       R5 R6 K2 ["Tag"]
       15 NAMECALL                         R3 R3 K3 ["GetTagged"]
       17 CALL                             R3 2 3
       18 FORGPREP                         R3
       19 GETUPVAL                         R8 0
       20 NAMECALL                         R10 R7 K4 ["GetChildren"]
       22 CALL                             R10 1 -1
       23 NAMECALL                         R8 R8 K5 ["Set"]
       25 CALL                             R8 -1 0
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R10 R7 K6 ["Name"]
       29 NAMECALL                         R8 R8 K7 ["PromptSaveSelection"]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-14]
       34 GETUPVAL                         R3 0
       35 MOVE                             R5 R1
       36 NAMECALL                         R3 R3 K5 ["Set"]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R5 7
       40 LOADB                            R6 1
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R0 K8 ["dispatch"]
       44 CALL                             R3 -1 0
       45 GETUPVAL                         R5 8
       46 GETIMPORT                        R6 K11 [table.concat]
       48 MOVE                             R7 R2
       49 LOADK                            R8 K12 ["\n"]
       50 CALL                             R6 2 -1
       51 CALL                             R5 -1 -1
       52 NAMECALL                         R3 R0 K8 ["dispatch"]
       54 CALL                             R3 -1 0
       55 GETUPVAL                         R5 9
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R7 R8 K13 ["Screens"]
       59 GETTABLEKS                       R6 R7 K14 ["OwnershipTransfer"]
       61 CALL                             R5 1 -1
       62 NAMECALL                         R3 R0 K8 ["dispatch"]
       64 CALL                             R3 -1 0
       65 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["PublishService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["Selection"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R7 R0 K13 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Constants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R9 K15 ["Actions"]
       44 GETTABLEKS                       R7 R8 K16 ["SetEnabled"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R9 R10 K15 ["Actions"]
       53 GETTABLEKS                       R8 R9 K17 ["SetScreen"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K12 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R10 R11 K15 ["Actions"]
       62 GETTABLEKS                       R9 R10 K18 ["SetOwnershipTransferText"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K12 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Src"]
       69 GETTABLEKS                       R11 R12 K19 ["Util"]
       71 GETTABLEKS                       R10 R11 K20 ["getOwnershipTransferAssetIds"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K21 [PROTO_1]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R7
       84 RETURN                           R10 1
