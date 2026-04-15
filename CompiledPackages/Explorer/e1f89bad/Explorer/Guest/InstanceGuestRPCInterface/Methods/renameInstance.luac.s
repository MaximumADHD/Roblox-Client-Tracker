PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 2
        6 SETUPVAL                         R0 0
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R0 0
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       12 RETURN                           R0 1
       13 GETIMPORT                        R0 K7 [warn]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 GETIMPORT                        R0 K9 [Enum.FinishRecordingOperation.Cancel]
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["Renaming %s to %s"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K2 [typeof]
        9 CALL                             R5 1 1
       10 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       16 LOADK                            R5 K4 ["Instance ID is not a string"]
       17 GETIMPORT                        R3 K6 [assert]
       19 CALL                             R3 2 0
       20 FASTCALL1                        TYPEOF R2 ; [+3]
       21 MOVE                             R6 R2
       22 GETIMPORT                        R5 K2 [typeof]
       24 CALL                             R5 1 1
       25 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       31 LOADK                            R5 K7 ["New name is not a string"]
       32 GETIMPORT                        R3 K6 [assert]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 CALL                             R3 0 1
       37 JUMPIF                           R3 ; [+6]
       38 LOADN                            R5 1
       39 LOADN                            R6 100
       40 NAMECALL                         R3 R2 K8 ["sub"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R0
       46 MOVE                             R5 R1
       47 LOADK                            R6 K9 ["renaming instance"]
       48 CALL                             R3 3 1
       49 JUMPIFNOTEQKNIL                  R3 ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       55 LOADK                            R6 K10 ["Host renaming instance that doesn't exist"]
       56 GETIMPORT                        R4 K6 [assert]
       58 CALL                             R4 2 0
       59 LOADNIL                          R4
       60 LOADNIL                          R5
       61 GETTABLEKS                       R6 R0 K11 ["recordChanges"]
       63 LOADK                            R8 K12 ["Renaming %* to %*"]
       64 GETTABLEKS                       R10 R3 K13 ["Name"]
       66 MOVE                             R11 R2
       67 NAMECALL                         R8 R8 K14 ["format"]
       69 CALL                             R8 3 1
       70 MOVE                             R7 R8
       71 NEWCLOSURE                       R8 P0
       72 CAPTURE                          REF R4
       73 CAPTURE                          REF R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          REF R2
       76 CALL                             R6 2 0
       77 CLOSEUPVALS                      R2
       78 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Guest"]
       11 GETTABLEKS                       R3 R4 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["createDebugLogger"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R6 K13 ["getFFlagExplorerFormatInstanceName"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K6 ["Guest"]
       39 GETTABLEKS                       R8 R9 K7 ["InstanceGuestRPCInterface"]
       41 GETTABLEKS                       R7 R8 K10 ["Util"]
       43 GETTABLEKS                       R6 R7 K14 ["getInstanceById"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R3
       47 LOADK                            R7 K15 ["renameInstance"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R7 1
