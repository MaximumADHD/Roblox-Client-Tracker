PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["pluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K5 ["mount"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 6
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 6
       27 LOADK                            R3 K6 ["Roact tree"]
       28 GETUPVAL                         R4 5
       29 NAMECALL                         R1 R1 K7 ["addRoactTree"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [game]
        4 LOADK                            R4 K2 ["DeviceEmulatorPluginBasedUi"]
        5 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETIMPORT                        R3 K5 [require]
       12 GETIMPORT                        R4 K7 [script]
       14 GETTABLEKS                       R4 R4 K8 ["Parent"]
       16 GETTABLEKS                       R4 R4 K9 ["commonInit"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R3
       20 CALL                             R4 0 0
       21 GETIMPORT                        R4 K7 [script]
       23 GETTABLEKS                       R4 R4 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K8 ["Parent"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Util"]
       33 GETTABLEKS                       R6 R6 K12 ["shouldPluginRun"]
       35 CALL                             R5 1 1
       36 MOVE                             R6 R5
       37 CALL                             R6 0 1
       38 JUMPIF                           R6 ; [+1]
       39 RETURN                           R0 0
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R4 K13 ["Packages"]
       44 GETTABLEKS                       R7 R7 K14 ["Roact"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R4 K10 ["Src"]
       51 GETTABLEKS                       R8 R8 K15 ["MainPlugin"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R4 K10 ["Src"]
       58 GETTABLEKS                       R9 R9 K11 ["Util"]
       60 GETTABLEKS                       R9 R9 K16 ["hasInternalPermission"]
       62 CALL                             R8 1 1
       63 CALL                             R8 0 1
       64 LOADNIL                          R9
       65 LOADNIL                          R10
       66 JUMPIFNOT                        R8 ; [+14]
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R4 K13 ["Packages"]
       71 GETTABLEKS                       R12 R12 K17 ["DeveloperTools"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R11 R11 K18 ["forPlugin"]
       76 GETTABLEKS                       R12 R4 K19 ["Name"]
       78 MOVE                             R13 R0
       79 CALL                             R11 2 1
       80 MOVE                             R10 R11
       81 NEWCLOSURE                       R11 P0
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R1
       87 CAPTURE                          REF R9
       88 CAPTURE                          REF R10
       89 GETTABLEKS                       R12 R0 K20 ["Unloading"]
       91 NEWCLOSURE                       R14 P1
       92 CAPTURE                          REF R10
       93 CAPTURE                          REF R9
       94 CAPTURE                          VAL R6
       95 NAMECALL                         R12 R12 K21 ["Connect"]
       97 CALL                             R12 2 0
       98 MOVE                             R12 R11
       99 CALL                             R12 0 0
      100 CLOSEUPVALS                      R9
      101 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
