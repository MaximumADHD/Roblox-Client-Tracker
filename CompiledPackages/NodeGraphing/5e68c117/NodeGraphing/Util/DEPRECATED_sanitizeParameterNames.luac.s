PROTO_0:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Remove with FFlagAnimGraphUI_NodesHaveSpaces"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R1 K5 [string.gsub]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K6 ["%s"]
       12 LOADK                            R4 K7 ["_"]
       13 CALL                             R1 3 1
       14 MOVE                             R0 R1
       15 GETIMPORT                        R1 K5 [string.gsub]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K8 ["^RBX_"]
       19 LOADK                            R4 K9 [""]
       20 CALL                             R1 3 1
       21 MOVE                             R0 R1
       22 JUMPIFNOTEQKS                    R0 K9 [""] ; [+3]
       24 LOADNIL                          R1
       25 RETURN                           R1 1
       26 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
