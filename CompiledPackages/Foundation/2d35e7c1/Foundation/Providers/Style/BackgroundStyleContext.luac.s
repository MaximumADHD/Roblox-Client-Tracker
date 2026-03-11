PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+8]
        9 GETTABLEKS                       R4 R1 K1 ["Color"]
       11 GETTABLEKS                       R3 R4 K2 ["Surface"]
       13 GETTABLEKS                       R2 R3 K3 ["Surface_0"]
       15 RETURN                           R2 1
       16 RETURN                           R0 1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K13 ["createContext"]
       32 LOADNIL                          R6
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 SETGLOBAL                        R6 K15 ["useBackgroundStyle"]
       40 DUPTABLE                         R6 K17 [{"useBackgroundStyle", "Provider"}]
       41 GETGLOBAL                        R7 K15 ["useBackgroundStyle"]
       43 SETTABLEKS                       R7 R6 K15 ["useBackgroundStyle"]
       45 GETTABLEKS                       R7 R5 K16 ["Provider"]
       47 SETTABLEKS                       R7 R6 K16 ["Provider"]
       49 RETURN                           R6 1
