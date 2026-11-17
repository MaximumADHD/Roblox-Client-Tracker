PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["apis"]
        1 LOADK                            R4 K1 ["/user-agreements/v1/agreements-resolution/App"]
        2 NAMECALL                         R1 R0 K2 ["get"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R5 K0 ["apis"]
        1 LOADK                            R7 K1 ["/studio-moderation/v1/"]
        2 MOVE                             R8 R1
        3 LOADK                            R9 K2 ["/contacts"]
        4 CONCAT                           R6 R7 R9
        5 DUPTABLE                         R7 K4 [{"Body"}]
        6 DUPTABLE                         R8 K6 [{"email"}]
        7 SETTABLEKS                       R2 R8 K5 ["email"]
        9 SETTABLEKS                       R8 R7 K3 ["Body"]
       11 NAMECALL                         R3 R0 K7 ["post"]
       13 CALL                             R3 4 -1
       14 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["apis"]
        3 LOADK                            R5 K2 ["/user-agreements/v1/agreements-resolution/App"]
        4 NAMECALL                         R2 R1 K3 ["get"]
        6 CALL                             R2 3 1
        7 NAMECALL                         R2 R2 K4 ["await"]
        9 CALL                             R2 1 1
       10 GETIMPORT                        R4 K6 [next]
       12 GETTABLEKS                       R5 R2 K7 ["responseBody"]
       14 CALL                             R4 1 1
       15 JUMPIFEQKNIL                     R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R6 R1
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["number"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETIMPORT                        R5 K5 [string.format]
       11 LOADK                            R6 K6 ["universeId must be a number, received %s"]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 CALL                             R5 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R3 K8 [assert]
       21 CALL                             R3 -1 0
       22 FASTCALL1                        TYPE R2 ; [+3]
       23 MOVE                             R6 R2
       24 GETIMPORT                        R5 K1 [type]
       26 CALL                             R5 1 1
       27 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETIMPORT                        R5 K5 [string.format]
       33 LOADK                            R6 K9 ["contactemail must be a string, received %s"]
       34 FASTCALL1                        TYPE R2 ; [+3]
       35 MOVE                             R8 R2
       36 GETIMPORT                        R7 K1 [type]
       38 CALL                             R7 1 1
       39 CALL                             R5 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R3 K8 [assert]
       43 CALL                             R3 -1 0
       44 GETTABLEKS                       R3 R0 K10 ["__networking"]
       46 LOADNIL                          R4
       47 GETUPVAL                         R5 0
       48 MOVE                             R6 R3
       49 MOVE                             R7 R1
       50 MOVE                             R8 R2
       51 CALL                             R5 3 1
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          REF R4
       54 NAMECALL                         R5 R5 K11 ["catch"]
       56 CALL                             R5 2 1
       57 NAMECALL                         R5 R5 K12 ["await"]
       59 CALL                             R5 1 0
       60 CLOSEUPVALS                      R4
       61 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 DUPCLOSURE                       R3 K5 [PROTO_3]
       12 SETTABLEKS                       R3 R0 K6 ["getPlayerAcceptances"]
       14 DUPCLOSURE                       R3 K7 [PROTO_5]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R0 K8 ["postContactEmail"]
       18 RETURN                           R0 1
