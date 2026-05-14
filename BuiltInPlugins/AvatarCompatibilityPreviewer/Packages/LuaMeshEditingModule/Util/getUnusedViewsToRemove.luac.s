PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R1 R6
        7 JUMPIF                           R8 ; [+19]
        8 GETTABLEKS                       R8 R0 K0 ["meshName"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 DUPTABLE                         R15 K3 [{"MeshName", "Index"}]
       14 SETTABLEKS                       R6 R15 K1 ["MeshName"]
       16 SETTABLEKS                       R11 R15 K2 ["Index"]
       18 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       20 MOVE                             R14 R2
       21 GETIMPORT                        R13 K6 [table.insert]
       23 CALL                             R13 2 0
       24 FORGLOOP                         R8 1 ; [-12]
       26 JUMP                             ; [+45]
       27 GETUPVAL                         R8 0
       28 CALL                             R8 0 1
       29 JUMPIFNOT                        R8 ; [+22]
       30 GETTABLE                         R8 R0 R6
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 FORGPREP                         R8
       34 GETTABLE                         R14 R1 R6
       35 GETTABLE                         R13 R14 R11
       36 JUMPIFNOTEQKNIL                  R13 ; [+12]
       38 DUPTABLE                         R15 K3 [{"MeshName", "Index"}]
       39 SETTABLEKS                       R6 R15 K1 ["MeshName"]
       41 SETTABLEKS                       R11 R15 K2 ["Index"]
       43 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       45 MOVE                             R14 R2
       46 GETIMPORT                        R13 K6 [table.insert]
       48 CALL                             R13 2 0
       49 FORGLOOP                         R8 1 ; [-16]
       51 JUMP                             ; [+20]
       52 GETTABLE                         R10 R1 R6
       53 LENGTH                           R9 R10
       54 ADDK                             R8 R9 K7 [1]
       55 MOVE                             R11 R8
       56 GETTABLE                         R12 R0 R6
       57 LENGTH                           R9 R12
       58 LOADN                            R10 1
       59 FORNPREP                         R9
       60 DUPTABLE                         R14 K3 [{"MeshName", "Index"}]
       61 SETTABLEKS                       R6 R14 K1 ["MeshName"]
       63 SETTABLEKS                       R11 R14 K2 ["Index"]
       65 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       67 MOVE                             R13 R2
       68 GETIMPORT                        R12 K6 [table.insert]
       70 CALL                             R12 2 0
       71 FORNLOOP                         R9
       72 FORGLOOP                         R3 2 ; [-67]
       74 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
