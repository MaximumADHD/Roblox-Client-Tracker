PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["themesList"]
        5 GETTABLEKS                       R4 R0 K2 ["getThemeName"]
        7 CALL                             R4 0 1
        8 GETTABLE                         R2 R3 R4
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R1 K3 ["extend"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Style"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Themes"]
       13 GETTABLEKS                       R3 R4 K7 ["BaseTheme"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K8 ["UI"]
       20 GETTABLEKS                       R5 R6 K9 ["ContextServices"]
       22 GETTABLEKS                       R4 R5 K10 ["Stylizer"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
