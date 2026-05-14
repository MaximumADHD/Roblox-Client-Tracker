PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 LOADK                            R1 K0 ["ConvertToPackageFlags"]
       12 SETTABLEKS                       R1 R0 K6 ["Name"]
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R1 R0 K7 ["Parent"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K2 ["Value"]
       15 RETURN                           R3 1
       16 LOADB                            R3 0
       17 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 1
       14 GETTABLE                         R1 R0 R2
       15 GETTABLEKS                       R1 R1 K2 ["Value"]
       17 RETURN                           R1 1

PROTO_4:
        0 ORK                              R1 R1 K0 [False]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R1
        5 CLOSEUPVALS                      R1
        6 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["RunTests"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxDisableTooltips"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxDebugUrls"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxDebugState"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxDebugWarnings"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxLogSettings"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxUseTestCustomLocale"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADK                            R4 K2 ["ToolboxUseTestRealLocaleId"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R0 R2 K3 ["Value"]
       15 RETURN                           R0 1
       16 LOADB                            R0 0
       17 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+11]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 LOADK                            R2 K0 ["ConvertToPackageFlags"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 MOVE                             R0 R1
       18 LOADK                            R3 K8 ["ToolboxCustomLocale"]
       19 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+13]
       23 GETIMPORT                        R2 K4 [Instance.new]
       25 LOADK                            R3 K9 ["StringValue"]
       26 CALL                             R2 1 1
       27 MOVE                             R1 R2
       28 LOADK                            R2 K8 ["ToolboxCustomLocale"]
       29 SETTABLEKS                       R2 R1 K6 ["Name"]
       31 LOADK                            R2 K10 ["CustomLocale"]
       32 SETTABLEKS                       R2 R1 K11 ["Value"]
       34 SETTABLEKS                       R0 R1 K7 ["Parent"]
       36 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertToPackageFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+11]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 LOADK                            R2 K0 ["ConvertToPackageFlags"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 MOVE                             R0 R1
       18 LOADK                            R3 K8 ["ToolboxRealLocale"]
       19 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+13]
       23 GETIMPORT                        R2 K4 [Instance.new]
       25 LOADK                            R3 K9 ["StringValue"]
       26 CALL                             R2 1 1
       27 MOVE                             R1 R2
       28 LOADK                            R2 K8 ["ToolboxRealLocale"]
       29 SETTABLEKS                       R2 R1 K6 ["Name"]
       31 LOADK                            R2 K10 ["en-us"]
       32 SETTABLEKS                       R2 R1 K11 ["Value"]
       34 SETTABLEKS                       R0 R1 K7 ["Parent"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K6 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 DUPCLOSURE                       R4 K7 [PROTO_4]
       14 CAPTURE                          VAL R0
       15 GETIMPORT                        R5 K9 [pcall]
       17 DUPCLOSURE                       R6 K10 [PROTO_5]
       18 CALL                             R5 1 1
       19 NEWTABLE                         R6 16 0
       21 MOVE                             R8 R5
       22 ORK                              R8 R8 K11 [False]
       23 LOADK                            R9 K12 ["RunningUnderCLI"]
       24 NEWCLOSURE                       R7 P5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R9
       27 CAPTURE                          REF R8
       28 CLOSEUPVALS                      R8
       29 SETTABLEKS                       R7 R6 K13 ["runningUnderCli"]
       31 DUPCLOSURE                       R7 K14 [PROTO_6]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R7 R6 K15 ["RunTests"]
       35 DUPCLOSURE                       R7 K16 [PROTO_7]
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R7 R6 K17 ["shouldDisableTooltips"]
       39 DUPCLOSURE                       R7 K18 [PROTO_8]
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R7 R6 K19 ["shouldDebugUrls"]
       43 DUPCLOSURE                       R7 K20 [PROTO_9]
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R7 R6 K21 ["shouldDebugState"]
       47 DUPCLOSURE                       R7 K22 [PROTO_10]
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R7 R6 K23 ["shouldDebugWarnings"]
       51 DUPCLOSURE                       R7 K24 [PROTO_11]
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R7 R6 K25 ["shouldLogSettings"]
       55 DUPCLOSURE                       R7 K26 [PROTO_12]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R7 R6 K27 ["shouldUseTestCustomLocale"]
       59 DUPCLOSURE                       R7 K28 [PROTO_13]
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R7 R6 K29 ["shouldUseTestRealLocale"]
       63 DUPCLOSURE                       R7 K30 [PROTO_14]
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R7 R6 K31 ["getOrCreateTestCustomLocale"]
       67 DUPCLOSURE                       R7 K32 [PROTO_15]
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R7 R6 K33 ["getOrCreateTestRealLocale"]
       71 RETURN                           R6 1
