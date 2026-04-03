PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 2
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETIMPORT                        R5 K2 [xpcall]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R4
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          UPVAL U3
       13 CALL                             R5 2 0
       14 FORGLOOP                         R0 2 ; [-10]
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+3]
       18 GETIMPORT                        R0 K6 [Enum.FinishRecordingOperation.Commit]
       20 RETURN                           R0 1
       21 GETIMPORT                        R0 K8 [Enum.FinishRecordingOperation.Cancel]
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["drop selection onto"]
        4 CALL                             R2 3 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["Dropping selection onto unknown instance"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 NEWTABLE                         R3 0 0
       17 LOADB                            R4 0
       18 GETTABLEKS                       R5 R0 K4 ["recordChanges"]
       20 LOADK                            R6 K5 ["Moving instances"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R3
       26 CALL                             R5 2 0
       27 CLOSEUPVALS                      R4
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R1 K10 ["Guest"]
       17 GETTABLEKS                       R5 R6 K11 ["InstanceGuestRPCInterface"]
       19 GETTABLEKS                       R4 R5 K12 ["Util"]
       21 GETTABLEKS                       R3 R4 K13 ["getInstanceById"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Guest"]
       28 GETTABLEKS                       R5 R6 K11 ["InstanceGuestRPCInterface"]
       30 GETTABLEKS                       R4 R5 K14 ["InstanceGuestRPCInterfaceTypes"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R1 K15 ["RpcTypes"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K16 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 RETURN                           R5 1
