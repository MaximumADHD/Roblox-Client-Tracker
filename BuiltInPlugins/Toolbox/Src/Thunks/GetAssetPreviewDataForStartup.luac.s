PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["data"]
        4 GETTABLEN                        R1 R2 1
        5 JUMPIF                           R1 ; [+15]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["Could not find asset information in response for"]
        9 GETUPVAL                         R5 0
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K6 [tostring]
       13 CALL                             R4 1 1
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K7 ["onTryAssetFailure"]
       18 GETUPVAL                         R3 0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 DUPTABLE                         R2 K11 [{"Asset", "Context", "Creator"}]
       22 DUPTABLE                         R3 K21 [{"Id", "TypeId", "AssetGenres", "Name", "Description", "Created", "Updated", "AssetSubTypes", "Capabilities"}]
       23 GETTABLEKS                       R4 R1 K22 ["asset"]
       25 GETTABLEKS                       R4 R4 K23 ["id"]
       27 SETTABLEKS                       R4 R3 K12 ["Id"]
       29 GETTABLEKS                       R4 R1 K22 ["asset"]
       31 GETTABLEKS                       R4 R4 K24 ["typeId"]
       33 SETTABLEKS                       R4 R3 K13 ["TypeId"]
       35 GETTABLEKS                       R4 R1 K22 ["asset"]
       37 GETTABLEKS                       R4 R4 K25 ["assetGenres"]
       39 SETTABLEKS                       R4 R3 K14 ["AssetGenres"]
       41 GETTABLEKS                       R4 R1 K22 ["asset"]
       43 GETTABLEKS                       R4 R4 K26 ["name"]
       45 SETTABLEKS                       R4 R3 K15 ["Name"]
       47 GETTABLEKS                       R4 R1 K22 ["asset"]
       49 GETTABLEKS                       R4 R4 K27 ["description"]
       51 SETTABLEKS                       R4 R3 K16 ["Description"]
       53 GETTABLEKS                       R4 R1 K22 ["asset"]
       55 GETTABLEKS                       R4 R4 K28 ["createdUtc"]
       57 SETTABLEKS                       R4 R3 K17 ["Created"]
       59 GETTABLEKS                       R4 R1 K22 ["asset"]
       61 GETTABLEKS                       R4 R4 K29 ["updatedUtc"]
       63 SETTABLEKS                       R4 R3 K18 ["Updated"]
       65 GETTABLEKS                       R4 R1 K22 ["asset"]
       67 GETTABLEKS                       R4 R4 K30 ["assetSubTypes"]
       69 SETTABLEKS                       R4 R3 K19 ["AssetSubTypes"]
       71 GETUPVAL                         R5 2
       72 CALL                             R5 0 1
       73 JUMPIFNOT                        R5 ; [+5]
       74 GETTABLEKS                       R4 R1 K22 ["asset"]
       76 GETTABLEKS                       R4 R4 K31 ["capabilities"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R4
       80 SETTABLEKS                       R4 R3 K20 ["Capabilities"]
       82 SETTABLEKS                       R3 R2 K8 ["Asset"]
       84 NEWTABLE                         R3 0 0
       86 SETTABLEKS                       R3 R2 K9 ["Context"]
       88 DUPTABLE                         R3 K33 [{"Name", "Id", "Type"}]
       89 GETTABLEKS                       R4 R1 K34 ["creator"]
       91 GETTABLEKS                       R4 R4 K26 ["name"]
       93 SETTABLEKS                       R4 R3 K15 ["Name"]
       95 GETTABLEKS                       R4 R1 K34 ["creator"]
       97 GETTABLEKS                       R4 R4 K23 ["id"]
       99 SETTABLEKS                       R4 R3 K12 ["Id"]
      101 GETTABLEKS                       R4 R1 K34 ["creator"]
      103 GETTABLEKS                       R4 R4 K35 ["type"]
      105 SETTABLEKS                       R4 R3 K32 ["Type"]
      107 SETTABLEKS                       R3 R2 K10 ["Creator"]
      109 GETUPVAL                         R3 3
      110 MOVE                             R4 R2
      111 CALL                             R3 1 0
      112 GETUPVAL                         R3 4
      113 MOVE                             R4 R2
      114 LOADB                            R5 0
      115 CALL                             R3 2 0
      116 GETUPVAL                         R3 1
      117 GETTABLEKS                       R3 R3 K36 ["onTryAsset"]
      119 GETUPVAL                         R4 0
      120 CALL                             R3 1 0
      121 GETUPVAL                         R3 5
      122 GETUPVAL                         R5 6
      123 GETUPVAL                         R6 0
      124 CALL                             R5 1 -1
      125 NAMECALL                         R3 R3 K37 ["dispatch"]
      127 CALL                             R3 -1 0
      128 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Could not load asset information for"]
        3 GETUPVAL                         R4 0
        4 FASTCALL1                        TOSTRING R4 ; [+2]
        5 GETIMPORT                        R3 K4 [tostring]
        7 CALL                             R3 1 1
        8 MOVE                             R4 R0
        9 CALL                             R1 3 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K5 ["onTryAssetFailure"]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIsEditMode"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K1 ["getState"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R1 R1 K2 ["tryInStudio"]
       12 GETTABLEKS                       R1 R1 K3 ["triedInStudio"]
       14 GETUPVAL                         R2 2
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFNOT                        R0 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 3
       19 NEWTABLE                         R2 0 1
       21 DUPTABLE                         R3 K6 [{"id", "itemType"}]
       22 GETUPVAL                         R4 2
       23 SETTABLEKS                       R4 R3 K4 ["id"]
       25 LOADK                            R4 K7 ["Asset"]
       26 SETTABLEKS                       R4 R3 K5 ["itemType"]
       28 SETLIST                          R2 R3 1 [1]
       30 NAMECALL                         R0 R0 K8 ["getItemDetails"]
       32 CALL                             R0 2 1
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U7
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U0
       44 NAMECALL                         R1 R0 K9 ["andThen"]
       46 CALL                             R1 3 0
       47 LOADNIL                          R1
       48 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+19]
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["Failed to try asset"]
       16 GETUPVAL                         R6 1
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R2 ; [+3]
       22 MOVE                             R7 R2
       23 GETIMPORT                        R6 K6 [tostring]
       25 CALL                             R6 1 1
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["onTryAssetFailure"]
       30 GETUPVAL                         R4 1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R4
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Actions"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["MarkTryInStudioDone"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K3 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Analytics"]
       26 GETTABLEKS                       R4 R4 K9 ["Analytics"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K3 ["Src"]
       33 GETTABLEKS                       R5 R5 K8 ["Util"]
       35 GETTABLEKS                       R5 R5 K10 ["SharedFlags"]
       37 GETTABLEKS                       R5 R5 K11 ["getFFlagToolboxCapabilities"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K12 [PROTO_4]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
