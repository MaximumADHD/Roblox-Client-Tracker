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
        0 GETTABLEKS                       R4 R0 K0 ["Template"]
        2 MOVE                             R5 R3
        3 CALL                             R4 1 1
        4 FASTCALL1                        TYPEOF R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+17]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["resolve"]
       14 DUPTABLE                         R6 K10 [{["templateId"], ["type"] = "Ref", ["params"], ["children"]}]
       15 SETTABLEKS                       R4 R6 K5 ["templateId"]
       17 NEWTABLE                         R7 0 0
       19 SETTABLEKS                       R7 R6 K8 ["params"]
       21 NEWTABLE                         R7 0 0
       23 SETTABLEKS                       R7 R6 K9 ["children"]
       25 CALL                             R5 1 1
       26 MOVE                             R4 R5
       27 JUMPIF                           R4 ; [+6]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K11 ["warn"]
       31 LOADK                            R6 K12 ["Blox: Put component missing Template parameter"]
       32 CALL                             R5 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R5 R2 K13 ["current"]
       36 JUMPIFNOT                        R5 ; [+13]
       37 GETTABLEKS                       R5 R2 K13 ["current"]
       39 LOADB                            R6 0
       40 SETTABLEKS                       R6 R5 K14 ["alive"]
       42 GETTABLEKS                       R5 R1 K15 ["publish"]
       44 GETTABLEKS                       R6 R2 K13 ["current"]
       46 CALL                             R5 1 0
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R2 K13 ["current"]
       50 GETUPVAL                         R5 2
       51 JUMPIFNOTEQ                      R4 R5 ; [+14]
       53 GETTABLEKS                       R5 R1 K16 ["peek"]
       55 GETTABLEKS                       R6 R0 K9 ["children"]
       57 CALL                             R5 1 1
       58 DUPTABLE                         R6 K20 [{["type"] = "Template", ["name"] = "inner/put/dynamic", ["defaultParams"], ["children"]}]
       59 NEWTABLE                         R7 0 0
       61 SETTABLEKS                       R7 R6 K19 ["defaultParams"]
       63 SETTABLEKS                       R5 R6 K9 ["children"]
       65 MOVE                             R4 R6
       66 DUPTABLE                         R5 K22 [{["type"] = "Ref", ["templateAst"], ["templateId"], ["params"], ["children"]}]
       67 SETTABLEKS                       R4 R5 K21 ["templateAst"]
       69 GETTABLEKS                       R6 R4 K17 ["name"]
       71 SETTABLEKS                       R6 R5 K5 ["templateId"]
       73 GETTABLEKS                       R6 R1 K16 ["peek"]
       75 GETTABLEKS                       R7 R0 K8 ["params"]
       77 CALL                             R6 1 1
       78 SETTABLEKS                       R6 R5 K8 ["params"]
       80 NEWTABLE                         R6 0 0
       82 SETTABLEKS                       R6 R5 K9 ["children"]
       84 GETTABLEKS                       R6 R1 K23 ["createChild"]
       86 MOVE                             R7 R5
       87 CALL                             R6 1 1
       88 SETTABLEKS                       R6 R2 K13 ["current"]
       90 GETTABLEKS                       R7 R1 K15 ["publish"]
       92 MOVE                             R8 R6
       93 CALL                             R7 1 0
       94 NEWCLOSURE                       R7 P0
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R1
       97 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Debug"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["state"]
       21 GETTABLEKS                       R4 R4 K8 ["Signals"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["runtime"]
       28 GETTABLEKS                       R5 R5 K10 ["TemplateResolver"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K11 ["util"]
       35 GETTABLEKS                       R6 R6 K12 ["pretty"]
       37 CALL                             R5 1 1
       38 DUPTABLE                         R6 K17 [{["type"] = "Template", ["name"] = "inner/put/static"}]
       39 DUPTABLE                         R7 K25 [{["type"] = "Template", ["name"] = "Put", ["defaultParams"], ["controller"] = , ["analyze"] = , ["children"], ["mountEffect"]}]
       40 DUPTABLE                         R8 K27 [{"Template", "children", "params"}]
       41 SETTABLEKS                       R6 R8 K14 ["Template"]
       43 NEWTABLE                         R9 0 0
       45 SETTABLEKS                       R9 R8 K23 ["children"]
       47 NEWTABLE                         R9 0 0
       49 SETTABLEKS                       R9 R8 K26 ["params"]
       51 SETTABLEKS                       R8 R7 K19 ["defaultParams"]
       53 NEWTABLE                         R8 0 0
       55 SETTABLEKS                       R8 R7 K23 ["children"]
       57 DUPCLOSURE                       R8 K28 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R8 R7 K24 ["mountEffect"]
       63 RETURN                           R7 1
