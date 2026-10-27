PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Utility"]
        3 GETTABLEKS                       R1 R1 K1 ["getTextBoundsAsync"]
        5 GETTABLEKS                       R2 R0 K2 ["ContentText"]
        7 LOADK                            R5 K3 ["FontFace"]
        8 NAMECALL                         R3 R0 K4 ["GetStyled"]
       10 CALL                             R3 2 1
       11 LOADK                            R6 K5 ["TextSize"]
       12 NAMECALL                         R4 R0 K4 ["GetStyled"]
       14 CALL                             R4 2 -1
       15 CALL                             R1 -1 1
       16 LOADB                            R2 0
       17 JUMPIFEQKNIL                     R1 ; [+12]
       19 GETTABLEKS                       R3 R1 K6 ["X"]
       21 GETTABLEKS                       R5 R0 K8 ["AbsoluteSize"]
       23 GETTABLEKS                       R5 R5 K6 ["X"]
       25 ADDK                             R4 R5 K7 [1]
       26 JUMPIFLT                         R4 R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
