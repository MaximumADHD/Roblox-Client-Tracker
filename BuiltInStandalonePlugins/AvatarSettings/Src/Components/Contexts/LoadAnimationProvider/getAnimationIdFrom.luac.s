PROTO_0:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+12]
        2 MOVE                             R5 R1
        3 LOADB                            R6 1
        4 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        6 CALL                             R3 3 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 LOADK                            R6 K1 ["Animation"]
        9 NAMECALL                         R4 R3 K2 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+1]
       13 MOVE                             R2 R3
       14 JUMPIF                           R2 ; [+6]
       15 LOADK                            R5 K1 ["Animation"]
       16 LOADB                            R6 1
       17 NAMECALL                         R3 R0 K3 ["FindFirstChildWhichIsA"]
       19 CALL                             R3 3 1
       20 MOVE                             R2 R3
       21 JUMPIFNOT                        R2 ; [+11]
       22 GETIMPORT                        R4 K6 [string.match]
       24 GETTABLEKS                       R5 R2 K7 ["AnimationId"]
       26 LOADK                            R6 K8 ["%d+"]
       27 CALL                             R4 2 -1
       28 FASTCALL                         TONUMBER ; [+2]
       29 GETIMPORT                        R3 K10 [tonumber]
       31 CALL                             R3 -1 1
       32 RETURN                           R3 1
       33 LOADNIL                          R3
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["LoadAnimationTypes"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 RETURN                           R2 1
