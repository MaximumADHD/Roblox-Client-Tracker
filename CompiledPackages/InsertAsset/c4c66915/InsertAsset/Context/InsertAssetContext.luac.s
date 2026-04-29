PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["InsertAssetContext.new expects a plugin"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R2 K4 [{"_controller"}]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["new"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K3 ["_controller"]
       15 GETUPVAL                         R3 1
       16 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       18 GETIMPORT                        R1 K7 [setmetatable]
       20 CALL                             R1 2 1
       21 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_controller"]
        2 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R4 R3 K7 ["ContextItem"]
       18 GETTABLEKS                       R5 R0 K8 ["Core"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R5 K9 ["InsertAssetController"]
       24 CALL                             R6 1 1
       25 LOADK                            R9 K10 ["InsertAssetContext"]
       26 NAMECALL                         R7 R4 K11 ["extend"]
       28 CALL                             R7 2 1
       29 DUPCLOSURE                       R8 K12 [PROTO_0]
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R7
       32 SETTABLEKS                       R8 R7 K13 ["new"]
       34 DUPCLOSURE                       R8 K14 [PROTO_1]
       35 SETTABLEKS                       R8 R7 K15 ["get"]
       37 DUPCLOSURE                       R8 K16 [PROTO_2]
       38 SETTABLEKS                       R8 R7 K17 ["destroy"]
       40 DUPCLOSURE                       R8 K18 [PROTO_3]
       41 SETTABLEKS                       R8 R7 K19 ["mock"]
       43 RETURN                           R7 1
