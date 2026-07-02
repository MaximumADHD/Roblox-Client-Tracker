PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bundle"]
        3 GETTABLEKS                       R0 R0 K1 ["dispose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"service"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["service"]
        4 SETTABLEKS                       R1 R0 K0 ["service"]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+18]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["new"]
       12 CALL                             R2 0 1
       13 DUPTABLE                         R3 K5 [{"bundle", "service"}]
       14 SETTABLEKS                       R2 R3 K3 ["bundle"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["new"]
       19 GETTABLEKS                       R5 R2 K6 ["client"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K4 ["service"]
       24 SETTABLEKS                       R3 R1 K1 ["current"]
       26 GETTABLEKS                       R3 R1 K1 ["current"]
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["pairRef.current is nil"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K10 ["useEffect"]
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R5 0 0
       41 CALL                             R3 2 0
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K11 ["useMemo"]
       45 NEWCLOSURE                       R4 P1
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R5 0 1
       49 MOVE                             R6 R2
       50 SETLIST                          R5 R6 1 [1]
       52 CALL                             R3 2 1
       53 GETUPVAL                         R4 3
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R5 R5 K12 ["Provider"]
       57 DUPTABLE                         R6 K14 [{"value"}]
       58 SETTABLEKS                       R3 R6 K13 ["value"]
       60 GETTABLEKS                       R7 R0 K15 ["children"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["AssistantService"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K10 ["LocalAssistantService"]
       28 GETTABLEKS                       R5 R3 K11 ["createElement"]
       30 DUPTABLE                         R6 K14 [{["service"] = }]
       31 GETTABLEKS                       R7 R3 K15 ["createContext"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 DUPCLOSURE                       R8 K16 [PROTO_3]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R7
       41 DUPTABLE                         R9 K19 [{"Context", "Provider"}]
       42 SETTABLEKS                       R7 R9 K17 ["Context"]
       44 SETTABLEKS                       R8 R9 K18 ["Provider"]
       46 RETURN                           R9 1
