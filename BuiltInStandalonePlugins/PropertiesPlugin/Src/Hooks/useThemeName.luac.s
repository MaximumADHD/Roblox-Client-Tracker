PROTO_0:
        0 GETIMPORT                        R3 K1 [settings]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R2 R3 K2 ["Studio"]
        5 GETTABLEKS                       R1 R2 K3 ["Theme"]
        7 GETTABLEKS                       R0 R1 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETIMPORT                        R4 K2 [settings]
        5 CALL                             R4 0 1
        6 GETTABLEKS                       R3 R4 K3 ["Studio"]
        8 GETTABLEKS                       R2 R3 K4 ["Theme"]
       10 GETTABLEKS                       R1 R2 K5 ["Name"]
       12 CALL                             R0 1 2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K6 ["useEventConnection"]
       16 GETIMPORT                        R5 K2 [settings]
       18 CALL                             R5 0 1
       19 GETTABLEKS                       R4 R5 K3 ["Studio"]
       21 GETTABLEKS                       R3 R4 K7 ["ThemeChanged"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U2
       26 NEWTABLE                         R5 0 0
       28 CALL                             R2 3 0
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
