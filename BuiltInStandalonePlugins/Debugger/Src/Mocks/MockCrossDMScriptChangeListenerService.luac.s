PROTO_0:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["GuidNameChanged"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["new"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K2 ["GuidLineContentsChanged"]
       14 GETUPVAL                         R3 1
       15 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K4 [setmetatable]
       20 CALL                             R1 2 0
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K5 ["watchingScripts"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["watchingScripts"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R5 R5 K2 ["join"]
        7 GETTABLEKS                       R7 R0 K0 ["watchingScripts"]
        9 GETTABLE                         R6 R7 R1
       10 JUMPIF                           R6 ; [+2]
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 1 0
       15 LOADB                            R8 1
       16 SETTABLE                         R8 R7 R3
       17 CALL                             R5 2 1
       18 SETTABLE                         R5 R4 R1
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["watchingScripts"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R5 R0 K0 ["watchingScripts"]
        6 GETTABLE                         R4 R5 R1
        7 GETTABLE                         R3 R4 R2
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Util"]
       25 GETTABLEKS                       R3 R3 K9 ["Signal"]
       27 NEWTABLE                         R4 4 0
       29 SETTABLEKS                       R4 R4 K10 ["__index"]
       31 DUPCLOSURE                       R5 K11 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K12 ["new"]
       36 DUPCLOSURE                       R5 K13 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R4 K14 ["StartWatchingScriptLine"]
       40 DUPCLOSURE                       R5 K15 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K16 ["IsWatchingScriptLine"]
       43 RETURN                           R4 1
