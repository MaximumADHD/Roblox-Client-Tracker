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

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETTABLE                         R2 R0 R1
        4 LOADB                            R3 0
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+8]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

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
       16 GETTABLEKS                       R3 R3 K8 ["matchExpressionBinding"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Util"]
       23 GETTABLEKS                       R4 R4 K9 ["matchParameterBinding"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 4 0
       28 DUPCLOSURE                       R5 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K11 ["isPropertyParameterized"]
       32 DUPCLOSURE                       R5 K12 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K13 ["isInputPanelPropertyParameterized"]
       35 DUPCLOSURE                       R5 K14 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K15 ["isPropertyExpressionBound"]
       39 DUPCLOSURE                       R5 K16 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R5 R4 K17 ["isValueExpressionBound"]
       43 RETURN                           R4 1
