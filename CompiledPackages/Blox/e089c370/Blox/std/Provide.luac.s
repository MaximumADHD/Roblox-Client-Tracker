PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R0 K1 ["provider"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K0 ["peek"]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R1 K3 ["createSignal"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 2
       14 GETTABLEKS                       R6 R1 K4 ["_registerProvider"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R4
       18 MOVE                             R9 R5
       19 CALL                             R6 3 0
       20 GETTABLEKS                       R6 R1 K5 ["createEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R0
       25 LOADK                            R8 K6 ["provide-sync"]
       26 CALL                             R6 2 0
       27 NEWTABLE                         R6 0 0
       29 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["alive"]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["publish"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K0 ["current"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R2 K0 ["current"]
        2 JUMPIFNOT                        R4 ; [+13]
        3 GETTABLEKS                       R4 R2 K0 ["current"]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K1 ["alive"]
        8 GETTABLEKS                       R4 R1 K2 ["publish"]
       10 GETTABLEKS                       R5 R2 K0 ["current"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R2 K0 ["current"]
       16 GETTABLEKS                       R4 R1 K3 ["peek"]
       18 GETTABLEKS                       R5 R0 K4 ["children"]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+3]
       22 LENGTH                           R5 R4
       23 JUMPIFNOTEQKN                    R5 K5 [0] ; [+2]
       25 RETURN                           R0 0
       26 DUPTABLE                         R5 K9 [{"type", "name", "defaultParams", "children"}]
       27 LOADK                            R6 K10 ["Template"]
       28 SETTABLEKS                       R6 R5 K6 ["type"]
       30 LOADK                            R6 K11 ["inner/provide/dynamic"]
       31 SETTABLEKS                       R6 R5 K7 ["name"]
       33 NEWTABLE                         R6 0 0
       35 SETTABLEKS                       R6 R5 K8 ["defaultParams"]
       37 SETTABLEKS                       R4 R5 K4 ["children"]
       39 DUPTABLE                         R6 K15 [{"type", "templateAst", "templateId", "params", "children"}]
       40 LOADK                            R7 K16 ["Ref"]
       41 SETTABLEKS                       R7 R6 K6 ["type"]
       43 SETTABLEKS                       R5 R6 K12 ["templateAst"]
       45 LOADK                            R7 K11 ["inner/provide/dynamic"]
       46 SETTABLEKS                       R7 R6 K13 ["templateId"]
       48 NEWTABLE                         R7 0 0
       50 SETTABLEKS                       R7 R6 K14 ["params"]
       52 NEWTABLE                         R7 0 0
       54 SETTABLEKS                       R7 R6 K4 ["children"]
       56 GETTABLEKS                       R7 R1 K17 ["createChild"]
       58 MOVE                             R8 R6
       59 GETTABLEKS                       R9 R1 K18 ["childOrder"]
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R2 K0 ["current"]
       64 GETTABLEKS                       R8 R1 K2 ["publish"]
       66 MOVE                             R9 R7
       67 CALL                             R8 1 0
       68 NEWCLOSURE                       R8 P0
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K15 [{"type", "name", "defaultParams", "children", "analyze", "controller", "mountEffect"}]
       20 LOADK                            R4 K16 ["Template"]
       21 SETTABLEKS                       R4 R3 K8 ["type"]
       23 LOADK                            R4 K17 ["Provide"]
       24 SETTABLEKS                       R4 R3 K9 ["name"]
       26 DUPTABLE                         R4 K20 [{"provider", "value", "children"}]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K18 ["provider"]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K19 ["value"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K11 ["children"]
       37 SETTABLEKS                       R4 R3 K10 ["defaultParams"]
       39 NEWTABLE                         R4 0 0
       41 SETTABLEKS                       R4 R3 K11 ["children"]
       43 LOADNIL                          R4
       44 SETTABLEKS                       R4 R3 K12 ["analyze"]
       46 DUPCLOSURE                       R4 K21 [PROTO_1]
       47 SETTABLEKS                       R4 R3 K13 ["controller"]
       49 DUPCLOSURE                       R4 K22 [PROTO_3]
       50 SETTABLEKS                       R4 R3 K14 ["mountEffect"]
       52 RETURN                           R3 1
