PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K0 ["assetId"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 0
        8 ADDK                             R2 R2 K1 [1]
        9 SETUPVAL                         R2 0
       10 DUPTABLE                         R2 K9 [{"scopeId", "assetId", "assetType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       11 GETTABLEKS                       R3 R0 K2 ["scopeId"]
       13 SETTABLEKS                       R3 R2 K2 ["scopeId"]
       15 SETTABLEKS                       R1 R2 K0 ["assetId"]
       17 GETTABLEKS                       R3 R0 K3 ["assetType"]
       19 JUMPIF                           R3 ; [+2]
       20 GETIMPORT                        R3 K13 [Enum.AssetType.Image]
       22 SETTABLEKS                       R3 R2 K3 ["assetType"]
       24 GETTABLEKS                       R4 R0 K4 ["createTime"]
       26 ORK                              R3 R4 K14 ["2024-06-13"]
       27 SETTABLEKS                       R3 R2 K4 ["createTime"]
       29 GETTABLEKS                       R3 R0 K5 ["creationContext"]
       31 JUMPIF                           R3 ; [+10]
       32 DUPTABLE                         R3 K16 [{"creator"}]
       33 DUPTABLE                         R4 K19 [{"userId", "name"}]
       34 LOADN                            R5 0
       35 SETTABLEKS                       R5 R4 K17 ["userId"]
       37 LOADK                            R5 K20 ["MeowMeowCat"]
       38 SETTABLEKS                       R5 R4 K18 ["name"]
       40 SETTABLEKS                       R4 R3 K15 ["creator"]
       42 SETTABLEKS                       R3 R2 K5 ["creationContext"]
       44 GETTABLEKS                       R4 R0 K6 ["description"]
       46 ORK                              R3 R4 K21 ["A cute tabby cat eating the moon"]
       47 SETTABLEKS                       R3 R2 K6 ["description"]
       49 GETTABLEKS                       R4 R0 K7 ["displayName"]
       51 ORK                              R3 R4 K22 ["MeowMeowAsset"]
       52 SETTABLEKS                       R3 R2 K7 ["displayName"]
       54 GETTABLEKS                       R4 R0 K8 ["updateTime"]
       56 ORK                              R3 R4 K14 ["2024-06-13"]
       57 SETTABLEKS                       R3 R2 K8 ["updateTime"]
       59 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R3 R6 K0 ["scopes"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K1 ["id"]
       10 SETTABLE                         R7 R2 R8
       11 FORGLOOP                         R3 2 ; [-4]
       13 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R2 R5 K0 ["assets"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 1
        9 MOVE                             R8 R6
       10 CALL                             R7 1 1
       11 GETTABLEKS                       R9 R6 K1 ["scopeId"]
       13 GETTABLEKS                       R10 R0 K1 ["scopeId"]
       15 JUMPIFEQ                         R9 R10 ; [+2]
       17 LOADB                            R8 0 +1
       18 LOADB                            R8 1
       19 GETTABLEKS                       R10 R7 K2 ["assetType"]
       21 GETTABLEKS                       R11 R0 K2 ["assetType"]
       23 JUMPIFEQ                         R10 R11 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 JUMPIFNOT                        R8 ; [+28]
       28 JUMPIFNOT                        R9 ; [+27]
       29 GETTABLEKS                       R10 R0 K3 ["search"]
       31 JUMPIFEQKS                       R10 K4 [""] ; [+17]
       33 GETIMPORT                        R10 K7 [string.find]
       35 GETTABLEKS                       R11 R7 K8 ["displayName"]
       37 NAMECALL                         R11 R11 K9 ["lower"]
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R12 R0 K3 ["search"]
       42 NAMECALL                         R12 R12 K9 ["lower"]
       44 CALL                             R12 1 1
       45 LOADN                            R13 1
       46 LOADB                            R14 1
       47 CALL                             R10 4 1
       48 JUMPIFNOT                        R10 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       51 MOVE                             R11 R1
       52 MOVE                             R12 R7
       53 GETIMPORT                        R10 K12 [table.insert]
       55 CALL                             R10 2 0
       56 FORGLOOP                         R2 2 ; [-49]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R2 R3 K13 ["pageSize"]
       61 JUMPIFEQKNIL                     R2 ; [+44]
       63 GETTABLEKS                       R4 R0 K15 ["pageToken"]
       65 FASTCALL1                        TONUMBER R4 ; [+2]
       66 GETIMPORT                        R3 K17 [tonumber]
       68 CALL                             R3 1 1
       69 ORK                              R2 R3 K14 [1]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K13 ["pageSize"]
       73 ADD                              R5 R2 R6
       74 SUBK                             R4 R5 K14 [1]
       75 LENGTH                           R5 R1
       76 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       78 GETIMPORT                        R3 K20 [math.min]
       80 CALL                             R3 2 1
       81 NEWTABLE                         R4 0 0
       83 MOVE                             R7 R2
       84 MOVE                             R5 R3
       85 LOADN                            R6 1
       86 FORNPREP                         R5
       87 GETTABLE                         R10 R1 R7
       88 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       90 MOVE                             R9 R4
       91 GETIMPORT                        R8 K12 [table.insert]
       93 CALL                             R8 2 0
       94 FORNLOOP                         R5
       95 LENGTH                           R6 R1
       96 JUMPIFNOTLT                      R3 R6 ; [+7]
       98 ADDK                             R6 R3 K14 [1]
       99 FASTCALL1                        TOSTRING R6 ; [+2]
      100 GETIMPORT                        R5 K22 [tostring]
      102 CALL                             R5 1 1
      103 RETURN                           R4 2
      104 LOADNIL                          R5
      105 RETURN                           R4 2
      106 MOVE                             R2 R1
      107 LOADNIL                          R3
      108 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["assets"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K1 ["assetId"]
        8 JUMPIFNOTEQ                      R6 R0 ; [+5]
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 RETURN                           R6 1
       14 FORGLOOP                         R1 2 ; [-9]
       16 GETIMPORT                        R1 K3 [error]
       18 LOADK                            R3 K4 ["No mock asset found for assetId: %*"]
       19 MOVE                             R5 R0
       20 NAMECALL                         R3 R3 K5 ["format"]
       22 CALL                             R3 2 1
       23 MOVE                             R2 R3
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 4 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["fetchScopesAsync"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["fetchAssetsByScopeAsync"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["fetchAssetByIdAsync"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 LOADN                            R2 0
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R2
       15 DUPCLOSURE                       R4 K7 [PROTO_4]
       16 CAPTURE                          VAL R3
       17 CLOSEUPVALS                      R2
       18 RETURN                           R4 1
