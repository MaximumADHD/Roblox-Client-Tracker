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
       26 DUPTABLE                         R5 K11 [{["type"] = "Template", ["name"] = "inner/provide/dynamic", ["defaultParams"], ["children"]}]
       27 NEWTABLE                         R6 0 0
       29 SETTABLEKS                       R6 R5 K10 ["defaultParams"]
       31 SETTABLEKS                       R4 R5 K4 ["children"]
       33 DUPTABLE                         R6 K16 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "inner/provide/dynamic", ["params"], ["children"]}]
       34 SETTABLEKS                       R5 R6 K13 ["templateAst"]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K15 ["params"]
       40 NEWTABLE                         R7 0 0
       42 SETTABLEKS                       R7 R6 K4 ["children"]
       44 GETTABLEKS                       R7 R1 K17 ["createChild"]
       46 MOVE                             R8 R6
       47 GETTABLEKS                       R9 R1 K18 ["childOrder"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R2 K0 ["current"]
       52 GETTABLEKS                       R8 R1 K2 ["publish"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 0
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 RETURN                           R8 1

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
       19 DUPTABLE                         R3 K18 [{["type"] = "Template", ["name"] = "Provide", ["defaultParams"], ["children"], ["analyze"] = , ["controller"], ["mountEffect"]}]
       20 DUPTABLE                         R4 K21 [{["provider"] = , ["value"] = , ["children"]}]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K13 ["children"]
       25 SETTABLEKS                       R4 R3 K12 ["defaultParams"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K13 ["children"]
       31 DUPCLOSURE                       R4 K22 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K16 ["controller"]
       34 DUPCLOSURE                       R4 K23 [PROTO_3]
       35 SETTABLEKS                       R4 R3 K17 ["mountEffect"]
       37 RETURN                           R3 1
