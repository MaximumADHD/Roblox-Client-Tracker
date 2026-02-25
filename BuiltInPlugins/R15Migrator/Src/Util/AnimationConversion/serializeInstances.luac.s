PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SerializeInstances"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["DEPRECATED_SerializeInstances"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETIMPORT                        R3 K1 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R3 1 2
       10 MOVE                             R1 R3
       11 MOVE                             R2 R4
       12 JUMP                             ; [+40]
       13 GETIMPORT                        R3 K4 [Instance.new]
       15 LOADK                            R4 K5 ["Folder"]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K6 ["TemporaryInstances"]
       18 SETTABLEKS                       R4 R3 K7 ["Name"]
       20 GETUPVAL                         R4 2
       21 SETTABLEKS                       R4 R3 K8 ["Parent"]
       23 GETIMPORT                        R4 K10 [pairs]
       25 MOVE                             R5 R0
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 SETTABLEKS                       R3 R8 K8 ["Parent"]
       30 FORGLOOP                         R4 2 ; [-3]
       32 GETIMPORT                        R4 K1 [pcall]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 CALL                             R4 1 2
       38 MOVE                             R1 R4
       39 MOVE                             R2 R5
       40 GETIMPORT                        R4 K10 [pairs]
       42 MOVE                             R5 R0
       43 CALL                             R4 1 3
       44 FORGPREP_NEXT                    R4
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K8 ["Parent"]
       48 FORGLOOP                         R4 2 ; [-4]
       50 NAMECALL                         R4 R3 K11 ["Destroy"]
       52 CALL                             R4 1 0
       53 JUMPIFNOT                        R1 ; [+1]
       54 RETURN                           R2 1
       55 GETIMPORT                        R3 K13 [error]
       57 LOADK                            R5 K14 ["SerializeInstances failed: "]
       58 FASTCALL1                        TOSTRING R2 ; [+3]
       59 MOVE                             R7 R2
       60 GETIMPORT                        R6 K16 [tostring]
       62 CALL                             R6 1 1
       63 CONCAT                           R4 R5 R6
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RobloxPluginGuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioAssetService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["R15SwapSerializer"]
       16 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 DUPCLOSURE                       R3 K7 [PROTO_2]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
