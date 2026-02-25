PROTO_0:
        0 DUPTABLE                         R3 K7 [{"ThreadId", "ThreadName", "isValid", "Populated", "PopulatableType", "callstack", "FrameCount"}]
        1 SETTABLEKS                       R0 R3 K0 ["ThreadId"]
        3 SETTABLEKS                       R1 R3 K1 ["ThreadName"]
        5 SETTABLEKS                       R2 R3 K2 ["isValid"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["Populated"]
       10 LOADK                            R4 K8 ["ThreadState"]
       11 SETTABLEKS                       R4 R3 K4 ["PopulatableType"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K5 ["callstack"]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K6 ["FrameCount"]
       20 GETUPVAL                         R6 0
       21 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K10 [setmetatable]
       26 CALL                             R4 2 0
       27 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["callstack"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["callstack"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 ADDK                             R7 R5 K3 [1]
        9 SETTABLE                         R6 R1 R7
       10 FORGLOOP                         R2 2 ; [-3]
       12 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        ASSERT R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 LOADN                            R4 0
        6 GETTABLE                         R3 R1 R4
        7 FASTCALL1                        ASSERT R3 ; [+2]
        8 GETIMPORT                        R2 K1 [assert]
       10 CALL                             R2 1 0
       11 SETTABLEKS                       R1 R0 K2 ["callstack"]
       13 LOADN                            R2 0
       14 SETTABLEKS                       R2 R0 K3 ["FrameCount"]
       16 GETIMPORT                        R2 K5 [pairs]
       18 GETTABLEKS                       R3 R0 K2 ["callstack"]
       20 CALL                             R2 1 3
       21 FORGPREP_NEXT                    R2
       22 GETTABLEKS                       R8 R0 K3 ["FrameCount"]
       24 ADDK                             R7 R8 K6 [1]
       25 SETTABLEKS                       R7 R0 K3 ["FrameCount"]
       27 FORGLOOP                         R2 1 ; [-6]
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R0 K7 ["Populated"]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["StackFrame"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 SETTABLEKS                       R2 R1 K10 ["GetFrame"]
       21 DUPCLOSURE                       R2 K11 [PROTO_2]
       22 SETTABLEKS                       R2 R1 K12 ["GetChildren"]
       24 DUPCLOSURE                       R2 K13 [PROTO_3]
       25 SETTABLEKS                       R2 R1 K14 ["MockSetChildren"]
       27 RETURN                           R1 1
