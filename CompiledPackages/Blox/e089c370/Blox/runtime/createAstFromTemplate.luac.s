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
        0 DUPTABLE                         R1 K5 [{"type", "name", "children", "defaultParams", "controller"}]
        1 LOADK                            R2 K6 ["Template"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 GETTABLEKS                       R2 R0 K7 ["Name"]
        6 SETTABLEKS                       R2 R1 K1 ["name"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["children"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K3 ["defaultParams"]
       16 GETUPVAL                         R2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K4 ["controller"]
       22 NAMECALL                         R2 R0 K8 ["GetAttributes"]
       24 CALL                             R2 1 3
       25 FORGPREP                         R2
       26 LOADN                            R9 1
       27 LOADN                            R10 6
       28 NAMECALL                         R7 R5 K9 ["sub"]
       30 CALL                             R7 3 1
       31 JUMPIFNOTEQKS                    R7 K10 ["param_"] ; [+8]
       33 LOADN                            R9 7
       34 NAMECALL                         R7 R5 K9 ["sub"]
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R8 R1 K3 ["defaultParams"]
       39 SETTABLE                         R6 R8 R7
       40 FORGLOOP                         R2 2 ; [-15]
       42 NAMECALL                         R2 R0 K11 ["GetChildren"]
       44 CALL                             R2 1 3
       45 FORGPREP                         R2
       46 GETTABLEKS                       R8 R1 K2 ["children"]
       48 GETUPVAL                         R9 1
       49 MOVE                             R10 R6
       50 CALL                             R9 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R7 K14 [table.insert]
       54 CALL                             R7 -1 0
       55 FORGLOOP                         R2 2 ; [-10]
       57 RETURN                           R1 1

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
        9 DUPTABLE                         R2 K7 [{"type", "templateId", "params", "children"}]
       10 LOADK                            R3 K8 ["Ref"]
       11 SETTABLEKS                       R3 R2 K3 ["type"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K9 ["getId"]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K4 ["templateId"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K5 ["params"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K6 ["children"]
       28 NAMECALL                         R3 R0 K10 ["GetAttributes"]
       30 CALL                             R3 1 3
       31 FORGPREP                         R3
       32 LOADN                            R10 1
       33 LOADN                            R11 6
       34 NAMECALL                         R8 R6 K11 ["sub"]
       36 CALL                             R8 3 1
       37 JUMPIFNOTEQKS                    R8 K12 ["param_"] ; [+9]
       39 LOADN                            R10 7
       40 NAMECALL                         R8 R6 K11 ["sub"]
       42 CALL                             R8 2 1
       43 GETTABLEKS                       R9 R2 K5 ["params"]
       45 SETTABLE                         R7 R9 R8
       46 JUMP                             ; [+20]
       47 LOADN                            R10 1
       48 LOADN                            R11 5
       49 NAMECALL                         R8 R6 K11 ["sub"]
       51 CALL                             R8 3 1
       52 JUMPIFNOTEQKS                    R8 K13 ["bind_"] ; [+14]
       54 LOADN                            R10 6
       55 NAMECALL                         R8 R6 K11 ["sub"]
       57 CALL                             R8 2 1
       58 GETTABLEKS                       R9 R2 K5 ["params"]
       60 DUPTABLE                         R10 K15 [{"type", "expr"}]
       61 LOADK                            R11 K16 ["Expr"]
       62 SETTABLEKS                       R11 R10 K3 ["type"]
       64 SETTABLEKS                       R7 R10 K14 ["expr"]
       66 SETTABLE                         R10 R9 R8
       67 FORGLOOP                         R3 2 ; [-36]
       69 NAMECALL                         R3 R0 K17 ["GetChildren"]
       71 CALL                             R3 1 3
       72 FORGPREP                         R3
       73 LOADK                            R10 K2 ["Template"]
       74 NAMECALL                         R8 R7 K18 ["IsA"]
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+9]
       78 GETUPVAL                         R8 2
       79 MOVE                             R9 R7
       80 CALL                             R8 1 1
       81 GETTABLEKS                       R9 R2 K5 ["params"]
       83 GETTABLEKS                       R10 R8 K19 ["name"]
       85 SETTABLE                         R8 R9 R10
       86 JUMP                             ; [+9]
       87 GETTABLEKS                       R9 R2 K6 ["children"]
       89 GETUPVAL                         R10 3
       90 MOVE                             R11 R7
       91 CALL                             R10 1 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R8 K22 [table.insert]
       95 CALL                             R8 -1 0
       96 FORGLOOP                         R3 2 ; [-24]
       98 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K5 [{"type", "className", "params", "children", "source"}]
        1 LOADK                            R2 K6 ["Instance"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 GETTABLEKS                       R2 R0 K7 ["ClassName"]
        6 SETTABLEKS                       R2 R1 K1 ["className"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["params"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K3 ["children"]
       16 SETTABLEKS                       R0 R1 K4 ["source"]
       18 NAMECALL                         R2 R0 K8 ["GetAttributes"]
       20 CALL                             R2 1 3
       21 FORGPREP                         R2
       22 LOADN                            R9 1
       23 LOADN                            R10 5
       24 NAMECALL                         R7 R5 K9 ["sub"]
       26 CALL                             R7 3 1
       27 JUMPIFNOTEQKS                    R7 K10 ["bind_"] ; [+14]
       29 LOADN                            R9 6
       30 NAMECALL                         R7 R5 K9 ["sub"]
       32 CALL                             R7 2 1
       33 GETTABLEKS                       R8 R1 K2 ["params"]
       35 DUPTABLE                         R9 K12 [{"type", "expr"}]
       36 LOADK                            R10 K13 ["Expr"]
       37 SETTABLEKS                       R10 R9 K0 ["type"]
       39 SETTABLEKS                       R6 R9 K11 ["expr"]
       41 SETTABLE                         R9 R8 R7
       42 FORGLOOP                         R2 2 ; [-21]
       44 NAMECALL                         R2 R0 K14 ["GetChildren"]
       46 CALL                             R2 1 3
       47 FORGPREP                         R2
       48 GETTABLEKS                       R8 R1 K3 ["children"]
       50 GETUPVAL                         R9 0
       51 MOVE                             R10 R6
       52 CALL                             R9 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R7 K17 [table.insert]
       56 CALL                             R7 -1 0
       57 FORGLOOP                         R2 2 ; [-10]
       59 RETURN                           R1 1

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
