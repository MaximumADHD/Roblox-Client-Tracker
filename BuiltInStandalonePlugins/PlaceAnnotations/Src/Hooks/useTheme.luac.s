PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Theme"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["ThemeChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 MOVE                             R0 R1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          REF R0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Theme"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 0
       20 MOVE                             R2 R0
       21 JUMPIF                           R2 ; [+1]
       22 GETUPVAL                         R2 2
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{["Name"] = "Dark"}]
       15 GETIMPORT                        R3 K12 [pcall]
       17 DUPCLOSURE                       R4 K13 [PROTO_0]
       18 CALL                             R3 1 2
       19 LOADK                            R7 K14 ["Studio"]
       20 NAMECALL                         R5 R4 K15 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 DUPCLOSURE                       R6 K16 [PROTO_4]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R2
       27 RETURN                           R6 1
