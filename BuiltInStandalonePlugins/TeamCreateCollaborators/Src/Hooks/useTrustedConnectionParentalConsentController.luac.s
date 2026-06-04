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
        2 LOADK                            R3 K2 ["Failed to get trusted connection parental consent: "]
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
       15 GETTABLEKS                       R0 R0 K2 ["getAMPRequest"]
       17 LOADK                            R1 K3 ["ShowParentalConsentOptions"]
       18 LOADK                            R2 K4 ["collaborative_tools/TeamCreateCollaborationAgeGate"]
       19 CALL                             R0 2 1
       20 GETUPVAL                         R1 0
       21 SETTABLEKS                       R0 R1 K0 ["current"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U2
       25 NAMECALL                         R1 R0 K5 ["andThen"]
       27 CALL                             R1 2 1
       28 DUPCLOSURE                       R3 K6 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R1 R1 K7 ["catch"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 DUPTABLE                         R1 K3 [{"isGranted", "access"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isGranted"]
        7 LOADK                            R2 K4 [""]
        8 SETTABLEKS                       R2 R1 K2 ["access"]
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["useContext"]
       14 GETUPVAL                         R3 1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["useRef"]
       19 LOADNIL                          R4
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R6 0 0
       31 CALL                             R4 2 0
       32 RETURN                           R0 1

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
