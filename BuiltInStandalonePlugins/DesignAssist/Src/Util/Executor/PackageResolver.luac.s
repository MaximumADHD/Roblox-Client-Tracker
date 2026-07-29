PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 RETURN                           R2 1
        5 MOVE                             R3 R1
        6 CALL                             R3 0 1
        7 JUMPIF                           R3 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 GETIMPORT                        R4 K1 [pcall]
       12 GETIMPORT                        R5 K3 [require]
       14 MOVE                             R6 R3
       15 CALL                             R4 2 2
       16 JUMPIF                           R4 ; [+8]
       17 GETIMPORT                        R6 K5 [warn]
       19 LOADK                            R7 K6 ["[FoundationCanvas] Failed to require package:"]
       20 MOVE                             R8 R0
       21 MOVE                             R9 R5
       22 CALL                             R6 3 0
       23 LOADNIL                          R6
       24 RETURN                           R6 1
       25 GETUPVAL                         R6 0
       26 SETTABLE                         R5 R6 R0
       27 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADK                            R3 K1 ["ModuleScript"]
        7 NAMECALL                         R1 R0 K2 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isRegistered"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["resolve"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 GETUPVAL                         R4 2
       16 GETTABLE                         R3 R4 R0
       17 JUMPIFEQKNIL                     R3 ; [+3]
       19 MOVE                             R1 R3
       20 RETURN                           R1 1
       21 MOVE                             R4 R2
       22 CALL                             R4 0 1
       23 JUMPIF                           R4 ; [+2]
       24 LOADNIL                          R1
       25 RETURN                           R1 1
       26 GETIMPORT                        R5 K3 [pcall]
       28 GETIMPORT                        R6 K5 [require]
       30 MOVE                             R7 R4
       31 CALL                             R5 2 2
       32 JUMPIF                           R5 ; [+8]
       33 GETIMPORT                        R7 K7 [warn]
       35 LOADK                            R8 K8 ["[FoundationCanvas] Failed to require package:"]
       36 MOVE                             R9 R0
       37 MOVE                             R10 R6
       38 CALL                             R7 3 0
       39 LOADNIL                          R1
       40 RETURN                           R1 1
       41 GETUPVAL                         R7 2
       42 SETTABLE                         R6 R7 R0
       43 MOVE                             R1 R6
       44 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["React"]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["React"]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 MOVE                             R0 R2
       10 RETURN                           R0 1
       11 MOVE                             R3 R1
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETIMPORT                        R4 K2 [pcall]
       18 GETIMPORT                        R5 K4 [require]
       20 MOVE                             R6 R3
       21 CALL                             R4 2 2
       22 JUMPIF                           R4 ; [+8]
       23 GETIMPORT                        R6 K6 [warn]
       25 LOADK                            R7 K7 ["[FoundationCanvas] Failed to require package:"]
       26 LOADK                            R8 K0 ["React"]
       27 MOVE                             R9 R5
       28 CALL                             R6 3 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1
       31 GETUPVAL                         R6 1
       32 SETTABLEKS                       R5 R6 K0 ["React"]
       34 MOVE                             R0 R5
       35 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["sourceMap"]
        6 GETTABLEKS                       R5 R1 K2 ["storyName"]
        8 GETTABLEKS                       R6 R1 K3 ["resolveSource"]
       10 CALL                             R2 4 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 LOADK                            R2 K0 ["ReactRoblox"]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["ReactRoblox"]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 MOVE                             R0 R2
       10 RETURN                           R0 1
       11 MOVE                             R3 R1
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETIMPORT                        R4 K2 [pcall]
       18 GETIMPORT                        R5 K4 [require]
       20 MOVE                             R6 R3
       21 CALL                             R4 2 2
       22 JUMPIF                           R4 ; [+8]
       23 GETIMPORT                        R6 K6 [warn]
       25 LOADK                            R7 K7 ["[FoundationCanvas] Failed to require package:"]
       26 LOADK                            R8 K0 ["ReactRoblox"]
       27 MOVE                             R9 R5
       28 CALL                             R6 3 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1
       31 GETUPVAL                         R6 1
       32 SETTABLEKS                       R5 R6 K0 ["ReactRoblox"]
       34 MOVE                             R0 R5
       35 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R2 K0 ["Foundation"]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["Foundation"]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 MOVE                             R0 R2
       10 RETURN                           R0 1
       11 MOVE                             R3 R1
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETIMPORT                        R4 K2 [pcall]
       18 GETIMPORT                        R5 K4 [require]
       20 MOVE                             R6 R3
       21 CALL                             R4 2 2
       22 JUMPIF                           R4 ; [+8]
       23 GETIMPORT                        R6 K6 [warn]
       25 LOADK                            R7 K7 ["[FoundationCanvas] Failed to require package:"]
       26 LOADK                            R8 K0 ["Foundation"]
       27 MOVE                             R9 R5
       28 CALL                             R6 3 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1
       31 GETUPVAL                         R6 1
       32 SETTABLEKS                       R5 R6 K0 ["Foundation"]
       34 MOVE                             R0 R5
       35 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["patchReactOtterEase"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R2 K0 ["Motion"]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["Motion"]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 MOVE                             R0 R2
       10 RETURN                           R0 1
       11 MOVE                             R3 R1
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETIMPORT                        R4 K2 [pcall]
       18 GETIMPORT                        R5 K4 [require]
       20 MOVE                             R6 R3
       21 CALL                             R4 2 2
       22 JUMPIF                           R4 ; [+8]
       23 GETIMPORT                        R6 K6 [warn]
       25 LOADK                            R7 K7 ["[FoundationCanvas] Failed to require package:"]
       26 LOADK                            R8 K0 ["Motion"]
       27 MOVE                             R9 R5
       28 CALL                             R6 3 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1
       31 GETUPVAL                         R6 1
       32 SETTABLEKS                       R5 R6 K0 ["Motion"]
       34 MOVE                             R0 R5
       35 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTimeScaledMotion"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Src"]
        3 LOADK                            R2 K1 ["AppFramework"]
        4 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+6]
        8 LOADK                            R3 K3 ["ModuleScript"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_12:
        0 DUPCLOSURE                       R1 K0 [PROTO_11]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["AppFramework"]
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 MOVE                             R0 R2
        8 RETURN                           R0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["Src"]
       12 LOADK                            R6 K1 ["AppFramework"]
       13 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 LOADK                            R7 K4 ["ModuleScript"]
       18 NAMECALL                         R5 R4 K5 ["IsA"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+2]
       22 MOVE                             R3 R4
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R0
       27 RETURN                           R0 1
       28 GETIMPORT                        R4 K7 [pcall]
       30 GETIMPORT                        R5 K9 [require]
       32 MOVE                             R6 R3
       33 CALL                             R4 2 2
       34 JUMPIF                           R4 ; [+8]
       35 GETIMPORT                        R6 K11 [warn]
       37 LOADK                            R7 K12 ["[FoundationCanvas] Failed to require package:"]
       38 LOADK                            R8 K1 ["AppFramework"]
       39 MOVE                             R9 R5
       40 CALL                             R6 3 0
       41 LOADNIL                          R0
       42 RETURN                           R0 1
       43 GETUPVAL                         R6 1
       44 SETTABLEKS                       R5 R6 K1 ["AppFramework"]
       46 MOVE                             R0 R5
       47 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["register"]
        3 DUPTABLE                         R1 K5 [{["name"] = "React", ["resolve"], ["wrap"]}]
        4 DUPCLOSURE                       R2 K6 [PROTO_4]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R2 R1 K3 ["resolve"]
        9 DUPCLOSURE                       R2 K7 [PROTO_5]
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R1 K4 ["wrap"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["register"]
       17 DUPTABLE                         R1 K9 [{["name"] = "ReactRoblox", ["resolve"]}]
       18 DUPCLOSURE                       R2 K10 [PROTO_6]
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R2 R1 K3 ["resolve"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["register"]
       27 DUPTABLE                         R1 K13 [{["name"] = "Foundation", ["resolve"], ["onResolve"]}]
       28 DUPCLOSURE                       R2 K14 [PROTO_7]
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 SETTABLEKS                       R2 R1 K3 ["resolve"]
       33 DUPCLOSURE                       R2 K15 [PROTO_8]
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R2 R1 K12 ["onResolve"]
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 0
       40 GETTABLEKS                       R0 R0 K0 ["register"]
       42 DUPTABLE                         R1 K17 [{["name"] = "Motion", ["resolve"], ["wrap"]}]
       43 DUPCLOSURE                       R2 K18 [PROTO_9]
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 SETTABLEKS                       R2 R1 K3 ["resolve"]
       48 DUPCLOSURE                       R2 K19 [PROTO_10]
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R2 R1 K4 ["wrap"]
       52 CALL                             R0 1 0
       53 GETUPVAL                         R0 0
       54 GETTABLEKS                       R0 R0 K0 ["register"]
       56 DUPTABLE                         R1 K21 [{["name"] = "AppFramework", ["resolve"]}]
       57 DUPCLOSURE                       R2 K22 [PROTO_12]
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U2
       60 SETTABLEKS                       R2 R1 K3 ["resolve"]
       62 CALL                             R0 1 0
       63 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isRegistered"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["resolveWrapped"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 JUMPIFEQKNIL                     R3 ; [+2]
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["resolve"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 JUMPIFEQKNIL                     R3 ; [+2]
       22 RETURN                           R3 1
       23 GETIMPORT                        R4 K4 [error]
       25 LOADK                            R6 K5 ["Unknown package: "]
       26 MOVE                             R7 R0
       27 LOADK                            R8 K6 [". "]
       28 MOVE                             R9 R2
       29 CONCAT                           R5 R6 R9
       30 LOADN                            R6 2
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["sessionPackageCache"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R5 K1 ["raw:"]
        4 JUMP                             ; [+1]
        5 LOADK                            R5 K2 ["wrapped:"]
        6 MOVE                             R6 R0
        7 CONCAT                           R4 R5 R6
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLE                         R5 R3 R4
       10 JUMPIFEQKNIL                     R5 ; [+3]
       12 GETTABLE                         R5 R3 R4
       13 RETURN                           R5 1
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["resolve"]
       18 MOVE                             R6 R0
       19 CALL                             R5 1 1
       20 JUMP                             ; [+6]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["resolveWrapped"]
       24 MOVE                             R6 R0
       25 MOVE                             R7 R1
       26 CALL                             R5 2 1
       27 JUMPIFEQKNIL                     R5 ; [+3]
       29 JUMPIFNOT                        R3 ; [+1]
       30 SETTABLE                         R5 R3 R4
       31 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["Name"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETTABLEKS                       R4 R3 K2 ["wrap"]
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETTABLEKS                       R4 R3 K2 ["wrap"]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 -1
       15 RETURN                           R4 -1
       16 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isRegistered"]
        3 GETTABLEKS                       R3 R0 K1 ["Name"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["resolveWrapped"]
       12 GETTABLEKS                       R3 R0 K1 ["Name"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["PackageResolver must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Src"]
       18 GETTABLEKS                       R2 R2 K10 ["Util"]
       20 GETTABLEKS                       R2 R2 K11 ["PackageRegistry"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [require]
       25 GETIMPORT                        R3 K1 [script]
       27 GETTABLEKS                       R3 R3 K12 ["Parent"]
       29 GETTABLEKS                       R3 R3 K13 ["InstrumentedReact"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K8 [require]
       34 GETIMPORT                        R4 K1 [script]
       36 GETTABLEKS                       R4 R4 K12 ["Parent"]
       38 GETTABLEKS                       R4 R4 K14 ["TimeScale"]
       40 CALL                             R3 1 1
       41 GETTABLEKS                       R4 R0 K15 ["Packages"]
       43 NEWTABLE                         R5 8 0
       45 NEWTABLE                         R6 0 0
       47 DUPCLOSURE                       R7 K16 [PROTO_0]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R8 K17 [PROTO_2]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R7 R5 K18 ["cachedRequire"]
       53 SETTABLEKS                       R8 R5 K19 ["packagesSibling"]
       55 DUPCLOSURE                       R9 K20 [PROTO_3]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R9 R5 K21 ["resolve"]
       61 DUPCLOSURE                       R9 K22 [PROTO_13]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R0
       68 MOVE                             R10 R9
       69 CALL                             R10 0 0
       70 DUPCLOSURE                       R10 K23 [PROTO_14]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R5 K24 ["resolveByName"]
       75 DUPCLOSURE                       R10 K25 [PROTO_15]
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R10 R5 K26 ["resolveInjected"]
       79 DUPCLOSURE                       R10 K27 [PROTO_16]
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R10 R5 K28 ["wrapResolvedDependency"]
       83 DUPCLOSURE                       R10 K29 [PROTO_17]
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R10 R5 K30 ["resolveKnownPackageModule"]
       87 GETTABLEKS                       R10 R1 K31 ["names"]
       89 SETTABLEKS                       R10 R5 K32 ["registeredNames"]
       91 RETURN                           R5 1
