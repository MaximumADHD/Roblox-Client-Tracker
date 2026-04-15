PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_result"]
        3 GETIMPORT                        R1 K3 [table.pack]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K4 ["Hook"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K5 ["HookProps"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 SETTABLEKS                       R1 R0 K6 ["current"]
       15 LOADNIL                          R0
       16 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["createRef"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["_result"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K4 ["new"]
       17 DUPTABLE                         R3 K7 [{"Component", "Providers"}]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K8 ["createElement"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K5 ["Component"]
       27 GETTABLEKS                       R4 R0 K6 ["Providers"]
       29 SETTABLEKS                       R4 R3 K6 ["Providers"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K9 ["_testController"]
       34 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_testController"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_result"]
        2 GETTABLEKS                       R2 R3 K1 ["current"]
        4 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        5 GETIMPORT                        R1 K4 [table.unpack]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_testController"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["Tests"]
       20 GETTABLEKS                       R3 R4 K10 ["TestController"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 SETTABLEKS                       R3 R3 K11 ["__index"]
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K13 ["new"]
       33 DUPCLOSURE                       R4 K14 [PROTO_2]
       34 SETTABLEKS                       R4 R3 K15 ["getTestController"]
       36 DUPCLOSURE                       R4 K16 [PROTO_3]
       37 SETTABLEKS                       R4 R3 K17 ["getLatestResult"]
       39 DUPCLOSURE                       R4 K18 [PROTO_4]
       40 SETTABLEKS                       R4 R3 K19 ["destroy"]
       42 RETURN                           R3 1
