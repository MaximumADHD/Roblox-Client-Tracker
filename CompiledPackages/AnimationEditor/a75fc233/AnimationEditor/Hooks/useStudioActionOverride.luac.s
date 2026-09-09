PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioActionOverrideAPI"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+4]
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["studioAction"]
        4 NAMECALL                         R0 R0 K1 ["OverrideStudioAction"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Release"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K3 ["current"]
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["studioAction"]
        6 JUMPIFEQKNIL                     R0 ; [+12]
        8 GETIMPORT                        R1 K2 [pcall]
       10 DUPCLOSURE                       R2 K3 [PROTO_0]
       11 CALL                             R1 1 2
       12 MOVE                             R0 R1
       13 JUMPIFNOT                        R0 ; [+4]
       14 JUMPIFEQKB                       R2 TRUE ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 JUMPIF                           R0 ; [+2]
       19 LOADNIL                          R0
       20 RETURN                           R0 1
       21 GETIMPORT                        R0 K2 [pcall]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 CALL                             R0 1 2
       27 JUMPIFNOT                        R0 ; [+2]
       28 JUMPIFNOTEQKNIL                  R1 ; [+3]
       30 LOADNIL                          R2
       31 RETURN                           R2 1
       32 GETUPVAL                         R2 2
       33 SETTABLEKS                       R1 R2 K4 ["current"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K4 ["current"]
       38 SETTABLEKS                       R2 R1 K5 ["Enabled"]
       40 GETTABLEKS                       R2 R1 K6 ["Triggered"]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          UPVAL U4
       44 NAMECALL                         R2 R2 K7 ["Connect"]
       46 CALL                             R2 2 1
       47 NEWCLOSURE                       R3 P3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U2
       51 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["isEnabled"]
        8 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 GETTABLEKS                       R3 R1 K1 ["activate"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K1 ["activate"]
        8 SETTABLEKS                       R3 R2 K2 ["current"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useRef"]
       13 GETTABLEKS                       R4 R1 K3 ["isEnabled"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R1 K3 ["isEnabled"]
       18 SETTABLEKS                       R4 R3 K2 ["current"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R7 0 2
       36 MOVE                             R8 R0
       37 GETTABLEKS                       R9 R1 K5 ["studioAction"]
       39 SETLIST                          R7 R8 2 [1]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R7 0 1
       50 GETTABLEKS                       R8 R1 K3 ["isEnabled"]
       52 SETLIST                          R7 R8 1 [1]
       54 CALL                             R5 2 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 DUPCLOSURE                       R3 K9 [PROTO_8]
       16 CAPTURE                          VAL R1
       17 RETURN                           R3 1
