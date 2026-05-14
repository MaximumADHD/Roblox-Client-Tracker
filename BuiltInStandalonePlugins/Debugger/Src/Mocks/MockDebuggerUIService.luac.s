PROTO_0:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["ExpressionsCleared"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [setmetatable]
       14 CALL                             R1 2 0
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K4 ["openScripts"]
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K5 ["showingArrow"]
       22 LOADN                            R1 255
       23 SETTABLEKS                       R1 R0 K6 ["currentThreadId"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R5 R0 K0 ["openScripts"]
        2 LOADB                            R6 1
        3 SETTABLE                         R6 R5 R1
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R4 ; [+3]
        1 LOADB                            R5 1
        2 SETTABLEKS                       R5 R0 K0 ["showingArrow"]
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+3]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R0 K0 ["showingArrow"]
        4 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["currentThreadId"]
        2 RETURN                           R0 0

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
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["Signal"]
       20 NEWTABLE                         R3 8 0
       22 SETTABLEKS                       R3 R3 K9 ["__index"]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K11 ["new"]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K13 ["OpenScriptAtLine"]
       32 DUPCLOSURE                       R4 K14 [PROTO_2]
       33 SETTABLEKS                       R4 R3 K15 ["SetScriptLineMarker"]
       35 DUPCLOSURE                       R4 K16 [PROTO_3]
       36 SETTABLEKS                       R4 R3 K17 ["RemoveScriptLineMarkers"]
       38 DUPCLOSURE                       R4 K18 [PROTO_4]
       39 SETTABLEKS                       R4 R3 K19 ["SetCurrentThreadId"]
       41 RETURN                           R3 1
