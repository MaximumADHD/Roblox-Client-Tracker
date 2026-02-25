PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLE                         R8 R1 R6
        8 JUMPIF                           R8 ; [+20]
        9 GETIMPORT                        R8 K3 [ipairs]
       11 GETTABLEKS                       R9 R0 K4 ["meshName"]
       13 CALL                             R8 1 3
       14 FORGPREP_INEXT                   R8
       15 DUPTABLE                         R15 K7 [{"MeshName", "Index"}]
       16 SETTABLEKS                       R6 R15 K5 ["MeshName"]
       18 SETTABLEKS                       R11 R15 K6 ["Index"]
       20 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       22 MOVE                             R14 R2
       23 GETIMPORT                        R13 K10 [table.insert]
       25 CALL                             R13 2 0
       26 FORGLOOP                         R8 1 [inext] ; [-12]
       28 JUMP                             ; [+45]
       29 GETUPVAL                         R8 0
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+22]
       32 GETTABLE                         R8 R0 R6
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETTABLE                         R14 R1 R6
       37 GETTABLE                         R13 R14 R11
       38 JUMPIFNOTEQKNIL                  R13 ; [+12]
       40 DUPTABLE                         R15 K7 [{"MeshName", "Index"}]
       41 SETTABLEKS                       R6 R15 K5 ["MeshName"]
       43 SETTABLEKS                       R11 R15 K6 ["Index"]
       45 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       47 MOVE                             R14 R2
       48 GETIMPORT                        R13 K10 [table.insert]
       50 CALL                             R13 2 0
       51 FORGLOOP                         R8 1 ; [-16]
       53 JUMP                             ; [+20]
       54 GETTABLE                         R10 R1 R6
       55 LENGTH                           R9 R10
       56 ADDK                             R8 R9 K11 [1]
       57 MOVE                             R11 R8
       58 GETTABLE                         R12 R0 R6
       59 LENGTH                           R9 R12
       60 LOADN                            R10 1
       61 FORNPREP                         R9
       62 DUPTABLE                         R14 K7 [{"MeshName", "Index"}]
       63 SETTABLEKS                       R6 R14 K5 ["MeshName"]
       65 SETTABLEKS                       R11 R14 K6 ["Index"]
       67 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       69 MOVE                             R13 R2
       70 GETIMPORT                        R12 K10 [table.insert]
       72 CALL                             R12 2 0
       73 FORNLOOP                         R9
       74 FORGLOOP                         R3 2 ; [-68]
       76 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
