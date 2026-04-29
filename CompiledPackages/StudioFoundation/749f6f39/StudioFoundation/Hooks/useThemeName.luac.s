PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+4]
        7 LOADK                            R4 K3 ["Studio"]
        8 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R3 R2 K5 ["Theme"]
       14 RETURN                           R3 1
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETGLOBAL                        R1 K0 ["getStudioTheme"]
        3 CALL                             R1 0 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getSignal"]
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETGLOBAL                        R2 K1 ["getStudioTheme"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 2
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["SharedFlags"]
       18 GETTABLEKS                       R4 R5 K9 ["getFFlagStudioFoundationThemeContext"]
       20 CALL                             R3 1 1
       21 CALL                             R3 0 1
       22 GETIMPORT                        R4 K6 [require]
       24 GETTABLEKS                       R5 R0 K10 ["Types"]
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R3 ; [+11]
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Contexts"]
       32 GETTABLEKS                       R6 R7 K12 ["ThemeContext"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R1 K14 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K16 ["Design"]
       48 GETTABLEKS                       R8 R2 K17 ["useState"]
       50 GETTABLEKS                       R9 R2 K18 ["useEffect"]
       52 DUPCLOSURE                       R10 K19 [PROTO_2]
       53 SETGLOBAL                        R10 K20 ["getStudioTheme"]
       55 DUPCLOSURE                       R10 K21 [PROTO_6]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 RETURN                           R10 1
