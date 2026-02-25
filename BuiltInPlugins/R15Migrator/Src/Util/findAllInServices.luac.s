PROTO_0:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 JUMPIFNOT                        R0 ; [+4]
        5 MOVE                             R8 R0
        6 MOVE                             R9 R7
        7 CALL                             R8 1 1
        8 JUMPIFNOT                        R8 ; [+7]
        9 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       11 MOVE                             R9 R2
       12 MOVE                             R10 R7
       13 GETIMPORT                        R8 K2 [table.insert]
       15 CALL                             R8 2 0
       16 FORGLOOP                         R3 2 ; [-13]
       18 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R8 R9 K0 ["isRootSaveFolderChildOf"]
        9 MOVE                             R9 R6
       10 CALL                             R8 1 1
       11 JUMPIF                           R8 ; [+6]
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R9 R10 K1 ["isRootSaveFolderDescendantOf"]
       15 MOVE                             R10 R6
       16 CALL                             R9 1 1
       17 NOT                              R8 R9
       18 FASTCALL1                        ASSERT R8 ; [+2]
       19 GETIMPORT                        R7 K3 [assert]
       21 CALL                             R7 1 0
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K0 ["isRootSaveFolderChildOf"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+28]
       28 NAMECALL                         R7 R6 K4 ["GetChildren"]
       30 CALL                             R7 1 3
       31 FORGPREP                         R7
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K5 ["isRootSaveFolder"]
       35 MOVE                             R13 R11
       36 CALL                             R12 1 1
       37 JUMPIF                           R12 ; [+15]
       38 NAMECALL                         R12 R11 K6 ["GetDescendants"]
       40 CALL                             R12 1 1
       41 FASTCALL2                        TABLE_INSERT R12 R11 ; [+5]
       43 MOVE                             R14 R12
       44 MOVE                             R15 R11
       45 GETIMPORT                        R13 K9 [table.insert]
       47 CALL                             R13 2 0
       48 GETUPVAL                         R13 2
       49 MOVE                             R14 R0
       50 MOVE                             R15 R12
       51 MOVE                             R16 R1
       52 CALL                             R13 3 0
       53 FORGLOOP                         R7 2 ; [-22]
       55 JUMP                             ; [+7]
       56 GETUPVAL                         R7 2
       57 MOVE                             R8 R0
       58 NAMECALL                         R9 R6 K6 ["GetDescendants"]
       60 CALL                             R9 1 1
       61 MOVE                             R10 R1
       62 CALL                             R7 3 0
       63 FORGLOOP                         R2 2 ; [-58]
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SaveInterface"]
       15 CALL                             R2 1 1
       16 NEWTABLE                         R3 0 10
       18 GETIMPORT                        R4 K10 [game]
       20 LOADK                            R6 K11 ["Chat"]
       21 NAMECALL                         R4 R4 K12 ["GetService"]
       23 CALL                             R4 2 1
       24 GETIMPORT                        R5 K10 [game]
       26 LOADK                            R7 K13 ["Lighting"]
       27 NAMECALL                         R5 R5 K12 ["GetService"]
       29 CALL                             R5 2 1
       30 GETIMPORT                        R6 K10 [game]
       32 LOADK                            R8 K14 ["ReplicatedFirst"]
       33 NAMECALL                         R6 R6 K12 ["GetService"]
       35 CALL                             R6 2 1
       36 GETIMPORT                        R7 K10 [game]
       38 LOADK                            R9 K15 ["ReplicatedStorage"]
       39 NAMECALL                         R7 R7 K12 ["GetService"]
       41 CALL                             R7 2 1
       42 GETIMPORT                        R8 K10 [game]
       44 LOADK                            R10 K16 ["ServerScriptService"]
       45 NAMECALL                         R8 R8 K12 ["GetService"]
       47 CALL                             R8 2 1
       48 GETIMPORT                        R9 K10 [game]
       50 LOADK                            R11 K17 ["ServerStorage"]
       51 NAMECALL                         R9 R9 K12 ["GetService"]
       53 CALL                             R9 2 1
       54 GETIMPORT                        R10 K10 [game]
       56 LOADK                            R12 K18 ["StarterGui"]
       57 NAMECALL                         R10 R10 K12 ["GetService"]
       59 CALL                             R10 2 1
       60 GETIMPORT                        R11 K10 [game]
       62 LOADK                            R13 K19 ["StarterPack"]
       63 NAMECALL                         R11 R11 K12 ["GetService"]
       65 CALL                             R11 2 1
       66 GETIMPORT                        R12 K10 [game]
       68 LOADK                            R14 K20 ["StarterPlayer"]
       69 NAMECALL                         R12 R12 K12 ["GetService"]
       71 CALL                             R12 2 1
       72 GETIMPORT                        R13 K10 [game]
       74 LOADK                            R15 K21 ["Workspace"]
       75 NAMECALL                         R13 R13 K12 ["GetService"]
       77 CALL                             R13 2 -1
       78 SETLIST                          R3 R4 -1 [1]
       80 DUPCLOSURE                       R4 K22 [PROTO_0]
       81 DUPCLOSURE                       R5 K23 [PROTO_1]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 RETURN                           R5 1
