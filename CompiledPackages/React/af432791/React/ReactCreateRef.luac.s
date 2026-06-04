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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["__DEV__"]
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETIMPORT                        R3 K4 [debug.traceback]
       13 LOADK                            R4 K5 ["Ref created at:"]
       14 LOADN                            R5 1
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R0 K6 ["_source"]
       18 DUPTABLE                         R5 K10 [{"__index", "__newindex", "__tostring"}]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R6 R5 K7 ["__index"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R6 R5 K8 ["__newindex"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R6 R5 K9 ["__tostring"]
       32 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K12 [setmetatable]
       37 CALL                             R3 2 0
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R5 K1 [script]
       21 GETTABLEKS                       R5 R5 K2 ["Parent"]
       23 GETTABLEKS                       R4 R5 K7 ["ReactBinding.roblox"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 1 0
       28 DUPCLOSURE                       R5 K8 [PROTO_3]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R5 R4 K9 ["createRef"]
       33 RETURN                           R4 1
