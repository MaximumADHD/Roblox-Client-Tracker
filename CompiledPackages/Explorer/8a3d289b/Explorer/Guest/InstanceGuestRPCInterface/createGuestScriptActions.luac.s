PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Host requested \"%*\" when the guest does not support opening it"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+9]
        7 GETIMPORT                        R2 K1 [error]
        9 LOADK                            R3 K2 ["\"%*\" on unknown instance"]
       10 GETUPVAL                         R5 3
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 LOADK                            R5 K4 ["LuaSourceContainer"]
       16 NAMECALL                         R3 R1 K5 ["IsA"]
       18 CALL                             R3 2 1
       19 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       21 LOADK                            R4 K6 ["Acting on instance that is not a LuaSourceContainer"]
       22 GETIMPORT                        R2 K8 [assert]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 3
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 RETURN                           R3 1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"openScript", "clickScript"}]
        1 JUMPIFNOTEQKNIL                  R1 ; [+4]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 JUMP                             ; [+6]
        6 LOADK                            R5 K0 ["openScript"]
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K0 ["openScript"]
       14 JUMPIFNOTEQKNIL                  R2 ; [+4]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 JUMP                             ; [+6]
       19 LOADK                            R5 K1 ["clickScript"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K1 ["clickScript"]
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Guest"]
       25 GETTABLEKS                       R4 R4 K7 ["InstanceGuestRPCInterface"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["getInstanceById"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R5 K13 [PROTO_3]
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
