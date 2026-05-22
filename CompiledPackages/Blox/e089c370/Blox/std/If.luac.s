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
       37 JUMPIFNOT                        R6 ; [+32]
       38 DUPTABLE                         R6 K14 [{"type", "templateAst", "templateId", "children", "params"}]
       39 LOADK                            R7 K15 ["Ref"]
       40 SETTABLEKS                       R7 R6 K10 ["type"]
       42 SETTABLEKS                       R5 R6 K11 ["templateAst"]
       44 LOADK                            R8 K16 ["/inner/"]
       45 GETTABLEKS                       R9 R5 K17 ["name"]
       47 CONCAT                           R7 R8 R9
       48 SETTABLEKS                       R7 R6 K12 ["templateId"]
       50 NEWTABLE                         R7 0 0
       52 SETTABLEKS                       R7 R6 K9 ["children"]
       54 NEWTABLE                         R7 0 0
       56 SETTABLEKS                       R7 R6 K13 ["params"]
       58 GETTABLEKS                       R7 R1 K18 ["createChild"]
       60 MOVE                             R8 R6
       61 GETTABLEKS                       R9 R1 K19 ["childOrder"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R2 K1 ["current"]
       66 GETTABLEKS                       R8 R1 K3 ["publish"]
       68 MOVE                             R9 R7
       69 CALL                             R8 1 0
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 RETURN                           R6 1

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
       19 DUPTABLE                         R3 K15 [{"type", "name", "defaultParams", "children", "controller", "analyze", "mountEffect"}]
       20 LOADK                            R4 K16 ["Template"]
       21 SETTABLEKS                       R4 R3 K8 ["type"]
       23 LOADK                            R4 K17 ["If"]
       24 SETTABLEKS                       R4 R3 K9 ["name"]
       26 DUPTABLE                         R4 K21 [{"when", "Then", "Else"}]
       27 DUPTABLE                         R5 K23 [{"type", "expr"}]
       28 LOADK                            R6 K24 ["Expr"]
       29 SETTABLEKS                       R6 R5 K8 ["type"]
       31 LOADK                            R6 K25 [""]
       32 SETTABLEKS                       R6 R5 K22 ["expr"]
       34 SETTABLEKS                       R5 R4 K18 ["when"]
       36 DUPTABLE                         R5 K26 [{"type", "name"}]
       37 LOADK                            R6 K16 ["Template"]
       38 SETTABLEKS                       R6 R5 K8 ["type"]
       40 LOADK                            R6 K19 ["Then"]
       41 SETTABLEKS                       R6 R5 K9 ["name"]
       43 SETTABLEKS                       R5 R4 K19 ["Then"]
       45 DUPTABLE                         R5 K26 [{"type", "name"}]
       46 LOADK                            R6 K16 ["Template"]
       47 SETTABLEKS                       R6 R5 K8 ["type"]
       49 LOADK                            R6 K20 ["Else"]
       50 SETTABLEKS                       R6 R5 K9 ["name"]
       52 SETTABLEKS                       R5 R4 K20 ["Else"]
       54 SETTABLEKS                       R4 R3 K10 ["defaultParams"]
       56 NEWTABLE                         R4 0 0
       58 SETTABLEKS                       R4 R3 K11 ["children"]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K12 ["controller"]
       63 LOADNIL                          R4
       64 SETTABLEKS                       R4 R3 K13 ["analyze"]
       66 DUPCLOSURE                       R4 K27 [PROTO_1]
       67 SETTABLEKS                       R4 R3 K14 ["mountEffect"]
       69 RETURN                           R3 1
