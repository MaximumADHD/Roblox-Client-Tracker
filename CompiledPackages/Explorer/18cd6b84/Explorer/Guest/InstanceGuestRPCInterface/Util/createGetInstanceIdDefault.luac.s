PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+16]
        4 LOADK                            R2 K0 ["%*_%*_%*"]
        5 GETTABLEKS                       R4 R0 K1 ["ClassName"]
        7 NAMECALL                         R5 R0 K2 ["GetFullName"]
        9 CALL                             R5 1 1
       10 LOADK                            R7 K3 ["%."]
       11 LOADK                            R8 K4 ["/"]
       12 NAMECALL                         R5 R5 K5 ["gsub"]
       14 CALL                             R5 3 1
       15 MOVE                             R6 R1
       16 NAMECALL                         R2 R2 K6 ["format"]
       18 CALL                             R2 4 1
       19 MOVE                             R1 R2
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["createNextNonce"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["DebugExplorerMoreDetailedInstanceId"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 1
       21 DUPCLOSURE                       R3 K12 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
