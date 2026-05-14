PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["relativeToOwner"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["acquire"]
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["zIndex"]
       15 ADDK                             R0 R1 K2 [1]
       16 DUPTABLE                         R1 K6 [{"layer", "index", "zIndex"}]
       17 GETUPVAL                         R2 3
       18 SETTABLEKS                       R2 R1 K4 ["layer"]
       20 LOADN                            R2 255
       21 SETTABLEKS                       R2 R1 K5 ["index"]
       23 SETTABLEKS                       R0 R1 K3 ["zIndex"]
       25 RETURN                           R1 1
       26 GETUPVAL                         R0 2
       27 GETTABLEKS                       R0 R0 K1 ["acquire"]
       29 GETUPVAL                         R1 3
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["index"]
        3 JUMPIFEQKNIL                     R0 ; [+15]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["index"]
        8 LOADN                            R1 0
        9 JUMPIFNOTLE                      R1 R0 ; [+9]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["releaseIfTop"]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["index"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R6 0 4
       14 MOVE                             R7 R0
       15 MOVE                             R8 R3
       16 MOVE                             R9 R2
       17 GETTABLEKS                       R10 R1 K1 ["relativeToOwner"]
       19 SETLIST                          R6 R7 4 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R7 0 2
       31 MOVE                             R8 R0
       32 GETTABLEKS                       R9 R4 K3 ["index"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 0
       37 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ElevationLayer"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["ElevationProvider"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K11 ["elevation"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R4 K12 ["useElevationManager"]
       41 GETTABLEKS                       R7 R4 K13 ["useOwnerToken"]
       43 DUPCLOSURE                       R8 K14 [PROTO_3]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 RETURN                           R8 1
