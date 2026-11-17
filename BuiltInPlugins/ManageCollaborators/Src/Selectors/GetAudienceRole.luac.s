PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["UserSubjectKey"]
        5 GETTABLE                         R2 R0 R3
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+1]
        8 GETTABLE                         R3 R2 R1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["ActionKey"]
       13 GETTABLE                         R4 R3 R5
       14 JUMPIF                           R4 ; [+1]
       15 LOADNIL                          R4
       16 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["PendingPlayTesters"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R3 R2 K1 ["CurrentPlayTesters"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R2 K2 ["NewPlayTesters"]
       14 JUMPIF                           R3 ; [+5]
       15 GETTABLEKS                       R3 R2 K1 ["CurrentPlayTesters"]
       17 JUMPIF                           R3 ; [+2]
       18 NEWTABLE                         R3 0 0
       20 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R2 ; [+5]
        1 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R3 R3 K1 ["CurrentPermissions"]
        5 JUMP                             ; [+9]
        6 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        8 GETTABLEKS                       R3 R3 K2 ["NewPermissions"]
       10 JUMPIF                           R3 ; [+4]
       11 GETTABLEKS                       R3 R0 K0 ["Permissions"]
       13 GETTABLEKS                       R3 R3 K1 ["CurrentPermissions"]
       15 MOVE                             R5 R3
       16 JUMPIFNOT                        R5 ; [+4]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["UserSubjectKey"]
       20 GETTABLE                         R5 R3 R6
       21 MOVE                             R6 R5
       22 JUMPIFNOT                        R6 ; [+1]
       23 GETTABLE                         R6 R5 R1
       24 JUMPIFNOT                        R6 ; [+5]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K4 ["ActionKey"]
       28 GETTABLE                         R4 R6 R7
       29 JUMPIF                           R4 ; [+1]
       30 LOADNIL                          R4
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["EditKey"]
       34 JUMPIFNOTEQ                      R4 R5 ; [+2]
       36 RETURN                           R4 1
       37 GETUPVAL                         R6 1
       38 MOVE                             R7 R0
       39 MOVE                             R8 R2
       40 CALL                             R6 2 1
       41 GETTABLE                         R5 R6 R1
       42 JUMPIFEQKNIL                     R5 ; [+5]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["PlayTestKey"]
       47 RETURN                           R5 1
       48 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R3 R3 K1 ["CurrentPermissions"]
        4 MOVE                             R5 R3
        5 JUMPIFNOT                        R5 ; [+4]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["UserSubjectKey"]
        9 GETTABLE                         R5 R3 R6
       10 MOVE                             R6 R5
       11 JUMPIFNOT                        R6 ; [+1]
       12 GETTABLE                         R6 R5 R1
       13 JUMPIFNOT                        R6 ; [+5]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K3 ["ActionKey"]
       17 GETTABLE                         R4 R6 R7
       18 JUMPIF                           R4 ; [+1]
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["EditKey"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+3]
       25 MOVE                             R2 R4
       26 JUMP                             ; [+18]
       27 GETTABLEKS                       R7 R0 K5 ["PendingPlayTesters"]
       29 JUMPIF                           R7 ; [+2]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R6 R7 K6 ["CurrentPlayTesters"]
       34 JUMPIF                           R6 ; [+2]
       35 NEWTABLE                         R6 0 0
       37 GETTABLE                         R5 R6 R1
       38 JUMPIFEQKNIL                     R5 ; [+5]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K7 ["PlayTestKey"]
       43 JUMP                             ; [+1]
       44 MOVE                             R2 R4
       45 GETTABLEKS                       R4 R0 K0 ["Permissions"]
       47 GETTABLEKS                       R4 R4 K8 ["NewPermissions"]
       49 JUMPIF                           R4 ; [+4]
       50 GETTABLEKS                       R4 R0 K0 ["Permissions"]
       52 GETTABLEKS                       R4 R4 K1 ["CurrentPermissions"]
       54 MOVE                             R6 R4
       55 JUMPIFNOT                        R6 ; [+4]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K2 ["UserSubjectKey"]
       59 GETTABLE                         R6 R4 R7
       60 MOVE                             R7 R6
       61 JUMPIFNOT                        R7 ; [+1]
       62 GETTABLE                         R7 R6 R1
       63 JUMPIFNOT                        R7 ; [+5]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K3 ["ActionKey"]
       67 GETTABLE                         R5 R7 R8
       68 JUMPIF                           R5 ; [+1]
       69 LOADNIL                          R5
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K4 ["EditKey"]
       73 JUMPIFNOTEQ                      R5 R6 ; [+3]
       75 MOVE                             R3 R5
       76 JUMP                             ; [+21]
       77 GETTABLEKS                       R8 R0 K5 ["PendingPlayTesters"]
       79 JUMPIF                           R8 ; [+2]
       80 NEWTABLE                         R8 0 0
       82 GETTABLEKS                       R7 R8 K9 ["NewPlayTesters"]
       84 JUMPIF                           R7 ; [+5]
       85 GETTABLEKS                       R7 R8 K6 ["CurrentPlayTesters"]
       87 JUMPIF                           R7 ; [+2]
       88 NEWTABLE                         R7 0 0
       90 GETTABLE                         R6 R7 R1
       91 JUMPIFEQKNIL                     R6 ; [+5]
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K7 ["PlayTestKey"]
       96 JUMP                             ; [+1]
       97 MOVE                             R3 R5
       98 GETTABLEKS                       R5 R0 K5 ["PendingPlayTesters"]
      100 JUMPIFNOT                        R5 ; [+5]
      101 GETTABLEKS                       R4 R0 K5 ["PendingPlayTesters"]
      103 GETTABLEKS                       R4 R4 K10 ["OriginRoles"]
      105 JUMPIF                           R4 ; [+2]
      106 NEWTABLE                         R4 0 0
      108 MOVE                             R5 R2
      109 JUMPIF                           R5 ; [+1]
      110 GETTABLE                         R5 R4 R1
      111 MOVE                             R6 R3
      112 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 DUPCLOSURE                       R3 K9 [PROTO_1]
       21 DUPCLOSURE                       R4 K10 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R5 K11 [PROTO_3]
       25 CAPTURE                          VAL R1
       26 RETURN                           R5 1
