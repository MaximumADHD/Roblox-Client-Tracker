PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K7 [{[1] = True, ["statusCode"] = 200, ["errorMessage"] = , ["responseBody"]}]
        4 SETTABLEKS                       R0 R2 K6 ["responseBody"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

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
       14 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+17]
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R2 K10 [{["success"] = False, ["statusCode"], ["errorMessage"], ["responseBody"]}]
       18 GETTABLEKS                       R3 R0 K7 ["statusCode"]
       20 SETTABLEKS                       R3 R2 K7 ["statusCode"]
       22 GETTABLEKS                       R3 R0 K11 ["statusMessage"]
       24 SETTABLEKS                       R3 R2 K8 ["errorMessage"]
       26 GETTABLEKS                       R3 R0 K12 ["body"]
       28 SETTABLEKS                       R3 R2 K9 ["responseBody"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 DUPTABLE                         R2 K14 [{["success"] = False, ["statusCode"] = , ["errorMessage"], ["responseBody"] = }]
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R4 R0
       36 GETIMPORT                        R3 K16 [tostring]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K8 ["errorMessage"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

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
       30 DUPTABLE                         R5 K11 [{["requestType"] = "BulkAddTrustedConnections", ["requestDetails"]}]
       31 DUPTABLE                         R6 K14 [{"targetUserIds", "gameId"}]
       32 GETIMPORT                        R7 K16 [table.concat]
       34 MOVE                             R8 R3
       35 LOADK                            R9 K17 [","]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K12 ["targetUserIds"]
       39 FASTCALL1                        TOSTRING R1 ; [+3]
       40 MOVE                             R8 R1
       41 GETIMPORT                        R7 K3 [tostring]
       43 CALL                             R7 1 1
       44 SETTABLEKS                       R7 R6 K13 ["gameId"]
       46 SETTABLEKS                       R6 R5 K10 ["requestDetails"]
       48 CALL                             R4 1 1
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R2
       51 NAMECALL                         R4 R4 K18 ["andThen"]
       53 CALL                             R4 2 1
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R2
       57 NAMECALL                         R4 R4 K19 ["catch"]
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1

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
