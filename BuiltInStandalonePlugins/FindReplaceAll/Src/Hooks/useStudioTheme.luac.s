PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Theme"]
        3 JUMPIF                           R0 ; [+1]
        4 DUPTABLE                         R0 K3 [{["Name"] = "Dark"}]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Theme"]
        4 JUMPIF                           R1 ; [+1]
        5 DUPTABLE                         R1 K3 [{["Name"] = "Dark"}]
        6 GETTABLEKS                       R1 R1 K1 ["Name"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["ThemeChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 2
        8 JUMPIF                           R1 ; [+5]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["Failed to connect to ThemeChanged signal:"]
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          REF R0
       16 CLOSEUPVALS                      R0
       17 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Theme"]
        6 JUMPIF                           R1 ; [+1]
        7 DUPTABLE                         R1 K4 [{["Name"] = "Dark"}]
        8 GETTABLEKS                       R1 R1 K2 ["Name"]
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["useEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 0
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MockableProxyStudioSettings"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R4 K12 [PROTO_5]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
