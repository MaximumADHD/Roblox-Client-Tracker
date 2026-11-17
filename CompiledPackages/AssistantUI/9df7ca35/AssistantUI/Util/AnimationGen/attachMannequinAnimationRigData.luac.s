PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetObjects"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 DUPTABLE                         R2 K2 [{[1] = }]
        5 MOVE                             R1 R2
        6 GETUPVAL                         R2 0
        7 SETTABLE                         R1 R2 R0
        8 GETTABLEKS                       R2 R1 K0 ["template"]
       10 JUMPIFEQKNIL                     R2 ; [+4]
       12 GETTABLEKS                       R2 R1 K0 ["template"]
       14 RETURN                           R2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R2 K4 [pcall]
       20 CALL                             R2 1 2
       21 JUMPIFNOT                        R2 ; [+2]
       22 JUMPIFNOTEQKNIL                  R3 ; [+16]
       24 GETIMPORT                        R4 K6 [warn]
       26 LOADK                            R5 K7 ["[AnimationGen] failed to load ARD content %*: %*"]
       27 MOVE                             R7 R0
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R9 R3
       30 GETIMPORT                        R8 K9 [tostring]
       32 CALL                             R8 1 1
       33 NAMECALL                         R5 R5 K10 ["format"]
       35 CALL                             R5 3 1
       36 CALL                             R4 1 0
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 MOVE                             R4 R3
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 FORGPREP                         R4
       43 LOADK                            R12 K11 ["AnimationRigData"]
       44 NAMECALL                         R10 R8 K12 ["IsA"]
       46 CALL                             R10 2 1
       47 JUMPIFNOT                        R10 ; [+2]
       48 MOVE                             R9 R8
       49 JUMP                             ; [+5]
       50 LOADK                            R11 K11 ["AnimationRigData"]
       51 LOADB                            R12 1
       52 NAMECALL                         R9 R8 K13 ["FindFirstChildWhichIsA"]
       54 CALL                             R9 3 1
       55 JUMPIFNOT                        R9 ; [+6]
       56 LOADB                            R10 1
       57 SETTABLEKS                       R10 R9 K14 ["Archivable"]
       59 SETTABLEKS                       R9 R1 K0 ["template"]
       61 RETURN                           R9 1
       62 FORGLOOP                         R4 2 ; [-20]
       64 GETIMPORT                        R4 K6 [warn]
       66 LOADK                            R5 K15 ["[AnimationGen] no AnimationRigData found in %*"]
       67 MOVE                             R7 R0
       68 NAMECALL                         R5 R5 K10 ["format"]
       70 CALL                             R5 2 1
       71 CALL                             R4 1 0
       72 LOADNIL                          R4
       73 RETURN                           R4 1

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 JUMPIFEQKNIL                     R3 ; [+24]
        8 NAMECALL                         R4 R0 K0 ["GetChildren"]
       10 CALL                             R4 1 3
       11 FORGPREP                         R4
       12 LOADK                            R11 K1 ["AnimationRigData"]
       13 NAMECALL                         R9 R8 K2 ["IsA"]
       15 CALL                             R9 2 1
       16 JUMPIFNOT                        R9 ; [+3]
       17 NAMECALL                         R9 R8 K3 ["Destroy"]
       19 CALL                             R9 1 0
       20 FORGLOOP                         R4 2 ; [-9]
       22 NAMECALL                         R4 R3 K4 ["Clone"]
       24 CALL                             R4 1 1
       25 LOADK                            R5 K1 ["AnimationRigData"]
       26 SETTABLEKS                       R5 R4 K5 ["Name"]
       28 SETTABLEKS                       R0 R4 K6 ["Parent"]
       30 RETURN                           R0 1
       31 GETIMPORT                        R4 K8 [warn]
       33 LOADK                            R5 K9 ["[AnimationGen] ARD content %* unavailable; leaving clip without AnimationRigData"]
       34 MOVE                             R7 R2
       35 NAMECALL                         R5 R5 K10 ["format"]
       37 CALL                             R5 2 1
       38 CALL                             R4 1 0
       39 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getAnimationRigDataContentUrl"]
       18 LOADK                            R3 K10 ["mannequin"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 0 0
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R5 K12 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
