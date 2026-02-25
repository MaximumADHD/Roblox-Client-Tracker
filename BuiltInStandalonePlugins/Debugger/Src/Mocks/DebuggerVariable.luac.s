PROTO_0:
        0 DUPTABLE                         R4 K6 [{"VariableId", "Name", "Value", "Type", "Populated", "PopulatableType"}]
        1 SETTABLEKS                       R0 R4 K0 ["VariableId"]
        3 SETTABLEKS                       R1 R4 K1 ["Name"]
        5 SETTABLEKS                       R2 R4 K2 ["Value"]
        7 SETTABLEKS                       R3 R4 K3 ["Type"]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K4 ["Populated"]
       12 LOADK                            R5 K7 ["DebuggerVariable"]
       13 SETTABLEKS                       R5 R4 K5 ["PopulatableType"]
       15 GETUPVAL                         R7 0
       16 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       18 MOVE                             R6 R4
       19 GETIMPORT                        R5 K9 [setmetatable]
       21 CALL                             R5 2 0
       22 RETURN                           R4 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["children"]
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["children"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 LOADN                            R2 0
        4 LOADK                            R3 K1 [""]
        5 LOADK                            R4 K1 [""]
        6 LOADK                            R5 K1 [""]
        7 CALL                             R1 4 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADN                            R1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["DummyRowName"]
        7 LOADK                            R3 K2 [""]
        8 LOADK                            R4 K2 [""]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["new"]
        5 LOADN                            R2 1
        6 LOADK                            R3 K1 [""]
        7 LOADK                            R4 K1 [""]
        8 LOADK                            R5 K1 [""]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K2 ["Locals"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["new"]
       15 LOADN                            R2 1
       16 LOADK                            R3 K1 [""]
       17 LOADK                            R4 K1 [""]
       18 LOADK                            R5 K1 [""]
       19 CALL                             R1 4 1
       20 SETTABLEKS                       R1 R0 K3 ["Globals"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K0 ["new"]
       25 LOADN                            R2 1
       26 LOADK                            R3 K1 [""]
       27 LOADK                            R4 K1 [""]
       28 LOADK                            R5 K1 [""]
       29 CALL                             R1 4 1
       30 SETTABLEKS                       R1 R0 K4 ["Upvalues"]
       32 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["Constants"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K7 ["__index"]
       18 DUPCLOSURE                       R3 K8 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K9 ["new"]
       22 DUPCLOSURE                       R3 K10 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K11 ["MockSetChildren"]
       25 DUPCLOSURE                       R3 K12 [PROTO_2]
       26 SETTABLEKS                       R3 R2 K13 ["GetChildren"]
       28 DUPCLOSURE                       R3 K14 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K15 ["GetVariableByIndex"]
       32 DUPCLOSURE                       R3 K16 [PROTO_4]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K17 ["newDummyRow"]
       37 DUPCLOSURE                       R3 K18 [PROTO_5]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R3 R2 K19 ["GetDefaultFrameVariables"]
       41 RETURN                           R2 1
