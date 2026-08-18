PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R2 0
        2 LOADNIL                          R3
        3 RETURN                           R2 2
        4 GETTABLE                         R2 R0 R1
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+5]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIFNOT                        R3 ; [+3]
       18 LOADB                            R4 1
       19 MOVE                             R5 R3
       20 RETURN                           R4 2
       21 LOADB                            R4 0
       22 LOADNIL                          R5
       23 RETURN                           R4 2

PROTO_1:
        0 GETTABLE                         R3 R0 R2
        1 JUMPIF                           R3 ; [+3]
        2 LOADB                            R3 0
        3 LOADNIL                          R4
        4 RETURN                           R3 2
        5 GETTABLE                         R4 R0 R2
        6 GETTABLE                         R3 R4 R1
        7 JUMPIF                           R3 ; [+3]
        8 LOADB                            R3 0
        9 LOADNIL                          R4
       10 RETURN                           R3 2
       11 LOADB                            R3 1
       12 MOVE                             R4 R2
       13 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["matchParameterBinding"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 2 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K10 ["isPropertyParameterized"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K12 ["isInputPanelPropertyParameterized"]
       28 RETURN                           R3 1
