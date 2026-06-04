PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K4 [{"success", "statusCode", "errorMessage", "responseBody"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K0 ["success"]
        7 LOADN                            R3 200
        8 SETTABLEKS                       R3 R2 K1 ["statusCode"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K2 ["errorMessage"]
       13 SETTABLEKS                       R0 R2 K3 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendErrorFromCatch"]
        3 LOADK                            R2 K1 ["postSendRequestToAllParents"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K3 [type]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+20]
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R2 K9 [{"success", "statusCode", "errorMessage", "responseBody"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K5 ["success"]
       21 GETTABLEKS                       R3 R0 K6 ["statusCode"]
       23 SETTABLEKS                       R3 R2 K6 ["statusCode"]
       25 GETTABLEKS                       R3 R0 K10 ["statusMessage"]
       27 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       29 GETTABLEKS                       R3 R0 K11 ["body"]
       31 SETTABLEKS                       R3 R2 K8 ["responseBody"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 1
       36 DUPTABLE                         R2 K9 [{"success", "statusCode", "errorMessage", "responseBody"}]
       37 LOADB                            R3 0
       38 SETTABLEKS                       R3 R2 K5 ["success"]
       40 LOADNIL                          R3
       41 SETTABLEKS                       R3 R2 K6 ["statusCode"]
       43 FASTCALL1                        TOSTRING R0 ; [+3]
       44 MOVE                             R4 R0
       45 GETIMPORT                        R3 K13 [tostring]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K8 ["responseBody"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+2]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K1 [ipairs]
        8 MOVE                             R5 R0
        9 JUMPIF                           R5 ; [+2]
       10 NEWTABLE                         R5 0 0
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 FASTCALL1                        TOSTRING R8 ; [+3]
       15 MOVE                             R12 R8
       16 GETIMPORT                        R11 K3 [tostring]
       18 CALL                             R11 1 1
       19 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       21 MOVE                             R10 R3
       22 GETIMPORT                        R9 K6 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 [inext] ; [-12]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["postSendRequestToAllParents"]
       30 DUPTABLE                         R5 K10 [{"requestType", "requestDetails"}]
       31 LOADK                            R6 K11 ["BulkAddTrustedConnections"]
       32 SETTABLEKS                       R6 R5 K8 ["requestType"]
       34 DUPTABLE                         R6 K14 [{"targetUserIds", "gameId"}]
       35 GETIMPORT                        R7 K16 [table.concat]
       37 MOVE                             R8 R3
       38 LOADK                            R9 K17 [","]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K12 ["targetUserIds"]
       42 FASTCALL1                        TOSTRING R1 ; [+3]
       43 MOVE                             R8 R1
       44 GETIMPORT                        R7 K3 [tostring]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K13 ["gameId"]
       49 SETTABLEKS                       R6 R5 K9 ["requestDetails"]
       51 CALL                             R4 1 1
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R2
       54 NAMECALL                         R4 R4 K18 ["andThen"]
       56 CALL                             R4 2 1
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R2
       60 NAMECALL                         R4 R4 K19 ["catch"]
       62 CALL                             R4 2 -1
       63 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useCallback"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R0
       14 SETLIST                          R3 R4 1 [1]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K8 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["NetworkContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["Telemetry"]
       38 GETTABLEKS                       R6 R6 K13 ["Telemetry"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K14 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1
