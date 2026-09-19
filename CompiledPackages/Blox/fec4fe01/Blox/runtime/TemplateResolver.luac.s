PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["/std/%*"]
        2 GETTABLEKS                       R4 R0 K1 ["name"]
        4 NAMECALL                         R2 R2 K2 ["format"]
        6 CALL                             R2 2 1
        7 SETTABLE                         R0 R1 R2
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["/custom/%*"]
        2 GETTABLEKS                       R4 R0 K1 ["name"]
        4 NAMECALL                         R2 R2 K2 ["format"]
        6 CALL                             R2 2 1
        7 SETTABLE                         R0 R1 R2
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["getCustomFolder"]
       11 CALL                             R1 0 1
       12 GETTABLEKS                       R4 R0 K1 ["name"]
       14 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+22]
       18 GETIMPORT                        R3 K7 [Instance.new]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K8 ["DISABLE_TEMPLATE_CLASSES"]
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADK                            R4 K9 ["Folder"]
       25 JUMP                             ; [+1]
       26 LOADK                            R4 K10 ["Template"]
       27 CALL                             R3 1 1
       28 MOVE                             R2 R3
       29 GETTABLEKS                       R3 R0 K1 ["name"]
       31 SETTABLEKS                       R3 R2 K11 ["Name"]
       33 SETTABLEKS                       R1 R2 K12 ["Parent"]
       35 LOADK                            R5 K13 ["blox-dirty"]
       36 LOADB                            R6 0
       37 NAMECALL                         R3 R2 K14 ["SetAttribute"]
       39 CALL                             R3 3 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["templateAst"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["templateAst"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["templateId"]
        9 GETTABLE                         R1 R2 R3
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["getTemplatesFolder"]
       13 CALL                             R2 0 1
       14 GETTABLEKS                       R3 R0 K1 ["templateId"]
       16 LOADK                            R5 K3 ["/"]
       17 NAMECALL                         R3 R3 K4 ["split"]
       19 CALL                             R3 2 1
       20 LOADN                            R6 2
       21 LENGTH                           R4 R3
       22 LOADN                            R5 1
       23 FORNPREP                         R4
       24 GETTABLE                         R9 R3 R6
       25 NAMECALL                         R7 R2 K5 ["FindFirstChild"]
       27 CALL                             R7 2 1
       28 MOVE                             R2 R7
       29 JUMPIFNOT                        R2 ; [+1]
       30 FORNLOOP                         R4
       31 JUMPIFNOT                        R2 ; [+25]
       32 SETTABLEKS                       R2 R0 K6 ["template"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 LOADK                            R6 K7 ["blox-dirty"]
       36 NAMECALL                         R4 R2 K8 ["GetAttribute"]
       38 CALL                             R4 2 1
       39 JUMPIFNOT                        R4 ; [+17]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K9 ["log"]
       43 LOADK                            R5 K10 ["TemplateResolver"]
       44 LOADK                            R6 K11 ["Template"]
       45 GETTABLEKS                       R7 R0 K1 ["templateId"]
       47 LOADK                            R8 K12 ["is dirty; recreating AST"]
       48 CALL                             R4 4 0
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R2
       51 CALL                             R4 1 1
       52 MOVE                             R1 R4
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R5 R0 K1 ["templateId"]
       56 SETTABLE                         R1 R4 R5
       57 JUMPIF                           R1 ; [+12]
       58 GETTABLEKS                       R4 R0 K6 ["template"]
       60 JUMPIF                           R4 ; [+9]
       61 GETIMPORT                        R4 K14 [error]
       63 LOADK                            R5 K15 ["Blox: No template found for ref with templateId '%*'"]
       64 GETTABLEKS                       R7 R0 K1 ["templateId"]
       66 NAMECALL                         R5 R5 K16 ["format"]
       68 CALL                             R5 2 1
       69 CALL                             R4 1 0
       70 SETTABLEKS                       R1 R0 K0 ["templateAst"]
       72 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIF                           R3 ; [+25]
        3 GETIMPORT                        R4 K1 [pcall]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 CALL                             R4 2 4
        8 JUMPIFNOT                        R4 ; [+8]
        9 JUMPIFNOT                        R7 ; [+7]
       10 GETUPVAL                         R8 2
       11 MOVE                             R9 R7
       12 CALL                             R8 1 1
       13 MOVE                             R3 R8
       14 GETUPVAL                         R8 0
       15 SETTABLE                         R3 R8 R0
       16 JUMP                             ; [+11]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R8 R8 K2 ["warn"]
       20 LOADK                            R9 K3 ["Blox: Could not evaluate expression '%*'"]
       21 MOVE                             R11 R0
       22 NAMECALL                         R9 R9 K4 ["format"]
       24 CALL                             R9 2 1
       25 CALL                             R8 1 0
       26 LOADNIL                          R8
       27 RETURN                           R8 1
       28 MOVE                             R4 R3
       29 MOVE                             R5 R1
       30 MOVE                             R6 R2
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

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
       26 GETTABLEKS                       R5 R0 K9 ["expr"]
       28 GETTABLEKS                       R5 R5 K10 ["compileExpr"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K9 ["expr"]
       35 GETTABLEKS                       R6 R6 K11 ["evaluateExpr"]
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 4 0
       40 NEWTABLE                         R7 0 0
       42 NEWTABLE                         R8 0 0
       44 GETIMPORT                        R9 K4 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R10 R10 K2 ["Parent"]
       50 GETTABLEKS                       R10 R10 K12 ["createAstFromTemplate"]
       52 CALL                             R9 1 1
       53 DUPCLOSURE                       R10 K13 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R10 R6 K14 ["addStdTemplate"]
       57 DUPCLOSURE                       R10 K15 [PROTO_1]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R10 R6 K16 ["addStaticCustomTemplate"]
       63 DUPCLOSURE                       R10 K17 [PROTO_2]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R10 R6 K18 ["resolve"]
       70 DUPCLOSURE                       R10 K19 [PROTO_3]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R10 R6 K20 ["getExpressionValue"]
       77 RETURN                           R6 1
