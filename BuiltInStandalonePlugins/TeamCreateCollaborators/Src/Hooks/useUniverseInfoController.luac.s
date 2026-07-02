PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R1 R0 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R0 K0 ["name"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R1 K0 ["getUniverseName"]
        3 JUMP                             ; [+1]
        4 LOADK                            R1 K1 ["getUniverseConfiguration"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["sendErrorFromCatch"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

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
       15 GETTABLEKS                       R0 R0 K2 ["universeId"]
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K2 ["universeId"]
       21 JUMPIFNOTEQKN                    R0 K3 [0] ; [+5]
       23 GETUPVAL                         R0 2
       24 LOADK                            R1 K4 [""]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 3
       28 JUMPIFNOT                        R1 ; [+8]
       29 GETUPVAL                         R0 4
       30 GETTABLEKS                       R0 R0 K5 ["getUniverseName"]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K2 ["universeId"]
       35 CALL                             R0 1 1
       36 JUMP                             ; [+7]
       37 GETUPVAL                         R0 4
       38 GETTABLEKS                       R0 R0 K6 ["getUniverseConfiguration"]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K2 ["universeId"]
       43 CALL                             R0 1 1
       44 GETUPVAL                         R1 0
       45 SETTABLEKS                       R0 R1 K0 ["current"]
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U2
       49 NAMECALL                         R1 R0 K7 ["andThen"]
       51 CALL                             R1 2 1
       52 DUPCLOSURE                       R3 K8 [PROTO_1]
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U5
       55 NAMECALL                         R1 R1 K9 ["catch"]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

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
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R7 0 1
       27 GETTABLEKS                       R8 R0 K5 ["universeId"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 0
       32 DUPTABLE                         R5 K7 [{"name"}]
       33 SETTABLEKS                       R1 R5 K6 ["name"]
       35 RETURN                           R5 1

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
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Bin"]
       38 GETTABLEKS                       R6 R6 K14 ["Common"]
       40 GETTABLEKS                       R6 R6 K15 ["flags"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K16 ["FFlagTeamCreateCollaboratorsUseUniverseMultiget"]
       45 DUPCLOSURE                       R7 K17 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R4
       50 RETURN                           R7 1
