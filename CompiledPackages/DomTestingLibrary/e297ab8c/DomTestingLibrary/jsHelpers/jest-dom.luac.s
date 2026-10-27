PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["utils"]
        3 GETTABLEKS                       R4 R4 K1 ["matcherHint"]
        5 LOADK                            R5 K2 ["toBeInTheDocument"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 1
        9 CALL                             R4 4 1
       10 MOVE                             R1 R4
       11 LOADK                            R2 K3 ["\n\n"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["isNot"]
       15 JUMPIFNOT                        R4 ; [+2]
       16 LOADK                            R3 K5 ["element was found in the document"]
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K6 ["element could not be found in the document"]
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R6 0
       10 NAMECALL                         R4 R1 K3 ["IsDescendantOf"]
       12 CALL                             R4 2 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R3
       16 DUPTABLE                         R6 K6 [{"message", "pass"}]
       17 SETTABLEKS                       R5 R6 K4 ["message"]
       19 SETTABLEKS                       R4 R6 K5 ["pass"]
       21 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["utils"]
        3 GETTABLEKS                       R4 R4 K1 ["matcherHint"]
        5 LOADK                            R5 K2 ["toBeEmptyDOMElement"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 1
        9 CALL                             R4 4 1
       10 MOVE                             R1 R4
       11 LOADK                            R2 K3 ["\n\n"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["isNot"]
       15 JUMPIFNOT                        R4 ; [+2]
       16 LOADK                            R3 K5 ["element is empty"]
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K6 ["element is not empty"]
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 NAMECALL                         R6 R1 K3 ["GetChildren"]
       11 CALL                             R6 1 1
       12 LENGTH                           R5 R6
       13 JUMPIFEQKN                       R5 K4 [0] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 DUPTABLE                         R6 K7 [{"message", "pass"}]
       21 SETTABLEKS                       R5 R6 K5 ["message"]
       23 SETTABLEKS                       R4 R6 K6 ["pass"]
       25 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["utils"]
        3 GETTABLEKS                       R4 R4 K1 ["matcherHint"]
        5 LOADK                            R5 K2 ["toHaveTextContent"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 1
        9 CALL                             R4 4 1
       10 MOVE                             R1 R4
       11 LOADK                            R2 K3 ["\n\n"]
       12 GETUPVAL                         R4 2
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R3 K4 ["Checking with empty string will always match, use .toBeEmptyDOMElement() instead"]
       15 JUMP                             ; [+10]
       16 LOADK                            R4 K5 ["Expected element "]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["isNot"]
       20 JUMPIFNOT                        R7 ; [+2]
       21 LOADK                            R5 K7 ["not to"]
       22 JUMP                             ; [+1]
       23 LOADK                            R5 K8 ["to"]
       24 LOADK                            R6 K9 [" have text content"]
       25 CONCAT                           R3 R4 R6
       26 CONCAT                           R0 R1 R3
       27 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R5 K0 ["TextBox"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETIMPORT                        R3 K3 [error]
        7 LOADK                            R4 K4 ["toHaveTextContent is not meant to be used with TextBox"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R3 R1 K5 ["Text"]
       11 NOT                              R4 R2
       12 JUMPIF                           R4 ; [+7]
       13 LOADB                            R4 1
       14 JUMPIFEQKS                       R2 K6 [""] ; [+5]
       16 JUMPIFEQKS                       R3 K6 [""] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 LOADNIL                          R5
       21 FASTCALL1                        TYPEOF R2 ; [+3]
       22 MOVE                             R7 R2
       23 GETIMPORT                        R6 K8 [typeof]
       25 CALL                             R6 1 1
       26 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+10]
       28 GETIMPORT                        R6 K11 [string.find]
       30 MOVE                             R7 R3
       31 MOVE                             R8 R2
       32 LOADN                            R9 1
       33 LOADB                            R10 1
       34 CALL                             R6 4 1
       35 MOVE                             R5 R6
       36 JUMP                             ; [+25]
       37 FASTCALL1                        TYPEOF R2 ; [+3]
       38 MOVE                             R7 R2
       39 GETIMPORT                        R6 K8 [typeof]
       41 CALL                             R6 1 1
       42 JUMPIFNOTEQKS                    R6 K12 ["table"] ; [+15]
       44 GETTABLEKS                       R7 R2 K13 ["test"]
       46 FASTCALL1                        TYPEOF R7 ; [+2]
       47 GETIMPORT                        R6 K8 [typeof]
       49 CALL                             R6 1 1
       50 JUMPIFNOTEQKS                    R6 K14 ["function"] ; [+7]
       52 MOVE                             R8 R3
       53 NAMECALL                         R6 R2 K13 ["test"]
       55 CALL                             R6 2 1
       56 MOVE                             R5 R6
       57 JUMP                             ; [+4]
       58 GETIMPORT                        R6 K3 [error]
       60 LOADK                            R7 K15 ["Unhandled expected value type: string or regex is required"]
       61 CALL                             R6 1 0
       62 DUPTABLE                         R6 K18 [{"isNot", "promise"}]
       63 GETTABLEKS                       R7 R0 K16 ["isNot"]
       65 SETTABLEKS                       R7 R6 K16 ["isNot"]
       67 GETTABLEKS                       R7 R0 K17 ["promise"]
       69 SETTABLEKS                       R7 R6 K17 ["promise"]
       71 NOT                              R7 R4
       72 JUMPIFNOT                        R7 ; [+2]
       73 NOT                              R8 R5
       74 NOT                              R7 R8
       75 NEWCLOSURE                       R8 P0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 DUPTABLE                         R9 K21 [{"message", "pass"}]
       80 SETTABLEKS                       R8 R9 K19 ["message"]
       82 SETTABLEKS                       R7 R9 K20 ["pass"]
       84 RETURN                           R9 1

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["utils"]
        3 GETTABLEKS                       R6 R6 K1 ["matcherHint"]
        5 LOADK                            R7 K2 ["toHaveValue"]
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 GETUPVAL                         R10 1
        9 CALL                             R6 4 1
       10 MOVE                             R1 R6
       11 LOADK                            R2 K3 ["\n\n"]
       12 LOADK                            R3 K4 ["Expected element "]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K5 ["isNot"]
       16 JUMPIFNOT                        R6 ; [+2]
       17 LOADK                            R4 K6 ["not to"]
       18 JUMP                             ; [+1]
       19 LOADK                            R4 K7 ["to"]
       20 LOADK                            R5 K8 [" have value"]
       21 CONCAT                           R0 R1 R5
       22 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R5 K0 ["TextBox"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+4]
        5 GETIMPORT                        R3 K3 [error]
        7 LOADK                            R4 K4 ["toHaveValue is meant to be used only with TextBox"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R3 R1 K5 ["Text"]
       11 LOADNIL                          R4
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R6 R2
       14 GETIMPORT                        R5 K7 [typeof]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+10]
       19 GETIMPORT                        R5 K10 [string.find]
       21 MOVE                             R6 R3
       22 MOVE                             R7 R2
       23 LOADN                            R8 1
       24 LOADB                            R9 1
       25 CALL                             R5 4 1
       26 MOVE                             R4 R5
       27 JUMP                             ; [+25]
       28 FASTCALL1                        TYPEOF R2 ; [+3]
       29 MOVE                             R6 R2
       30 GETIMPORT                        R5 K7 [typeof]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+15]
       35 GETTABLEKS                       R6 R2 K12 ["test"]
       37 FASTCALL1                        TYPEOF R6 ; [+2]
       38 GETIMPORT                        R5 K7 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFNOTEQKS                    R5 K13 ["function"] ; [+7]
       43 MOVE                             R7 R3
       44 NAMECALL                         R5 R2 K12 ["test"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 JUMP                             ; [+4]
       49 GETIMPORT                        R5 K3 [error]
       51 LOADK                            R6 K14 ["Unhandled expected value type: string or regex is required"]
       52 CALL                             R5 1 0
       53 DUPTABLE                         R5 K17 [{"isNot", "promise"}]
       54 GETTABLEKS                       R6 R0 K15 ["isNot"]
       56 SETTABLEKS                       R6 R5 K15 ["isNot"]
       58 GETTABLEKS                       R6 R0 K16 ["promise"]
       60 SETTABLEKS                       R6 R5 K16 ["promise"]
       62 NOT                              R7 R4
       63 NOT                              R6 R7
       64 NEWCLOSURE                       R7 P0
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 DUPTABLE                         R8 K20 [{"message", "pass"}]
       68 SETTABLEKS                       R7 R8 K18 ["message"]
       70 SETTABLEKS                       R6 R8 K19 ["pass"]
       72 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["DomTestingLibrary"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K6 ["document"]
       16 NEWTABLE                         R2 4 0
       18 DUPCLOSURE                       R3 K7 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K8 ["toBeInTheDocument"]
       22 DUPCLOSURE                       R4 K9 [PROTO_3]
       23 SETTABLEKS                       R4 R2 K10 ["toBeEmptyDOMElement"]
       25 DUPCLOSURE                       R5 K11 [PROTO_5]
       26 SETTABLEKS                       R5 R2 K12 ["toHaveTextContent"]
       28 DUPCLOSURE                       R6 K13 [PROTO_7]
       29 SETTABLEKS                       R6 R2 K14 ["toHaveValue"]
       31 RETURN                           R2 1
