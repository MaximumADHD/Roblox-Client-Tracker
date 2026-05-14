PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+29]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["keys"]
        9 GETTABLEKS                       R3 R0 K5 ["KeyCode"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOTEQKB                    R1 FALSE ; [+40]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["keys"]
       17 GETTABLEKS                       R2 R0 K5 ["KeyCode"]
       19 LOADB                            R3 1
       20 SETTABLE                         R3 R1 R2
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["tutorial"]
       24 GETTABLEKS                       R1 R1 K7 ["onKeyPressed"]
       26 GETTABLEKS                       R2 R0 K5 ["KeyCode"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 0
       30 NAMECALL                         R1 R1 K8 ["update"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K9 ["inputs"]
       37 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       39 GETTABLE                         R1 R2 R3
       40 JUMPIFNOTEQKB                    R1 FALSE ; [+12]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K9 ["inputs"]
       45 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       47 LOADB                            R3 1
       48 SETTABLE                         R3 R1 R2
       49 GETUPVAL                         R1 0
       50 NAMECALL                         R1 R1 K8 ["update"]
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+21]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["keys"]
        9 GETTABLEKS                       R3 R0 K5 ["KeyCode"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOTEQKB                    R1 FALSE ; [+32]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["keys"]
       17 GETTABLEKS                       R2 R0 K5 ["KeyCode"]
       19 LOADB                            R3 1
       20 SETTABLE                         R3 R1 R2
       21 GETUPVAL                         R1 0
       22 NAMECALL                         R1 R1 K6 ["update"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K7 ["inputs"]
       29 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       31 GETTABLE                         R1 R2 R3
       32 JUMPIFNOTEQKB                    R1 FALSE ; [+12]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K7 ["inputs"]
       37 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       39 LOADB                            R3 1
       40 SETTABLE                         R3 R1 R2
       41 GETUPVAL                         R1 0
       42 NAMECALL                         R1 R1 K6 ["update"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R1 K1 ["dataModel"]
        4 LOADK                            R4 K2 ["UserInputService"]
        5 NAMECALL                         R2 R1 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R0 K4 ["keys"]
       12 GETTABLEKS                       R3 R0 K5 ["data"]
       14 GETTABLEKS                       R3 R3 K4 ["keys"]
       16 JUMPIFNOT                        R3 ; [+17]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R0 K6 ["hasKeys"]
       20 GETIMPORT                        R3 K8 [ipairs]
       22 GETTABLEKS                       R4 R0 K5 ["data"]
       24 GETTABLEKS                       R4 R4 K4 ["keys"]
       26 CALL                             R3 1 3
       27 FORGPREP_INEXT                   R3
       28 GETTABLEKS                       R8 R0 K4 ["keys"]
       30 LOADB                            R9 0
       31 SETTABLE                         R9 R8 R7
       32 FORGLOOP                         R3 2 [inext] ; [-5]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R0 K9 ["inputs"]
       38 GETTABLEKS                       R3 R0 K5 ["data"]
       40 GETTABLEKS                       R3 R3 K9 ["inputs"]
       42 JUMPIFNOT                        R3 ; [+17]
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R0 K10 ["hasInputs"]
       46 GETIMPORT                        R3 K8 [ipairs]
       48 GETTABLEKS                       R4 R0 K5 ["data"]
       50 GETTABLEKS                       R4 R4 K9 ["inputs"]
       52 CALL                             R3 1 3
       53 FORGPREP_INEXT                   R3
       54 GETTABLEKS                       R8 R0 K9 ["inputs"]
       56 LOADB                            R9 0
       57 SETTABLE                         R9 R8 R7
       58 FORGLOOP                         R3 2 [inext] ; [-5]
       60 GETTABLEKS                       R3 R2 K11 ["InputBegan"]
       62 NEWCLOSURE                       R5 P0
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R3 R3 K12 ["Connect"]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R0 K13 ["inputBeganConnection"]
       69 GETTABLEKS                       R3 R2 K14 ["InputChanged"]
       71 NEWCLOSURE                       R5 P1
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R3 R3 K12 ["Connect"]
       75 CALL                             R3 2 1
       76 SETTABLEKS                       R3 R0 K15 ["inputChangedConnection"]
       78 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKB                       R0 FALSE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKB                       R0 FALSE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["hasKeys"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["keys"]
        6 DUPCLOSURE                       R3 K2 [PROTO_3]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+3]
        9 NAMECALL                         R1 R0 K3 ["complete"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K4 ["hasInputs"]
       14 JUMPIFNOT                        R1 ; [+9]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R2 R0 K5 ["inputs"]
       18 DUPCLOSURE                       R3 K6 [PROTO_4]
       19 CALL                             R1 2 1
       20 JUMPIF                           R1 ; [+3]
       21 NAMECALL                         R1 R0 K3 ["complete"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["inputBeganConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["inputChangedConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETIMPORT                        R2 K1 [script]
       15 GETTABLEKS                       R2 R2 K2 ["Parent"]
       17 GETTABLEKS                       R2 R2 K5 ["TutorialStep"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["Dash"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K8 ["some"]
       29 GETTABLEKS                       R4 R1 K9 ["extend"]
       31 LOADK                            R5 K10 ["Input"]
       32 CALL                             R4 1 1
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R4 K11 ["showComplete"]
       36 DUPCLOSURE                       R5 K12 [PROTO_2]
       37 SETTABLEKS                       R5 R4 K13 ["bind"]
       39 DUPCLOSURE                       R5 K14 [PROTO_5]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K15 ["update"]
       43 DUPCLOSURE                       R5 K16 [PROTO_6]
       44 SETTABLEKS                       R5 R4 K17 ["unbind"]
       46 RETURN                           R4 1
