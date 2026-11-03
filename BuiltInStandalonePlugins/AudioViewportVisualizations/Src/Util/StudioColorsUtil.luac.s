PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+8]
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K3 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K4 ["Color3"] ; [+2]
       13 RETURN                           R3 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 LOADK                            R4 K2 ["Select Color"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R4
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+9]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K4 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K5 ["Color3"] ; [+3]
       15 MOVE                             R0 R3
       16 RETURN                           R0 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 LOADK                            R4 K2 ["Hover Over Color"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R4
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+9]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K4 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K5 ["Color3"] ; [+3]
       15 MOVE                             R0 R3
       16 RETURN                           R0 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K2 [Color3.fromRGB]
        5 LOADN                            R2 25
        6 LOADN                            R3 153
        7 LOADN                            R4 255
        8 CALL                             R1 3 1
        9 GETIMPORT                        R2 K2 [Color3.fromRGB]
       11 LOADN                            R3 178
       12 LOADN                            R4 229
       13 LOADN                            R5 255
       14 CALL                             R2 3 1
       15 DUPCLOSURE                       R3 K3 [PROTO_1]
       16 DUPCLOSURE                       R4 K4 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R4 R0 K5 ["getSelectionColor"]
       20 DUPCLOSURE                       R4 K6 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R0 K7 ["getHoverColor"]
       24 RETURN                           R0 1
