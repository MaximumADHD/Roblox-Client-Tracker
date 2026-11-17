PROTO_0:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 LOADK                            R1 K0 ["Foundation"]
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 ["Foundation"]
        3 RETURN                           R0 1
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["Signal"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 CALL                             R0 0 1
        8 LOADNIL                          R1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          VAL R0
       12 DUPTABLE                         R3 K7 [{"GetNames", "GetCurrentName", "Changed", "GetStyleSheet"}]
       13 DUPCLOSURE                       R4 K8 [PROTO_1]
       14 SETTABLEKS                       R4 R3 K3 ["GetNames"]
       16 NEWCLOSURE                       R4 P2
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R4 R3 K4 ["GetCurrentName"]
       20 SETTABLEKS                       R0 R3 K5 ["Changed"]
       22 NEWCLOSURE                       R4 P3
       23 CAPTURE                          REF R1
       24 SETTABLEKS                       R4 R3 K6 ["GetStyleSheet"]
       26 MOVE                             R4 R2
       27 CLOSEUPVALS                      R1
       28 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_4]
       15 CAPTURE                          VAL R2
       16 SETGLOBAL                        R3 K9 ["createFoundationDesignBinding"]
       18 GETGLOBAL                        R3 K9 ["createFoundationDesignBinding"]
       20 RETURN                           R3 1
