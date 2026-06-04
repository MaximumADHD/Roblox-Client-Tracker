PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R1 R0 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R0 K0 ["name"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendErrorFromCatch"]
        3 LOADK                            R2 K1 ["getUniverseConfiguration"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

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
       27 GETUPVAL                         R0 3
       28 GETTABLEKS                       R0 R0 K5 ["getUniverseConfiguration"]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K2 ["universeId"]
       33 CALL                             R0 1 1
       34 GETUPVAL                         R1 0
       35 SETTABLEKS                       R0 R1 K0 ["current"]
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 NAMECALL                         R1 R0 K6 ["andThen"]
       41 CALL                             R1 2 1
       42 DUPCLOSURE                       R3 K7 [PROTO_1]
       43 CAPTURE                          UPVAL U4
       44 NAMECALL                         R1 R1 K8 ["catch"]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

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
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 NEWTABLE                         R7 0 1
       26 GETTABLEKS                       R8 R0 K5 ["universeId"]
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 0
       31 DUPTABLE                         R5 K7 [{"name"}]
       32 SETTABLEKS                       R1 R5 K6 ["name"]
       34 RETURN                           R5 1

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
