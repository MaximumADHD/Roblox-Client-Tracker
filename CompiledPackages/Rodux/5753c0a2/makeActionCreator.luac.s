PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       15 LOADK                            R4 K3 ["Invalid action: An action creator must return a table"]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K0 ["type"]
       22 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad argument #1: Expected a string name for the action creator"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["function"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["Bad argument #2: Expected a function that creates action objects"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 DUPTABLE                         R3 K9 [{"name"}]
       31 SETTABLEKS                       R0 R3 K8 ["name"]
       33 DUPTABLE                         R4 K11 [{"__call"}]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R4 K10 ["__call"]
       39 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       41 GETIMPORT                        R2 K13 [setmetatable]
       43 CALL                             R2 2 1
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
