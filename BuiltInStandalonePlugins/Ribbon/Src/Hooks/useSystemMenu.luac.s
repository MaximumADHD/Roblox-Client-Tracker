PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 LOADB                            R1 0
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K0 ["GetUserId"]
       11 CALL                             R2 1 1
       12 LOADN                            R3 0
       13 JUMPIFNOTLT                      R3 R2 ; [+5]
       15 GETUPVAL                         R1 2
       16 NAMECALL                         R1 R1 K1 ["HasInternalPermission"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R0
       22 MOVE                             R5 R1
       23 CALL                             R3 2 -1
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 LOADB                            R1 0
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R2 R2 K0 ["GetUserId"]
       13 CALL                             R2 1 1
       14 LOADN                            R3 0
       15 JUMPIFNOTLT                      R3 R2 ; [+5]
       17 GETUPVAL                         R1 3
       18 NAMECALL                         R1 R1 K1 ["HasInternalPermission"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSystemMenuAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+27]
        6 GETUPVAL                         R1 2
        7 JUMPIF                           R1 ; [+25]
        8 GETUPVAL                         R1 3
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 4
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 LOADB                            R1 0
       16 GETUPVAL                         R2 5
       17 NAMECALL                         R2 R2 K1 ["GetUserId"]
       19 CALL                             R2 1 1
       20 LOADN                            R3 0
       21 JUMPIFNOTLT                      R3 R2 ; [+5]
       23 GETUPVAL                         R1 5
       24 NAMECALL                         R1 R1 K2 ["HasInternalPermission"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 6
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 CALL                             R3 2 -1
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SystemMenuController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 LOADB                            R1 1
        6 LOADB                            R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 GETTABLEKS                       R4 R0 K2 ["OnSystemMenuChanged"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 NAMECALL                         R4 R4 K3 ["Connect"]
       22 CALL                             R4 2 1
       23 GETIMPORT                        R5 K6 [task.spawn]
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          REF R1
       28 CAPTURE                          REF R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CALL                             R5 1 0
       34 NEWCLOSURE                       R5 P3
       35 CAPTURE                          REF R1
       36 CAPTURE                          VAL R4
       37 CLOSEUPVALS                      R1
       38 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R0
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["SharedFlags"]
       26 GETTABLEKS                       R4 R4 K14 ["getFFlagRibbonSystemMenuFixes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K15 ["Util"]
       35 GETTABLEKS                       R5 R5 K16 ["filterSystemMenuDefinitions"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K17 [PROTO_5]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
