PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R0
        6 NAMECALL                         R2 R1 K0 ["Disconnect"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isAnimationClipPublished"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 3
       10 GETTABLE                         R2 R3 R1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R3 3
       13 LOADNIL                          R4
       14 SETTABLE                         R4 R3 R1
       15 NAMECALL                         R3 R2 K1 ["Disconnect"]
       17 CALL                             R3 1 0
       18 GETUPVAL                         R1 4
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getNormalizedGuid"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R4 1
       12 LOADNIL                          R5
       13 SETTABLE                         R5 R4 R2
       14 NAMECALL                         R4 R3 K1 ["Disconnect"]
       16 CALL                             R4 1 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["onAnimationPublished"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 CALL                             R4 1 1
       28 SETTABLE                         R4 R3 R2
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NAMECALL                         R6 R5 K0 ["Disconnect"]
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationPublishingLibrary"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 2 0
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          REF R2
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R2
       23 SETTABLEKS                       R5 R3 K8 ["waitForPublish"]
       25 NEWCLOSURE                       R5 P2
       26 CAPTURE                          REF R2
       27 SETTABLEKS                       R5 R3 K9 ["stopWaitingForAll"]
       29 CLOSEUPVALS                      R2
       30 RETURN                           R3 1
