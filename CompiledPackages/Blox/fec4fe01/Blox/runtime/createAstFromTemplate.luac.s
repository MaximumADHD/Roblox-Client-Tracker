PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["controller"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K3 [require]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{[1] = "Template", ["name"], ["children"], ["defaultParams"], ["controller"]}]
        1 GETTABLEKS                       R2 R0 K7 ["Name"]
        3 SETTABLEKS                       R2 R1 K2 ["name"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K3 ["children"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K4 ["defaultParams"]
       13 GETUPVAL                         R2 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K5 ["controller"]
       19 NAMECALL                         R2 R0 K8 ["GetAttributes"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 LOADN                            R9 1
       24 LOADN                            R10 6
       25 NAMECALL                         R7 R5 K9 ["sub"]
       27 CALL                             R7 3 1
       28 JUMPIFNOTEQKS                    R7 K10 ["param_"] ; [+8]
       30 LOADN                            R9 7
       31 NAMECALL                         R7 R5 K9 ["sub"]
       33 CALL                             R7 2 1
       34 GETTABLEKS                       R8 R1 K4 ["defaultParams"]
       36 SETTABLE                         R6 R8 R7
       37 FORGLOOP                         R2 2 ; [-15]
       39 NAMECALL                         R2 R0 K11 ["GetChildren"]
       41 CALL                             R2 1 3
       42 FORGPREP                         R2
       43 GETTABLEKS                       R8 R1 K3 ["children"]
       45 GETUPVAL                         R9 1
       46 MOVE                             R10 R6
       47 CALL                             R9 1 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R7 K14 [table.insert]
       51 CALL                             R7 -1 0
       52 FORGLOOP                         R2 2 ; [-10]
       54 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["Template"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 LOADK                            R3 K2 ["Ref"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["DISABLE_TEMPLATE_CLASSES"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["Value"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R1 R0 K2 ["Template"]
        9 DUPTABLE                         R2 K8 [{["type"] = "Ref", ["templateId"], ["params"], ["children"]}]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K9 ["getId"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["templateId"]
       17 NEWTABLE                         R3 0 0
       19 SETTABLEKS                       R3 R2 K6 ["params"]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K7 ["children"]
       25 NAMECALL                         R3 R0 K10 ["GetAttributes"]
       27 CALL                             R3 1 3
       28 FORGPREP                         R3
       29 LOADN                            R10 1
       30 LOADN                            R11 6
       31 NAMECALL                         R8 R6 K11 ["sub"]
       33 CALL                             R8 3 1
       34 JUMPIFNOTEQKS                    R8 K12 ["param_"] ; [+9]
       36 LOADN                            R10 7
       37 NAMECALL                         R8 R6 K11 ["sub"]
       39 CALL                             R8 2 1
       40 GETTABLEKS                       R9 R2 K6 ["params"]
       42 SETTABLE                         R7 R9 R8
       43 JUMP                             ; [+17]
       44 LOADN                            R10 1
       45 LOADN                            R11 5
       46 NAMECALL                         R8 R6 K11 ["sub"]
       48 CALL                             R8 3 1
       49 JUMPIFNOTEQKS                    R8 K13 ["bind_"] ; [+11]
       51 LOADN                            R10 6
       52 NAMECALL                         R8 R6 K11 ["sub"]
       54 CALL                             R8 2 1
       55 GETTABLEKS                       R9 R2 K6 ["params"]
       57 DUPTABLE                         R10 K16 [{["type"] = "Expr", ["expr"]}]
       58 SETTABLEKS                       R7 R10 K15 ["expr"]
       60 SETTABLE                         R10 R9 R8
       61 FORGLOOP                         R3 2 ; [-33]
       63 NAMECALL                         R3 R0 K17 ["GetChildren"]
       65 CALL                             R3 1 3
       66 FORGPREP                         R3
       67 LOADK                            R10 K2 ["Template"]
       68 NAMECALL                         R8 R7 K18 ["IsA"]
       70 CALL                             R8 2 1
       71 JUMPIFNOT                        R8 ; [+9]
       72 GETUPVAL                         R8 2
       73 MOVE                             R9 R7
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R2 K6 ["params"]
       77 GETTABLEKS                       R10 R8 K19 ["name"]
       79 SETTABLE                         R8 R9 R10
       80 JUMP                             ; [+9]
       81 GETTABLEKS                       R9 R2 K7 ["children"]
       83 GETUPVAL                         R10 3
       84 MOVE                             R11 R7
       85 CALL                             R10 1 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R8 K22 [table.insert]
       89 CALL                             R8 -1 0
       90 FORGLOOP                         R3 2 ; [-24]
       92 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K6 [{[1] = "Instance", ["className"], ["params"], ["children"], ["source"]}]
        1 GETTABLEKS                       R2 R0 K7 ["ClassName"]
        3 SETTABLEKS                       R2 R1 K2 ["className"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K3 ["params"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K4 ["children"]
       13 SETTABLEKS                       R0 R1 K5 ["source"]
       15 NAMECALL                         R2 R0 K8 ["GetAttributes"]
       17 CALL                             R2 1 3
       18 FORGPREP                         R2
       19 LOADN                            R9 1
       20 LOADN                            R10 5
       21 NAMECALL                         R7 R5 K9 ["sub"]
       23 CALL                             R7 3 1
       24 JUMPIFNOTEQKS                    R7 K10 ["bind_"] ; [+11]
       26 LOADN                            R9 6
       27 NAMECALL                         R7 R5 K9 ["sub"]
       29 CALL                             R7 2 1
       30 GETTABLEKS                       R8 R1 K3 ["params"]
       32 DUPTABLE                         R9 K13 [{[1] = "Expr", ["expr"]}]
       33 SETTABLEKS                       R6 R9 K12 ["expr"]
       35 SETTABLE                         R9 R8 R7
       36 FORGLOOP                         R2 2 ; [-18]
       38 NAMECALL                         R2 R0 K14 ["GetChildren"]
       40 CALL                             R2 1 3
       41 FORGPREP                         R2
       42 GETTABLEKS                       R8 R1 K4 ["children"]
       44 GETUPVAL                         R9 0
       45 MOVE                             R10 R6
       46 CALL                             R9 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R7 K17 [table.insert]
       50 CALL                             R7 -1 0
       51 FORGLOOP                         R2 2 ; [-10]
       53 RETURN                           R1 1

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
       19 GETTABLEKS                       R4 R0 K7 ["monitor"]
       21 GETTABLEKS                       R4 R4 K8 ["TemplateRegistry"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["state"]
       28 GETTABLEKS                       R5 R5 K10 ["callUserSpace"]
       30 CALL                             R4 1 1
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          REF R7
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R8
       39 CAPTURE                          REF R5
       40 CAPTURE                          REF R6
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R8
       45 CAPTURE                          REF R7
       46 NEWCLOSURE                       R6 P3
       47 CAPTURE                          REF R7
       48 CLOSEUPVALS                      R5
       49 RETURN                           R8 1
