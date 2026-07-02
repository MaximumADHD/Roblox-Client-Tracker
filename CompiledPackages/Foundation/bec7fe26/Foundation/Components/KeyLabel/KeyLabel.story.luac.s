PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["BEGIN HOLD "]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["END HOLD: "]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R4 K3 ["TRUE"]
        5 JUMP                             ; [+1]
        6 LOADK                            R4 K4 ["FALSE"]
        7 CONCAT                           R2 R3 R4
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"keyCode", "holdBehavior", "Size"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["keyCode"]
        5 GETTABLEKS                       R4 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["holdBehavior"]
        9 JUMPIFNOT                        R4 ; [+20]
       10 DUPTABLE                         R3 K9 [{"holdTime", "resetTime", "onBeginHold", "onEndHold"}]
       11 GETTABLEKS                       R4 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R4 K5 ["holdTime"]
       15 SETTABLEKS                       R4 R3 K5 ["holdTime"]
       17 GETTABLEKS                       R4 R0 K4 ["controls"]
       19 GETTABLEKS                       R4 R4 K6 ["resetTime"]
       21 SETTABLEKS                       R4 R3 K6 ["resetTime"]
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 SETTABLEKS                       R4 R3 K7 ["onBeginHold"]
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 SETTABLEKS                       R4 R3 K8 ["onEndHold"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K1 ["holdBehavior"]
       33 GETIMPORT                        R3 K14 [UDim2.fromOffset]
       35 LOADN                            R4 35
       36 LOADN                            R5 35
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K2 ["Size"]
       40 CALL                             R1 1 -1
       41 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["KeyLabel"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R5 0 0
       26 GETIMPORT                        R6 K13 [Enum.KeyCode]
       28 NAMECALL                         R6 R6 K14 ["GetEnumItems"]
       30 CALL                             R6 1 3
       31 FORGPREP                         R6
       32 DUPTABLE                         R11 K17 [{"name", "story"}]
       33 FASTCALL1                        TOSTRING R10 ; [+3]
       34 MOVE                             R13 R10
       35 GETIMPORT                        R12 K19 [tostring]
       37 CALL                             R12 1 1
       38 SETTABLEKS                       R12 R11 K15 ["name"]
       40 NEWCLOSURE                       R12 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R10
       43 SETTABLEKS                       R12 R11 K16 ["story"]
       45 FASTCALL1                        TOSTRING R10 ; [+3]
       46 MOVE                             R13 R10
       47 GETIMPORT                        R12 K19 [tostring]
       49 CALL                             R12 1 1
       50 SETTABLE                         R11 R5 R12
       51 FORGLOOP                         R6 2 ; [-20]
       53 DUPTABLE                         R6 K23 [{["summary"] = "KeyLabel", ["stories"], ["controls"]}]
       54 SETTABLEKS                       R5 R6 K21 ["stories"]
       56 DUPTABLE                         R7 K30 [{["holdTime"] = 1, ["resetTime"] = 0.5, ["holdBehavior"] = True}]
       57 SETTABLEKS                       R7 R6 K22 ["controls"]
       59 RETURN                           R6 1
