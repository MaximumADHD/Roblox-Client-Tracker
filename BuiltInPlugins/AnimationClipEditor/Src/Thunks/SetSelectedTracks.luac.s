PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Status"]
        5 GETTABLEKS                       R1 R1 K2 ["RootInstance"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R5 1
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R0 K3 ["dispatch"]
       12 CALL                             R2 -1 0
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 NEWTABLE                         R2 0 0
       17 NEWTABLE                         R3 0 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["getRigInfo"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K5 ["Parts"]
       26 GETIMPORT                        R6 K7 [ipairs]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 3
       30 FORGPREP_INEXT                   R6
       31 GETTABLEKS                       R11 R10 K8 ["Name"]
       33 SETTABLE                         R10 R3 R11
       34 FORGLOOP                         R6 2 [inext] ; [-4]
       36 GETUPVAL                         R6 1
       37 JUMPIFNOT                        R6 ; [+35]
       38 GETIMPORT                        R6 K10 [next]
       40 MOVE                             R7 R5
       41 CALL                             R6 1 1
       42 JUMPIFNOT                        R6 ; [+30]
       43 GETIMPORT                        R6 K7 [ipairs]
       45 GETUPVAL                         R7 1
       46 CALL                             R6 1 3
       47 FORGPREP_INEXT                   R6
       48 GETTABLEN                        R11 R10 1
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K11 ["getBoneByName"]
       52 MOVE                             R13 R1
       53 MOVE                             R14 R11
       54 CALL                             R12 2 1
       55 JUMPIFNOT                        R12 ; [+8]
       56 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       58 MOVE                             R14 R2
       59 MOVE                             R15 R12
       60 GETIMPORT                        R13 K14 [table.insert]
       62 CALL                             R13 2 0
       63 JUMP                             ; [+7]
       64 GETTABLE                         R15 R3 R11
       65 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       67 MOVE                             R14 R2
       68 GETIMPORT                        R13 K14 [table.insert]
       70 CALL                             R13 2 0
       71 FORGLOOP                         R6 2 [inext] ; [-24]
       73 JUMPIFNOT                        R2 ; [+11]
       74 GETIMPORT                        R6 K10 [next]
       76 MOVE                             R7 R2
       77 CALL                             R6 1 1
       78 JUMPIFNOT                        R6 ; [+6]
       79 GETUPVAL                         R8 3
       80 MOVE                             R9 R2
       81 CALL                             R8 1 -1
       82 NAMECALL                         R6 R0 K3 ["dispatch"]
       84 CALL                             R6 -1 0
       85 RETURN                           R0 0

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
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1
