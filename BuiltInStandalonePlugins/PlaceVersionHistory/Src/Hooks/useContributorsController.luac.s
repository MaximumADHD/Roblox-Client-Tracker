PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["page"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K0 [""]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K1 ["current"]
       14 NAMECALL                         R0 R0 K2 ["cancel"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["current"]
       21 DUPTABLE                         R0 K5 [{"placeId", "pageSize"}]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K3 ["placeId"]
       25 SETTABLEKS                       R1 R0 K3 ["placeId"]
       27 GETUPVAL                         R1 4
       28 SETTABLEKS                       R1 R0 K4 ["pageSize"]
       30 GETUPVAL                         R1 2
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R2 R3 K6 ["getContributors"]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 1
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U0
       38 NAMECALL                         R2 R2 K7 ["andThen"]
       40 CALL                             R2 2 1
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          UPVAL U0
       43 NAMECALL                         R2 R2 K8 ["catch"]
       45 CALL                             R2 2 1
       46 SETTABLEKS                       R2 R1 K1 ["current"]
       48 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R8 K2 [string.match]
        8 GETIMPORT                        R9 K4 [string.lower]
       10 MOVE                             R10 R6
       11 CALL                             R9 1 1
       12 GETIMPORT                        R10 K4 [string.lower]
       14 GETUPVAL                         R11 1
       15 CALL                             R10 1 -1
       16 CALL                             R8 -1 1
       17 JUMPIFNOTEQKNIL                  R8 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 JUMPIFNOT                        R7 ; [+1]
       22 SETTABLE                         R6 R1 R5
       23 FORGLOOP                         R2 2 ; [-18]
       25 MOVE                             R2 R0
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["new"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CALL                             R1 1 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U4
       24 NAMECALL                         R1 R1 K3 ["andThen"]
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          UPVAL U4
       29 NAMECALL                         R1 R1 K4 ["catch"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K1 ["useState"]
       14 LOADK                            R5 K2 [""]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K3 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K1 ["useState"]
       24 NEWTABLE                         R8 0 0
       26 CALL                             R7 1 2
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K0 ["useContext"]
       30 GETUPVAL                         R10 2
       31 CALL                             R9 1 1
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R10 R11 K3 ["useRef"]
       35 LOADNIL                          R11
       36 CALL                             R10 1 1
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R11 R12 K4 ["useLayoutEffect"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R10
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R9
       47 NEWTABLE                         R13 0 3
       49 MOVE                             R14 R0
       50 GETTABLEKS                       R15 R1 K5 ["placeId"]
       52 GETTABLEKS                       R16 R1 K6 ["universeId"]
       54 SETLIST                          R13 R14 3 [1]
       56 CALL                             R11 2 0
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R11 R12 K4 ["useLayoutEffect"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R13 0 2
       68 MOVE                             R14 R4
       69 MOVE                             R15 R2
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 0
       73 DUPTABLE                         R11 K10 [{"search", "setSearch", "contributors"}]
       74 SETTABLEKS                       R4 R11 K7 ["search"]
       76 SETTABLEKS                       R5 R11 K8 ["setSearch"]
       78 SETTABLEKS                       R7 R11 K9 ["contributors"]
       80 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SettingContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R3 K12 ["NetworkContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R9 R0 K13 ["Bin"]
       39 GETTABLEKS                       R8 R9 K14 ["Common"]
       41 GETTABLEKS                       R7 R8 K15 ["flags"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R9 R0 K9 ["Src"]
       48 GETTABLEKS                       R8 R9 K16 ["Types"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R6 K17 ["FIntPVHMaxContributors"]
       53 DUPCLOSURE                       R9 K18 [PROTO_7]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R2
       59 RETURN                           R9 1
