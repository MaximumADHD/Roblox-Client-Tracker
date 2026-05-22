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
        9 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+20]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["resolve"]
       14 DUPTABLE                         R6 K9 [{"templateId", "type", "params", "children"}]
       15 SETTABLEKS                       R4 R6 K5 ["templateId"]
       17 LOADK                            R7 K10 ["Ref"]
       18 SETTABLEKS                       R7 R6 K6 ["type"]
       20 NEWTABLE                         R7 0 0
       22 SETTABLEKS                       R7 R6 K7 ["params"]
       24 NEWTABLE                         R7 0 0
       26 SETTABLEKS                       R7 R6 K8 ["children"]
       28 CALL                             R5 1 1
       29 MOVE                             R4 R5
       30 JUMPIF                           R4 ; [+6]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K11 ["warn"]
       34 LOADK                            R6 K12 ["Blox: Put component missing Template parameter"]
       35 CALL                             R5 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R5 R2 K13 ["current"]
       39 JUMPIFNOT                        R5 ; [+13]
       40 GETTABLEKS                       R5 R2 K13 ["current"]
       42 LOADB                            R6 0
       43 SETTABLEKS                       R6 R5 K14 ["alive"]
       45 GETTABLEKS                       R5 R1 K15 ["publish"]
       47 GETTABLEKS                       R6 R2 K13 ["current"]
       49 CALL                             R5 1 0
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R2 K13 ["current"]
       53 GETUPVAL                         R5 2
       54 JUMPIFNOTEQ                      R4 R5 ; [+20]
       56 GETTABLEKS                       R5 R1 K16 ["peek"]
       58 GETTABLEKS                       R6 R0 K8 ["children"]
       60 CALL                             R5 1 1
       61 DUPTABLE                         R6 K19 [{"type", "name", "defaultParams", "children"}]
       62 LOADK                            R7 K0 ["Template"]
       63 SETTABLEKS                       R7 R6 K6 ["type"]
       65 LOADK                            R7 K20 ["inner/put/dynamic"]
       66 SETTABLEKS                       R7 R6 K17 ["name"]
       68 NEWTABLE                         R7 0 0
       70 SETTABLEKS                       R7 R6 K18 ["defaultParams"]
       72 SETTABLEKS                       R5 R6 K8 ["children"]
       74 MOVE                             R4 R6
       75 DUPTABLE                         R5 K22 [{"type", "templateAst", "templateId", "params", "children"}]
       76 LOADK                            R6 K10 ["Ref"]
       77 SETTABLEKS                       R6 R5 K6 ["type"]
       79 SETTABLEKS                       R4 R5 K21 ["templateAst"]
       81 GETTABLEKS                       R6 R4 K17 ["name"]
       83 SETTABLEKS                       R6 R5 K5 ["templateId"]
       85 GETTABLEKS                       R6 R1 K16 ["peek"]
       87 GETTABLEKS                       R7 R0 K7 ["params"]
       89 CALL                             R6 1 1
       90 SETTABLEKS                       R6 R5 K7 ["params"]
       92 NEWTABLE                         R6 0 0
       94 SETTABLEKS                       R6 R5 K8 ["children"]
       96 GETTABLEKS                       R6 R1 K23 ["createChild"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R2 K13 ["current"]
      102 GETTABLEKS                       R7 R1 K15 ["publish"]
      104 MOVE                             R8 R6
      105 CALL                             R7 1 0
      106 NEWCLOSURE                       R7 P0
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R1
      109 RETURN                           R7 1

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
       38 DUPTABLE                         R6 K15 [{"type", "name"}]
       39 LOADK                            R7 K16 ["Template"]
       40 SETTABLEKS                       R7 R6 K13 ["type"]
       42 LOADK                            R7 K17 ["inner/put/static"]
       43 SETTABLEKS                       R7 R6 K14 ["name"]
       45 DUPTABLE                         R7 K23 [{"type", "name", "defaultParams", "controller", "analyze", "children", "mountEffect"}]
       46 LOADK                            R8 K16 ["Template"]
       47 SETTABLEKS                       R8 R7 K13 ["type"]
       49 LOADK                            R8 K24 ["Put"]
       50 SETTABLEKS                       R8 R7 K14 ["name"]
       52 DUPTABLE                         R8 K26 [{"Template", "children", "params"}]
       53 SETTABLEKS                       R6 R8 K16 ["Template"]
       55 NEWTABLE                         R9 0 0
       57 SETTABLEKS                       R9 R8 K21 ["children"]
       59 NEWTABLE                         R9 0 0
       61 SETTABLEKS                       R9 R8 K25 ["params"]
       63 SETTABLEKS                       R8 R7 K18 ["defaultParams"]
       65 LOADNIL                          R8
       66 SETTABLEKS                       R8 R7 K19 ["controller"]
       68 LOADNIL                          R8
       69 SETTABLEKS                       R8 R7 K20 ["analyze"]
       71 NEWTABLE                         R8 0 0
       73 SETTABLEKS                       R8 R7 K21 ["children"]
       75 DUPCLOSURE                       R8 K27 [PROTO_1]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R8 R7 K22 ["mountEffect"]
       81 RETURN                           R7 1
