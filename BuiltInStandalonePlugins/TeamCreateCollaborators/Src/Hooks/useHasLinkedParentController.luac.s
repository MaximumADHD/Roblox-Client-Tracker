PROTO_0:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K2 [{"isGranted", "access"}]
        3 GETTABLEKS                       R3 R0 K0 ["isGranted"]
        5 SETTABLEKS                       R3 R2 K0 ["isGranted"]
        7 GETTABLEKS                       R3 R0 K1 ["access"]
        9 SETTABLEKS                       R3 R2 K1 ["access"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to get has linked parent: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["sendErrorFromCatch"]
       13 LOADK                            R2 K6 ["getAMPRequest"]
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
       15 GETTABLEKS                       R0 R0 K2 ["isGranted"]
       17 JUMPIF                           R0 ; [+10]
       18 GETUPVAL                         R0 2
       19 DUPTABLE                         R1 K4 [{"isGranted", "access"}]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K2 ["isGranted"]
       23 LOADK                            R2 K5 ["NotGranted"]
       24 SETTABLEKS                       R2 R1 K3 ["access"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 3
       29 GETTABLEKS                       R0 R0 K6 ["getAMPRequest"]
       31 LOADK                            R1 K7 ["UseBulkTrustedConnectionsParentalRequestFlow"]
       32 LOADK                            R2 K8 ["studio/CollaborationSettings"]
       33 CALL                             R0 2 1
       34 GETUPVAL                         R1 0
       35 SETTABLEKS                       R0 R1 K0 ["current"]
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 NAMECALL                         R1 R0 K9 ["andThen"]
       41 CALL                             R1 2 1
       42 DUPCLOSURE                       R3 K10 [PROTO_1]
       43 CAPTURE                          UPVAL U4
       44 NAMECALL                         R1 R1 K11 ["catch"]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPTABLE                         R2 K3 [{"isGranted", "access"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["isGranted"]
        7 LOADK                            R3 K4 ["NotGranted"]
        8 SETTABLEKS                       R3 R2 K2 ["access"]
       10 CALL                             R1 1 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["useContext"]
       14 GETUPVAL                         R4 1
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["useRef"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U2
       30 NEWTABLE                         R7 0 1
       32 GETTABLEKS                       R8 R0 K1 ["isGranted"]
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 0
       37 RETURN                           R1 1

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
       29 GETTABLEKS                       R5 R5 K12 ["Telemetry"]
       31 GETTABLEKS                       R5 R5 K12 ["Telemetry"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 RETURN                           R5 1
