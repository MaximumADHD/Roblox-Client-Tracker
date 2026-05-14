PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SerializeInstances"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["TemporaryInstances"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 GETIMPORT                        R1 K8 [pairs]
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 3
       14 FORGPREP_NEXT                    R1
       15 SETTABLEKS                       R0 R5 K6 ["Parent"]
       17 FORGLOOP                         R1 2 ; [-3]
       19 GETIMPORT                        R1 K10 [pcall]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U1
       24 CALL                             R1 1 2
       25 GETIMPORT                        R3 K8 [pairs]
       27 GETUPVAL                         R4 1
       28 CALL                             R3 1 3
       29 FORGPREP_NEXT                    R3
       30 LOADNIL                          R8
       31 SETTABLEKS                       R8 R7 K6 ["Parent"]
       33 FORGLOOP                         R3 2 ; [-4]
       35 NAMECALL                         R3 R0 K11 ["Destroy"]
       37 CALL                             R3 1 0
       38 JUMPIFNOT                        R1 ; [+4]
       39 GETUPVAL                         R3 3
       40 MOVE                             R4 R2
       41 CALL                             R3 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 4
       44 LOADK                            R5 K12 ["SerializeInstances failed: "]
       45 FASTCALL1                        TOSTRING R2 ; [+3]
       46 MOVE                             R7 R2
       47 GETIMPORT                        R6 K14 [tostring]
       49 CALL                             R6 1 1
       50 CONCAT                           R4 R5 R6
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RobloxPluginGuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Framework"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K11 ["Util"]
       24 GETTABLEKS                       R3 R3 K12 ["Promise"]
       26 DUPCLOSURE                       R4 K13 [PROTO_3]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 RETURN                           R4 1
