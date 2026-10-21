PROTO_0:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 JUMPIFEQKNIL                     R2 ; [+11]
        4 LOADK                            R5 K0 ["PackageLink"]
        5 NAMECALL                         R3 R2 K1 ["FindFirstChildOfClass"]
        7 CALL                             R3 2 1
        8 JUMPIFEQKNIL                     R3 ; [+2]
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 JUMPBACK                         ; [-12]
       14 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R7 R5
        6 JUMPIF                           R6 ; [+2]
        7 LOADB                            R6 1
        8 RETURN                           R6 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 LOADB                            R1 0
       12 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R5
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 MOVE                             R6 R5
       20 CALL                             R6 0 0
       21 FORGLOOP                         R1 2 ; [-3]
       23 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K4 [task.defer]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+11]
        5 GETIMPORT                        R2 K1 [game]
        7 GETTABLEKS                       R2 R2 K2 ["DescendantAdded"]
        9 DUPCLOSURE                       R4 K3 [PROTO_3]
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R2 R2 K4 ["Connect"]
       13 CALL                             R2 2 1
       14 SETUPVAL                         R2 1
       15 GETUPVAL                         R2 3
       16 JUMPIFNOTEQKNIL                  R2 ; [+11]
       18 GETIMPORT                        R2 K1 [game]
       20 GETTABLEKS                       R2 R2 K5 ["DescendantRemoving"]
       22 DUPCLOSURE                       R4 K6 [PROTO_4]
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R2 R2 K4 ["Connect"]
       26 CALL                             R2 2 1
       27 SETUPVAL                         R2 3
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETIMPORT                        R1 K1 [next]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 1
        7 JUMPIFEQKNIL                     R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K2 ["Disconnect"]
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETUPVAL                         R1 1
       19 GETUPVAL                         R1 2
       20 JUMPIFEQKNIL                     R1 ; [+7]
       22 GETUPVAL                         R1 2
       23 NAMECALL                         R1 R1 K2 ["Disconnect"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETUPVAL                         R1 2
       28 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 JUMPIFNOTEQ                      R2 R3 ; [+16]
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R9 2
       13 GETTABLE                         R8 R9 R7
       14 JUMPIF                           R8 ; [+2]
       15 LOADB                            R2 1
       16 JUMP                             ; [+3]
       17 FORGLOOP                         R3 2 ; [-6]
       19 LOADB                            R2 0
       20 JUMPIF                           R2 ; [+2]
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 DUPTABLE                         R2 K1 [{"changeType"}]
       24 GETTABLEKS                       R3 R0 K2 ["Name"]
       26 SETTABLEKS                       R3 R2 K0 ["changeType"]
       28 GETIMPORT                        R3 K5 [table.freeze]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1

PROTO_8:
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
       14 LOADNIL                          R1
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKNIL                     R2 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R4 0
       20 GETUPVAL                         R5 3
       21 NAMECALL                         R2 R2 K1 ["GetIdentity"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 JUMP                             ; [+15]
       26 NAMECALL                         R2 R0 K2 ["GetIdentities"]
       28 CALL                             R2 1 3
       29 FORGPREP                         R2
       30 GETUPVAL                         R9 0
       31 NAMECALL                         R7 R6 K3 ["ResolveInstance"]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 3
       35 JUMPIFNOTEQ                      R7 R8 ; [+3]
       37 MOVE                             R1 R6
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R2 2 ; [-10]
       41 JUMPIFNOTEQKNIL                  R1 ; [+3]
       43 LOADNIL                          R2
       44 RETURN                           R2 1
       45 GETUPVAL                         R2 4
       46 MOVE                             R5 R1
       47 NAMECALL                         R3 R0 K4 ["GetChangeType"]
       49 CALL                             R3 2 1
       50 MOVE                             R6 R1
       51 NAMECALL                         R4 R0 K5 ["GetPropertyNames"]
       53 CALL                             R4 2 -1
       54 CALL                             R2 -1 -1
       55 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+4]
        3 GETUPVAL                         R4 0
        4 JUMPIFEQ                         R0 R4 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R6 0
        8 NAMECALL                         R4 R1 K0 ["ResolveInstance"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 JUMPIFNOTEQ                      R4 R5 ; [+7]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 MOVE                             R6 R2
       17 MOVE                             R7 R3
       18 CALL                             R5 2 -1
       19 CALL                             R4 -1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 JUMPIFEQ                         R0 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R2 R1 K0 ["ResolveInstance"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTEQ                      R2 R3 ; [+4]
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OverrideStateChanged"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 6
       15 JUMPIF                           R0 ; [+11]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K2 ["OverridesCleared"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R0 R0 K1 ["Connect"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 6
       27 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 SETUPVAL                         R0 2
        8 GETUPVAL                         R1 2
        9 JUMPIFEQKNIL                     R1 ; [+3]
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R2 0 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R1 R0
        4 GETIMPORT                        R1 K1 [next]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 JUMPIFEQKNIL                     R1 ; [+2]
       10 JUMP                             ; [+18]
       11 GETUPVAL                         R1 2
       12 JUMPIFEQKNIL                     R1 ; [+7]
       14 GETUPVAL                         R1 2
       15 NAMECALL                         R1 R1 K2 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 2
       20 GETUPVAL                         R1 3
       21 JUMPIFEQKNIL                     R1 ; [+7]
       23 GETUPVAL                         R1 3
       24 NAMECALL                         R1 R1 K2 ["Disconnect"]
       26 CALL                             R1 1 0
       27 LOADNIL                          R1
       28 SETUPVAL                         R1 3
       29 GETUPVAL                         R0 4
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETUPVAL                         R0 4
       32 NAMECALL                         R0 R0 K2 ["Disconnect"]
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 5
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R0 5
       38 NAMECALL                         R0 R0 K2 ["Disconnect"]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 6
       42 JUMPIFNOT                        R0 ; [+4]
       43 GETUPVAL                         R0 6
       44 NAMECALL                         R0 R0 K2 ["Disconnect"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R5
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R7 P1
        9 CAPTURE                          REF R5
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R6
       14 NEWCLOSURE                       R8 P2
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R5
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R6
       21 CAPTURE                          REF R3
       22 NEWCLOSURE                       R9 P3
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R5
       26 CAPTURE                          VAL R8
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R7
       29 GETUPVAL                         R10 3
       30 MOVE                             R11 R0
       31 CALL                             R10 1 1
       32 MOVE                             R5 R10
       33 JUMPIFEQKNIL                     R5 ; [+3]
       35 MOVE                             R10 R8
       36 CALL                             R10 0 0
       37 GETUPVAL                         R10 4
       38 MOVE                             R11 R0
       39 MOVE                             R12 R9
       40 CALL                             R10 2 0
       41 GETTABLEKS                       R10 R0 K0 ["AncestryChanged"]
       43 MOVE                             R12 R9
       44 NAMECALL                         R10 R10 K1 ["Connect"]
       46 CALL                             R10 2 1
       47 MOVE                             R4 R10
       48 MOVE                             R10 R7
       49 CALL                             R10 0 1
       50 NEWCLOSURE                       R11 P4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          REF R2
       56 CAPTURE                          REF R3
       57 CAPTURE                          REF R4
       58 CLOSEUPVALS                      R2
       59 RETURN                           R10 2

PROTO_15:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R3 K0 [""]
        3 RETURN                           R3 1
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETTABLEKS                       R4 R2 K1 ["kind"]
        9 JUMPIFEQKS                       R4 K2 ["Selected"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R4 R0 K3 ["changeType"]
       15 JUMPIFEQKS                       R4 K4 ["Add"] ; [+5]
       17 GETTABLEKS                       R4 R0 K3 ["changeType"]
       19 JUMPIFNOTEQKS                    R4 K5 ["AddPackage"] ; [+9]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["diff"]
       24 LOADK                            R5 K4 ["Add"]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R3
       27 CALL                             R4 3 -1
       28 RETURN                           R4 -1
       29 GETTABLEKS                       R4 R0 K3 ["changeType"]
       31 JUMPIFNOTEQKS                    R4 K7 ["Modify"] ; [+9]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K6 ["diff"]
       36 LOADK                            R5 K7 ["Modify"]
       37 MOVE                             R6 R1
       38 MOVE                             R7 R3
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1
       41 LOADK                            R4 K0 [""]
       42 RETURN                           R4 1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["changeType"]
        6 JUMPIFEQKS                       R2 K1 ["Add"] ; [+5]
        8 GETTABLEKS                       R2 R1 K0 ["changeType"]
       10 JUMPIFNOTEQKS                    R2 K2 ["AddPackage"] ; [+7]
       12 LOADK                            R4 K3 ["RobloxExplorerWidget"]
       13 LOADK                            R5 K4 ["OverrideAdded"]
       14 NAMECALL                         R2 R0 K5 ["getText"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1
       18 GETTABLEKS                       R2 R1 K0 ["changeType"]
       20 JUMPIFNOTEQKS                    R2 K6 ["Modify"] ; [+7]
       22 LOADK                            R4 K3 ["RobloxExplorerWidget"]
       23 LOADK                            R5 K7 ["OverrideModified"]
       24 NAMECALL                         R2 R0 K5 ["getText"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1
       28 LOADNIL                          R2
       29 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["valueBinding"]
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKNIL                  R5 ; [+3]
        9 LOADNIL                          R3
       10 JUMP                             ; [+27]
       11 GETTABLEKS                       R6 R5 K2 ["changeType"]
       13 JUMPIFEQKS                       R6 K3 ["Add"] ; [+5]
       15 GETTABLEKS                       R6 R5 K2 ["changeType"]
       17 JUMPIFNOTEQKS                    R6 K4 ["AddPackage"] ; [+8]
       19 LOADK                            R8 K5 ["RobloxExplorerWidget"]
       20 LOADK                            R9 K6 ["OverrideAdded"]
       21 NAMECALL                         R6 R4 K7 ["getText"]
       23 CALL                             R6 3 1
       24 MOVE                             R3 R6
       25 JUMP                             ; [+12]
       26 GETTABLEKS                       R6 R5 K2 ["changeType"]
       28 JUMPIFNOTEQKS                    R6 K8 ["Modify"] ; [+8]
       30 LOADK                            R8 K5 ["RobloxExplorerWidget"]
       31 LOADK                            R9 K9 ["OverrideModified"]
       32 NAMECALL                         R6 R4 K7 ["getText"]
       34 CALL                             R6 3 1
       35 MOVE                             R3 R6
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 JUMPIFNOTEQKNIL                  R3 ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K10 ["mouseEnter"]
       44 MOVE                             R5 R0
       45 MOVE                             R6 R1
       46 MOVE                             R7 R2
       47 MOVE                             R8 R3
       48 CALL                             R4 4 0
       49 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLEKS                       R4 R0 K2 ["selectionState"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_19:
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
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K5 ["useEventCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["createElement"]
       28 LOADK                            R6 K7 ["Frame"]
       29 DUPTABLE                         R7 K11 [{["Size"], ["BackgroundTransparency"] = 1}]
       30 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       32 LOADN                            R9 21
       33 LOADN                            R10 16
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K8 ["Size"]
       37 DUPTABLE                         R8 K16 [{"Icon"}]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K6 ["createElement"]
       41 LOADK                            R10 K17 ["ImageLabel"]
       42 NEWTABLE                         R11 8 0
       44 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       46 LOADN                            R13 16
       47 LOADN                            R14 16
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K8 ["Size"]
       51 LOADN                            R12 1
       52 SETTABLEKS                       R12 R11 K9 ["BackgroundTransparency"]
       54 GETUPVAL                         R12 1
       55 GETTABLEKS                       R12 R12 K18 ["Event"]
       57 GETTABLEKS                       R12 R12 K19 ["MouseEnter"]
       59 SETTABLE                         R4 R11 R12
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K18 ["Event"]
       63 GETTABLEKS                       R12 R12 K20 ["MouseLeave"]
       65 GETTABLEKS                       R13 R3 K21 ["mouseLeave"]
       67 SETTABLE                         R13 R11 R12
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K22 ["Tag"]
       71 LOADK                            R13 K23 ["data-testid=PackageOverrideStatus"]
       72 SETTABLE                         R13 R11 R12
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K24 ["joinBindings"]
       76 DUPTABLE                         R13 K27 [{"value", "selectionState"}]
       77 GETTABLEKS                       R14 R0 K28 ["valueBinding"]
       79 SETTABLEKS                       R14 R13 K25 ["value"]
       81 GETTABLEKS                       R14 R0 K29 ["selectionStateBinding"]
       83 SETTABLEKS                       R14 R13 K26 ["selectionState"]
       85 CALL                             R12 1 1
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          VAL R2
       89 NAMECALL                         R12 R12 K30 ["map"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K31 ["Image"]
       94 CALL                             R9 2 1
       95 SETTABLEKS                       R9 R8 K15 ["Icon"]
       97 CALL                             R5 3 -1
       98 RETURN                           R5 -1

PROTO_20:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_21:
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K16 ["ThemeContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["getFFlagInstanceRegistryServiceGetIdentity"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K20 ["useTooltipActions"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K22 [game]
       67 LOADK                            R11 K23 ["PackageService"]
       68 NAMECALL                         R9 R9 K24 ["GetService"]
       70 CALL                             R9 2 1
       71 MOVE                             R11 R7
       72 CALL                             R11 0 1
       73 JUMPIFNOT                        R11 ; [+7]
       74 GETIMPORT                        R10 K22 [game]
       76 LOADK                            R12 K25 ["InstanceRegistryService"]
       77 NAMECALL                         R10 R10 K24 ["GetService"]
       79 CALL                             R10 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R10
       82 DUPCLOSURE                       R11 K26 [PROTO_0]
       83 GETIMPORT                        R12 K29 [table.freeze]
       85 DUPTABLE                         R13 K39 [{["Name"] = True, ["Parent"] = True, ["CFrame"] = True, ["Position"] = True, ["Rotation"] = True, ["Orientation"] = True, ["WorldPivot"] = True, ["WorldPivotData"] = True, ["Origin"] = True}]
       86 CALL                             R12 1 1
       87 DUPCLOSURE                       R13 K40 [PROTO_1]
       88 CAPTURE                          VAL R12
       89 NEWTABLE                         R14 0 0
       91 LOADNIL                          R15
       92 LOADNIL                          R16
       93 DUPCLOSURE                       R17 K41 [PROTO_2]
       94 CAPTURE                          VAL R14
       95 NEWCLOSURE                       R18 P3
       96 CAPTURE                          VAL R14
       97 CAPTURE                          REF R15
       98 CAPTURE                          VAL R17
       99 CAPTURE                          REF R16
      100 NEWCLOSURE                       R19 P4
      101 CAPTURE                          VAL R14
      102 CAPTURE                          REF R15
      103 CAPTURE                          REF R16
      104 NEWCLOSURE                       R20 P5
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R14
      111 CAPTURE                          REF R15
      112 CAPTURE                          REF R16
      113 DUPCLOSURE                       R21 K42 [PROTO_15]
      114 CAPTURE                          VAL R3
      115 DUPCLOSURE                       R22 K43 [PROTO_16]
      116 DUPCLOSURE                       R23 K44 [PROTO_19]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R21
      123 DUPTABLE                         R24 K53 [{["key"] = "packageOverrideStatus", ["icon"] = "", ["watch"], ["validateArgs"], ["render"], ["permanent"] = True}]
      124 SETTABLEKS                       R20 R24 K49 ["watch"]
      126 DUPCLOSURE                       R25 K54 [PROTO_20]
      127 SETTABLEKS                       R25 R24 K50 ["validateArgs"]
      129 DUPCLOSURE                       R25 K55 [PROTO_21]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R23
      132 SETTABLEKS                       R25 R24 K51 ["render"]
      134 CLOSEUPVALS                      R15
      135 RETURN                           R24 1
