PROTO_0:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["layer"]
        7 GETUPVAL                         R2 1
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K1 ["stackAboveOwner"]
       15 JUMPIFNOT                        R1 ; [+40]
       16 GETUPVAL                         R1 0
       17 JUMPIF                           R1 ; [+10]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K2 ["acquire"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K4 [{"reserve"}]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K3 ["reserve"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1
       28 JUMPIFNOT                        R0 ; [+13]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R1 R2 K2 ["acquire"]
       32 GETUPVAL                         R2 1
       33 DUPTABLE                         R3 K6 [{"reserve", "owner"}]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K3 ["reserve"]
       37 GETUPVAL                         R4 0
       38 SETTABLEKS                       R4 R3 K5 ["owner"]
       40 CALL                             R1 2 -1
       41 RETURN                           R1 -1
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R2 R3 K8 ["zIndex"]
       45 ADDK                             R1 R2 K7 [1]
       46 DUPTABLE                         R2 K10 [{"layer", "index", "zIndex"}]
       47 GETUPVAL                         R3 1
       48 SETTABLEKS                       R3 R2 K0 ["layer"]
       50 LOADN                            R3 255
       51 SETTABLEKS                       R3 R2 K9 ["index"]
       53 SETTABLEKS                       R1 R2 K8 ["zIndex"]
       55 RETURN                           R2 1
       56 GETUPVAL                         R2 3
       57 GETTABLEKS                       R1 R2 K2 ["acquire"]
       59 GETUPVAL                         R2 1
       60 DUPTABLE                         R3 K4 [{"reserve"}]
       61 SETTABLEKS                       R0 R3 K3 ["reserve"]
       63 CALL                             R1 2 -1
       64 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["index"]
        3 JUMPIFEQKNIL                     R0 ; [+15]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["index"]
        8 LOADN                            R1 0
        9 JUMPIFNOTLE                      R1 R0 ; [+9]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K1 ["releaseIfTop"]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["index"]
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
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R6 0 4
       14 MOVE                             R7 R0
       15 MOVE                             R8 R3
       16 MOVE                             R9 R2
       17 GETTABLEKS                       R10 R1 K1 ["stackAboveOwner"]
       19 SETLIST                          R6 R7 4 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K2 ["useEffect"]
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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["ElevationLayer"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K10 ["ElevationProvider"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K4 ["Parent"]
       36 GETTABLEKS                       R6 R7 K11 ["elevation"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R4 K12 ["useElevationManager"]
       41 GETTABLEKS                       R7 R4 K13 ["useOwnerToken"]
       43 DUPCLOSURE                       R8 K14 [PROTO_3]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 RETURN                           R8 1
