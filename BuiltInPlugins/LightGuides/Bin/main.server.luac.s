PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K3 ["new"]
       10 CALL                             R0 0 1
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K4 ["renderSelection"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K3 ["Studio"]
        5 GETTABLEKS                       R0 R1 K0 ["Show Light Guides"]
        7 JUMPIFNOT                        R0 ; [+17]
        8 GETIMPORT                        R0 K5 [plugin]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K6 ["Name"]
       13 SETTABLEKS                       R1 R0 K6 ["Name"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K7 ["new"]
       18 CALL                             R0 0 1
       19 SETUPVAL                         R0 1
       20 GETUPVAL                         R0 1
       21 NAMECALL                         R0 R0 K8 ["renderSelection"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 1
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETUPVAL                         R0 1
       28 NAMECALL                         R0 R0 K9 ["destroy"]
       30 CALL                             R0 1 0
       31 LOADNIL                          R0
       32 SETUPVAL                         R0 1
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K0 ["destroy"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K1 ["Disconnect"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K3 ["Studio"]
        5 GETTABLEKS                       R0 R1 K0 ["Show Light Guides"]
        7 JUMPIFNOT                        R0 ; [+17]
        8 GETIMPORT                        R0 K5 [plugin]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K6 ["Name"]
       13 SETTABLEKS                       R1 R0 K6 ["Name"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K7 ["new"]
       18 CALL                             R0 0 1
       19 SETUPVAL                         R0 1
       20 GETUPVAL                         R0 1
       21 NAMECALL                         R0 R0 K8 ["renderSelection"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 1
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETUPVAL                         R0 1
       28 NAMECALL                         R0 R0 K9 ["destroy"]
       30 CALL                             R0 1 0
       31 LOADNIL                          R0
       32 SETUPVAL                         R0 1
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R1 R2 K4 ["Parent"]
        9 GETTABLEKS                       R0 R1 K4 ["Parent"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Src"]
       15 GETTABLEKS                       R2 R3 K8 ["MainPlugin"]
       17 CALL                             R1 1 1
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          REF R2
       23 CAPTURE                          VAL R1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          REF R2
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R1
       30 GETIMPORT                        R8 K1 [plugin]
       32 GETTABLEKS                       R7 R8 K9 ["Unloading"]
       34 NEWCLOSURE                       R9 P3
       35 CAPTURE                          REF R2
       36 CAPTURE                          REF R3
       37 NAMECALL                         R7 R7 K10 ["Connect"]
       39 CALL                             R7 2 0
       40 GETIMPORT                        R8 K12 [settings]
       42 CALL                             R8 0 1
       43 GETTABLEKS                       R7 R8 K13 ["Studio"]
       45 LOADK                            R9 K14 ["Show Light Guides"]
       46 NAMECALL                         R7 R7 K15 ["GetPropertyChangedSignal"]
       48 CALL                             R7 2 1
       49 NEWCLOSURE                       R9 P4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          REF R2
       52 CAPTURE                          VAL R1
       53 NAMECALL                         R7 R7 K10 ["Connect"]
       55 CALL                             R7 2 1
       56 MOVE                             R3 R7
       57 GETIMPORT                        R9 K12 [settings]
       59 CALL                             R9 0 1
       60 GETTABLEKS                       R8 R9 K13 ["Studio"]
       62 GETTABLEKS                       R7 R8 K14 ["Show Light Guides"]
       64 JUMPIFNOT                        R7 ; [+14]
       65 GETIMPORT                        R7 K1 [plugin]
       67 GETTABLEKS                       R8 R0 K16 ["Name"]
       69 SETTABLEKS                       R8 R7 K16 ["Name"]
       71 GETTABLEKS                       R7 R1 K17 ["new"]
       73 CALL                             R7 0 1
       74 MOVE                             R2 R7
       75 NAMECALL                         R7 R2 K18 ["renderSelection"]
       77 CALL                             R7 1 0
       78 JUMP                             ; [+5]
       79 JUMPIFNOT                        R2 ; [+4]
       80 NAMECALL                         R7 R2 K19 ["destroy"]
       82 CALL                             R7 1 0
       83 LOADNIL                          R2
       84 CLOSEUPVALS                      R2
       85 RETURN                           R0 0
