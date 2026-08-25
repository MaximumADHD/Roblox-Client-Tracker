PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETIMPORT                        R1 K3 [table.freeze]
        5 DUPTABLE                         R2 K7 [{"modifiedState", "hasNewVersion", "autoUpdate"}]
        6 GETTABLEKS                       R3 R0 K8 ["ModifiedState"]
        8 SETTABLEKS                       R3 R2 K4 ["modifiedState"]
       10 GETTABLEKS                       R3 R0 K9 ["HasNewVersion"]
       12 SETTABLEKS                       R3 R2 K5 ["hasNewVersion"]
       14 GETTABLEKS                       R3 R0 K10 ["AutoUpdate"]
       16 SETTABLEKS                       R3 R2 K6 ["autoUpdate"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+18]
        3 DUPTABLE                         R1 K6 [{["kind"] = "package", ["modifiedState"], ["hasNewVersion"], ["autoUpdate"]}]
        4 GETTABLEKS                       R2 R0 K7 ["ModifiedState"]
        6 SETTABLEKS                       R2 R1 K3 ["modifiedState"]
        8 GETTABLEKS                       R2 R0 K8 ["HasNewVersion"]
       10 SETTABLEKS                       R2 R1 K4 ["hasNewVersion"]
       12 GETTABLEKS                       R2 R0 K9 ["AutoUpdate"]
       14 SETTABLEKS                       R2 R1 K5 ["autoUpdate"]
       16 GETIMPORT                        R2 K12 [table.freeze]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 LOADNIL                          R1
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 GETIMPORT                        R2 K5 [task.defer]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R0
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["ChildAdded"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R3 R3 K1 ["Connect"]
       10 CALL                             R3 2 1
       11 LOADK                            R6 K2 ["PackageLink"]
       12 NAMECALL                         R4 R0 K3 ["FindFirstChildOfClass"]
       14 CALL                             R4 2 1
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R4 ; [+32]
       17 GETTABLEKS                       R6 R4 K4 ["Parent"]
       19 JUMPIFNOT                        R6 ; [+17]
       20 GETIMPORT                        R5 K7 [table.freeze]
       22 DUPTABLE                         R6 K11 [{"modifiedState", "hasNewVersion", "autoUpdate"}]
       23 GETTABLEKS                       R7 R4 K12 ["ModifiedState"]
       25 SETTABLEKS                       R7 R6 K8 ["modifiedState"]
       27 GETTABLEKS                       R7 R4 K13 ["HasNewVersion"]
       29 SETTABLEKS                       R7 R6 K9 ["hasNewVersion"]
       31 GETTABLEKS                       R7 R4 K14 ["AutoUpdate"]
       33 SETTABLEKS                       R7 R6 K10 ["autoUpdate"]
       35 CALL                             R5 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 GETTABLEKS                       R6 R4 K15 ["Changed"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R4
       45 NAMECALL                         R6 R6 K1 ["Connect"]
       47 CALL                             R6 2 1
       48 MOVE                             R2 R6
       49 MOVE                             R6 R5
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R2
       53 CLOSEUPVALS                      R2
       54 RETURN                           R6 2

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R1 ; [+11]
        4 LOADK                            R4 K1 ["PackageLink"]
        5 NAMECALL                         R2 R1 K2 ["FindFirstChildOfClass"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+2]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R1 K0 ["Parent"]
       13 JUMPBACK                         ; [-12]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R2 K0 ["Parent"]
        7 JUMPIFNOT                        R3 ; [+19]
        8 DUPTABLE                         R3 K6 [{["kind"] = "package", ["modifiedState"], ["hasNewVersion"], ["autoUpdate"]}]
        9 GETTABLEKS                       R4 R2 K7 ["ModifiedState"]
       11 SETTABLEKS                       R4 R3 K3 ["modifiedState"]
       13 GETTABLEKS                       R4 R2 K8 ["HasNewVersion"]
       15 SETTABLEKS                       R4 R3 K4 ["hasNewVersion"]
       17 GETTABLEKS                       R4 R2 K9 ["AutoUpdate"]
       19 SETTABLEKS                       R4 R3 K5 ["autoUpdate"]
       21 GETIMPORT                        R4 K12 [table.freeze]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 MOVE                             R1 R4
       26 JUMP                             ; [+1]
       27 LOADNIL                          R1
       28 JUMPIFNOTEQKNIL                  R1 ; [+7]
       30 GETUPVAL                         R2 2
       31 GETUPVAL                         R3 3
       32 GETUPVAL                         R4 4
       33 CALL                             R3 1 -1
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 2
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K0 ["Disconnect"]
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 SETUPVAL                         R2 1
       16 GETUPVAL                         R2 2
       17 JUMPIF                           R2 ; [+25]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETIMPORT                        R3 K3 [task.defer]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 JUMP                             ; [+12]
       31 GETTABLEKS                       R3 R0 K4 ["Changed"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NAMECALL                         R3 R3 K5 ["Connect"]
       41 CALL                             R3 2 1
       42 SETUPVAL                         R3 2
       43 GETUPVAL                         R2 7
       44 MOVE                             R3 R0
       45 CALL                             R2 1 -1
       46 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K0 ["GetOverrides"]
        9 CALL                             R0 2 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+3]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 NAMECALL                         R1 R0 K1 ["GetIdentities"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 GETUPVAL                         R8 0
       19 NAMECALL                         R6 R5 K2 ["ResolveInstance"]
       21 CALL                             R6 2 1
       22 GETUPVAL                         R7 2
       23 JUMPIFNOTEQ                      R6 R7 ; [+19]
       25 MOVE                             R8 R5
       26 NAMECALL                         R6 R0 K3 ["GetChangeType"]
       28 CALL                             R6 2 1
       29 JUMPIFEQKNIL                     R6 ; [+11]
       31 DUPTABLE                         R7 K7 [{["kind"] = "override", ["changeType"]}]
       32 GETTABLEKS                       R8 R6 K8 ["Name"]
       34 SETTABLEKS                       R8 R7 K6 ["changeType"]
       36 GETIMPORT                        R8 K11 [table.freeze]
       38 MOVE                             R9 R7
       39 CALL                             R8 1 -1
       40 RETURN                           R8 -1
       41 LOADNIL                          R7
       42 RETURN                           R7 1
       43 FORGLOOP                         R1 2 ; [-26]
       45 LOADNIL                          R1
       46 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+4]
        3 GETUPVAL                         R4 0
        4 JUMPIFEQ                         R0 R4 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R6 0
        8 NAMECALL                         R4 R1 K0 ["ResolveInstance"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 JUMPIFNOTEQ                      R4 R5 ; [+18]
       14 JUMPIFEQKNIL                     R2 ; [+13]
       16 DUPTABLE                         R4 K4 [{["kind"] = "override", ["changeType"]}]
       17 GETTABLEKS                       R5 R2 K5 ["Name"]
       19 SETTABLEKS                       R5 R4 K3 ["changeType"]
       21 GETUPVAL                         R5 2
       22 GETIMPORT                        R6 K8 [table.freeze]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 -1
       26 CALL                             R5 -1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 2
       29 LOADNIL                          R5
       30 CALL                             R4 1 0
       31 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+7]
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTEQ                      R0 R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OverrideStateChanged"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 5
       14 JUMPIF                           R0 ; [+10]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K2 ["OverridesCleared"]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R0 R0 K1 ["Connect"]
       23 CALL                             R0 2 1
       24 SETUPVAL                         R0 5
       25 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PackageLink"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChildOfClass"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 1
       13 JUMPIFEQKNIL                     R0 ; [+3]
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R1 5
       19 CALL                             R1 0 -1
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 GETUPVAL                         R3 6
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 SETUPVAL                         R3 1
       23 GETUPVAL                         R3 1
       24 JUMPIFEQKNIL                     R3 ; [+3]
       26 MOVE                             R3 R2
       27 CALL                             R3 0 0
       28 GETUPVAL                         R3 7
       29 JUMPIF                           R3 ; [+13]
       30 GETTABLEKS                       R3 R0 K1 ["AncestryChanged"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R3 R3 K2 ["Connect"]
       41 CALL                             R3 2 1
       42 SETUPVAL                         R3 7
       43 MOVE                             R3 R1
       44 CALL                             R3 0 -1
       45 RETURN                           R3 -1

PROTO_18:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 LOADB                            R4 1
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 3
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 3
       19 NAMECALL                         R0 R0 K0 ["Disconnect"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+4]
       24 GETUPVAL                         R0 4
       25 NAMECALL                         R0 R0 K0 ["Disconnect"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R4
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R8
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          REF R2
       18 CAPTURE                          REF R6
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          REF R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R4
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          REF R5
       25 GETTABLEKS                       R9 R0 K0 ["ChildAdded"]
       27 NEWCLOSURE                       R11 P2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          REF R7
       30 NAMECALL                         R9 R9 K1 ["Connect"]
       32 CALL                             R9 2 1
       33 LOADK                            R12 K2 ["PackageLink"]
       34 NAMECALL                         R10 R0 K3 ["FindFirstChildOfClass"]
       36 CALL                             R10 2 1
       37 JUMPIFNOT                        R10 ; [+4]
       38 MOVE                             R11 R7
       39 MOVE                             R12 R10
       40 CALL                             R11 1 1
       41 JUMP                             ; [+3]
       42 MOVE                             R11 R8
       43 MOVE                             R12 R0
       44 CALL                             R11 1 1
       45 MOVE                             R12 R11
       46 NEWCLOSURE                       R13 P3
       47 CAPTURE                          VAL R9
       48 CAPTURE                          REF R2
       49 CAPTURE                          REF R3
       50 CAPTURE                          REF R4
       51 CAPTURE                          REF R5
       52 CLOSEUPVALS                      R2
       53 RETURN                           R12 2

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R3 K0 [""]
        3 RETURN                           R3 1
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETTABLEKS                       R4 R2 K1 ["kind"]
        9 JUMPIFEQKS                       R4 K2 ["Selected"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R4 R0 K1 ["kind"]
       15 JUMPIFNOTEQKS                    R4 K3 ["override"] ; [+31]
       17 GETTABLEKS                       R4 R0 K4 ["changeType"]
       19 JUMPIFEQKS                       R4 K5 ["Add"] ; [+5]
       21 GETTABLEKS                       R4 R0 K4 ["changeType"]
       23 JUMPIFNOTEQKS                    R4 K6 ["AddPackage"] ; [+9]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K7 ["diff"]
       28 LOADK                            R5 K5 ["Add"]
       29 MOVE                             R6 R1
       30 MOVE                             R7 R3
       31 CALL                             R4 3 -1
       32 RETURN                           R4 -1
       33 GETTABLEKS                       R4 R0 K4 ["changeType"]
       35 JUMPIFNOTEQKS                    R4 K8 ["Modify"] ; [+9]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K7 ["diff"]
       40 LOADK                            R5 K8 ["Modify"]
       41 MOVE                             R6 R1
       42 MOVE                             R7 R3
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1
       45 LOADK                            R4 K0 [""]
       46 RETURN                           R4 1
       47 GETTABLEKS                       R4 R0 K9 ["modifiedState"]
       49 JUMPIFNOTEQKN                    R4 K10 [0] ; [+3]
       51 LOADK                            R4 K0 [""]
       52 RETURN                           R4 1
       53 GETTABLEKS                       R4 R0 K11 ["hasNewVersion"]
       55 JUMPIFNOT                        R4 ; [+34]
       56 GETTABLEKS                       R4 R0 K9 ["modifiedState"]
       58 JUMPIFNOTEQKN                    R4 K12 [1] ; [+20]
       60 GETUPVAL                         R4 1
       61 JUMPIFNOT                        R4 ; [+10]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
       65 JUMPIFNOT                        R3 ; [+2]
       66 LOADK                            R5 K14 ["UpdateAvailable_Overrides_Highlighted"]
       67 JUMP                             ; [+1]
       68 LOADK                            R5 K15 ["UpdateAvailable_Overrides"]
       69 MOVE                             R6 R1
       70 CALL                             R4 2 -1
       71 RETURN                           R4 -1
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
       75 LOADK                            R5 K16 ["UpdateAvailable_Modified"]
       76 MOVE                             R6 R1
       77 CALL                             R4 2 -1
       78 RETURN                           R4 -1
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
       82 GETUPVAL                         R6 1
       83 JUMPIFNOT                        R6 ; [+2]
       84 LOADK                            R5 K17 ["UpdateAvailable"]
       85 JUMP                             ; [+1]
       86 LOADK                            R5 K18 ["UpdateAvailable_Old"]
       87 MOVE                             R6 R1
       88 CALL                             R4 2 -1
       89 RETURN                           R4 -1
       90 GETTABLEKS                       R4 R0 K9 ["modifiedState"]
       92 JUMPIFNOTEQKN                    R4 K12 [1] ; [+42]
       94 GETTABLEKS                       R4 R0 K19 ["autoUpdate"]
       96 JUMPIFNOT                        R4 ; [+19]
       97 GETUPVAL                         R4 1
       98 JUMPIFNOT                        R4 ; [+10]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      102 JUMPIFNOT                        R3 ; [+2]
      103 LOADK                            R5 K20 ["AutoUpdateOn_Overrides_Highlighted"]
      104 JUMP                             ; [+1]
      105 LOADK                            R5 K21 ["AutoUpdateOn_Overrides"]
      106 MOVE                             R6 R1
      107 CALL                             R4 2 -1
      108 RETURN                           R4 -1
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      112 LOADK                            R5 K22 ["Modified_AutoUpdateOn"]
      113 MOVE                             R6 R1
      114 CALL                             R4 2 -1
      115 RETURN                           R4 -1
      116 GETUPVAL                         R4 1
      117 JUMPIFNOT                        R4 ; [+10]
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      121 JUMPIFNOT                        R3 ; [+2]
      122 LOADK                            R5 K23 ["AutoUpdateOff_Overrides_Highlighted"]
      123 JUMP                             ; [+1]
      124 LOADK                            R5 K24 ["AutoUpdateOff_Overrides"]
      125 MOVE                             R6 R1
      126 CALL                             R4 2 -1
      127 RETURN                           R4 -1
      128 GETUPVAL                         R4 0
      129 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      131 LOADK                            R5 K25 ["Modified_AutoUpdateOff"]
      132 MOVE                             R6 R1
      133 CALL                             R4 2 -1
      134 RETURN                           R4 -1
      135 GETTABLEKS                       R4 R0 K19 ["autoUpdate"]
      137 JUMPIFNOT                        R4 ; [+11]
      138 GETUPVAL                         R4 0
      139 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      141 GETUPVAL                         R6 1
      142 JUMPIFNOT                        R6 ; [+2]
      143 LOADK                            R5 K26 ["AutoUpdateOn"]
      144 JUMP                             ; [+1]
      145 LOADK                            R5 K27 ["AutoUpdateOn_Old"]
      146 MOVE                             R6 R1
      147 CALL                             R4 2 -1
      148 RETURN                           R4 -1
      149 GETUPVAL                         R4 0
      150 GETTABLEKS                       R4 R4 K13 ["packageStatus"]
      152 GETUPVAL                         R6 1
      153 JUMPIFNOT                        R6 ; [+2]
      154 LOADK                            R5 K28 ["AutoUpdateOff"]
      155 JUMP                             ; [+1]
      156 LOADK                            R5 K29 ["AutoUpdateOff_Old"]
      157 MOVE                             R6 R1
      158 CALL                             R4 2 -1
      159 RETURN                           R4 -1

PROTO_22:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["kind"]
        6 JUMPIFNOTEQKS                    R2 K1 ["override"] ; [+27]
        8 GETTABLEKS                       R2 R1 K2 ["changeType"]
       10 JUMPIFEQKS                       R2 K3 ["Add"] ; [+5]
       12 GETTABLEKS                       R2 R1 K2 ["changeType"]
       14 JUMPIFNOTEQKS                    R2 K4 ["AddPackage"] ; [+7]
       16 LOADK                            R4 K5 ["RobloxExplorerWidget"]
       17 LOADK                            R5 K6 ["OverrideAdded"]
       18 NAMECALL                         R2 R0 K7 ["getText"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1
       22 GETTABLEKS                       R2 R1 K2 ["changeType"]
       24 JUMPIFNOTEQKS                    R2 K8 ["Modify"] ; [+7]
       26 LOADK                            R4 K5 ["RobloxExplorerWidget"]
       27 LOADK                            R5 K9 ["OverrideModified"]
       28 NAMECALL                         R2 R0 K7 ["getText"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 GETTABLEKS                       R2 R1 K10 ["modifiedState"]
       36 JUMPIFNOTEQKN                    R2 K11 [0] ; [+3]
       38 LOADNIL                          R2
       39 RETURN                           R2 1
       40 GETTABLEKS                       R2 R1 K10 ["modifiedState"]
       42 JUMPIFNOTEQKN                    R2 K12 [1] ; [+27]
       44 GETTABLEKS                       R2 R1 K13 ["autoUpdate"]
       46 JUMPIFNOT                        R2 ; [+6]
       47 LOADK                            R4 K14 ["PackageStatus"]
       48 LOADK                            R5 K15 ["AutoUpdateDisabled"]
       49 NAMECALL                         R2 R0 K7 ["getText"]
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1
       53 GETUPVAL                         R2 0
       54 JUMPIFNOT                        R2 ; [+9]
       55 GETTABLEKS                       R2 R1 K16 ["hasNewVersion"]
       57 JUMPIFNOT                        R2 ; [+6]
       58 LOADK                            R4 K14 ["PackageStatus"]
       59 LOADK                            R5 K17 ["UnpublishedChangesUpdateAvailable"]
       60 NAMECALL                         R2 R0 K7 ["getText"]
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1
       64 LOADK                            R4 K14 ["PackageStatus"]
       65 LOADK                            R5 K18 ["UnpublishedChanges"]
       66 NAMECALL                         R2 R0 K7 ["getText"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1
       70 GETTABLEKS                       R2 R1 K16 ["hasNewVersion"]
       72 JUMPIFNOT                        R2 ; [+6]
       73 LOADK                            R4 K14 ["PackageStatus"]
       74 LOADK                            R5 K19 ["UpdateAvailable"]
       75 NAMECALL                         R2 R0 K7 ["getText"]
       77 CALL                             R2 3 -1
       78 RETURN                           R2 -1
       79 GETTABLEKS                       R2 R1 K13 ["autoUpdate"]
       81 JUMPIFNOT                        R2 ; [+6]
       82 LOADK                            R4 K14 ["PackageStatus"]
       83 LOADK                            R5 K20 ["AutoUpdateOn"]
       84 NAMECALL                         R2 R0 K7 ["getText"]
       86 CALL                             R2 3 -1
       87 RETURN                           R2 -1
       88 LOADK                            R4 K14 ["PackageStatus"]
       89 LOADK                            R5 K21 ["AutoUpdateOff"]
       90 NAMECALL                         R2 R0 K7 ["getText"]
       92 CALL                             R2 3 -1
       93 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R5 R5 K0 ["valueBinding"]
        5 NAMECALL                         R5 R5 K1 ["getValue"]
        7 CALL                             R5 1 -1
        8 CALL                             R3 -1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K2 ["mouseEnter"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLEKS                       R4 R0 K2 ["selectionState"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 3
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       30 GETTABLEKS                       R9 R3 K7 ["mouseEnter"]
       32 SETLIST                          R6 R7 3 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K8 ["createElement"]
       38 LOADK                            R6 K9 ["ImageLabel"]
       39 NEWTABLE                         R7 8 0
       41 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       43 LOADN                            R9 16
       44 LOADN                            R10 16
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K13 ["Size"]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K15 ["Event"]
       54 GETTABLEKS                       R8 R8 K16 ["MouseEnter"]
       56 SETTABLE                         R4 R7 R8
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K15 ["Event"]
       60 GETTABLEKS                       R8 R8 K17 ["MouseLeave"]
       62 GETTABLEKS                       R9 R3 K18 ["mouseLeave"]
       64 SETTABLE                         R9 R7 R8
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K19 ["Tag"]
       68 LOADK                            R9 K20 ["data-testid=PackageStatus"]
       69 SETTABLE                         R9 R7 R8
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K21 ["joinBindings"]
       73 DUPTABLE                         R9 K24 [{"value", "selectionState"}]
       74 GETTABLEKS                       R10 R0 K6 ["valueBinding"]
       76 SETTABLEKS                       R10 R9 K22 ["value"]
       78 GETTABLEKS                       R10 R0 K25 ["selectionStateBinding"]
       80 SETTABLEKS                       R10 R9 K23 ["selectionState"]
       82 CALL                             R8 1 1
       83 NEWCLOSURE                       R10 P1
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R2
       86 NAMECALL                         R8 R8 K26 ["map"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K27 ["Image"]
       91 CALL                             R5 2 -1
       92 RETURN                           R5 -1

PROTO_26:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"valueBinding", "fireAction", "selectionStateBinding"}]
        5 SETTABLEKS                       R0 R5 K1 ["valueBinding"]
        7 SETTABLEKS                       R1 R5 K2 ["fireAction"]
        9 SETTABLEKS                       R2 R5 K3 ["selectionStateBinding"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["PackageService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Fields"]
       17 GETTABLEKS                       R3 R3 K11 ["FieldTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["ImageUrl"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K16 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Components"]
       45 GETTABLEKS                       R7 R7 K18 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K19 ["ThemeContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K20 ["Flags"]
       54 GETTABLEKS                       R8 R8 K21 ["getEngineFeatureExplorerPackageOverrideTracking"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K20 ["Flags"]
       61 GETTABLEKS                       R9 R9 K22 ["getFFlagExplorerOverrideDots"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K23 ["Hooks"]
       68 GETTABLEKS                       R10 R10 K24 ["useTooltipActions"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [game]
       73 LOADK                            R12 K25 ["ExplorerPackageIconOverrides"]
       74 LOADB                            R13 0
       75 NAMECALL                         R10 R10 K26 ["DefineFastFlag"]
       77 CALL                             R10 3 1
       78 DUPCLOSURE                       R11 K27 [PROTO_0]
       79 DUPCLOSURE                       R12 K28 [PROTO_1]
       80 DUPTABLE                         R13 K33 [{["ModifiedState"] = True, ["HasNewVersion"] = True, ["AutoUpdate"] = True, ["Parent"] = True}]
       81 DUPCLOSURE                       R14 K34 [PROTO_7]
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R15 K35 [PROTO_8]
       85 DUPCLOSURE                       R16 K36 [PROTO_20]
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R15
       90 DUPCLOSURE                       R17 K37 [PROTO_21]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 DUPCLOSURE                       R18 K38 [PROTO_22]
       94 CAPTURE                          VAL R10
       95 DUPCLOSURE                       R19 K39 [PROTO_25]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R18
      101 CAPTURE                          VAL R17
      102 DUPTABLE                         R20 K48 [{["key"] = "packageStatus", ["icon"] = "", ["watch"], ["validateArgs"], ["render"], ["permanent"] = True}]
      103 MOVE                             R22 R8
      104 CALL                             R22 0 1
      105 JUMPIFNOT                        R22 ; [+5]
      106 MOVE                             R22 R7
      107 CALL                             R22 0 1
      108 JUMPIFNOT                        R22 ; [+2]
      109 MOVE                             R21 R16
      110 JUMP                             ; [+1]
      111 MOVE                             R21 R14
      112 SETTABLEKS                       R21 R20 K44 ["watch"]
      114 DUPCLOSURE                       R21 K49 [PROTO_26]
      115 SETTABLEKS                       R21 R20 K45 ["validateArgs"]
      117 DUPCLOSURE                       R21 K50 [PROTO_27]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R19
      120 SETTABLEKS                       R21 R20 K46 ["render"]
      122 RETURN                           R20 1
