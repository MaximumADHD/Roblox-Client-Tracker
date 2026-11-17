PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 NAMECALL                         R1 R0 K1 ["getState"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K2 ["Status"]
       11 GETTABLEKS                       R2 R1 K3 ["RootInstance"]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 1
       16 JUMPIFNOT                        R3 ; [+5]
       17 GETIMPORT                        R3 K5 [next]
       19 GETUPVAL                         R4 1
       20 CALL                             R3 1 1
       21 JUMPIF                           R3 ; [+7]
       22 GETUPVAL                         R5 2
       23 NEWTABLE                         R6 0 0
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R0 K0 ["dispatch"]
       28 CALL                             R3 -1 0
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K6 ["getRigInfo"]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K7 ["Parts"]
       36 NEWTABLE                         R5 0 0
       38 NEWTABLE                         R6 0 0
       40 GETIMPORT                        R7 K9 [ipairs]
       42 MOVE                             R8 R4
       43 CALL                             R7 1 3
       44 FORGPREP_INEXT                   R7
       45 NEWTABLE                         R12 0 1
       47 GETTABLEKS                       R13 R11 K10 ["Name"]
       49 SETLIST                          R12 R13 1 [1]
       51 SETTABLE                         R12 R6 R11
       52 FORGLOOP                         R7 2 [inext] ; [-8]
       54 GETUPVAL                         R7 1
       55 LOADNIL                          R8
       56 LOADNIL                          R9
       57 FORGPREP                         R7
       58 LOADK                            R14 K11 ["BoneRef"]
       59 NAMECALL                         R12 R11 K12 ["FindFirstChild"]
       61 CALL                             R12 2 1
       62 JUMPIFNOT                        R12 ; [+10]
       63 GETTABLEKS                       R13 R12 K13 ["Value"]
       65 GETTABLE                         R16 R6 R13
       66 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
       68 MOVE                             R15 R5
       69 GETIMPORT                        R14 K16 [table.insert]
       71 CALL                             R14 2 0
       72 JUMP                             ; [+7]
       73 GETTABLE                         R15 R6 R11
       74 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       76 MOVE                             R14 R5
       77 GETIMPORT                        R13 K16 [table.insert]
       79 CALL                             R13 2 0
       80 FORGLOOP                         R7 2 ; [-23]
       82 GETUPVAL                         R9 2
       83 MOVE                             R10 R5
       84 CALL                             R9 1 -1
       85 NAMECALL                         R7 R0 K0 ["dispatch"]
       87 CALL                             R7 -1 0
       88 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["RigInfo"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["SetSelectedTracks"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R3 K11 ["SetSelectedTrackInstances"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 RETURN                           R6 1
