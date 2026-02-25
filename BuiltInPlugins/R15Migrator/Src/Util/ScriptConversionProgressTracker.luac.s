PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R4 R3 K2 ["_dispatchSetProgress"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R4 R3 K3 ["_dispatchSetMessage"]
       18 GETTABLEKS                       R4 R3 K3 ["_dispatchSetMessage"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 0
       22 LOADN                            R4 255
       23 SETTABLEKS                       R4 R3 K4 ["_progress"]
       25 FASTCALL2K                       MATH_MAX R1 K5 ; [+5]
       27 MOVE                             R5 R1
       28 LOADK                            R6 K5 [1]
       29 GETIMPORT                        R4 K8 [math.max]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K9 ["_targetProgress"]
       34 NAMECALL                         R4 R3 K10 ["updateProgress"]
       36 CALL                             R4 1 0
       37 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["_progress"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["_progress"]
        5 GETTABLEKS                       R1 R0 K2 ["_dispatchSetProgress"]
        7 GETTABLEKS                       R3 R0 K1 ["_progress"]
        9 GETTABLEKS                       R4 R0 K3 ["_targetProgress"]
       11 DIV                              R2 R3 R4
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_dispatchSetProgress"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["None"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Actions"]
       20 GETTABLEKS                       R3 R4 K10 ["SetReplaceProgress"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Actions"]
       29 GETTABLEKS                       R4 R5 K11 ["SetProgressBarMessageKey"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 SETTABLEKS                       R4 R4 K12 ["__index"]
       36 DUPCLOSURE                       R5 K13 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K14 ["new"]
       42 DUPCLOSURE                       R5 K15 [PROTO_3]
       43 SETTABLEKS                       R5 R4 K16 ["updateProgress"]
       45 DUPCLOSURE                       R5 K17 [PROTO_4]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R4 K18 ["clearProgressBar"]
       49 RETURN                           R4 1
