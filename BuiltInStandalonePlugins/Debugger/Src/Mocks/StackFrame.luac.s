PROTO_0:
        0 DUPTABLE                         R4 K10 [{[1], ["Script"], ["FrameName"], ["FrameType"], ["Populated"] = False, ["FrameId"] = 0, ["PopulatableType"] = "StackFrame"}]
        1 SETTABLEKS                       R0 R4 K0 ["Line"]
        3 SETTABLEKS                       R1 R4 K1 ["Script"]
        5 SETTABLEKS                       R2 R4 K2 ["FrameName"]
        7 SETTABLEKS                       R3 R4 K3 ["FrameType"]
        9 GETUPVAL                         R7 0
       10 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       12 MOVE                             R6 R4
       13 GETIMPORT                        R5 K12 [setmetatable]
       15 CALL                             R5 2 0
       16 RETURN                           R4 1

PROTO_1:
        0 FASTCALL1                        ASSERT R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R1 K2 ["Locals"]
        7 SETTABLEKS                       R2 R0 K2 ["Locals"]
        9 GETTABLEKS                       R2 R1 K3 ["Globals"]
       11 SETTABLEKS                       R2 R0 K3 ["Globals"]
       13 GETTABLEKS                       R2 R1 K4 ["Upvalues"]
       15 SETTABLEKS                       R2 R0 K4 ["Upvalues"]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R0 K5 ["Populated"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ScriptRef"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 SETTABLEKS                       R2 R1 K10 ["MockSetChildren"]
       21 RETURN                           R1 1
