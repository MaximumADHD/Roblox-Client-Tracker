PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["isEligible"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R2 R1 K2 ["configurations"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 GETUPVAL                         R2 0
       10 RETURN                           R2 1
       11 LOADB                            R2 1
       12 MOVE                             R3 R1
       13 RETURN                           R2 2

PROTO_1:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 RETURN                           R1 2

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R2 K1 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R3 R0 K2 ["getDefaultCreateBundleDataSharing"]
        6 CALL                             R3 1 1
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 NAMECALL                         R3 R3 K3 ["andThen"]
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkError"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Util"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["DebugFlags"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Actions"]
       29 DUPTABLE                         R5 K12 [{"isEligible"}]
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R5 K11 ["isEligible"]
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
