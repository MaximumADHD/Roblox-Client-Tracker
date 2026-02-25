PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Folder"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 SETTABLEKS                       R1 R2 K5 ["Parent"]
        8 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 SETTABLEKS                       R1 R2 K5 ["Parent"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K6 ["ClipToDeviceSafeArea"]
       11 GETIMPORT                        R3 K10 [Enum.SafeAreaCompatibility.None]
       13 SETTABLEKS                       R3 R2 K8 ["SafeAreaCompatibility"]
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R2 K2 [Instance.new]
        5 LOADK                            R3 K3 ["Folder"]
        6 CALL                             R2 1 1
        7 LOADK                            R3 K4 ["RobloxGUIEditor"]
        8 SETTABLEKS                       R3 R2 K5 ["Name"]
       10 SETTABLEKS                       R1 R2 K6 ["Parent"]
       12 MOVE                             R0 R2
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 0
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+12]
        2 GETUPVAL                         R4 1
        3 GETIMPORT                        R5 K2 [Instance.new]
        5 LOADK                            R6 K3 ["Folder"]
        6 CALL                             R5 1 1
        7 LOADK                            R6 K4 ["RobloxGUIEditor"]
        8 SETTABLEKS                       R6 R5 K5 ["Name"]
       10 SETTABLEKS                       R4 R5 K6 ["Parent"]
       12 MOVE                             R3 R5
       13 SETUPVAL                         R3 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+24]
       20 GETUPVAL                         R4 0
       21 JUMPIF                           R4 ; [+12]
       22 GETUPVAL                         R5 1
       23 GETIMPORT                        R6 K2 [Instance.new]
       25 LOADK                            R7 K3 ["Folder"]
       26 CALL                             R6 1 1
       27 LOADK                            R7 K4 ["RobloxGUIEditor"]
       28 SETTABLEKS                       R7 R6 K5 ["Name"]
       30 SETTABLEKS                       R5 R6 K6 ["Parent"]
       32 MOVE                             R4 R6
       33 SETUPVAL                         R4 0
       34 GETUPVAL                         R3 0
       35 GETIMPORT                        R4 K2 [Instance.new]
       37 LOADK                            R5 K3 ["Folder"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R1 R4 K5 ["Name"]
       41 SETTABLEKS                       R3 R4 K6 ["Parent"]
       43 MOVE                             R2 R4
       44 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+12]
        2 GETUPVAL                         R4 1
        3 GETIMPORT                        R5 K2 [Instance.new]
        5 LOADK                            R6 K3 ["Folder"]
        6 CALL                             R5 1 1
        7 LOADK                            R6 K4 ["RobloxGUIEditor"]
        8 SETTABLEKS                       R6 R5 K5 ["Name"]
       10 SETTABLEKS                       R4 R5 K6 ["Parent"]
       12 MOVE                             R3 R5
       13 SETUPVAL                         R3 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+31]
       20 GETUPVAL                         R4 0
       21 JUMPIF                           R4 ; [+12]
       22 GETUPVAL                         R5 1
       23 GETIMPORT                        R6 K2 [Instance.new]
       25 LOADK                            R7 K3 ["Folder"]
       26 CALL                             R6 1 1
       27 LOADK                            R7 K4 ["RobloxGUIEditor"]
       28 SETTABLEKS                       R7 R6 K5 ["Name"]
       30 SETTABLEKS                       R5 R6 K6 ["Parent"]
       32 MOVE                             R4 R6
       33 SETUPVAL                         R4 0
       34 GETUPVAL                         R3 0
       35 GETIMPORT                        R4 K2 [Instance.new]
       37 LOADK                            R5 K8 ["ScreenGui"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R1 R4 K5 ["Name"]
       41 SETTABLEKS                       R3 R4 K6 ["Parent"]
       43 LOADB                            R5 0
       44 SETTABLEKS                       R5 R4 K9 ["ClipToDeviceSafeArea"]
       46 GETIMPORT                        R5 K13 [Enum.SafeAreaCompatibility.None]
       48 SETTABLEKS                       R5 R4 K11 ["SafeAreaCompatibility"]
       50 MOVE                             R2 R4
       51 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R1 K1 [game]
        4 LOADK                            R3 K2 ["CoreGui"]
        5 NAMECALL                         R1 R1 K3 ["GetService"]
        7 CALL                             R1 2 1
        8 DUPCLOSURE                       R2 K4 [PROTO_0]
        9 DUPCLOSURE                       R3 K5 [PROTO_1]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          REF R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 2 0
       15 NEWCLOSURE                       R6 P3
       16 CAPTURE                          REF R0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R6 R5 K6 ["findOrCreateFolder"]
       20 NEWCLOSURE                       R6 P4
       21 CAPTURE                          REF R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R6 R5 K7 ["findOrCreateScreenGui"]
       25 CLOSEUPVALS                      R0
       26 RETURN                           R5 1
