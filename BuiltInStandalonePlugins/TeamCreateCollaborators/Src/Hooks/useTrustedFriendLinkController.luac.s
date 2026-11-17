PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R1 R0 K0 ["link"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R0 K0 ["link"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to get trusted friends link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["sendErrorFromCatch"]
       13 LOADK                            R2 K6 ["postGetTrustedFriendsLink"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["userIds"]
       17 JUMPIFNOT                        R0 ; [+15]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K2 ["userIds"]
       21 LENGTH                           R0 R1
       22 JUMPIFEQKN                       R0 K3 [0] ; [+10]
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K4 ["universeId"]
       27 JUMPIFNOT                        R0 ; [+5]
       28 GETUPVAL                         R0 1
       29 GETTABLEKS                       R0 R0 K4 ["universeId"]
       31 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
       33 RETURN                           R0 0
       34 DUPTABLE                         R0 K7 [{"targetUserIds", "universeId", "actorUserId"}]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K2 ["userIds"]
       38 SETTABLEKS                       R1 R0 K5 ["targetUserIds"]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K4 ["universeId"]
       43 SETTABLEKS                       R1 R0 K4 ["universeId"]
       45 GETUPVAL                         R1 2
       46 NAMECALL                         R1 R1 K8 ["GetUserId"]
       48 CALL                             R1 1 1
       49 SETTABLEKS                       R1 R0 K6 ["actorUserId"]
       51 GETUPVAL                         R1 3
       52 GETTABLEKS                       R1 R1 K9 ["postGetTrustedFriendsLink"]
       54 MOVE                             R2 R0
       55 CALL                             R1 1 1
       56 GETUPVAL                         R2 0
       57 SETTABLEKS                       R1 R2 K0 ["current"]
       59 NEWCLOSURE                       R4 P0
       60 CAPTURE                          UPVAL U4
       61 NAMECALL                         R2 R1 K10 ["andThen"]
       63 CALL                             R2 2 1
       64 DUPCLOSURE                       R4 K11 [PROTO_1]
       65 CAPTURE                          UPVAL U5
       66 NAMECALL                         R2 R2 K12 ["catch"]
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["useContext"]
        8 GETUPVAL                         R4 1
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R7 0 2
       27 GETTABLEKS                       R8 R0 K5 ["userIds"]
       29 GETTABLEKS                       R9 R0 K6 ["universeId"]
       31 SETLIST                          R7 R8 2 [1]
       33 CALL                             R5 2 0
       34 DUPTABLE                         R5 K8 [{"trustedFriendLink"}]
       35 SETTABLEKS                       R1 R5 K7 ["trustedFriendLink"]
       37 RETURN                           R5 1

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
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["NetworkContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["Services"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["StudioService"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K11 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["Telemetry"]
       42 GETTABLEKS                       R7 R7 K14 ["Telemetry"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K15 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
