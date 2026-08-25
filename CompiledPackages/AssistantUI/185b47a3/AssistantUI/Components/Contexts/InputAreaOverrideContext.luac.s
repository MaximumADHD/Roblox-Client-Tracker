PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEN                        R1 R0 1
        6 LOADN                            R4 2
        7 LENGTH                           R2 R0
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 GETTABLE                         R5 R0 R4
       11 GETTABLEKS                       R5 R5 K1 ["priority"]
       13 GETTABLEKS                       R6 R1 K1 ["priority"]
       15 JUMPIFNOTLT                      R6 R5 ; [+2]
       17 GETTABLE                         R1 R0 R4
       18 FORNLOOP                         R2
       19 GETTABLEKS                       R2 R1 K2 ["render"]
       21 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.find]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETIMPORT                        R3 K6 [table.remove]
       12 MOVE                             R4 R1
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K2 [{"priority", "render"}]
        1 SETTABLEKS                       R0 R2 K0 ["priority"]
        3 SETTABLEKS                       R1 R2 K1 ["render"]
        5 GETUPVAL                         R3 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 0
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R0 K2 [{"activeRender", "registerOverride"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeRender"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["registerOverride"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 1
       14 LENGTH                           R5 R1
       15 JUMPIFNOTEQKN                    R5 K2 [0] ; [+3]
       17 LOADNIL                          R4
       18 JUMP                             ; [+16]
       19 GETTABLEN                        R5 R1 1
       20 LOADN                            R8 2
       21 LENGTH                           R6 R1
       22 LOADN                            R7 1
       23 FORNPREP                         R6
       24 GETTABLE                         R9 R1 R8
       25 GETTABLEKS                       R9 R9 K3 ["priority"]
       27 GETTABLEKS                       R10 R5 K3 ["priority"]
       29 JUMPIFNOTLT                      R10 R9 ; [+2]
       31 GETTABLE                         R5 R1 R8
       32 FORNLOOP                         R6
       33 GETTABLEKS                       R4 R5 K4 ["render"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R4
       44 MOVE                             R9 R3
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 1
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K6 ["Provider"]
       52 DUPTABLE                         R8 K8 [{"value"}]
       53 SETTABLEKS                       R5 R8 K7 ["value"]
       55 GETTABLEKS                       R9 R0 K9 ["children"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPTABLE                         R3 K14 [{["QuestionAnswer"] = 0, ["InputRequested"] = 1, ["AskInput"] = 1}]
       17 DUPTABLE                         R4 K18 [{["activeRender"] = , ["registerOverride"]}]
       18 DUPCLOSURE                       R5 K19 [PROTO_1]
       19 SETTABLEKS                       R5 R4 K17 ["registerOverride"]
       21 GETTABLEKS                       R5 R1 K20 ["createContext"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 1
       25 DUPCLOSURE                       R6 K21 [PROTO_2]
       26 DUPCLOSURE                       R7 K22 [PROTO_8]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 DUPTABLE                         R8 K26 [{"Context", "Provider", "OverridePriorities"}]
       31 SETTABLEKS                       R5 R8 K23 ["Context"]
       33 SETTABLEKS                       R7 R8 K24 ["Provider"]
       35 SETTABLEKS                       R3 R8 K25 ["OverridePriorities"]
       37 RETURN                           R8 1
