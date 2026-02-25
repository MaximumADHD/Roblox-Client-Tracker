PROTO_0:
        0 DUPTABLE                         R4 K7 [{"Line", "Script", "FrameName", "FrameType", "Populated", "FrameId", "PopulatableType"}]
        1 SETTABLEKS                       R0 R4 K0 ["Line"]
        3 SETTABLEKS                       R1 R4 K1 ["Script"]
        5 SETTABLEKS                       R2 R4 K2 ["FrameName"]
        7 SETTABLEKS                       R3 R4 K3 ["FrameType"]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K4 ["Populated"]
       12 LOADN                            R5 0
       13 SETTABLEKS                       R5 R4 K5 ["FrameId"]
       15 LOADK                            R5 K8 ["StackFrame"]
       16 SETTABLEKS                       R5 R4 K6 ["PopulatableType"]
       18 GETUPVAL                         R7 0
       19 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       21 MOVE                             R6 R4
       22 GETIMPORT                        R5 K10 [setmetatable]
       24 CALL                             R5 2 0
       25 RETURN                           R4 1

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
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ScriptRef"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 SETTABLEKS                       R2 R1 K10 ["MockSetChildren"]
       21 RETURN                           R1 1
