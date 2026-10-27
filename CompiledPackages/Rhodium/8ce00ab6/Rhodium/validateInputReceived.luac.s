PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 LOADK                            R6 K0 ["GuiButton"]
        4 NAMECALL                         R4 R0 K1 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+13]
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K2 ["Activated"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          REF R3
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R4 K6 [table.insert]
       19 CALL                             R4 -1 0
       20 JUMP                             ; [+49]
       21 LOADK                            R6 K7 ["TextBox"]
       22 NAMECALL                         R4 R0 K1 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIFNOT                        R4 ; [+17]
       26 NAMECALL                         R4 R0 K8 ["IsFocused"]
       28 CALL                             R4 1 1
       29 JUMPIF                           R4 ; [+13]
       30 MOVE                             R5 R2
       31 GETTABLEKS                       R6 R0 K9 ["Focused"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          REF R3
       35 NAMECALL                         R6 R6 K3 ["Connect"]
       37 CALL                             R6 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R4 K6 [table.insert]
       41 CALL                             R4 -1 0
       42 JUMP                             ; [+27]
       43 LOADB                            R4 0
       44 MOVE                             R6 R2
       45 GETTABLEKS                       R7 R0 K10 ["InputBegan"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          REF R4
       49 NAMECALL                         R7 R7 K3 ["Connect"]
       51 CALL                             R7 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R5 K6 [table.insert]
       55 CALL                             R5 -1 0
       56 MOVE                             R6 R2
       57 GETTABLEKS                       R7 R0 K11 ["InputEnded"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          REF R4
       61 CAPTURE                          REF R3
       62 NAMECALL                         R7 R7 K3 ["Connect"]
       64 CALL                             R7 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R5 K6 [table.insert]
       68 CALL                             R5 -1 0
       69 CLOSEUPVALS                      R4
       70 MOVE                             R4 R1
       71 CALL                             R4 0 0
       72 MOVE                             R4 R2
       73 LOADNIL                          R5
       74 LOADNIL                          R6
       75 FORGPREP                         R4
       76 NAMECALL                         R9 R8 K12 ["Disconnect"]
       78 CALL                             R9 1 0
       79 FORGLOOP                         R4 2 ; [-4]
       81 CLOSEUPVALS                      R3
       82 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
