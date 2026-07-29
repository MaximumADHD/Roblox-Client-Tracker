PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["React"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["ReactRoblox"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["Motion"] ; [+3]
        6 LOADK                            R1 K3 ["inject"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K4 ["Foundation"] ; [+8]
       10 GETUPVAL                         R2 0
       11 JUMPIFNOTEQKS                    R2 K5 ["external"] ; [+3]
       13 LOADK                            R1 K6 ["execute"]
       14 RETURN                           R1 1
       15 LOADK                            R1 K3 ["inject"]
       16 RETURN                           R1 1
       17 JUMPIFNOTEQKS                    R0 K7 ["AppFramework"] ; [+8]
       19 GETUPVAL                         R2 0
       20 JUMPIFNOTEQKS                    R2 K5 ["external"] ; [+3]
       22 LOADK                            R1 K8 ["reject"]
       23 RETURN                           R1 1
       24 LOADK                            R1 K3 ["inject"]
       25 RETURN                           R1 1
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K9 ["isRegistered"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADK                            R1 K3 ["inject"]
       33 RETURN                           R1 1
       34 LOADK                            R1 K6 ["execute"]
       35 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["logicalName"]
        2 JUMPIFEQKS                       R2 K1 ["React"] ; [+5]
        4 JUMPIFEQKS                       R2 K2 ["ReactRoblox"] ; [+3]
        6 JUMPIFNOTEQKS                    R2 K3 ["Motion"] ; [+3]
        8 LOADK                            R1 K4 ["inject"]
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R2 K5 ["Foundation"] ; [+8]
       12 GETUPVAL                         R3 0
       13 JUMPIFNOTEQKS                    R3 K6 ["external"] ; [+3]
       15 LOADK                            R1 K7 ["execute"]
       16 RETURN                           R1 1
       17 LOADK                            R1 K4 ["inject"]
       18 RETURN                           R1 1
       19 JUMPIFNOTEQKS                    R2 K8 ["AppFramework"] ; [+8]
       21 GETUPVAL                         R3 0
       22 JUMPIFNOTEQKS                    R3 K6 ["external"] ; [+3]
       24 LOADK                            R1 K9 ["reject"]
       25 RETURN                           R1 1
       26 LOADK                            R1 K4 ["inject"]
       27 RETURN                           R1 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K10 ["isRegistered"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+2]
       34 LOADK                            R1 K4 ["inject"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K7 ["execute"]
       37 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["discoverPackageRoots"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 DUPTABLE                         R5 K6 [{["React"] = "React", ["ReactRoblox"] = "ReactRoblox", ["Foundation"] = "Foundation", ["Motion"] = "Motion", ["AppFramework"] = "AppFramework"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K7 ["names"]
       11 CALL                             R6 0 3
       12 FORGPREP                         R6
       13 SETTABLE                         R10 R5 R10
       14 FORGLOOP                         R6 2 ; [-2]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 DUPTABLE                         R7 K13 [{"profile", "packageRoots", "stringAliases", "modeForIdentity", "modeForName"}]
       20 JUMPIFNOTEQKS                    R2 K14 ["external"] ; [+3]
       22 LOADK                            R8 K15 ["lua-apps-one-reconciler"]
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K16 ["design-assist"]
       25 SETTABLEKS                       R8 R7 K8 ["profile"]
       27 SETTABLEKS                       R4 R7 K9 ["packageRoots"]
       29 SETTABLEKS                       R5 R7 K10 ["stringAliases"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R8 R7 K11 ["modeForIdentity"]
       36 SETTABLEKS                       R6 R7 K12 ["modeForName"]
       38 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["PackageIdentity"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["PackageRegistry"]
       20 CALL                             R1 1 1
       21 NEWTABLE                         R2 1 0
       23 DUPCLOSURE                       R3 K7 [PROTO_2]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K8 ["create"]
       28 RETURN                           R2 1
