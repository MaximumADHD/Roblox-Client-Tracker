PROTO_0:
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

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["when"]
        2 MOVE                             R5 R3
        3 CALL                             R4 1 1
        4 GETTABLEKS                       R5 R2 K1 ["current"]
        6 JUMPIFNOT                        R5 ; [+13]
        7 GETTABLEKS                       R5 R2 K1 ["current"]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K2 ["alive"]
       12 GETTABLEKS                       R5 R1 K3 ["publish"]
       14 GETTABLEKS                       R6 R2 K1 ["current"]
       16 CALL                             R5 1 0
       17 LOADNIL                          R5
       18 SETTABLEKS                       R5 R2 K1 ["current"]
       20 JUMPIFNOT                        R4 ; [+2]
       21 LOADK                            R6 K4 ["Then"]
       22 JUMP                             ; [+1]
       23 LOADK                            R6 K5 ["Else"]
       24 GETTABLE                         R5 R0 R6
       25 MOVE                             R6 R3
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R4 ; [+7]
       28 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       30 MOVE                             R7 R5
       31 LOADK                            R8 K6 ["Blox: Missing 'Then' template for If ref"]
       32 GETIMPORT                        R6 K8 [assert]
       34 CALL                             R6 2 0
       35 GETTABLEKS                       R6 R5 K9 ["children"]
       37 JUMPIFNOT                        R6 ; [+29]
       38 DUPTABLE                         R6 K15 [{["type"] = "Ref", ["templateAst"], ["templateId"], ["children"], ["params"]}]
       39 SETTABLEKS                       R5 R6 K12 ["templateAst"]
       41 LOADK                            R8 K16 ["/inner/"]
       42 GETTABLEKS                       R9 R5 K17 ["name"]
       44 CONCAT                           R7 R8 R9
       45 SETTABLEKS                       R7 R6 K13 ["templateId"]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K9 ["children"]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K14 ["params"]
       55 GETTABLEKS                       R7 R1 K18 ["createChild"]
       57 MOVE                             R8 R6
       58 GETTABLEKS                       R9 R1 K19 ["childOrder"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R2 K1 ["current"]
       63 GETTABLEKS                       R8 R1 K3 ["publish"]
       65 MOVE                             R9 R7
       66 CALL                             R8 1 0
       67 NEWCLOSURE                       R6 P0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 RETURN                           R6 1

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
       19 DUPTABLE                         R3 K18 [{["type"] = "Template", ["name"] = "If", ["defaultParams"], ["children"], ["controller"] = , ["analyze"] = , ["mountEffect"]}]
       20 DUPTABLE                         R4 K22 [{"when", "Then", "Else"}]
       21 DUPTABLE                         R5 K26 [{["type"] = "Expr", ["expr"] = ""}]
       22 SETTABLEKS                       R5 R4 K19 ["when"]
       24 DUPTABLE                         R5 K27 [{["type"] = "Template", ["name"] = "Then"}]
       25 SETTABLEKS                       R5 R4 K20 ["Then"]
       27 DUPTABLE                         R5 K28 [{["type"] = "Template", ["name"] = "Else"}]
       28 SETTABLEKS                       R5 R4 K21 ["Else"]
       30 SETTABLEKS                       R4 R3 K12 ["defaultParams"]
       32 NEWTABLE                         R4 0 0
       34 SETTABLEKS                       R4 R3 K13 ["children"]
       36 DUPCLOSURE                       R4 K29 [PROTO_1]
       37 SETTABLEKS                       R4 R3 K17 ["mountEffect"]
       39 RETURN                           R3 1
