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
       15 GETIMPORT                        R2 K4 [pcall]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R2 1 2
       20 JUMPIFNOT                        R2 ; [+2]
       21 JUMPIFNOTEQKNIL                  R3 ; [+16]
       23 GETIMPORT                        R4 K6 [warn]
       25 LOADK                            R5 K7 ["[AnimationGen] failed to load ARD content %*: %*"]
       26 MOVE                             R7 R0
       27 FASTCALL1                        TOSTRING R3 ; [+3]
       28 MOVE                             R9 R3
       29 GETIMPORT                        R8 K9 [tostring]
       31 CALL                             R8 1 1
       32 NAMECALL                         R5 R5 K10 ["format"]
       34 CALL                             R5 3 1
       35 CALL                             R4 1 0
       36 LOADNIL                          R4
       37 RETURN                           R4 1
       38 MOVE                             R4 R3
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 LOADK                            R12 K11 ["AnimationRigData"]
       43 NAMECALL                         R10 R8 K12 ["IsA"]
       45 CALL                             R10 2 1
       46 JUMPIFNOT                        R10 ; [+2]
       47 MOVE                             R9 R8
       48 JUMP                             ; [+5]
       49 LOADK                            R11 K11 ["AnimationRigData"]
       50 LOADB                            R12 1
       51 NAMECALL                         R9 R8 K13 ["FindFirstChildWhichIsA"]
       53 CALL                             R9 3 1
       54 JUMPIFNOT                        R9 ; [+6]
       55 LOADB                            R10 1
       56 SETTABLEKS                       R10 R9 K14 ["Archivable"]
       58 SETTABLEKS                       R9 R1 K0 ["template"]
       60 RETURN                           R9 1
       61 FORGLOOP                         R4 2 ; [-20]
       63 GETIMPORT                        R4 K6 [warn]
       65 LOADK                            R5 K15 ["[AnimationGen] no AnimationRigData found in %*"]
       66 MOVE                             R7 R0
       67 NAMECALL                         R5 R5 K10 ["format"]
       69 CALL                             R5 2 1
       70 CALL                             R4 1 0
       71 LOADNIL                          R4
       72 RETURN                           R4 1

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
