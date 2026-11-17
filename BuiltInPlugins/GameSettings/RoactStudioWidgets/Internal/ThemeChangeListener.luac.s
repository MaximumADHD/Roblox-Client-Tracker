PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["render"]
        4 CALL                             R1 0 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R1 R0 K0 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R0 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETTABLEKS                       R1 R1 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K4 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K5 ["externalThemeChangedConnection"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["externalThemeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["externalThemeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["RequireRoact"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["Component"]
       12 LOADK                            R3 K7 ["ThemeChangeListener"]
       13 NAMECALL                         R1 R1 K8 ["extend"]
       15 CALL                             R1 2 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 SETTABLEKS                       R2 R1 K10 ["render"]
       19 DUPCLOSURE                       R2 K11 [PROTO_1]
       20 DUPCLOSURE                       R3 K12 [PROTO_3]
       21 SETTABLEKS                       R3 R1 K13 ["didMount"]
       23 DUPCLOSURE                       R3 K14 [PROTO_4]
       24 SETTABLEKS                       R3 R1 K15 ["willUnmount"]
       26 RETURN                           R1 1
