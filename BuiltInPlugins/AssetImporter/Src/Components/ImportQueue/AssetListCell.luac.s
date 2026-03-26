PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FileController"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["Row"]
       10 GETTABLEKS                       R2 R3 K3 ["filepath"]
       12 NAMECALL                         R0 R0 K4 ["requestPreview"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["FileController"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["Row"]
       10 GETTABLEKS                       R2 R3 K3 ["filepath"]
       12 NAMECALL                         R0 R0 K4 ["requestFileSwap"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+69]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["fileType"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["FileType"]
        9 GETTABLEKS                       R1 R2 K2 ["Image"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+7]
       13 GETUPVAL                         R0 3
       14 LOADK                            R2 K3 ["Decal"]
       15 NAMECALL                         R0 R0 K4 ["GetClassIcon"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K0 ["fileType"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K1 ["FileType"]
       25 GETTABLEKS                       R1 R2 K5 ["Audio"]
       27 JUMPIFNOTEQ                      R0 R1 ; [+7]
       29 GETUPVAL                         R0 3
       30 LOADK                            R2 K6 ["Sound"]
       31 NAMECALL                         R0 R0 K4 ["GetClassIcon"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R0 R1 K0 ["fileType"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R2 R3 K1 ["FileType"]
       41 GETTABLEKS                       R1 R2 K7 ["Video"]
       43 JUMPIFNOTEQ                      R0 R1 ; [+7]
       45 GETUPVAL                         R0 3
       46 LOADK                            R2 K8 ["VideoFrame"]
       47 NAMECALL                         R0 R0 K4 ["GetClassIcon"]
       49 CALL                             R0 2 -1
       50 RETURN                           R0 -1
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R0 R1 K0 ["fileType"]
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R2 R3 K1 ["FileType"]
       57 GETTABLEKS                       R1 R2 K9 ["Scene"]
       59 JUMPIFNOTEQ                      R0 R1 ; [+7]
       61 GETUPVAL                         R0 3
       62 LOADK                            R2 K10 ["Model"]
       63 NAMECALL                         R0 R0 K4 ["GetClassIcon"]
       65 CALL                             R0 2 -1
       66 RETURN                           R0 -1
       67 GETIMPORT                        R0 K12 [error]
       69 LOADK                            R1 K13 ["Invalid filetype, resorting to default icon value"]
       70 CALL                             R0 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R0 3
       73 LOADK                            R2 K10 ["Model"]
       74 NAMECALL                         R0 R0 K4 ["GetClassIcon"]
       76 CALL                             R0 2 -1
       77 RETURN                           R0 -1
       78 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 2
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETIMPORT                        R3 K3 [next]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIFEQKNIL                     R3 ; [+2]
       15 RETURN                           R2 1
       16 DUPTABLE                         R3 K7 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       17 LOADK                            R4 K8 ["rbxasset://textures/ClassImages.png"]
       18 SETTABLEKS                       R4 R3 K4 ["Image"]
       20 GETIMPORT                        R4 K11 [Vector2.new]
       22 LOADN                            R5 0
       23 LOADN                            R6 0
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K5 ["ImageRectOffset"]
       27 GETIMPORT                        R4 K11 [Vector2.new]
       29 LOADN                            R5 16
       30 LOADN                            R6 16
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K6 ["ImageRectSize"]
       34 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Localization"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["Style"]
       15 GETTABLEKS                       R4 R0 K4 ["errors"]
       17 GETTABLEKS                       R5 R0 K5 ["warnings"]
       19 ADD                              R3 R4 R5
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 GETTABLEKS                       R6 R0 K6 ["state"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K7 ["SessionState"]
       27 GETTABLEKS                       R7 R8 K8 ["Invalid"]
       29 JUMPIFNOTEQ                      R6 R7 ; [+10]
       31 GETTABLEKS                       R5 R2 K9 ["ErrorIcon"]
       33 LOADK                            R8 K10 ["Error"]
       34 LOADK                            R9 K11 ["Header"]
       35 NAMECALL                         R6 R1 K12 ["getText"]
       37 CALL                             R6 3 1
       38 MOVE                             R4 R6
       39 JUMP                             ; [+67]
       40 GETTABLEKS                       R6 R0 K6 ["state"]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R8 R9 K7 ["SessionState"]
       45 GETTABLEKS                       R7 R8 K13 ["Parsed"]
       47 JUMPIFNOTEQ                      R6 R7 ; [+57]
       49 LOADN                            R6 0
       50 JUMPIFNOTLT                      R6 R3 ; [+54]
       52 GETTABLEKS                       R7 R0 K4 ["errors"]
       54 LOADN                            R8 0
       55 JUMPIFNOTLT                      R8 R7 ; [+4]
       57 GETTABLEKS                       R6 R0 K4 ["errors"]
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R6 R0 K5 ["warnings"]
       62 GETTABLEKS                       R8 R0 K4 ["errors"]
       64 LOADN                            R9 0
       65 JUMPIFNOTLT                      R9 R8 ; [+7]
       67 LOADK                            R9 K14 ["AssetImportTree"]
       68 LOADK                            R10 K15 ["Errors"]
       69 NAMECALL                         R7 R1 K12 ["getText"]
       71 CALL                             R7 3 1
       72 JUMP                             ; [+5]
       73 LOADK                            R9 K14 ["AssetImportTree"]
       74 LOADK                            R10 K16 ["Warnings"]
       75 NAMECALL                         R7 R1 K12 ["getText"]
       77 CALL                             R7 3 1
       78 GETTABLEKS                       R8 R0 K4 ["errors"]
       80 LOADN                            R9 0
       81 JUMPIFNOTLT                      R9 R8 ; [+4]
       83 GETTABLEKS                       R5 R2 K9 ["ErrorIcon"]
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R5 R2 K17 ["WarningIcon"]
       88 LOADK                            R10 K14 ["AssetImportTree"]
       89 LOADK                            R11 K18 ["DescendantsContain2"]
       90 DUPTABLE                         R12 K21 [{"statusCount", "statusType"}]
       91 FASTCALL1                        TOSTRING R6 ; [+3]
       92 MOVE                             R14 R6
       93 GETIMPORT                        R13 K23 [tostring]
       95 CALL                             R13 1 1
       96 SETTABLEKS                       R13 R12 K19 ["statusCount"]
       98 SETTABLEKS                       R7 R12 K20 ["statusType"]
      100 NAMECALL                         R8 R1 K12 ["getText"]
      102 CALL                             R8 4 1
      103 MOVE                             R4 R8
      104 JUMP                             ; [+2]
      105 LOADNIL                          R6
      106 RETURN                           R6 1
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R6 R7 K24 ["createElement"]
      110 GETUPVAL                         R7 3
      111 DUPTABLE                         R8 K27 [{"LayoutOrder", "Style", "Size"}]
      112 LOADN                            R9 3
      113 SETTABLEKS                       R9 R8 K25 ["LayoutOrder"]
      115 DUPTABLE                         R9 K29 [{"Image"}]
      116 GETTABLEKS                       R10 R5 K28 ["Image"]
      118 SETTABLEKS                       R10 R9 K28 ["Image"]
      120 SETTABLEKS                       R9 R8 K3 ["Style"]
      122 GETTABLEKS                       R9 R5 K26 ["Size"]
      124 SETTABLEKS                       R9 R8 K26 ["Size"]
      126 DUPTABLE                         R9 K31 [{"Tooltip"}]
      127 GETUPVAL                         R11 2
      128 GETTABLEKS                       R10 R11 K24 ["createElement"]
      130 GETUPVAL                         R11 4
      131 DUPTABLE                         R12 K33 [{"Text"}]
      132 SETTABLEKS                       R4 R12 K32 ["Text"]
      134 CALL                             R10 2 1
      135 SETTABLEKS                       R10 R9 K30 ["Tooltip"]
      137 CALL                             R6 3 -1
      138 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Row"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["SessionState"]
        8 GETTABLEKS                       R3 R1 K3 ["importDataError"]
       10 JUMPIF                           R3 ; [+28]
       11 GETTABLEKS                       R3 R1 K4 ["state"]
       13 GETTABLEKS                       R4 R2 K5 ["Importing"]
       15 JUMPIFEQ                         R3 R4 ; [+23]
       17 GETTABLEKS                       R3 R1 K4 ["state"]
       19 GETTABLEKS                       R4 R2 K6 ["Parsing"]
       21 JUMPIFEQ                         R3 R4 ; [+17]
       23 GETTABLEKS                       R3 R1 K4 ["state"]
       25 GETTABLEKS                       R4 R2 K7 ["Invalid"]
       27 JUMPIFEQ                         R3 R4 ; [+11]
       29 GETTABLEKS                       R4 R0 K8 ["CellProps"]
       31 GETTABLEKS                       R3 R4 K9 ["OnCheckboxToggle"]
       33 MOVE                             R4 R3
       34 GETTABLEKS                       R6 R0 K1 ["Row"]
       36 GETTABLEKS                       R5 R6 K10 ["filepath"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Row"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["CellProps"]
       10 GETTABLEKS                       R2 R3 K3 ["UpdateCreator"]
       12 MOVE                             R3 R2
       13 GETTABLEKS                       R4 R1 K4 ["filepath"]
       15 MOVE                             R5 R0
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+30]
        8 GETTABLEKS                       R3 R1 K2 ["Row"]
       10 GETTABLEKS                       R2 R3 K3 ["state"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K4 ["SessionState"]
       15 GETTABLEKS                       R3 R4 K5 ["Imported"]
       17 JUMPIFEQ                         R2 R3 ; [+12]
       19 GETTABLEKS                       R3 R1 K2 ["Row"]
       21 GETTABLEKS                       R2 R3 K3 ["state"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K4 ["SessionState"]
       26 GETTABLEKS                       R3 R4 K6 ["Importing"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+8]
       30 GETTABLEKS                       R3 R1 K7 ["CellProps"]
       32 GETTABLEKS                       R2 R3 K8 ["ShowUploadWidget"]
       34 GETTABLEKS                       R3 R1 K2 ["Row"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+27]
        6 GETTABLEKS                       R2 R0 K1 ["Row"]
        8 GETTABLEKS                       R1 R2 K2 ["uploadResults"]
       10 GETTABLEKS                       R3 R0 K1 ["Row"]
       12 GETTABLEKS                       R2 R3 K3 ["state"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K4 ["SessionState"]
       17 GETTABLEKS                       R3 R4 K5 ["Imported"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+31]
       21 JUMPIFNOT                        R1 ; [+29]
       22 GETTABLEKS                       R2 R1 K6 ["Succeeded"]
       24 JUMPIF                           R2 ; [+26]
       25 GETTABLEKS                       R3 R0 K7 ["CellProps"]
       27 GETTABLEKS                       R2 R3 K8 ["ShowUploadWidget"]
       29 GETTABLEKS                       R3 R0 K1 ["Row"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R2 R0 K1 ["Row"]
       35 GETTABLEKS                       R1 R2 K3 ["state"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K4 ["SessionState"]
       40 GETTABLEKS                       R2 R3 K5 ["Imported"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+8]
       44 GETTABLEKS                       R2 R0 K7 ["CellProps"]
       46 GETTABLEKS                       R1 R2 K8 ["ShowUploadWidget"]
       48 GETTABLEKS                       R2 R0 K1 ["Row"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Row"]
        5 GETTABLEKS                       R1 R2 K2 ["currentPreset"]
        7 GETTABLEKS                       R3 R0 K3 ["CellProps"]
        9 GETTABLEKS                       R2 R3 K4 ["UpdateCreator"]
       11 GETTABLEKS                       R3 R0 K5 ["PresetController"]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 GETTABLEKS                       R8 R0 K1 ["Row"]
       17 GETTABLEKS                       R7 R8 K6 ["creatorId"]
       19 NAMECALL                         R3 R3 K7 ["DEPRECATED_applyPresetToAllSessions"]
       21 CALL                             R3 4 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["QueueController"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["Row"]
       10 NAMECALL                         R0 R0 K3 ["removeSelectedQueuedFile"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["Localization"]
       10 NEWTABLE                         R3 0 2
       12 DUPTABLE                         R4 K6 [{"Text", "OnItemClicked"}]
       13 LOADK                            R7 K7 ["AssetImportTree"]
       14 LOADK                            R8 K8 ["RightClickApplyToAll"]
       15 NAMECALL                         R5 R2 K9 ["getText"]
       17 CALL                             R5 3 1
       18 SETTABLEKS                       R5 R4 K4 ["Text"]
       20 GETUPVAL                         R5 1
       21 SETTABLEKS                       R5 R4 K5 ["OnItemClicked"]
       23 DUPTABLE                         R5 K6 [{"Text", "OnItemClicked"}]
       24 LOADK                            R8 K10 ["ImportQueue"]
       25 LOADK                            R9 K11 ["RemoveFromQueue"]
       26 NAMECALL                         R6 R2 K9 ["getText"]
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K4 ["Text"]
       31 GETUPVAL                         R6 2
       32 SETTABLEKS                       R6 R5 K5 ["OnItemClicked"]
       34 SETLIST                          R3 R4 2 [1]
       36 GETUPVAL                         R4 3
       37 MOVE                             R5 R1
       38 MOVE                             R6 R3
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K2 ["state"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["SessionState"]
       11 GETTABLEKS                       R3 R4 K4 ["Parsed"]
       13 JUMPIFEQ                         R2 R3 ; [+12]
       15 GETTABLEKS                       R2 R0 K2 ["state"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K3 ["SessionState"]
       20 GETTABLEKS                       R3 R4 K5 ["Invalid"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 GETTABLEKS                       R2 R0 K2 ["state"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["SessionState"]
       10 GETTABLEKS                       R3 R4 K4 ["Invalid"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 GETTABLEKS                       R1 R0 K2 ["state"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K3 ["SessionState"]
       10 GETTABLEKS                       R2 R3 K4 ["Parsing"]
       12 JUMPIFEQ                         R1 R2 ; [+10]
       14 GETTABLEKS                       R1 R0 K2 ["state"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K3 ["SessionState"]
       19 GETTABLEKS                       R2 R3 K5 ["Importing"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K6 ["Indeterminate"]
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K7 ["enabled"]
       29 RETURN                           R1 1

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["openImportPreview"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["reopenFileSelection"]
        8 DUPCLOSURE                       R1 K2 [PROTO_3]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K3 ["getAssetIcon"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 SETTABLEKS                       R1 R0 K4 ["getAssetStatus"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 SETTABLEKS                       R1 R0 K5 ["toggleCheckbox"]
       27 NEWCLOSURE                       R1 P5
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K6 ["updateCreator"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R1 R0 K7 ["onStateChanged"]
       37 NEWCLOSURE                       R1 P7
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R1 R0 K8 ["onStatusClicked"]
       43 NEWCLOSURE                       R1 P8
       44 CAPTURE                          VAL R0
       45 NEWCLOSURE                       R2 P9
       46 CAPTURE                          VAL R0
       47 NEWCLOSURE                       R3 P10
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U7
       52 SETTABLEKS                       R3 R0 K9 ["showContextMenu"]
       54 NEWCLOSURE                       R3 P11
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R3 R0 K10 ["isDisabled"]
       59 NEWCLOSURE                       R3 P12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U1
       62 SETTABLEKS                       R3 R0 K11 ["isInactive"]
       64 NEWCLOSURE                       R3 P13
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          UPVAL U8
       68 SETTABLEKS                       R3 R0 K12 ["isChecked"]
       70 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createFragment"]
        5 DUPTABLE                         R3 K4 [{"Layout", "Checkbox"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K5 ["createElement"]
        9 LOADK                            R5 K6 ["UIListLayout"]
       10 DUPTABLE                         R6 K10 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       11 GETIMPORT                        R7 K13 [Enum.FillDirection.Horizontal]
       13 SETTABLEKS                       R7 R6 K7 ["FillDirection"]
       15 GETIMPORT                        R7 K15 [Enum.HorizontalAlignment.Center]
       17 SETTABLEKS                       R7 R6 K8 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K16 [Enum.VerticalAlignment.Center]
       21 SETTABLEKS                       R7 R6 K9 ["VerticalAlignment"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K2 ["Layout"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K5 ["createElement"]
       29 GETUPVAL                         R5 1
       30 DUPTABLE                         R6 K20 [{"OnClick", "Key", "Checked"}]
       31 GETTABLEKS                       R7 R0 K21 ["toggleCheckbox"]
       33 SETTABLEKS                       R7 R6 K17 ["OnClick"]
       35 GETTABLEKS                       R7 R1 K22 ["RowIndex"]
       37 SETTABLEKS                       R7 R6 K18 ["Key"]
       39 GETTABLEKS                       R7 R0 K23 ["isChecked"]
       41 CALL                             R7 0 1
       42 SETTABLEKS                       R7 R6 K19 ["Checked"]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K3 ["Checkbox"]
       47 CALL                             R2 1 -1
       48 RETURN                           R2 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R3 R2 K2 ["ImportQueue"]
        6 GETTABLEKS                       R4 R3 K3 ["Padding"]
        8 GETTABLEKS                       R5 R3 K4 ["DisabledTransparancy"]
       10 GETTABLEKS                       R6 R1 K5 ["Row"]
       12 GETTABLEKS                       R7 R0 K6 ["getAssetIcon"]
       14 MOVE                             R8 R6
       15 CALL                             R7 1 1
       16 GETTABLEKS                       R8 R0 K7 ["isInactive"]
       18 CALL                             R8 0 1
       19 GETTABLEKS                       R9 R0 K8 ["isDisabled"]
       21 CALL                             R9 0 1
       22 GETTABLEKS                       R11 R1 K9 ["CellProps"]
       24 GETTABLEKS                       R10 R11 K10 ["Uploading"]
       26 JUMPIFNOT                        R8 ; [+2]
       27 GETUPVAL                         R11 0
       28 JUMP                             ; [+1]
       29 GETUPVAL                         R11 1
       30 GETUPVAL                         R13 2
       31 GETTABLEKS                       R12 R13 K11 ["createElement"]
       33 GETUPVAL                         R13 3
       34 DUPTABLE                         R14 K15 [{"Layout", "HorizontalAlignment", "Padding", "Spacing"}]
       35 GETIMPORT                        R15 K19 [Enum.FillDirection.Horizontal]
       37 SETTABLEKS                       R15 R14 K12 ["Layout"]
       39 GETIMPORT                        R15 K21 [Enum.HorizontalAlignment.Left]
       41 SETTABLEKS                       R15 R14 K13 ["HorizontalAlignment"]
       43 DUPTABLE                         R15 K23 [{"Left", "Right"}]
       44 SETTABLEKS                       R4 R15 K20 ["Left"]
       46 SETTABLEKS                       R4 R15 K22 ["Right"]
       48 SETTABLEKS                       R15 R14 K3 ["Padding"]
       50 SETTABLEKS                       R4 R14 K14 ["Spacing"]
       52 DUPTABLE                         R15 K27 [{"Icon", "AssetName", "Status"}]
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R16 R17 K11 ["createElement"]
       56 GETUPVAL                         R17 3
       57 DUPTABLE                         R18 K32 [{"LayoutOrder", "Size", "Image", "ImageTransparency"}]
       58 LOADN                            R19 1
       59 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
       61 GETIMPORT                        R19 K35 [UDim2.fromOffset]
       63 GETTABLEKS                       R21 R7 K36 ["ImageRectSize"]
       65 GETTABLEKS                       R20 R21 K37 ["X"]
       67 GETTABLEKS                       R22 R7 K36 ["ImageRectSize"]
       69 GETTABLEKS                       R21 R22 K38 ["Y"]
       71 CALL                             R19 2 1
       72 SETTABLEKS                       R19 R18 K29 ["Size"]
       74 GETTABLEKS                       R19 R7 K30 ["Image"]
       76 SETTABLEKS                       R19 R18 K30 ["Image"]
       78 JUMPIFNOT                        R9 ; [+2]
       79 MOVE                             R19 R5
       80 JUMP                             ; [+1]
       81 LOADN                            R19 0
       82 SETTABLEKS                       R19 R18 K31 ["ImageTransparency"]
       84 CALL                             R16 2 1
       85 SETTABLEKS                       R16 R15 K24 ["Icon"]
       87 GETUPVAL                         R17 2
       88 GETTABLEKS                       R16 R17 K11 ["createElement"]
       90 GETUPVAL                         R17 3
       91 DUPTABLE                         R18 K39 [{"LayoutOrder", "Layout", "HorizontalAlignment"}]
       92 LOADN                            R19 2
       93 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
       95 GETIMPORT                        R19 K19 [Enum.FillDirection.Horizontal]
       97 SETTABLEKS                       R19 R18 K12 ["Layout"]
       99 GETIMPORT                        R19 K21 [Enum.HorizontalAlignment.Left]
      101 SETTABLEKS                       R19 R18 K13 ["HorizontalAlignment"]
      103 DUPTABLE                         R19 K42 [{"FlexItem", "Text"}]
      104 GETUPVAL                         R21 2
      105 GETTABLEKS                       R20 R21 K11 ["createElement"]
      107 LOADK                            R21 K43 ["UIFlexItem"]
      108 DUPTABLE                         R22 K45 [{"FlexMode"}]
      109 GETIMPORT                        R23 K48 [Enum.UIFlexMode.Fill]
      111 SETTABLEKS                       R23 R22 K44 ["FlexMode"]
      113 CALL                             R20 2 1
      114 SETTABLEKS                       R20 R19 K40 ["FlexItem"]
      116 GETUPVAL                         R21 2
      117 GETTABLEKS                       R20 R21 K11 ["createElement"]
      119 MOVE                             R21 R11
      120 DUPTABLE                         R22 K53 [{"TextXAlignment", "TextWrapped", "OnClick", "Text", "Size", "TextTruncate", "Style"}]
      121 GETIMPORT                        R23 K54 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R23 R22 K49 ["TextXAlignment"]
      125 LOADB                            R23 1
      126 SETTABLEKS                       R23 R22 K50 ["TextWrapped"]
      128 JUMPIF                           R8 ; [+4]
      129 JUMPIF                           R10 ; [+3]
      130 GETTABLEKS                       R23 R0 K55 ["openImportPreview"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R23
      134 SETTABLEKS                       R23 R22 K51 ["OnClick"]
      136 GETTABLEKS                       R23 R6 K56 ["assetName"]
      138 SETTABLEKS                       R23 R22 K41 ["Text"]
      140 GETIMPORT                        R23 K58 [UDim2.fromScale]
      142 LOADN                            R24 1
      143 LOADN                            R25 1
      144 CALL                             R23 2 1
      145 SETTABLEKS                       R23 R22 K29 ["Size"]
      147 GETIMPORT                        R23 K60 [Enum.TextTruncate.SplitWord]
      149 SETTABLEKS                       R23 R22 K52 ["TextTruncate"]
      151 JUMPIFNOT                        R9 ; [+3]
      152 JUMPIF                           R8 ; [+2]
      153 LOADK                            R23 K61 ["Disabled"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R23
      156 SETTABLEKS                       R23 R22 K1 ["Style"]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K41 ["Text"]
      161 CALL                             R16 3 1
      162 SETTABLEKS                       R16 R15 K25 ["AssetName"]
      164 GETTABLEKS                       R16 R0 K62 ["getAssetStatus"]
      166 CALL                             R16 0 1
      167 SETTABLEKS                       R16 R15 K26 ["Status"]
      169 CALL                             R12 3 -1
      170 RETURN                           R12 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+45]
        9 GETTABLEKS                       R4 R2 K3 ["fileType"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K4 ["FileType"]
       14 GETTABLEKS                       R5 R6 K5 ["Scene"]
       16 JUMPIFEQ                         R4 R5 ; [+37]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K6 ["createElement"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K7 ["View"]
       24 DUPTABLE                         R6 K9 [{"tag"}]
       25 LOADK                            R7 K10 ["row size-full-full padding-x-small align-y-center"]
       26 SETTABLEKS                       R7 R6 K8 ["tag"]
       28 NEWTABLE                         R7 0 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K6 ["createElement"]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R9 R10 K11 ["Text"]
       36 DUPTABLE                         R10 K12 [{"tag", "Text"}]
       37 LOADK                            R11 K13 ["size-full-0 auto-y content-emphasis text-body-small text-align-x-left text-align-y-center"]
       38 SETTABLEKS                       R11 R10 K8 ["tag"]
       40 GETTABLEKS                       R11 R1 K14 ["Localization"]
       42 LOADK                            R13 K15 ["ImportQueue"]
       43 LOADK                            R14 K16 ["NoPreset"]
       44 NAMECALL                         R11 R11 K17 ["getText"]
       46 CALL                             R11 3 1
       47 SETTABLEKS                       R11 R10 K11 ["Text"]
       49 CALL                             R8 2 -1
       50 SETLIST                          R7 R8 -1 [1]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1
       54 GETTABLEKS                       R5 R0 K18 ["isInactive"]
       56 CALL                             R5 0 1
       57 NOT                              R4 R5
       58 JUMPIFNOT                        R4 ; [+11]
       59 GETTABLEKS                       R6 R1 K19 ["CellProps"]
       61 GETTABLEKS                       R5 R6 K20 ["Uploading"]
       63 NOT                              R4 R5
       64 JUMPIFNOT                        R4 ; [+5]
       65 GETTABLEKS                       R6 R1 K19 ["CellProps"]
       67 GETTABLEKS                       R5 R6 K21 ["Parsing"]
       69 NOT                              R4 R5
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R5 R6 K22 ["createFragment"]
       73 DUPTABLE                         R6 K25 [{"PresetSelector", "Padding"}]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R7 R8 K6 ["createElement"]
       77 GETUPVAL                         R8 5
       78 DUPTABLE                         R9 K28 [{"QueueItem", "Enabled"}]
       79 SETTABLEKS                       R2 R9 K26 ["QueueItem"]
       81 SETTABLEKS                       R4 R9 K27 ["Enabled"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K23 ["PresetSelector"]
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R7 R8 K6 ["createElement"]
       89 LOADK                            R8 K29 ["UIPadding"]
       90 GETTABLEKS                       R10 R3 K30 ["AssetListCell"]
       92 GETTABLEKS                       R9 R10 K24 ["Padding"]
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K24 ["Padding"]
       97 CALL                             R5 1 -1
       98 RETURN                           R5 -1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["Row"]
        8 GETTABLEKS                       R3 R4 K3 ["creatorId"]
       10 GETTABLEKS                       R5 R0 K4 ["isInactive"]
       12 CALL                             R5 0 1
       13 NOT                              R4 R5
       14 JUMPIFNOT                        R4 ; [+11]
       15 GETTABLEKS                       R6 R1 K5 ["CellProps"]
       17 GETTABLEKS                       R5 R6 K6 ["Uploading"]
       19 NOT                              R4 R5
       20 JUMPIFNOT                        R4 ; [+5]
       21 GETTABLEKS                       R6 R1 K5 ["CellProps"]
       23 GETTABLEKS                       R5 R6 K7 ["Parsing"]
       25 NOT                              R4 R5
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K8 ["createFragment"]
       29 DUPTABLE                         R6 K11 [{"CreatorSelector", "Padding"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K12 ["createElement"]
       33 GETUPVAL                         R8 1
       34 DUPTABLE                         R9 K17 [{"Localization", "OnSetItem", "Value", "Enabled"}]
       35 GETTABLEKS                       R11 R0 K0 ["props"]
       37 GETTABLEKS                       R10 R11 K13 ["Localization"]
       39 SETTABLEKS                       R10 R9 K13 ["Localization"]
       41 GETTABLEKS                       R10 R0 K18 ["updateCreator"]
       43 SETTABLEKS                       R10 R9 K14 ["OnSetItem"]
       45 SETTABLEKS                       R3 R9 K15 ["Value"]
       47 SETTABLEKS                       R4 R9 K16 ["Enabled"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K9 ["CreatorSelector"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K12 ["createElement"]
       55 LOADK                            R8 K19 ["UIPadding"]
       56 GETTABLEKS                       R10 R2 K20 ["AssetListCell"]
       58 GETTABLEKS                       R9 R10 K10 ["Padding"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K10 ["Padding"]
       63 CALL                             R5 1 -1
       64 RETURN                           R5 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R3 R2 K2 ["ImportQueue"]
        6 GETTABLEKS                       R4 R3 K3 ["Padding"]
        8 GETTABLEKS                       R6 R1 K4 ["CellProps"]
       10 GETTABLEKS                       R5 R6 K5 ["Uploading"]
       12 GETTABLEKS                       R7 R1 K4 ["CellProps"]
       14 GETTABLEKS                       R6 R7 K6 ["Parsing"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K7 ["createFragment"]
       19 DUPTABLE                         R8 K9 [{"Padding", "Path"}]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R9 R10 K10 ["createElement"]
       23 LOADK                            R10 K11 ["UIPadding"]
       24 DUPTABLE                         R11 K14 [{"PaddingLeft", "PaddingRight"}]
       25 GETIMPORT                        R12 K17 [UDim.new]
       27 LOADN                            R13 0
       28 MOVE                             R14 R4
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R11 K12 ["PaddingLeft"]
       32 GETIMPORT                        R12 K17 [UDim.new]
       34 LOADN                            R13 0
       35 MOVE                             R14 R4
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K13 ["PaddingRight"]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K3 ["Padding"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K10 ["createElement"]
       45 GETUPVAL                         R10 1
       46 DUPTABLE                         R11 K22 [{"Layout", "HorizontalAlignment", "Spacing", "ClipsDescendants"}]
       47 GETIMPORT                        R12 K26 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R12 R11 K18 ["Layout"]
       51 GETIMPORT                        R12 K28 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R12 R11 K19 ["HorizontalAlignment"]
       55 SETTABLEKS                       R4 R11 K20 ["Spacing"]
       57 LOADB                            R12 1
       58 SETTABLEKS                       R12 R11 K21 ["ClipsDescendants"]
       60 DUPTABLE                         R12 K30 [{"PathText"}]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K10 ["createElement"]
       64 GETUPVAL                         R14 2
       65 DUPTABLE                         R15 K35 [{"LayoutOrder", "Size", "Text", "OnClick", "Style"}]
       66 LOADN                            R16 1
       67 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
       69 GETIMPORT                        R16 K38 [UDim2.fromScale]
       71 LOADN                            R17 1
       72 LOADN                            R18 1
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K32 ["Size"]
       76 GETTABLEKS                       R17 R1 K39 ["Row"]
       78 GETTABLEKS                       R16 R17 K40 ["filepath"]
       80 SETTABLEKS                       R16 R15 K33 ["Text"]
       82 JUMPIF                           R5 ; [+4]
       83 JUMPIF                           R6 ; [+3]
       84 GETTABLEKS                       R16 R0 K41 ["reopenFileSelection"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R16
       88 SETTABLEKS                       R16 R15 K34 ["OnClick"]
       90 GETTABLEKS                       R17 R0 K42 ["isDisabled"]
       92 CALL                             R17 0 1
       93 JUMPIFNOT                        R17 ; [+2]
       94 LOADK                            R16 K43 ["Disabled"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R16
       97 SETTABLEKS                       R16 R15 K1 ["Style"]
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K29 ["PathText"]
      102 CALL                             R9 3 1
      103 SETTABLEKS                       R9 R8 K8 ["Path"]
      105 CALL                             R7 1 -1
      106 RETURN                           R7 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R5 R3 K3 ["Icons"]
        8 GETTABLEKS                       R4 R5 K4 ["SuccessIconSolid"]
       10 GETTABLEKS                       R6 R3 K3 ["Icons"]
       12 GETTABLEKS                       R5 R6 K5 ["ErrorIconSolid"]
       14 GETTABLEKS                       R7 R3 K3 ["Icons"]
       16 GETTABLEKS                       R6 R7 K6 ["SmallLength"]
       18 GETTABLEKS                       R8 R3 K7 ["ImportQueue"]
       20 GETTABLEKS                       R7 R8 K8 ["IconButtonSize"]
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 GETTABLEKS                       R10 R2 K9 ["state"]
       26 GETUPVAL                         R13 0
       27 GETTABLEKS                       R12 R13 K10 ["SessionState"]
       29 GETTABLEKS                       R11 R12 K11 ["Parsing"]
       31 JUMPIFEQ                         R10 R11 ; [+15]
       33 GETTABLEKS                       R11 R1 K12 ["CellProps"]
       35 GETTABLEKS                       R10 R11 K13 ["Uploading"]
       37 JUMPIFNOT                        R10 ; [+22]
       38 GETTABLEKS                       R10 R2 K9 ["state"]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R12 R13 K10 ["SessionState"]
       43 GETTABLEKS                       R11 R12 K14 ["Importing"]
       45 JUMPIFNOTEQ                      R10 R11 ; [+14]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R10 R11 K15 ["createElement"]
       50 GETUPVAL                         R11 2
       51 DUPTABLE                         R12 K17 [{"size"}]
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R13 R14 K18 ["Small"]
       55 SETTABLEKS                       R13 R12 K16 ["size"]
       57 CALL                             R10 2 1
       58 MOVE                             R9 R10
       59 JUMP                             ; [+48]
       60 GETTABLEKS                       R10 R2 K9 ["state"]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R12 R13 K10 ["SessionState"]
       65 GETTABLEKS                       R11 R12 K19 ["Imported"]
       67 JUMPIFNOTEQ                      R10 R11 ; [+38]
       69 GETTABLEKS                       R11 R2 K20 ["uploadResults"]
       71 GETTABLEKS                       R10 R11 K21 ["Succeeded"]
       73 JUMPIFNOT                        R10 ; [+2]
       74 MOVE                             R8 R4
       75 JUMP                             ; [+1]
       76 MOVE                             R8 R5
       77 GETUPVAL                         R11 4
       78 GETTABLEKS                       R10 R11 K15 ["createElement"]
       80 GETUPVAL                         R11 5
       81 DUPTABLE                         R12 K27 [{"IconSize", "LeftIcon", "OnClick", "Style", "Size", "LayoutOrder"}]
       82 SETTABLEKS                       R6 R12 K22 ["IconSize"]
       84 SETTABLEKS                       R8 R12 K23 ["LeftIcon"]
       86 GETTABLEKS                       R13 R0 K28 ["onStatusClicked"]
       88 SETTABLEKS                       R13 R12 K24 ["OnClick"]
       90 LOADK                            R13 K29 ["IconOnly"]
       91 SETTABLEKS                       R13 R12 K2 ["Style"]
       93 GETIMPORT                        R13 K32 [UDim2.fromOffset]
       95 MOVE                             R14 R7
       96 MOVE                             R15 R7
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K25 ["Size"]
      100 LOADN                            R13 2
      101 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      103 CALL                             R10 2 1
      104 MOVE                             R9 R10
      105 JUMP                             ; [+2]
      106 LOADNIL                          R10
      107 RETURN                           R10 1
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R10 R11 K33 ["createFragment"]
      111 DUPTABLE                         R11 K35 [{"Alert"}]
      112 GETUPVAL                         R13 1
      113 GETTABLEKS                       R12 R13 K15 ["createElement"]
      115 GETUPVAL                         R13 6
      116 DUPTABLE                         R14 K38 [{"tag", "onStateChanged"}]
      117 LOADK                            R15 K39 ["auto-xy anchor-center-center position-center-center"]
      118 SETTABLEKS                       R15 R14 K36 ["tag"]
      120 GETUPVAL                         R16 7
      121 CALL                             R16 0 1
      122 JUMPIFNOT                        R16 ; [+3]
      123 GETTABLEKS                       R15 R0 K37 ["onStateChanged"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R15
      127 SETTABLEKS                       R15 R14 K37 ["onStateChanged"]
      129 MOVE                             R15 R9
      130 CALL                             R12 3 1
      131 SETTABLEKS                       R12 R11 K34 ["Alert"]
      133 CALL                             R10 1 -1
      134 RETURN                           R10 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["Columns"]
        4 GETTABLEKS                       R5 R1 K2 ["ColumnIndex"]
        6 GETTABLE                         R3 R4 R5
        7 GETTABLEKS                       R2 R3 K3 ["Key"]
        9 JUMPIFNOTEQKS                    R2 K4 ["Checkbox"] ; [+5]
       11 NAMECALL                         R3 R0 K5 ["renderCheckboxCell"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 JUMPIFNOTEQKS                    R2 K6 ["Asset"] ; [+5]
       17 NAMECALL                         R3 R0 K7 ["renderAssetCell"]
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
       21 JUMPIFNOTEQKS                    R2 K8 ["Preset"] ; [+5]
       23 NAMECALL                         R3 R0 K9 ["renderPresetCell"]
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
       27 JUMPIFNOTEQKS                    R2 K10 ["Creator"] ; [+5]
       29 NAMECALL                         R3 R0 K11 ["renderCreatorCell"]
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1
       33 JUMPIFNOTEQKS                    R2 K12 ["Path"] ; [+5]
       35 NAMECALL                         R3 R0 K13 ["renderPathCell"]
       37 CALL                             R3 1 -1
       38 RETURN                           R3 -1
       39 JUMPIFNOTEQKS                    R2 K14 ["Status"] ; [+5]
       41 NAMECALL                         R3 R0 K15 ["renderStatusCell"]
       43 CALL                             R3 1 -1
       44 RETURN                           R3 -1
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Style"]
        4 GETTABLEKS                       R2 R3 K2 ["AssetListCell"]
        6 GETTABLEKS                       R3 R1 K3 ["Width"]
        8 JUMPIF                           R3 ; [+8]
        9 GETIMPORT                        R3 K6 [UDim.new]
       11 GETTABLEKS                       R6 R1 K8 ["Columns"]
       13 LENGTH                           R5 R6
       14 DIVRK                            R4 R7 K5 ["new"]
       15 LOADN                            R5 0
       16 CALL                             R3 2 1
       17 GETTABLEKS                       R5 R1 K9 ["StyleModifier"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K10 ["Hover"]
       22 JUMPIFNOTEQ                      R5 R6 ; [+4]
       24 GETTABLEKS                       R4 R2 K11 ["OnHoverBackgroundOverride"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R4 R2 K12 ["DefaultBackgroundOverride"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K13 ["createElement"]
       32 GETUPVAL                         R6 2
       33 DUPTABLE                         R7 K22 [{"LayoutOrder", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants", "OnRightClick"}]
       34 GETTABLEKS                       R8 R1 K23 ["ColumnIndex"]
       36 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       38 SETTABLEKS                       R4 R7 K15 ["BackgroundColor3"]
       40 LOADN                            R8 0
       41 SETTABLEKS                       R8 R7 K16 ["BackgroundTransparency"]
       43 GETTABLEKS                       R8 R2 K17 ["BorderSizePixel"]
       45 SETTABLEKS                       R8 R7 K17 ["BorderSizePixel"]
       47 GETTABLEKS                       R8 R2 K18 ["BorderColor3"]
       49 SETTABLEKS                       R8 R7 K18 ["BorderColor3"]
       51 GETIMPORT                        R8 K25 [UDim2.new]
       53 GETTABLEKS                       R9 R3 K26 ["Scale"]
       55 GETTABLEKS                       R10 R3 K27 ["Offset"]
       57 LOADN                            R11 1
       58 LOADN                            R12 0
       59 CALL                             R8 4 1
       60 SETTABLEKS                       R8 R7 K19 ["Size"]
       62 LOADB                            R8 1
       63 SETTABLEKS                       R8 R7 K20 ["ClipsDescendants"]
       65 GETTABLEKS                       R8 R0 K28 ["showContextMenu"]
       67 SETTABLEKS                       R8 R7 K21 ["OnRightClick"]
       69 DUPTABLE                         R8 K30 [{"Content"}]
       70 NAMECALL                         R9 R0 K31 ["getContent"]
       72 CALL                             R9 1 1
       73 SETTABLEKS                       R9 R8 K29 ["Content"]
       75 CALL                             R5 3 -1
       76 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["RoactCompat"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K11 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["Foundation"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R5 K16 ["ContextServices"]
       50 GETTABLEKS                       R8 R7 K17 ["Localization"]
       52 GETTABLEKS                       R10 R5 K18 ["Util"]
       54 GETTABLEKS                       R9 R10 K19 ["StyleModifier"]
       56 GETTABLEKS                       R10 R5 K20 ["UI"]
       58 GETTABLEKS                       R11 R10 K21 ["Checkbox"]
       60 GETTABLEKS                       R12 R10 K22 ["IconButton"]
       62 GETTABLEKS                       R13 R10 K23 ["Image"]
       64 GETTABLEKS                       R14 R10 K24 ["LinkText"]
       66 GETTABLEKS                       R15 R10 K25 ["Pane"]
       68 GETTABLEKS                       R16 R10 K26 ["showContextMenu"]
       70 GETTABLEKS                       R17 R10 K27 ["TextLabel"]
       72 GETTABLEKS                       R18 R10 K28 ["Tooltip"]
       74 GETTABLEKS                       R20 R6 K29 ["Enums"]
       76 GETTABLEKS                       R19 R20 K30 ["IconSize"]
       78 GETTABLEKS                       R20 R6 K31 ["Loading"]
       80 GETTABLEKS                       R21 R6 K32 ["View"]
       82 GETTABLEKS                       R23 R6 K29 ["Enums"]
       84 GETTABLEKS                       R22 R23 K33 ["ControlState"]
       86 GETTABLEKS                       R24 R0 K6 ["Src"]
       88 GETTABLEKS                       R23 R24 K34 ["Components"]
       90 GETIMPORT                        R24 K5 [require]
       92 GETTABLEKS                       R26 R23 K35 ["Presets"]
       94 GETTABLEKS                       R25 R26 K36 ["PresetSelector"]
       96 CALL                             R24 1 1
       97 GETIMPORT                        R25 K5 [require]
       99 GETTABLEKS                       R28 R23 K37 ["Properties"]
      101 GETTABLEKS                       R27 R28 K38 ["Types"]
      103 GETTABLEKS                       R26 R27 K39 ["UploadDestinationProperty"]
      105 CALL                             R25 1 1
      106 GETIMPORT                        R26 K5 [require]
      108 GETTABLEKS                       R28 R23 K40 ["ImportQueue"]
      110 GETTABLEKS                       R27 R28 K41 ["AssetFilePath"]
      112 CALL                             R26 1 1
      113 GETIMPORT                        R27 K5 [require]
      115 GETTABLEKS                       R30 R0 K6 ["Src"]
      117 GETTABLEKS                       R29 R30 K42 ["Controllers"]
      119 GETTABLEKS                       R28 R29 K43 ["FileController"]
      121 CALL                             R27 1 1
      122 GETIMPORT                        R28 K5 [require]
      124 GETTABLEKS                       R31 R0 K6 ["Src"]
      126 GETTABLEKS                       R30 R31 K42 ["Controllers"]
      128 GETTABLEKS                       R29 R30 K44 ["PresetController"]
      130 CALL                             R28 1 1
      131 GETIMPORT                        R29 K5 [require]
      133 GETTABLEKS                       R32 R0 K6 ["Src"]
      135 GETTABLEKS                       R31 R32 K42 ["Controllers"]
      137 GETTABLEKS                       R30 R31 K45 ["QueueController"]
      139 CALL                             R29 1 1
      140 GETIMPORT                        R30 K5 [require]
      142 GETTABLEKS                       R32 R0 K6 ["Src"]
      144 GETTABLEKS                       R31 R32 K38 ["Types"]
      146 CALL                             R30 1 1
      147 GETIMPORT                        R31 K5 [require]
      149 GETTABLEKS                       R34 R0 K6 ["Src"]
      151 GETTABLEKS                       R33 R34 K38 ["Types"]
      153 GETTABLEKS                       R32 R33 K46 ["QueuedSession"]
      155 CALL                             R31 1 1
      156 GETIMPORT                        R32 K5 [require]
      158 GETTABLEKS                       R35 R0 K6 ["Src"]
      160 GETTABLEKS                       R34 R35 K47 ["Flags"]
      162 GETTABLEKS                       R33 R34 K48 ["getEFCinUnifiedImportQueue"]
      164 CALL                             R32 1 1
      165 GETIMPORT                        R33 K5 [require]
      167 GETTABLEKS                       R36 R0 K6 ["Src"]
      169 GETTABLEKS                       R35 R36 K47 ["Flags"]
      171 GETTABLEKS                       R34 R35 K49 ["getFFlagCinAssetUploadStatusWidget"]
      173 CALL                             R33 1 1
      174 GETTABLEKS                       R34 R4 K50 ["PureComponent"]
      176 LOADK                            R36 K51 ["AssetListCell"]
      177 NAMECALL                         R34 R34 K52 ["extend"]
      179 CALL                             R34 2 1
      180 DUPCLOSURE                       R35 K53 [PROTO_15]
      181 CAPTURE                          VAL R32
      182 CAPTURE                          VAL R30
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R11
      190 SETTABLEKS                       R35 R34 K54 ["init"]
      192 DUPCLOSURE                       R35 K55 [PROTO_16]
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R11
      195 SETTABLEKS                       R35 R34 K56 ["renderCheckboxCell"]
      197 DUPCLOSURE                       R35 K57 [PROTO_17]
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R15
      202 SETTABLEKS                       R35 R34 K58 ["renderAssetCell"]
      204 DUPCLOSURE                       R35 K59 [PROTO_18]
      205 CAPTURE                          VAL R32
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R24
      211 SETTABLEKS                       R35 R34 K60 ["renderPresetCell"]
      213 DUPCLOSURE                       R35 K61 [PROTO_19]
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R25
      216 SETTABLEKS                       R35 R34 K62 ["renderCreatorCell"]
      218 DUPCLOSURE                       R35 K63 [PROTO_20]
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R26
      222 SETTABLEKS                       R35 R34 K64 ["renderPathCell"]
      224 DUPCLOSURE                       R35 K65 [PROTO_21]
      225 CAPTURE                          VAL R30
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R33
      233 SETTABLEKS                       R35 R34 K66 ["renderStatusCell"]
      235 DUPCLOSURE                       R35 K67 [PROTO_22]
      236 SETTABLEKS                       R35 R34 K68 ["getContent"]
      238 DUPCLOSURE                       R35 K69 [PROTO_23]
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R15
      242 SETTABLEKS                       R35 R34 K70 ["render"]
      244 GETTABLEKS                       R35 R7 K71 ["withContext"]
      246 DUPTABLE                         R36 K73 [{"Localization", "FileController", "PresetController", "QueueController", "Plugin"}]
      247 SETTABLEKS                       R8 R36 K17 ["Localization"]
      249 SETTABLEKS                       R27 R36 K43 ["FileController"]
      251 SETTABLEKS                       R28 R36 K44 ["PresetController"]
      253 SETTABLEKS                       R29 R36 K45 ["QueueController"]
      255 GETTABLEKS                       R37 R7 K72 ["Plugin"]
      257 SETTABLEKS                       R37 R36 K72 ["Plugin"]
      259 CALL                             R35 1 1
      260 MOVE                             R36 R34
      261 CALL                             R35 1 1
      262 MOVE                             R34 R35
      263 RETURN                           R34 1
