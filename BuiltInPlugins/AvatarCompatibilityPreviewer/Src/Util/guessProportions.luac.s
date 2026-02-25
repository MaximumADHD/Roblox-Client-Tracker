PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["types"]
        3 GETTABLE                         R4 R5 R0
        4 GETTABLEKS                       R3 R4 K1 ["GuessMaxHeight"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["types"]
        9 GETTABLE                         R5 R6 R1
       10 GETTABLEKS                       R4 R5 K1 ["GuessMaxHeight"]
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["keys"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["types"]
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K4 [table.sort]
        9 MOVE                             R4 R2
       10 DUPCLOSURE                       R5 K5 [PROTO_0]
       11 CAPTURE                          UPVAL U1
       12 CALL                             R3 2 0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 NAMECALL                         R5 R0 K6 ["GetBoundingBox"]
       17 CALL                             R5 1 2
       18 GETTABLEKS                       R8 R6 K7 ["Y"]
       20 NAMECALL                         R9 R0 K8 ["GetScale"]
       22 CALL                             R9 1 1
       23 DIV                              R7 R8 R9
       24 MOVE                             R8 R2
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R14 R15 K1 ["types"]
       31 GETTABLE                         R13 R14 R12
       32 GETTABLEKS                       R14 R13 K9 ["GuessMaxHeight"]
       34 JUMPIFNOTLT                      R7 R14 ; [+4]
       36 MOVE                             R3 R12
       37 MOVE                             R4 R13
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R8 2 ; [-12]
       41 JUMPIFNOTEQKNIL                  R4 ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 FASTCALL2K                       ASSERT R9 K10 ; [+4]
       47 LOADK                            R10 K10 ["No scaling type info chosen"]
       48 GETIMPORT                        R8 K12 [assert]
       50 CALL                             R8 2 0
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R8 R9 K13 ["setAvatarPartScaleTypeValueObjects"]
       54 MOVE                             R9 R0
       55 MOVE                             R10 R3
       56 CALL                             R8 2 0
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R8 R9 K14 ["setBodyProportionScale"]
       60 GETTABLEKS                       R9 R0 K15 ["Humanoid"]
       62 GETTABLEKS                       R10 R4 K16 ["BodyProportionScale"]
       64 CALL                             R8 2 0
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K17 ["setBodyTypeScale"]
       68 GETTABLEKS                       R9 R0 K15 ["Humanoid"]
       70 GETTABLEKS                       R10 R4 K18 ["BodyTypeScale"]
       72 CALL                             R8 2 0
       73 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarScalingTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K7 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["HumanoidValueUtil"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
