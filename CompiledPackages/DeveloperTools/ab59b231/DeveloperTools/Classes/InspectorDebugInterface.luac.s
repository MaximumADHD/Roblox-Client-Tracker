PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getStudioService"]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["new"]
       11 GETIMPORT                        R3 K3 [game]
       13 LOADK                            R5 K4 ["CoreGui"]
       14 NAMECALL                         R3 R3 K5 ["GetService"]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["new"]
       21 GETIMPORT                        R4 K3 [game]
       23 LOADK                            R6 K6 ["ReplicatedStorage"]
       24 NAMECALL                         R4 R4 K5 ["GetService"]
       26 CALL                             R4 2 1
       27 LOADB                            R5 1
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K0 ["new"]
       32 LOADK                            R5 K7 ["Inspector"]
       33 LOADK                            R6 K7 ["Inspector"]
       34 NEWTABLE                         R7 0 3
       36 MOVE                             R8 R1
       37 MOVE                             R9 R2
       38 MOVE                             R10 R3
       39 SETLIST                          R7 R8 3 [1]
       41 CALL                             R4 3 1
       42 SETTABLEKS                       R0 R4 K8 ["handlers"]
       44 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_connectInspector"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["targetApi"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["targetApi"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["targetApi"]
        5 NAMECALL                         R1 R1 K1 ["close"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlers"]
        3 GETTABLEKS                       R1 R1 K1 ["onAddTargets"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K2 [{"eventName", "onEvent"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["ShowTargets"]
        4 SETTABLEKS                       R4 R3 K0 ["eventName"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["onEvent"]
       10 NAMECALL                         R1 R0 K4 ["_connect"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K1 [{"eventName"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["GetTargets"]
        4 SETTABLEKS                       R4 R3 K0 ["eventName"]
        6 NAMECALL                         R1 R0 K3 ["_send"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 GETTABLEKS                       R6 R0 K1 ["handlers"]
        9 GETTABLEKS                       R6 R6 K2 ["RoactInspector"]
       11 NAMECALL                         R4 R3 K3 ["attach"]
       13 CALL                             R4 2 0
       14 SETTABLEKS                       R3 R0 K4 ["targetApi"]
       16 GETTABLEKS                       R4 R0 K4 ["targetApi"]
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Classes"]
       11 GETTABLEKS                       R2 R2 K6 ["BindableEventBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Classes"]
       18 GETTABLEKS                       R3 R3 K7 ["DebugInterface"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["RoactInspector"]
       25 GETTABLEKS                       R4 R4 K5 ["Classes"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactInspectorApi"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Services"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["EventName"]
       39 CALL                             R5 1 1
       40 LOADK                            R8 K12 ["InspectorDebugInterface"]
       41 DUPCLOSURE                       R9 K13 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 NAMECALL                         R6 R2 K14 ["extend"]
       47 CALL                             R6 3 1
       48 DUPCLOSURE                       R7 K15 [PROTO_1]
       49 SETTABLEKS                       R7 R6 K16 ["_init"]
       51 DUPCLOSURE                       R7 K17 [PROTO_2]
       52 SETTABLEKS                       R7 R6 K18 ["getTargetApi"]
       54 DUPCLOSURE                       R7 K19 [PROTO_3]
       55 SETTABLEKS                       R7 R6 K20 ["closeTargetApi"]
       57 DUPCLOSURE                       R7 K21 [PROTO_5]
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R7 R6 K22 ["_connectInspector"]
       61 DUPCLOSURE                       R7 K23 [PROTO_6]
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R7 R6 K24 ["getTargets"]
       65 DUPCLOSURE                       R7 K25 [PROTO_7]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R7 R6 K26 ["attachRoactTree"]
       69 RETURN                           R6 1
