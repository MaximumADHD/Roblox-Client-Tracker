PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 LOADK                            R2 K1 ["IMAGEID_%*"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 LOADK                            R3 K1 ["IMAGEID_%*"]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETUPVAL                         R2 1
       12 SETTABLE                         R0 R2 R1
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["getImage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 RETURN                           R0 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+2]
       11 RETURN                           R0 1
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K1 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+7]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["storeImage"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Types"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 0 0
       20 NEWTABLE                         R4 0 0
       22 DUPCLOSURE                       R5 K11 [PROTO_0]
       23 CAPTURE                          VAL R0
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          REF R3
       27 SETTABLEKS                       R6 R4 K12 ["storeImage"]
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          REF R3
       31 SETTABLEKS                       R6 R4 K13 ["restoreImage"]
       33 NEWCLOSURE                       R6 P3
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R6 R4 K14 ["getImage"]
       37 DUPCLOSURE                       R6 K15 [PROTO_4]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R4 K16 ["resolveImage"]
       41 DUPCLOSURE                       R6 K17 [PROTO_5]
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R6 R4 K18 ["resolveUri"]
       45 NEWCLOSURE                       R6 P6
       46 CAPTURE                          REF R3
       47 SETTABLEKS                       R6 R4 K19 ["clear"]
       49 CLOSEUPVALS                      R3
       50 RETURN                           R4 1
