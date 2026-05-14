PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["current"] ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["getValue"]
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R2 R3 R1
        9 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["current"] ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["update"]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 1
        9 SETTABLE                         R2 R3 R1
       10 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R1 K0 ["Ref(%s)"]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K1 ["getValue"]
        4 CALL                             R4 1 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R3 K3 [tostring]
        8 CALL                             R3 -1 1
        9 NAMECALL                         R1 R1 K4 ["format"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [_G]
        9 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETIMPORT                        R3 K6 [debug.traceback]
       14 LOADK                            R4 K7 ["Ref created at:"]
       15 LOADN                            R5 1
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R0 K8 ["_source"]
       19 DUPTABLE                         R5 K12 [{"__index", "__newindex", "__tostring"}]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R6 R5 K9 ["__index"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R6 R5 K10 ["__newindex"]
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R5 K11 ["__tostring"]
       33 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K14 [setmetatable]
       38 CALL                             R3 2 0
       39 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K4 [script]
        7 GETTABLEKS                       R3 R3 K5 ["Parent"]
        9 GETTABLEKS                       R2 R3 K2 ["ReactBinding.roblox"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_3]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R0 K7 ["createRef"]
       16 RETURN                           R0 1
