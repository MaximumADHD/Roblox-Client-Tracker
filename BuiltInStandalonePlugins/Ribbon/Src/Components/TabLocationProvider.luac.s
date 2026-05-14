PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["TabLocation"]
        4 NAMECALL                         R0 R0 K2 ["GetSetting"]
        6 CALL                             R0 2 1
        7 JUMPIFNOTEQKS                    R0 K3 ["Left"] ; [+4]
        9 GETUPVAL                         R1 1
       10 LOADK                            R2 K3 ["Left"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        7 LOADK                            R3 K2 ["TabLocation"]
        8 GETTABLEKS                       R4 R0 K0 ["Id"]
       10 NAMECALL                         R1 R1 K3 ["SetSetting"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Center"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R5 0 0
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 2
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R5 0 0
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["createElement"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K2 ["Provider"]
       23 DUPTABLE                         R6 K4 [{"value"}]
       24 DUPTABLE                         R7 K7 [{"current", "setTabLocation"}]
       25 SETTABLEKS                       R1 R7 K5 ["current"]
       27 SETTABLEKS                       R3 R7 K6 ["setTabLocation"]
       29 SETTABLEKS                       R7 R6 K3 ["value"]
       31 GETTABLEKS                       R7 R0 K8 ["children"]
       33 CALL                             R4 3 -1
       34 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K11 ["Src"]
       24 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       26 GETTABLEKS                       R6 R6 K13 ["TabLocation"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K14 [PROTO_2]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
