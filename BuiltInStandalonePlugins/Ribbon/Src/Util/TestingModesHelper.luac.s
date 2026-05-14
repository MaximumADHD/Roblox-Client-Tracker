PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["Settings"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 NAMECALL                         R3 R2 K2 ["BindAsync"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R4 R4 K3 ["Disconnect"]
       13 CALL                             R4 1 0
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R4 R3 K4 ["Connect"]
       18 CALL                             R4 2 1
       19 SETUPVAL                         R4 1
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 ORK                              R2 R3 K0 ["BuiltIn_LeftMezzanineTestAndTestHere"]
        3 GETTABLEKS                       R4 R0 K1 ["MezzanineControls"]
        5 GETTABLE                         R3 R4 R2
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R4 R3 K2 ["Controls"]
        9 RETURN                           R4 1
       10 NEWTABLE                         R4 0 0
       12 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R3 K0 ["Settings"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R4 0 1
        6 GETUPVAL                         R5 0
        7 SETLIST                          R4 R5 1 [1]
        9 NAMECALL                         R2 R1 K2 ["GetAsync"]
       11 CALL                             R2 2 1
       12 GETTABLEN                        R3 R2 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADN                            R3 255
       15 RETURN                           R3 1
       16 GETTABLEN                        R3 R2 1
       17 GETTABLEKS                       R3 R3 K3 ["Value"]
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 LOADNIL                          R4
       26 GETTABLEKS                       R5 R2 K12 ["fromSetting"]
       28 LOADK                            R6 K13 ["RunTools"]
       29 LOADK                            R7 K14 ["TestMode"]
       30 CALL                             R5 2 1
       31 GETIMPORT                        R6 K17 [table.freeze]
       33 NEWTABLE                         R7 8 0
       35 LOADN                            R8 0
       36 LOADK                            R9 K18 ["BuiltIn_LeftMezzanineTestAndTestHere"]
       37 SETTABLE                         R9 R7 R8
       38 LOADK                            R8 K18 ["BuiltIn_LeftMezzanineTestAndTestHere"]
       39 SETTABLEN                        R8 R7 1
       40 LOADK                            R8 K19 ["BuiltIn_LeftMezzanineRun"]
       41 SETTABLEN                        R8 R7 2
       42 LOADK                            R8 K20 ["BuiltIn_LeftMezzanineTeamTest"]
       43 SETTABLEN                        R8 R7 3
       44 LOADK                            R8 K21 ["BuiltIn_LeftMezzanineServerAndClients"]
       45 SETTABLEN                        R8 R7 4
       46 LOADK                            R8 K22 ["BuiltIn_LeftMezzanineDebugPlugin"]
       47 SETTABLEN                        R8 R7 5
       48 CALL                             R6 1 1
       49 NEWTABLE                         R7 4 0
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          VAL R5
       53 CAPTURE                          REF R4
       54 SETTABLEKS                       R8 R7 K23 ["connectTestModesAsync"]
       56 DUPCLOSURE                       R8 K24 [PROTO_2]
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R8 R7 K25 ["getMezzanineFromTestModeSetting"]
       60 DUPCLOSURE                       R8 K26 [PROTO_3]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R7 K27 ["getCurrentTestModeSettingValueAsync"]
       64 CLOSEUPVALS                      R4
       65 RETURN                           R7 1
