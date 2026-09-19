PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Studio"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Enums"]
        6 GETTABLEKS                       R0 R0 K1 ["Theme"]
        8 GETTABLEKS                       R0 R0 K2 ["Dark"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K1 ["Theme"]
       14 GETTABLEKS                       R0 R0 K3 ["Name"]
       16 JUMPIFNOTEQKS                    R0 K4 ["Light"] ; [+9]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K0 ["Enums"]
       21 GETTABLEKS                       R0 R0 K1 ["Theme"]
       23 GETTABLEKS                       R0 R0 K4 ["Light"]
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K0 ["Enums"]
       29 GETTABLEKS                       R0 R0 K1 ["Theme"]
       31 GETTABLEKS                       R0 R0 K2 ["Dark"]
       33 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["ThemeChanged"]
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["Theme"]
       17 LOADK                            R4 K3 ["Name"]
       18 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       20 CALL                             R2 2 1
       21 MOVE                             R4 R0
       22 NAMECALL                         R2 R2 K1 ["Connect"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 LOADK                            R5 K2 ["Theme"]
       27 NAMECALL                         R3 R3 K4 ["GetPropertyChangedSignal"]
       29 CALL                             R3 2 1
       30 MOVE                             R5 R0
       31 NAMECALL                         R3 R3 K1 ["Connect"]
       33 CALL                             R3 2 1
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R0 R0 K2 ["getSettings"]
        9 CALL                             R0 0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R3 0 1
       17 MOVE                             R4 R0
       18 SETLIST                          R3 R4 1 [1]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R4 0 1
       29 MOVE                             R5 R1
       30 SETLIST                          R4 R5 1 [1]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["useState"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 2
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 NEWTABLE                         R7 0 2
       47 MOVE                             R8 R1
       48 MOVE                             R9 R2
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 0
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GlobalSettingsContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_5]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
