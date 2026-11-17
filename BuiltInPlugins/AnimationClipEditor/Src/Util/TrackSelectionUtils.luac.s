PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETIMPORT                        R4 K1 [ipairs]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 3
        8 FORGPREP_INEXT                   R4
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K2 ["getTrack"]
       12 MOVE                             R10 R0
       13 LOADK                            R11 K3 ["Root"]
       14 MOVE                             R12 R8
       15 CALL                             R9 3 1
       16 JUMPIFNOT                        R9 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R10 R2
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K6 [table.insert]
       23 CALL                             R9 2 0
       24 JUMP                             ; [+1]
       25 LOADB                            R3 1
       26 FORGLOOP                         R4 2 [inext] ; [-18]
       28 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationData"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["PathUtils"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 1 0
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R4 R3 K11 ["PruneSelectedTracks"]
       31 RETURN                           R3 1
