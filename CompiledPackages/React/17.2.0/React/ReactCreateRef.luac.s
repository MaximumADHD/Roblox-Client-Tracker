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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["update"]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 1
        9 SETTABLE                         R2 R3 R1
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["Ref(%s)"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R4 R4 K4 ["getValue"]
        6 CALL                             R4 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R3 K6 [tostring]
       10 CALL                             R3 -1 1
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["create"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R4 K2 [_G]
        9 GETTABLEKS                       R3 R4 K3 ["__DEV__"]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactBinding.roblox"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 1 0
       23 DUPCLOSURE                       R4 K7 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K8 ["createRef"]
       27 RETURN                           R3 1
