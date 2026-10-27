PROTO_0:
        0 DUPTABLE                         R0 K9 [{"LoadError", "Retry", "Loading", "Header", "Description", "SaveError", "Save", "Cancel", "UploadDirectoryDialogTitle"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K10 ["Permissions"]
        3 LOADK                            R4 K0 ["LoadError"]
        4 NAMECALL                         R1 R1 K11 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["LoadError"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K10 ["Permissions"]
       11 LOADK                            R4 K1 ["Retry"]
       12 NAMECALL                         R1 R1 K11 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Retry"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K10 ["Permissions"]
       19 LOADK                            R4 K2 ["Loading"]
       20 NAMECALL                         R1 R1 K11 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Loading"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K12 ["SettingsDialog"]
       27 LOADK                            R4 K13 ["PermissionsTab"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Header"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["Permissions"]
       35 LOADK                            R4 K4 ["Description"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Description"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["Permissions"]
       43 LOADK                            R4 K5 ["SaveError"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["SaveError"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K14 ["Settings"]
       51 LOADK                            R4 K6 ["Save"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Save"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K14 ["Settings"]
       59 LOADK                            R4 K7 ["Cancel"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Cancel"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K10 ["Permissions"]
       67 LOADK                            R4 K8 ["UploadDirectoryDialogTitle"]
       68 NAMECALL                         R1 R1 K11 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["UploadDirectoryDialogTitle"]
       73 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getCategories"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getSelectedPreset"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K2 ["getHttpDomains"]
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R0 4
       19 GETUPVAL                         R1 1
       20 NAMECALL                         R1 R1 K3 ["hasUnsavedChanges"]
       22 CALL                             R1 1 -1
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R1 1
       26 NAMECALL                         R1 R1 K4 ["hasSaveFailed"]
       28 CALL                             R1 1 -1
       29 CALL                             R0 -1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["loadAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETIMPORT                        R2 K1 [pcall]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["getAsync"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["get"]
       13 CALL                             R4 0 -1
       14 CALL                             R2 -1 2
       15 JUMPIF                           R2 ; [+14]
       16 GETIMPORT                        R4 K5 [warn]
       18 LOADK                            R5 K6 ["[Assistant] Failed to load approved upload directories: %*"]
       19 FASTCALL1                        TOSTRING R3 ; [+3]
       20 MOVE                             R8 R3
       21 GETIMPORT                        R7 K8 [tostring]
       23 CALL                             R7 1 1
       24 NAMECALL                         R5 R5 K9 ["format"]
       26 CALL                             R5 2 1
       27 CALL                             R4 1 0
       28 NEWTABLE                         R3 0 0
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K10 ["current"]
       33 JUMPIF                           R4 ; [+1]
       34 RETURN                           R0 0
       35 JUMPIF                           R0 ; [+16]
       36 GETIMPORT                        R4 K5 [warn]
       38 LOADK                            R5 K11 ["[Assistant] Failed to load execution permissions: %*"]
       39 FASTCALL1                        TOSTRING R1 ; [+3]
       40 MOVE                             R8 R1
       41 GETIMPORT                        R7 K8 [tostring]
       43 CALL                             R7 1 1
       44 NAMECALL                         R5 R5 K9 ["format"]
       46 CALL                             R5 2 1
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 4
       49 LOADB                            R5 1
       50 CALL                             R4 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R4 5
       53 MOVE                             R5 R3
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 6
       56 MOVE                             R5 R3
       57 CALL                             R4 1 0
       58 GETUPVAL                         R4 7
       59 GETUPVAL                         R5 0
       60 NAMECALL                         R5 R5 K12 ["getPresets"]
       62 CALL                             R5 1 -1
       63 CALL                             R4 -1 0
       64 GETUPVAL                         R4 8
       65 CALL                             R4 0 0
       66 GETUPVAL                         R4 9
       67 LOADB                            R5 1
       68 CALL                             R4 1 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setPreset"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+13]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["[Assistant] Failed to preview access level '%*': %*"]
       10 GETUPVAL                         R5 1
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R7 R1
       13 GETIMPORT                        R6 K6 [tostring]
       15 CALL                             R6 1 1
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 3 1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K8 ["current"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 3
       26 LOADB                            R3 0
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 4
       29 CALL                             R2 0 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setPendingValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setCategoryValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["removeHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withDirectory"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["get"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K3 ["openDirectoryDialogAsync"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["UploadDirectoryDialogTitle"]
       11 LOADK                            R3 K5 [""]
       12 CALL                             R0 3 2
       13 JUMPIF                           R0 ; [+12]
       14 GETIMPORT                        R2 K7 [warn]
       16 LOADK                            R3 K8 ["[Assistant] Failed to open the upload directory picker: %*"]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R5 K10 [tostring]
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K11 ["format"]
       24 CALL                             R3 2 1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K12 ["current"]
       29 JUMPIF                           R2 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 3
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 JUMPIFNOT                        R0 ; [+14]
       35 FASTCALL1                        TYPE R1 ; [+3]
       36 MOVE                             R3 R1
       37 GETIMPORT                        R2 K14 [type]
       39 CALL                             R2 1 1
       40 JUMPIFNOTEQKS                    R2 K15 ["string"] ; [+8]
       42 JUMPIFEQKS                       R1 K5 [""] ; [+6]
       44 GETUPVAL                         R2 4
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R1
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withoutDirectory"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hasUnsavedChanges"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["save"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+12]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["[Assistant] Failed to save execution permissions: %*"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 NAMECALL                         R3 R3 K7 ["format"]
       16 CALL                             R3 2 1
       17 CALL                             R2 1 0
       18 LOADB                            R2 1
       19 GETUPVAL                         R3 1
       20 JUMPIFNOT                        R3 ; [+27]
       21 LOADNIL                          R3
       22 GETIMPORT                        R4 K1 [pcall]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K8 ["setAsync"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K9 ["get"]
       30 CALL                             R6 0 1
       31 GETUPVAL                         R7 4
       32 CALL                             R4 3 2
       33 MOVE                             R2 R4
       34 MOVE                             R3 R5
       35 JUMPIF                           R2 ; [+12]
       36 GETIMPORT                        R4 K3 [warn]
       38 LOADK                            R5 K10 ["[Assistant] Failed to save approved upload directories: %*"]
       39 FASTCALL1                        TOSTRING R3 ; [+3]
       40 MOVE                             R8 R3
       41 GETIMPORT                        R7 K6 [tostring]
       43 CALL                             R7 1 1
       44 NAMECALL                         R5 R5 K7 ["format"]
       46 CALL                             R5 2 1
       47 CALL                             R4 1 0
       48 GETUPVAL                         R3 5
       49 GETTABLEKS                       R3 R3 K11 ["current"]
       51 JUMPIF                           R3 ; [+1]
       52 RETURN                           R0 0
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETUPVAL                         R3 6
       55 GETUPVAL                         R4 4
       56 CALL                             R3 1 0
       57 GETUPVAL                         R3 7
       58 NOT                              R4 R2
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 8
       61 LOADB                            R4 0
       62 CALL                             R3 1 0
       63 GETUPVAL                         R3 9
       64 CALL                             R3 0 0
       65 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U9
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["revert"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["model"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ExecutionPermissionsContent requires a model prop"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K0 ["model"]
       10 GETTABLEKS                       R3 R0 K4 ["isDisabled"]
       12 JUMPIFEQKB                       R3 TRUE ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       19 DUPCLOSURE                       R4 K6 [PROTO_0]
       20 CAPTURE                          UPVAL U1
       21 NEWTABLE                         R5 0 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K7 ["locale"]
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K8 ["useState"]
       32 NEWTABLE                         R5 0 0
       34 CALL                             R4 1 2
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K8 ["useState"]
       38 NEWTABLE                         R7 0 0
       40 CALL                             R6 1 2
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K8 ["useState"]
       44 LOADK                            R9 K9 [""]
       45 CALL                             R8 1 2
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K8 ["useState"]
       49 NEWTABLE                         R11 0 0
       51 CALL                             R10 1 2
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R12 R12 K8 ["useState"]
       55 LOADB                            R13 0
       56 CALL                             R12 1 2
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R14 R14 K8 ["useState"]
       60 LOADB                            R15 0
       61 CALL                             R14 1 2
       62 GETUPVAL                         R16 0
       63 GETTABLEKS                       R16 R16 K8 ["useState"]
       65 LOADB                            R17 0
       66 CALL                             R16 1 2
       67 GETUPVAL                         R18 0
       68 GETTABLEKS                       R18 R18 K8 ["useState"]
       70 LOADB                            R19 0
       71 CALL                             R18 1 2
       72 GETUPVAL                         R20 0
       73 GETTABLEKS                       R20 R20 K8 ["useState"]
       75 LOADB                            R21 0
       76 CALL                             R20 1 2
       77 GETUPVAL                         R22 0
       78 GETTABLEKS                       R22 R22 K10 ["useRef"]
       80 LOADB                            R23 1
       81 CALL                             R22 1 1
       82 GETUPVAL                         R23 0
       83 GETTABLEKS                       R23 R23 K8 ["useState"]
       85 NEWTABLE                         R24 0 0
       87 CALL                             R23 1 2
       88 GETUPVAL                         R25 0
       89 GETTABLEKS                       R25 R25 K8 ["useState"]
       91 NEWTABLE                         R26 0 0
       93 CALL                             R25 1 2
       94 GETUPVAL                         R27 0
       95 GETTABLEKS                       R27 R27 K8 ["useState"]
       97 LOADB                            R28 0
       98 CALL                             R27 1 2
       99 GETUPVAL                         R29 0
      100 GETTABLEKS                       R29 R29 K8 ["useState"]
      102 LOADB                            R30 0
      103 CALL                             R29 1 2
      104 GETUPVAL                         R32 2
      105 GETTABLEKS                       R32 R32 K11 ["areEqual"]
      107 MOVE                             R33 R23
      108 MOVE                             R34 R25
      109 CALL                             R32 2 1
      110 NOT                              R31 R32
      111 GETUPVAL                         R32 0
      112 GETTABLEKS                       R32 R32 K12 ["useCallback"]
      114 NEWCLOSURE                       R33 P1
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R15
      121 NEWTABLE                         R34 0 1
      123 MOVE                             R35 R1
      124 SETLIST                          R34 R35 1 [1]
      126 CALL                             R32 2 1
      127 GETUPVAL                         R33 0
      128 GETTABLEKS                       R33 R33 K13 ["useEffect"]
      130 NEWCLOSURE                       R34 P2
      131 CAPTURE                          VAL R22
      132 NEWTABLE                         R35 0 0
      134 CALL                             R33 2 0
      135 GETUPVAL                         R33 0
      136 GETTABLEKS                       R33 R33 K12 ["useCallback"]
      138 NEWCLOSURE                       R34 P3
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U2
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R24
      145 CAPTURE                          VAL R26
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R32
      148 CAPTURE                          VAL R17
      149 NEWTABLE                         R35 0 2
      151 MOVE                             R36 R1
      152 MOVE                             R37 R32
      153 SETLIST                          R35 R36 2 [1]
      155 CALL                             R33 2 1
      156 GETUPVAL                         R34 0
      157 GETTABLEKS                       R34 R34 K13 ["useEffect"]
      159 NEWCLOSURE                       R35 P4
      160 CAPTURE                          VAL R33
      161 NEWTABLE                         R36 0 1
      163 MOVE                             R37 R33
      164 SETLIST                          R36 R37 1 [1]
      166 CALL                             R34 2 0
      167 GETUPVAL                         R34 0
      168 GETTABLEKS                       R34 R34 K12 ["useCallback"]
      170 NEWCLOSURE                       R35 P5
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R32
      175 NEWTABLE                         R36 0 2
      177 MOVE                             R37 R1
      178 MOVE                             R38 R32
      179 SETLIST                          R36 R37 2 [1]
      181 CALL                             R34 2 1
      182 GETUPVAL                         R35 0
      183 GETTABLEKS                       R35 R35 K12 ["useCallback"]
      185 NEWCLOSURE                       R36 P6
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R32
      188 NEWTABLE                         R37 0 2
      190 MOVE                             R38 R1
      191 MOVE                             R39 R32
      192 SETLIST                          R37 R38 2 [1]
      194 CALL                             R35 2 1
      195 GETUPVAL                         R36 0
      196 GETTABLEKS                       R36 R36 K12 ["useCallback"]
      198 NEWCLOSURE                       R37 P7
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R32
      201 NEWTABLE                         R38 0 2
      203 MOVE                             R39 R1
      204 MOVE                             R40 R32
      205 SETLIST                          R38 R39 2 [1]
      207 CALL                             R36 2 1
      208 GETUPVAL                         R37 0
      209 GETTABLEKS                       R37 R37 K12 ["useCallback"]
      211 NEWCLOSURE                       R38 P8
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R32
      214 NEWTABLE                         R39 0 2
      216 MOVE                             R40 R1
      217 MOVE                             R41 R32
      218 SETLIST                          R39 R40 2 [1]
      220 CALL                             R37 2 1
      221 GETUPVAL                         R38 0
      222 GETTABLEKS                       R38 R38 K12 ["useCallback"]
      224 NEWCLOSURE                       R39 P9
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R32
      227 NEWTABLE                         R40 0 2
      229 MOVE                             R41 R1
      230 MOVE                             R42 R32
      231 SETLIST                          R40 R41 2 [1]
      233 CALL                             R38 2 1
      234 GETUPVAL                         R39 0
      235 GETTABLEKS                       R39 R39 K12 ["useCallback"]
      237 NEWCLOSURE                       R40 P10
      238 CAPTURE                          VAL R30
      239 CAPTURE                          UPVAL U3
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R26
      243 CAPTURE                          UPVAL U2
      244 NEWTABLE                         R41 0 1
      246 GETTABLEKS                       R42 R3 K14 ["UploadDirectoryDialogTitle"]
      248 SETLIST                          R41 R42 1 [1]
      250 CALL                             R39 2 1
      251 GETUPVAL                         R40 0
      252 GETTABLEKS                       R40 R40 K12 ["useCallback"]
      254 NEWCLOSURE                       R41 P11
      255 CAPTURE                          VAL R26
      256 CAPTURE                          UPVAL U2
      257 NEWTABLE                         R42 0 0
      259 CALL                             R40 2 1
      260 GETUPVAL                         R41 0
      261 GETTABLEKS                       R41 R41 K12 ["useCallback"]
      263 NEWCLOSURE                       R42 P12
      264 CAPTURE                          VAL R21
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R31
      267 CAPTURE                          UPVAL U2
      268 CAPTURE                          UPVAL U3
      269 CAPTURE                          VAL R25
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R32
      274 NEWTABLE                         R43 0 4
      276 MOVE                             R44 R1
      277 MOVE                             R45 R32
      278 MOVE                             R46 R31
      279 MOVE                             R47 R25
      280 SETLIST                          R43 R44 4 [1]
      282 CALL                             R41 2 1
      283 GETUPVAL                         R42 0
      284 GETTABLEKS                       R42 R42 K12 ["useCallback"]
      286 NEWCLOSURE                       R43 P13
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R26
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R28
      291 CAPTURE                          VAL R32
      292 NEWTABLE                         R44 0 3
      294 MOVE                             R45 R1
      295 MOVE                             R46 R32
      296 MOVE                             R47 R23
      297 SETLIST                          R44 R45 3 [1]
      299 CALL                             R42 2 1
      300 OR                               R43 R12 R31
      301 JUMPIFNOT                        R18 ; [+52]
      302 GETUPVAL                         R44 4
      303 GETUPVAL                         R45 5
      304 DUPTABLE                         R46 K18 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"]}]
      305 GETUPVAL                         R47 6
      306 GETTABLEKS                       R47 R47 K19 ["ScopePermissions"]
      308 GETTABLEKS                       R47 R47 K20 ["LoadError"]
      310 SETTABLEKS                       R47 R46 K17 ["testId"]
      312 DUPTABLE                         R47 K23 [{"Message", "RetryButton"}]
      313 GETUPVAL                         R48 4
      314 GETUPVAL                         R49 7
      315 DUPTABLE                         R50 K28 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"] = 1}]
      316 GETTABLEKS                       R51 R3 K20 ["LoadError"]
      318 SETTABLEKS                       R51 R50 K25 ["Text"]
      320 CALL                             R48 2 1
      321 SETTABLEKS                       R48 R47 K21 ["Message"]
      323 GETUPVAL                         R48 4
      324 GETUPVAL                         R49 8
      325 DUPTABLE                         R50 K34 [{["text"], ["size"], ["variant"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      326 GETTABLEKS                       R51 R3 K35 ["Retry"]
      328 SETTABLEKS                       R51 R50 K29 ["text"]
      330 GETUPVAL                         R51 9
      331 GETTABLEKS                       R51 R51 K36 ["Small"]
      333 SETTABLEKS                       R51 R50 K30 ["size"]
      335 GETUPVAL                         R51 10
      336 GETTABLEKS                       R51 R51 K37 ["Standard"]
      338 SETTABLEKS                       R51 R50 K31 ["variant"]
      340 SETTABLEKS                       R33 R50 K32 ["onActivated"]
      342 GETUPVAL                         R51 6
      343 GETTABLEKS                       R51 R51 K19 ["ScopePermissions"]
      345 GETTABLEKS                       R51 R51 K22 ["RetryButton"]
      347 SETTABLEKS                       R51 R50 K17 ["testId"]
      349 CALL                             R48 2 1
      350 SETTABLEKS                       R48 R47 K22 ["RetryButton"]
      352 CALL                             R44 3 -1
      353 RETURN                           R44 -1
      354 JUMPIF                           R16 ; [+16]
      355 GETUPVAL                         R44 4
      356 GETUPVAL                         R45 5
      357 DUPTABLE                         R46 K38 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      358 DUPTABLE                         R47 K40 [{"Loading"}]
      359 GETUPVAL                         R48 4
      360 GETUPVAL                         R49 7
      361 DUPTABLE                         R50 K42 [{["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["Text"]}]
      362 GETTABLEKS                       R51 R3 K39 ["Loading"]
      364 SETTABLEKS                       R51 R50 K25 ["Text"]
      366 CALL                             R48 2 1
      367 SETTABLEKS                       R48 R47 K39 ["Loading"]
      369 CALL                             R44 3 -1
      370 RETURN                           R44 -1
      371 GETUPVAL                         R44 11
      372 CALL                             R44 0 1
      373 NEWTABLE                         R45 0 0
      375 GETUPVAL                         R46 11
      376 CALL                             R46 0 1
      377 MOVE                             R47 R4
      378 LOADNIL                          R48
      379 LOADNIL                          R49
      380 FORGPREP                         R47
      381 GETTABLEKS                       R53 R51 K43 ["key"]
      383 JUMPIFEQKS                       R53 K44 ["connect-to-the-internet"] ; [+2]
      385 LOADB                            R52 0 +1
      386 LOADB                            R52 1
      387 GETTABLEKS                       R53 R51 K43 ["key"]
      389 GETUPVAL                         R54 4
      390 GETUPVAL                         R55 12
      391 DUPTABLE                         R56 K49 [{"category", "onToggle", "onCategoryValue", "extraContent", "isDisabled", "LayoutOrder"}]
      392 SETTABLEKS                       R51 R56 K45 ["category"]
      394 SETTABLEKS                       R35 R56 K46 ["onToggle"]
      396 SETTABLEKS                       R36 R56 K47 ["onCategoryValue"]
      398 JUMPIFNOT                        R52 ; [+13]
      399 GETUPVAL                         R57 4
      400 GETUPVAL                         R58 13
      401 DUPTABLE                         R59 K53 [{"domains", "onAdd", "onRemove", "isDisabled"}]
      402 SETTABLEKS                       R10 R59 K50 ["domains"]
      404 SETTABLEKS                       R37 R59 K51 ["onAdd"]
      406 SETTABLEKS                       R38 R59 K52 ["onRemove"]
      408 SETTABLEKS                       R2 R59 K4 ["isDisabled"]
      410 CALL                             R57 2 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R57
      413 SETTABLEKS                       R57 R56 K48 ["extraContent"]
      415 SETTABLEKS                       R2 R56 K4 ["isDisabled"]
      417 MOVE                             R57 R46
      418 CALL                             R57 0 1
      419 SETTABLEKS                       R57 R56 K26 ["LayoutOrder"]
      421 CALL                             R54 2 1
      422 SETTABLE                         R54 R45 R53
      423 LOADK                            R53 K54 ["%*-divider"]
      424 GETTABLEKS                       R55 R51 K43 ["key"]
      426 NAMECALL                         R53 R53 K55 ["format"]
      428 CALL                             R53 2 1
      429 GETUPVAL                         R54 4
      430 GETUPVAL                         R55 14
      431 DUPTABLE                         R56 K56 [{"LayoutOrder"}]
      432 MOVE                             R57 R46
      433 CALL                             R57 0 1
      434 SETTABLEKS                       R57 R56 K26 ["LayoutOrder"]
      436 CALL                             R54 2 1
      437 SETTABLE                         R54 R45 R53
      438 FORGLOOP                         R47 2 ; [-58]
      440 GETUPVAL                         R47 4
      441 GETUPVAL                         R48 5
      442 DUPTABLE                         R49 K58 [{["tag"] = "col gap-medium size-full-0 auto-y", ["testId"]}]
      443 GETUPVAL                         R50 6
      444 GETTABLEKS                       R50 R50 K19 ["ScopePermissions"]
      446 GETTABLEKS                       R50 R50 K59 ["Container"]
      448 SETTABLEKS                       R50 R49 K17 ["testId"]
      450 DUPTABLE                         R50 K62 [{"Permissions", "ButtonRow"}]
      451 GETUPVAL                         R51 4
      452 GETUPVAL                         R52 5
      453 DUPTABLE                         R53 K63 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      454 MOVE                             R54 R44
      455 CALL                             R54 0 1
      456 SETTABLEKS                       R54 R53 K26 ["LayoutOrder"]
      458 DUPTABLE                         R54 K70 [{"Header", "AccessLevel", "Description", "IntroDivider", "CategoryList", "UploadDirectories"}]
      459 GETUPVAL                         R55 4
      460 GETUPVAL                         R56 7
      461 DUPTABLE                         R57 K72 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      462 GETTABLEKS                       R58 R3 K64 ["Header"]
      464 SETTABLEKS                       R58 R57 K25 ["Text"]
      466 CALL                             R55 2 1
      467 SETTABLEKS                       R55 R54 K64 ["Header"]
      469 LENGTH                           R56 R6
      470 LOADN                            R57 0
      471 JUMPIFNOTLT                      R57 R56 ; [+15]
      473 GETUPVAL                         R55 4
      474 GETUPVAL                         R56 15
      475 DUPTABLE                         R57 K76 [{["presets"], ["selectedPreset"], ["onSelect"], ["isDisabled"], ["LayoutOrder"] = 2}]
      476 SETTABLEKS                       R6 R57 K73 ["presets"]
      478 SETTABLEKS                       R8 R57 K74 ["selectedPreset"]
      480 SETTABLEKS                       R34 R57 K75 ["onSelect"]
      482 OR                               R58 R20 R2
      483 SETTABLEKS                       R58 R57 K4 ["isDisabled"]
      485 CALL                             R55 2 1
      486 JUMP                             ; [+1]
      487 LOADNIL                          R55
      488 SETTABLEKS                       R55 R54 K65 ["AccessLevel"]
      490 GETUPVAL                         R55 4
      491 GETUPVAL                         R56 7
      492 DUPTABLE                         R57 K79 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 3}]
      493 GETTABLEKS                       R58 R3 K66 ["Description"]
      495 SETTABLEKS                       R58 R57 K25 ["Text"]
      497 CALL                             R55 2 1
      498 SETTABLEKS                       R55 R54 K66 ["Description"]
      500 GETUPVAL                         R55 4
      501 GETUPVAL                         R56 14
      502 DUPTABLE                         R57 K81 [{["LayoutOrder"] = 4}]
      503 CALL                             R55 2 1
      504 SETTABLEKS                       R55 R54 K67 ["IntroDivider"]
      506 GETUPVAL                         R55 4
      507 GETUPVAL                         R56 5
      508 DUPTABLE                         R57 K84 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 5}]
      509 MOVE                             R58 R45
      510 CALL                             R55 3 1
      511 SETTABLEKS                       R55 R54 K68 ["CategoryList"]
      513 GETUPVAL                         R55 4
      514 GETUPVAL                         R56 16
      515 DUPTABLE                         R57 K88 [{["directories"], ["onAdd"], ["onRemove"], ["isAddDisabled"], ["isDisabled"], ["LayoutOrder"] = 6}]
      516 SETTABLEKS                       R25 R57 K85 ["directories"]
      518 SETTABLEKS                       R39 R57 K51 ["onAdd"]
      520 SETTABLEKS                       R40 R57 K52 ["onRemove"]
      522 SETTABLEKS                       R29 R57 K86 ["isAddDisabled"]
      524 SETTABLEKS                       R2 R57 K4 ["isDisabled"]
      526 CALL                             R55 2 1
      527 SETTABLEKS                       R55 R54 K69 ["UploadDirectories"]
      529 CALL                             R51 3 1
      530 SETTABLEKS                       R51 R50 K60 ["Permissions"]
      532 GETUPVAL                         R51 4
      533 GETUPVAL                         R52 5
      534 DUPTABLE                         R53 K90 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      535 MOVE                             R54 R44
      536 CALL                             R54 0 1
      537 SETTABLEKS                       R54 R53 K26 ["LayoutOrder"]
      539 DUPTABLE                         R54 K94 [{"SaveError", "SaveButton", "CancelButton"}]
      540 JUMPIF                           R14 ; [+1]
      541 JUMPIFNOT                        R27 ; [+23]
      542 GETUPVAL                         R55 4
      543 GETUPVAL                         R56 5
      544 DUPTABLE                         R57 K97 [{["tag"] = "row align-y-center grow size-0-0 auto-y", ["testId"], ["LayoutOrder"] = 0}]
      545 GETUPVAL                         R58 6
      546 GETTABLEKS                       R58 R58 K19 ["ScopePermissions"]
      548 GETTABLEKS                       R58 R58 K91 ["SaveError"]
      550 SETTABLEKS                       R58 R57 K17 ["testId"]
      552 DUPTABLE                         R58 K99 [{"Label"}]
      553 GETUPVAL                         R59 4
      554 GETUPVAL                         R60 7
      555 DUPTABLE                         R61 K101 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-alert", ["Text"]}]
      556 GETTABLEKS                       R62 R3 K91 ["SaveError"]
      558 SETTABLEKS                       R62 R61 K25 ["Text"]
      560 CALL                             R59 2 1
      561 SETTABLEKS                       R59 R58 K98 ["Label"]
      563 CALL                             R55 3 1
      564 JUMPIF                           R55 ; [+1]
      565 LOADNIL                          R55
      566 SETTABLEKS                       R55 R54 K91 ["SaveError"]
      568 GETUPVAL                         R55 4
      569 GETUPVAL                         R56 8
      570 DUPTABLE                         R57 K102 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 1}]
      571 GETTABLEKS                       R58 R3 K103 ["Save"]
      573 SETTABLEKS                       R58 R57 K29 ["text"]
      575 GETUPVAL                         R58 9
      576 GETTABLEKS                       R58 R58 K36 ["Small"]
      578 SETTABLEKS                       R58 R57 K30 ["size"]
      580 GETUPVAL                         R58 10
      581 GETTABLEKS                       R58 R58 K104 ["Emphasis"]
      583 SETTABLEKS                       R58 R57 K31 ["variant"]
      585 NOT                              R58 R43
      586 JUMPIF                           R58 ; [+3]
      587 MOVE                             R58 R20
      588 JUMPIF                           R58 ; [+1]
      589 MOVE                             R58 R2
      590 SETTABLEKS                       R58 R57 K4 ["isDisabled"]
      592 SETTABLEKS                       R41 R57 K32 ["onActivated"]
      594 GETUPVAL                         R58 6
      595 GETTABLEKS                       R58 R58 K19 ["ScopePermissions"]
      597 GETTABLEKS                       R58 R58 K92 ["SaveButton"]
      599 SETTABLEKS                       R58 R57 K17 ["testId"]
      601 CALL                             R55 2 1
      602 SETTABLEKS                       R55 R54 K92 ["SaveButton"]
      604 GETUPVAL                         R55 4
      605 GETUPVAL                         R56 8
      606 DUPTABLE                         R57 K105 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      607 GETTABLEKS                       R58 R3 K106 ["Cancel"]
      609 SETTABLEKS                       R58 R57 K29 ["text"]
      611 GETUPVAL                         R58 9
      612 GETTABLEKS                       R58 R58 K36 ["Small"]
      614 SETTABLEKS                       R58 R57 K30 ["size"]
      616 GETUPVAL                         R58 10
      617 GETTABLEKS                       R58 R58 K37 ["Standard"]
      619 SETTABLEKS                       R58 R57 K31 ["variant"]
      621 NOT                              R58 R43
      622 JUMPIF                           R58 ; [+3]
      623 MOVE                             R58 R20
      624 JUMPIF                           R58 ; [+1]
      625 MOVE                             R58 R2
      626 SETTABLEKS                       R58 R57 K4 ["isDisabled"]
      628 SETTABLEKS                       R42 R57 K32 ["onActivated"]
      630 GETUPVAL                         R58 6
      631 GETTABLEKS                       R58 R58 K19 ["ScopePermissions"]
      633 GETTABLEKS                       R58 R58 K93 ["CancelButton"]
      635 SETTABLEKS                       R58 R57 K17 ["testId"]
      637 CALL                             R55 2 1
      638 SETTABLEKS                       R55 R54 K93 ["CancelButton"]
      640 CALL                             R51 3 1
      641 SETTABLEKS                       R51 R50 K61 ["ButtonRow"]
      643 CALL                             R47 3 -1
      644 RETURN                           R47 -1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["isDisabled"]
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K3 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
       11 DUPTABLE                         R4 K6 [{"UnpublishedNotice", "Body"}]
       12 GETUPVAL                         R5 0
       13 GETUPVAL                         R6 3
       14 DUPTABLE                         R7 K13 [{["variant"], ["severity"], ["text"], ["testId"], ["LayoutOrder"] = 1}]
       15 GETUPVAL                         R8 4
       16 GETTABLEKS                       R8 R8 K14 ["Feedback"]
       18 SETTABLEKS                       R8 R7 K7 ["variant"]
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K15 ["Info"]
       23 SETTABLEKS                       R8 R7 K8 ["severity"]
       25 GETUPVAL                         R8 6
       26 LOADK                            R10 K16 ["Permissions"]
       27 LOADK                            R11 K4 ["UnpublishedNotice"]
       28 NAMECALL                         R8 R8 K17 ["getText"]
       30 CALL                             R8 3 1
       31 SETTABLEKS                       R8 R7 K9 ["text"]
       33 GETUPVAL                         R8 7
       34 GETTABLEKS                       R8 R8 K18 ["ScopePermissions"]
       36 GETTABLEKS                       R8 R8 K4 ["UnpublishedNotice"]
       38 SETTABLEKS                       R8 R7 K10 ["testId"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K4 ["UnpublishedNotice"]
       43 GETUPVAL                         R5 0
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K21 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 2}]
       46 DUPTABLE                         R8 K23 [{"Content"}]
       47 GETUPVAL                         R9 0
       48 GETUPVAL                         R10 1
       49 MOVE                             R11 R0
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K22 ["Content"]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K5 ["Body"]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AccessLevelSelector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["IntegrationManagement"]
       22 GETTABLEKS                       R3 R3 K9 ["CategoryRow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Guest"]
       29 GETTABLEKS                       R4 R4 K11 ["Environment"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["IntegrationManagement"]
       38 GETTABLEKS                       R5 R5 K12 ["ExecutionPermissionsModel"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Components"]
       45 GETTABLEKS                       R6 R6 K7 ["IntegrationManagement"]
       47 GETTABLEKS                       R6 R6 K13 ["HttpDomainsContent"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K16 ["Resources"]
       61 GETTABLEKS                       R8 R8 K17 ["Localization"]
       63 GETTABLEKS                       R8 R8 K18 ["Translator"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K14 ["Util"]
       70 GETTABLEKS                       R9 R9 K19 ["UploadDirectories"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Components"]
       77 GETTABLEKS                       R10 R10 K7 ["IntegrationManagement"]
       79 GETTABLEKS                       R10 R10 K20 ["UploadDirectoriesContent"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K21 ["Parent"]
       86 GETTABLEKS                       R11 R11 K22 ["Foundation"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K21 ["Parent"]
       93 GETTABLEKS                       R12 R12 K23 ["React"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K21 ["Parent"]
      100 GETTABLEKS                       R13 R13 K24 ["ReactUtils"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R10 K25 ["Alert"]
      105 GETTABLEKS                       R14 R10 K26 ["Button"]
      107 GETTABLEKS                       R15 R10 K27 ["Divider"]
      109 GETTABLEKS                       R16 R10 K28 ["Text"]
      111 GETTABLEKS                       R17 R10 K29 ["View"]
      113 GETTABLEKS                       R18 R10 K30 ["Enums"]
      115 GETTABLEKS                       R18 R18 K31 ["AlertSeverity"]
      117 GETTABLEKS                       R19 R10 K30 ["Enums"]
      119 GETTABLEKS                       R19 R19 K32 ["AlertVariant"]
      121 GETTABLEKS                       R20 R10 K30 ["Enums"]
      123 GETTABLEKS                       R20 R20 K33 ["ButtonSize"]
      125 GETTABLEKS                       R21 R10 K30 ["Enums"]
      127 GETTABLEKS                       R21 R21 K34 ["ButtonVariant"]
      129 GETTABLEKS                       R22 R12 K35 ["createNextOrder"]
      131 GETTABLEKS                       R23 R11 K36 ["createElement"]
      133 DUPCLOSURE                       R24 K37 [PROTO_24]
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R9
      151 DUPCLOSURE                       R25 K38 [PROTO_25]
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R24
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R6
      160 GETTABLEKS                       R26 R11 K39 ["memo"]
      162 MOVE                             R27 R25
      163 CALL                             R26 1 -1
      164 RETURN                           R26 -1
