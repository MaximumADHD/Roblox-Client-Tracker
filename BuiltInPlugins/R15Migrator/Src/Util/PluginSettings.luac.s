PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["settingName"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R9 R2
        7 GETIMPORT                        R8 K2 [tostring]
        9 CALL                             R8 1 1
       10 MOVE                             R6 R8
       11 GETTABLEKS                       R7 R0 K3 ["settingName"]
       13 CONCAT                           R5 R6 R7
       14 NAMECALL                         R3 R1 K4 ["GetSetting"]
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 NAMECALL                         R4 R0 K0 ["getSetting"]
        4 CALL                             R4 3 1
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 LOADB                            R3 0
        9 RETURN                           R3 1

PROTO_3:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R10 R2
        7 GETIMPORT                        R9 K2 [tostring]
        9 CALL                             R9 1 1
       10 MOVE                             R7 R9
       11 GETTABLEKS                       R8 R0 K3 ["settingName"]
       13 CONCAT                           R6 R7 R8
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R1 K4 ["SetSetting"]
       17 CALL                             R4 3 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 8 0
        5 SETTABLEKS                       R1 R1 K0 ["__index"]
        7 DUPCLOSURE                       R2 K1 [PROTO_0]
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R2 R1 K2 ["new"]
       11 DUPCLOSURE                       R2 K3 [PROTO_1]
       12 SETTABLEKS                       R2 R1 K4 ["getSetting"]
       14 DUPCLOSURE                       R2 K5 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K6 ["getBooleanSetting"]
       17 DUPCLOSURE                       R2 K7 [PROTO_3]
       18 SETTABLEKS                       R2 R1 K8 ["setSetting"]
       20 GETTABLEKS                       R2 R1 K2 ["new"]
       22 LOADK                            R3 K9 ["_initially_enabled"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R0 K10 ["InitiallyEnabled"]
       26 GETTABLEKS                       R2 R1 K2 ["new"]
       28 LOADK                            R3 K11 ["_r6_original_experience"]
       29 CALL                             R2 1 1
       30 SETTABLEKS                       R2 R0 K12 ["CorrespondingR15Experience"]
       32 GETTABLEKS                       R2 R1 K2 ["new"]
       34 LOADK                            R3 K13 ["_r15_converted_experience"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R0 K14 ["IsR15ConvertedExperience"]
       38 GETTABLEKS                       R2 R1 K2 ["new"]
       40 LOADK                            R3 K15 ["_successfully_published_date_time"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R0 K16 ["SuccessfullyPublishedDateTime"]
       44 RETURN                           R0 1
