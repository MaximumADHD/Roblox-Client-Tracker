PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["subscribe"]
        4 CALL                             R2 2 1
        5 DUPTABLE                         R3 K2 [{"Disconnect"}]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R4 R3 K1 ["Disconnect"]
       10 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 CALL                             R0 0 2
        4 NEWTABLE                         R2 0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R3 R2 K1 ["Connect"]
       10 DUPTABLE                         R3 K4 [{"signal", "fire"}]
       11 SETTABLEKS                       R2 R3 K2 ["signal"]
       13 SETTABLEKS                       R1 R3 K3 ["fire"]
       15 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R3 K3 [{"AbsolutePosition", "AbsoluteSize", "_signals"}]
        1 SETTABLEKS                       R0 R3 K0 ["AbsolutePosition"]
        3 SETTABLEKS                       R1 R3 K1 ["AbsoluteSize"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K2 ["_signals"]
        9 GETUPVAL                         R4 0
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [setmetatable]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R3 R2 K2 ["_signals"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 SETTABLEKS                       R4 R3 K0 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R2 K2 ["_signals"]
       23 GETUPVAL                         R4 1
       24 CALL                             R4 0 1
       25 SETTABLEKS                       R4 R3 K1 ["AbsoluteSize"]
       27 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_signals"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R4 R0 K0 ["_signals"]
        6 GETTABLE                         R3 R4 R1
        7 GETTABLEKS                       R2 R3 K1 ["signal"]
        9 RETURN                           R2 1
       10 GETIMPORT                        R2 K3 [error]
       12 LOADK                            R4 K4 ["%* is not a valid property name."]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 JUMPIFEQ                         R2 R1 ; [+11]
        4 SETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R0 K1 ["_signals"]
        8 GETTABLEKS                       R3 R4 K0 ["AbsolutePosition"]
       10 GETTABLEKS                       R2 R3 K2 ["fire"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 JUMPIFEQ                         R2 R1 ; [+11]
        4 SETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R0 K1 ["_signals"]
        8 GETTABLEKS                       R3 R4 K0 ["AbsoluteSize"]
       10 GETTABLEKS                       R2 R3 K2 ["fire"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["SetPosition"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 JUMPIF                           R2 ; [+2]
        5 GETIMPORT                        R2 K3 [Vector2.one]
        7 NAMECALL                         R0 R0 K4 ["SetSize"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useRef"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+12]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 JUMPIF                           R5 ; [+2]
       15 GETIMPORT                        R5 K5 [Vector2.one]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K1 ["current"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 MOVE                             R6 R0
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R5 0 1
       40 MOVE                             R6 R1
       41 SETLIST                          R5 R6 1 [1]
       43 CALL                             R3 2 0
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Signal"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_2]
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R6 K12 ["__index"]
       32 DUPCLOSURE                       R7 K13 [PROTO_3]
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R7 R6 K14 ["new"]
       37 DUPCLOSURE                       R7 K15 [PROTO_4]
       38 SETTABLEKS                       R7 R6 K16 ["GetPropertyChangedSignal"]
       40 DUPCLOSURE                       R7 K17 [PROTO_5]
       41 SETTABLEKS                       R7 R6 K18 ["SetPosition"]
       43 DUPCLOSURE                       R7 K19 [PROTO_6]
       44 SETTABLEKS                       R7 R6 K20 ["SetSize"]
       46 DUPCLOSURE                       R7 K21 [PROTO_9]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 SETGLOBAL                        R7 K22 ["useMeasurableRef"]
       51 GETGLOBAL                        R7 K22 ["useMeasurableRef"]
       53 RETURN                           R7 1
