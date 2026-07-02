PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["AlternateMeshIdAttributeName"]
        8 JUMPIFEQ                         R5 R7 ; [+29]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K1 ["GUIDAttributeName"]
       13 JUMPIFEQ                         R5 R7 ; [+3]
       15 LOADB                            R7 0
       16 RETURN                           R7 1
       17 FASTCALL1                        TYPEOF R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K3 [typeof]
       21 CALL                             R7 1 1
       22 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FASTCALL1                        STRING_LEN R6 ; [+3]
       27 MOVE                             R8 R6
       28 GETIMPORT                        R7 K6 [string.len]
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["GUIDAttributeMaxLength"]
       34 JUMPIFNOTLT                      R8 R7 ; [+3]
       36 LOADB                            R7 0
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-35]
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Keys"]
        3 GETTABLEKS                       R4 R4 K1 ["NoAttributes"]
        5 DUPTABLE                         R5 K4 [{"RootInstanceName", "InstanceNameList"}]
        6 GETTABLEKS                       R6 R1 K5 ["Name"]
        8 SETTABLEKS                       R6 R5 K2 ["RootInstanceName"]
       10 NAMECALL                         R6 R1 K6 ["GetFullName"]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K3 ["InstanceNameList"]
       15 NAMECALL                         R2 R0 K7 ["fail"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R1 K0 ["GetAttributes"]
        3 CALL                             R4 1 1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+18]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["Keys"]
       10 GETTABLEKS                       R5 R5 K2 ["NoAttributes"]
       12 DUPTABLE                         R6 K5 [{"RootInstanceName", "InstanceNameList"}]
       13 GETTABLEKS                       R7 R1 K6 ["Name"]
       15 SETTABLEKS                       R7 R6 K3 ["RootInstanceName"]
       17 NAMECALL                         R7 R1 K7 ["GetFullName"]
       19 CALL                             R7 1 1
       20 SETTABLEKS                       R7 R6 K4 ["InstanceNameList"]
       22 NAMECALL                         R3 R0 K8 ["fail"]
       24 CALL                             R3 3 0
       25 NAMECALL                         R3 R1 K9 ["GetDescendants"]
       27 CALL                             R3 1 3
       28 FORGPREP                         R3
       29 JUMPIFNOT                        R2 ; [+7]
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K10 ["AlternateMeshIdAttributeName"]
       33 NAMECALL                         R8 R7 K11 ["GetAttribute"]
       35 CALL                             R8 2 1
       36 JUMPIF                           R8 ; [+26]
       37 GETIMPORT                        R8 K13 [next]
       39 NAMECALL                         R9 R7 K0 ["GetAttributes"]
       41 CALL                             R9 1 -1
       42 CALL                             R8 -1 1
       43 JUMPIFEQKNIL                     R8 ; [+19]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K1 ["Keys"]
       48 GETTABLEKS                       R10 R10 K2 ["NoAttributes"]
       50 DUPTABLE                         R11 K5 [{"RootInstanceName", "InstanceNameList"}]
       51 GETTABLEKS                       R12 R7 K6 ["Name"]
       53 SETTABLEKS                       R12 R11 K3 ["RootInstanceName"]
       55 NAMECALL                         R12 R7 K7 ["GetFullName"]
       57 CALL                             R12 1 1
       58 SETTABLEKS                       R12 R11 K4 ["InstanceNameList"]
       60 NAMECALL                         R8 R0 K8 ["fail"]
       62 CALL                             R8 3 0
       63 FORGLOOP                         R3 2 ; [-35]
       65 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R3 R3 K1 ["consumerEnv"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ConsumerEnv"]
        7 GETTABLEKS                       R4 R4 K3 ["IEC"]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 GETTABLEKS                       R5 R1 K4 ["rootInstance"]
       17 MOVE                             R6 R2
       18 CALL                             R3 3 0
       19 GETTABLEKS                       R3 R1 K5 ["hsrAssets"]
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 MOVE                             R8 R7
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 GETUPVAL                         R13 1
       29 MOVE                             R14 R0
       30 MOVE                             R15 R12
       31 MOVE                             R16 R2
       32 CALL                             R13 3 0
       33 FORGLOOP                         R8 2 ; [-6]
       35 FORGLOOP                         R3 2 ; [-12]
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateSchemaProperties"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 GETTABLEKS                       R7 R1 K13 ["AllAssetUploadCategoriesIncludingMakeup"]
       46 SETTABLEKS                       R7 R6 K14 ["categories"]
       48 NEWTABLE                         R7 0 3
       50 GETTABLEKS                       R8 R3 K15 ["SharedDataMember"]
       52 GETTABLEKS                       R8 R8 K16 ["rootInstance"]
       54 GETTABLEKS                       R9 R3 K15 ["SharedDataMember"]
       56 GETTABLEKS                       R9 R9 K17 ["consumerConfig"]
       58 GETTABLEKS                       R10 R3 K15 ["SharedDataMember"]
       60 GETTABLEKS                       R10 R10 K18 ["hsrAssets"]
       62 SETLIST                          R7 R8 3 [1]
       64 SETTABLEKS                       R7 R6 K19 ["requiredData"]
       66 SETTABLEKS                       R5 R6 K20 ["fflag"]
       68 NEWTABLE                         R7 0 0
       70 SETTABLEKS                       R7 R6 K21 ["expectedFailures"]
       72 DUPCLOSURE                       R7 K22 [PROTO_0]
       73 CAPTURE                          VAL R1
       74 DUPCLOSURE                       R8 K23 [PROTO_1]
       75 CAPTURE                          VAL R4
       76 DUPCLOSURE                       R9 K24 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R10 K25 [PROTO_3]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R10 R6 K26 ["run"]
       85 RETURN                           R6 1
