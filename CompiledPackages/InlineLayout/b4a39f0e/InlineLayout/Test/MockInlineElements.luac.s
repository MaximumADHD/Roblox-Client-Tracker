PROTO_0:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["width"]
       10 SETTABLEKS                       R1 R2 K3 ["canForceSplit"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["width"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 GETTABLEKS                       R4 R0 K1 ["width"]
        5 GETTABLEKS                       R5 R0 K2 ["canForceSplit"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 LOADK                            R4 K1 ["TextLabel"]
        4 DUPTABLE                         R5 K6 [{"key", "LayoutOrder", "Size", "Text"}]
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R7 R2
        7 GETIMPORT                        R6 K8 [tostring]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["key"]
       12 SETTABLEKS                       R2 R5 K3 ["LayoutOrder"]
       14 GETIMPORT                        R6 K11 [UDim2.new]
       16 LOADN                            R7 0
       17 GETTABLEKS                       R8 R0 K12 ["width"]
       19 LOADN                            R9 0
       20 LOADN                            R10 20
       21 CALL                             R6 4 1
       22 SETTABLEKS                       R6 R5 K4 ["Size"]
       24 LOADK                            R7 K13 ["%*"]
       25 MOVE                             R9 R1
       26 NAMECALL                         R7 R7 K14 ["format"]
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 SETTABLEKS                       R6 R5 K5 ["Text"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["width"]
       10 SETTABLEKS                       R1 R2 K3 ["canForceSplit"]
       12 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["width"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K1 ["width"]
        2 DIVK                             R4 R5 K0 [2]
        3 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        4 GETIMPORT                        R3 K4 [math.floor]
        6 CALL                             R3 1 1
        7 MOVE                             R4 R3
        8 GETTABLEKS                       R6 R0 K1 ["width"]
       10 SUB                              R5 R6 R3
       11 JUMPIFNOT                        R2 ; [+6]
       12 JUMPIFNOTLT                      R1 R3 ; [+5]
       14 MOVE                             R4 R1
       15 GETTABLEKS                       R6 R0 K1 ["width"]
       17 SUB                              R5 R6 R1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K5 ["new"]
       21 MOVE                             R7 R4
       22 GETTABLEKS                       R8 R0 K6 ["canForceSplit"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K5 ["new"]
       28 MOVE                             R8 R5
       29 GETTABLEKS                       R9 R0 K6 ["canForceSplit"]
       31 CALL                             R7 2 1
       32 RETURN                           R6 2

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 LOADK                            R4 K1 ["TextLabel"]
        4 DUPTABLE                         R5 K6 [{"key", "LayoutOrder", "Size", "Text"}]
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R7 R2
        7 GETIMPORT                        R6 K8 [tostring]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K2 ["key"]
       12 SETTABLEKS                       R2 R5 K3 ["LayoutOrder"]
       14 GETIMPORT                        R6 K11 [UDim2.new]
       16 LOADN                            R7 0
       17 GETTABLEKS                       R8 R0 K12 ["width"]
       19 LOADN                            R9 0
       20 LOADN                            R10 20
       21 CALL                             R6 4 1
       22 SETTABLEKS                       R6 R5 K4 ["Size"]
       24 LOADK                            R7 K13 ["%*"]
       25 MOVE                             R9 R1
       26 NAMECALL                         R7 R7 K14 ["format"]
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 SETTABLEKS                       R6 R5 K5 ["Text"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InlineLayout"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Utils"]
       18 GETTABLEKS                       R4 R5 K9 ["InlineElementType"]
       20 CALL                             R3 1 1
       21 NEWTABLE                         R4 8 0
       23 SETTABLEKS                       R4 R4 K10 ["__index"]
       25 SETTABLEKS                       R3 R4 K11 ["__type"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R5 R4 K13 ["new"]
       31 DUPCLOSURE                       R5 K14 [PROTO_1]
       32 SETTABLEKS                       R5 R4 K15 ["getWidth"]
       34 DUPCLOSURE                       R5 K16 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K17 ["split"]
       38 DUPCLOSURE                       R5 K18 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R5 R4 K19 ["render"]
       42 NEWTABLE                         R5 8 0
       44 SETTABLEKS                       R5 R5 K10 ["__index"]
       46 SETTABLEKS                       R3 R5 K11 ["__type"]
       48 DUPCLOSURE                       R6 K20 [PROTO_4]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R6 R5 K13 ["new"]
       52 DUPCLOSURE                       R6 K21 [PROTO_5]
       53 SETTABLEKS                       R6 R5 K15 ["getWidth"]
       55 DUPCLOSURE                       R6 K22 [PROTO_6]
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R6 R5 K17 ["split"]
       59 DUPCLOSURE                       R6 K23 [PROTO_7]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R6 R5 K19 ["render"]
       63 DUPTABLE                         R6 K26 [{"MockInlineElement", "SplittableMockInlineElement"}]
       64 SETTABLEKS                       R4 R6 K24 ["MockInlineElement"]
       66 SETTABLEKS                       R5 R6 K25 ["SplittableMockInlineElement"]
       68 RETURN                           R6 1
