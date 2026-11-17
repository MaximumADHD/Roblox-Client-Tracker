PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K6 [{[1], ["severity"], ["text"], ["testId"], ["LayoutOrder"] = 1}]
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K7 ["Feedback"]
        6 SETTABLEKS                       R3 R2 K0 ["variant"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K8 ["Info"]
       11 SETTABLEKS                       R3 R2 K1 ["severity"]
       13 GETUPVAL                         R3 4
       14 LOADK                            R5 K9 ["Permissions"]
       15 LOADK                            R6 K10 ["UnpublishedNotice"]
       16 NAMECALL                         R3 R3 K11 ["getText"]
       18 CALL                             R3 3 1
       19 SETTABLEKS                       R3 R2 K2 ["text"]
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K12 ["ScopePermissions"]
       24 GETTABLEKS                       R3 R3 K10 ["UnpublishedNotice"]
       26 SETTABLEKS                       R3 R2 K3 ["testId"]
       28 CALL                             R0 2 -1
       29 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{[1] = "col gap-medium size-full-full padding-y-xlarge padding-left-xlarge padding-right-xxlarge"}]
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R0 K10 [{"LoadError", "Retry", "Loading", "Header", "Description", "SaveError", "Save", "Cancel", "UploadDirectoryDialogTitle", "FilterPlaceholder"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K11 ["Permissions"]
        3 LOADK                            R4 K0 ["LoadError"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["LoadError"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["Permissions"]
       11 LOADK                            R4 K1 ["Retry"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Retry"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["Permissions"]
       19 LOADK                            R4 K2 ["Loading"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Loading"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K13 ["SettingsDialog"]
       27 LOADK                            R4 K14 ["PermissionsTab"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Header"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["Permissions"]
       35 LOADK                            R4 K4 ["Description"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Description"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["Permissions"]
       43 LOADK                            R4 K5 ["SaveError"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["SaveError"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K15 ["Settings"]
       51 LOADK                            R4 K6 ["Save"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Save"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K15 ["Settings"]
       59 LOADK                            R4 K7 ["Cancel"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Cancel"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K11 ["Permissions"]
       67 LOADK                            R4 K8 ["UploadDirectoryDialogTitle"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["UploadDirectoryDialogTitle"]
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K16 ["FFlagStudioAssistantPermissionsFilter"]
       76 JUMPIFNOT                        R2 ; [+7]
       77 GETUPVAL                         R1 0
       78 LOADK                            R3 K11 ["Permissions"]
       79 LOADK                            R4 K9 ["FilterPlaceholder"]
       80 NAMECALL                         R1 R1 K12 ["getText"]
       82 CALL                             R1 3 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R1
       85 SETTABLEKS                       R1 R0 K9 ["FilterPlaceholder"]
       87 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["loadAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["getAsync"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["get"]
       12 CALL                             R4 0 -1
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R2 K1 [pcall]
       16 CALL                             R2 -1 2
       17 JUMPIF                           R2 ; [+14]
       18 GETIMPORT                        R4 K5 [warn]
       20 LOADK                            R5 K6 ["[Assistant] Failed to load approved upload directories: %*"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R8 R3
       23 GETIMPORT                        R7 K8 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R5 R5 K9 ["format"]
       28 CALL                             R5 2 1
       29 CALL                             R4 1 0
       30 NEWTABLE                         R3 0 0
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K10 ["current"]
       35 JUMPIF                           R4 ; [+1]
       36 RETURN                           R0 0
       37 JUMPIF                           R0 ; [+16]
       38 GETIMPORT                        R4 K5 [warn]
       40 LOADK                            R5 K11 ["[Assistant] Failed to load execution permissions: %*"]
       41 FASTCALL1                        TOSTRING R1 ; [+3]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K8 [tostring]
       45 CALL                             R7 1 1
       46 NAMECALL                         R5 R5 K9 ["format"]
       48 CALL                             R5 2 1
       49 CALL                             R4 1 0
       50 GETUPVAL                         R4 4
       51 LOADB                            R5 1
       52 CALL                             R4 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R4 5
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 GETUPVAL                         R4 6
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 GETUPVAL                         R4 7
       61 GETUPVAL                         R5 0
       62 NAMECALL                         R5 R5 K12 ["getPresets"]
       64 CALL                             R5 1 -1
       65 CALL                             R4 -1 0
       66 GETUPVAL                         R4 8
       67 CALL                             R4 0 0
       68 GETUPVAL                         R4 9
       69 LOADB                            R5 1
       70 CALL                             R4 1 0
       71 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setPreset"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K1 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+13]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["[Assistant] Failed to preview access level '%*': %*"]
       11 GETUPVAL                         R5 1
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R7 R1
       14 GETIMPORT                        R6 K6 [tostring]
       16 CALL                             R6 1 1
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 3 1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K8 ["current"]
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 0
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 4
       30 CALL                             R2 0 0
       31 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setPendingValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setCategoryValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["removeHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withDirectory"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["openDirectoryDialogAsync"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["UploadDirectoryDialogTitle"]
        9 LOADK                            R3 K3 [""]
       10 FASTPCALL                        pcall 3 ; [+2]
       11 GETIMPORT                        R0 K5 [pcall]
       13 CALL                             R0 3 2
       14 JUMPIF                           R0 ; [+12]
       15 GETIMPORT                        R2 K7 [warn]
       17 LOADK                            R3 K8 ["[Assistant] Failed to open the upload directory picker: %*"]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K10 [tostring]
       22 CALL                             R5 1 1
       23 NAMECALL                         R3 R3 K11 ["format"]
       25 CALL                             R3 2 1
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K12 ["current"]
       30 JUMPIF                           R2 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 3
       33 LOADB                            R3 0
       34 CALL                             R2 1 0
       35 JUMPIFNOT                        R0 ; [+14]
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K14 [type]
       40 CALL                             R2 1 1
       41 JUMPIFNOTEQKS                    R2 K15 ["string"] ; [+8]
       43 JUMPIFEQKS                       R1 K3 [""] ; [+6]
       45 GETUPVAL                         R2 4
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R1
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withoutDirectory"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hasUnsavedChanges"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["save"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+12]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["[Assistant] Failed to save execution permissions: %*"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K6 [tostring]
       14 CALL                             R5 1 1
       15 NAMECALL                         R3 R3 K7 ["format"]
       17 CALL                             R3 2 1
       18 CALL                             R2 1 0
       19 LOADB                            R2 1
       20 GETUPVAL                         R3 1
       21 JUMPIFNOT                        R3 ; [+28]
       22 LOADNIL                          R3
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K8 ["setAsync"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K9 ["get"]
       29 CALL                             R6 0 1
       30 GETUPVAL                         R7 4
       31 FASTPCALL                        pcall 3 ; [+2]
       32 GETIMPORT                        R4 K1 [pcall]
       34 CALL                             R4 3 2
       35 MOVE                             R2 R4
       36 MOVE                             R3 R5
       37 JUMPIF                           R2 ; [+12]
       38 GETIMPORT                        R4 K3 [warn]
       40 LOADK                            R5 K10 ["[Assistant] Failed to save approved upload directories: %*"]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R7 K6 [tostring]
       45 CALL                             R7 1 1
       46 NAMECALL                         R5 R5 K7 ["format"]
       48 CALL                             R5 2 1
       49 CALL                             R4 1 0
       50 GETUPVAL                         R3 5
       51 GETTABLEKS                       R3 R3 K11 ["current"]
       53 JUMPIF                           R3 ; [+1]
       54 RETURN                           R0 0
       55 JUMPIFNOT                        R2 ; [+3]
       56 GETUPVAL                         R3 6
       57 GETUPVAL                         R4 4
       58 CALL                             R3 1 0
       59 GETUPVAL                         R3 7
       60 NOT                              R4 R2
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 8
       63 LOADB                            R4 0
       64 CALL                             R3 1 0
       65 GETUPVAL                         R3 9
       66 CALL                             R3 0 0
       67 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       19 DUPCLOSURE                       R4 K6 [PROTO_2]
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 NEWTABLE                         R5 0 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K7 ["locale"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K8 ["Hooks"]
       33 GETTABLEKS                       R4 R4 K9 ["useScaledValue"]
       35 LOADN                            R5 160
       36 CALL                             R4 1 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K10 ["useState"]
       40 NEWTABLE                         R6 0 0
       42 CALL                             R5 1 2
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K10 ["useState"]
       46 NEWTABLE                         R8 0 0
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K10 ["useState"]
       52 LOADK                            R10 K11 [""]
       53 CALL                             R9 1 2
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K10 ["useState"]
       57 NEWTABLE                         R12 0 0
       59 CALL                             R11 1 2
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K10 ["useState"]
       63 LOADB                            R14 0
       64 CALL                             R13 1 2
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K10 ["useState"]
       68 LOADB                            R16 0
       69 CALL                             R15 1 2
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R17 R17 K10 ["useState"]
       73 LOADB                            R18 0
       74 CALL                             R17 1 2
       75 GETUPVAL                         R19 0
       76 GETTABLEKS                       R19 R19 K10 ["useState"]
       78 LOADB                            R20 0
       79 CALL                             R19 1 2
       80 GETUPVAL                         R21 0
       81 GETTABLEKS                       R21 R21 K10 ["useState"]
       83 LOADB                            R22 0
       84 CALL                             R21 1 2
       85 GETUPVAL                         R23 0
       86 GETTABLEKS                       R23 R23 K12 ["useRef"]
       88 LOADB                            R24 1
       89 CALL                             R23 1 1
       90 GETUPVAL                         R24 0
       91 GETTABLEKS                       R24 R24 K10 ["useState"]
       93 NEWTABLE                         R25 0 0
       95 CALL                             R24 1 2
       96 GETUPVAL                         R26 0
       97 GETTABLEKS                       R26 R26 K10 ["useState"]
       99 NEWTABLE                         R27 0 0
      101 CALL                             R26 1 2
      102 GETUPVAL                         R28 0
      103 GETTABLEKS                       R28 R28 K10 ["useState"]
      105 LOADB                            R29 0
      106 CALL                             R28 1 2
      107 GETUPVAL                         R30 0
      108 GETTABLEKS                       R30 R30 K10 ["useState"]
      110 LOADB                            R31 0
      111 CALL                             R30 1 2
      112 GETUPVAL                         R32 0
      113 GETTABLEKS                       R32 R32 K10 ["useState"]
      115 LOADK                            R33 K11 [""]
      116 CALL                             R32 1 2
      117 GETUPVAL                         R35 4
      118 GETTABLEKS                       R35 R35 K13 ["areEqual"]
      120 MOVE                             R36 R24
      121 MOVE                             R37 R26
      122 CALL                             R35 2 1
      123 NOT                              R34 R35
      124 GETUPVAL                         R35 0
      125 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      127 NEWCLOSURE                       R36 P1
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R16
      134 NEWTABLE                         R37 0 1
      136 MOVE                             R38 R1
      137 SETLIST                          R37 R38 1 [1]
      139 CALL                             R35 2 1
      140 GETUPVAL                         R36 0
      141 GETTABLEKS                       R36 R36 K15 ["useEffect"]
      143 NEWCLOSURE                       R37 P2
      144 CAPTURE                          VAL R23
      145 NEWTABLE                         R38 0 0
      147 CALL                             R36 2 0
      148 GETUPVAL                         R36 0
      149 GETTABLEKS                       R36 R36 K14 ["useCallback"]
      151 NEWCLOSURE                       R37 P3
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R27
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R35
      161 CAPTURE                          VAL R18
      162 NEWTABLE                         R38 0 2
      164 MOVE                             R39 R1
      165 MOVE                             R40 R35
      166 SETLIST                          R38 R39 2 [1]
      168 CALL                             R36 2 1
      169 GETUPVAL                         R37 0
      170 GETTABLEKS                       R37 R37 K15 ["useEffect"]
      172 NEWCLOSURE                       R38 P4
      173 CAPTURE                          VAL R36
      174 NEWTABLE                         R39 0 1
      176 MOVE                             R40 R36
      177 SETLIST                          R39 R40 1 [1]
      179 CALL                             R37 2 0
      180 GETUPVAL                         R37 0
      181 GETTABLEKS                       R37 R37 K14 ["useCallback"]
      183 NEWCLOSURE                       R38 P5
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R35
      188 NEWTABLE                         R39 0 2
      190 MOVE                             R40 R1
      191 MOVE                             R41 R35
      192 SETLIST                          R39 R40 2 [1]
      194 CALL                             R37 2 1
      195 GETUPVAL                         R38 0
      196 GETTABLEKS                       R38 R38 K14 ["useCallback"]
      198 NEWCLOSURE                       R39 P6
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R35
      201 NEWTABLE                         R40 0 2
      203 MOVE                             R41 R1
      204 MOVE                             R42 R35
      205 SETLIST                          R40 R41 2 [1]
      207 CALL                             R38 2 1
      208 GETUPVAL                         R39 0
      209 GETTABLEKS                       R39 R39 K14 ["useCallback"]
      211 NEWCLOSURE                       R40 P7
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R35
      214 NEWTABLE                         R41 0 2
      216 MOVE                             R42 R1
      217 MOVE                             R43 R35
      218 SETLIST                          R41 R42 2 [1]
      220 CALL                             R39 2 1
      221 GETUPVAL                         R40 0
      222 GETTABLEKS                       R40 R40 K14 ["useCallback"]
      224 NEWCLOSURE                       R41 P8
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R35
      227 NEWTABLE                         R42 0 2
      229 MOVE                             R43 R1
      230 MOVE                             R44 R35
      231 SETLIST                          R42 R43 2 [1]
      233 CALL                             R40 2 1
      234 GETUPVAL                         R41 0
      235 GETTABLEKS                       R41 R41 K14 ["useCallback"]
      237 NEWCLOSURE                       R42 P9
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R35
      240 NEWTABLE                         R43 0 2
      242 MOVE                             R44 R1
      243 MOVE                             R45 R35
      244 SETLIST                          R43 R44 2 [1]
      246 CALL                             R41 2 1
      247 GETUPVAL                         R42 0
      248 GETTABLEKS                       R42 R42 K14 ["useCallback"]
      250 NEWCLOSURE                       R43 P10
      251 CAPTURE                          VAL R31
      252 CAPTURE                          UPVAL U5
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R27
      256 CAPTURE                          UPVAL U4
      257 NEWTABLE                         R44 0 1
      259 GETTABLEKS                       R45 R3 K16 ["UploadDirectoryDialogTitle"]
      261 SETLIST                          R44 R45 1 [1]
      263 CALL                             R42 2 1
      264 GETUPVAL                         R43 0
      265 GETTABLEKS                       R43 R43 K14 ["useCallback"]
      267 NEWCLOSURE                       R44 P11
      268 CAPTURE                          VAL R27
      269 CAPTURE                          UPVAL U4
      270 NEWTABLE                         R45 0 0
      272 CALL                             R43 2 1
      273 GETUPVAL                         R44 0
      274 GETTABLEKS                       R44 R44 K14 ["useCallback"]
      276 NEWCLOSURE                       R45 P12
      277 CAPTURE                          VAL R22
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R34
      280 CAPTURE                          UPVAL U4
      281 CAPTURE                          UPVAL U5
      282 CAPTURE                          VAL R26
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R25
      285 CAPTURE                          VAL R29
      286 CAPTURE                          VAL R35
      287 NEWTABLE                         R46 0 4
      289 MOVE                             R47 R1
      290 MOVE                             R48 R35
      291 MOVE                             R49 R34
      292 MOVE                             R50 R26
      293 SETLIST                          R46 R47 4 [1]
      295 CALL                             R44 2 1
      296 GETUPVAL                         R45 0
      297 GETTABLEKS                       R45 R45 K14 ["useCallback"]
      299 NEWCLOSURE                       R46 P13
      300 CAPTURE                          VAL R1
      301 CAPTURE                          VAL R27
      302 CAPTURE                          VAL R24
      303 CAPTURE                          VAL R29
      304 CAPTURE                          VAL R35
      305 NEWTABLE                         R47 0 3
      307 MOVE                             R48 R1
      308 MOVE                             R49 R35
      309 MOVE                             R50 R24
      310 SETLIST                          R47 R48 3 [1]
      312 CALL                             R45 2 1
      313 OR                               R46 R13 R34
      314 GETUPVAL                         R48 2
      315 GETTABLEKS                       R48 R48 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      317 JUMPIFNOT                        R48 ; [+5]
      318 JUMPIFNOT                        R2 ; [+4]
      319 GETUPVAL                         R47 6
      320 GETUPVAL                         R48 7
      321 CALL                             R47 1 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R47
      324 JUMPIFNOT                        R19 ; [+64]
      325 GETUPVAL                         R48 6
      326 GETUPVAL                         R49 8
      327 DUPTABLE                         R50 K23 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"], ["LayoutOrder"] = 2}]
      328 GETUPVAL                         R51 9
      329 GETTABLEKS                       R51 R51 K24 ["ScopePermissions"]
      331 GETTABLEKS                       R51 R51 K25 ["LoadError"]
      333 SETTABLEKS                       R51 R50 K20 ["testId"]
      335 DUPTABLE                         R51 K28 [{"Message", "RetryButton"}]
      336 GETUPVAL                         R52 6
      337 GETUPVAL                         R53 10
      338 DUPTABLE                         R54 K32 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"] = 1}]
      339 GETTABLEKS                       R55 R3 K25 ["LoadError"]
      341 SETTABLEKS                       R55 R54 K30 ["Text"]
      343 CALL                             R52 2 1
      344 SETTABLEKS                       R52 R51 K26 ["Message"]
      346 GETUPVAL                         R52 6
      347 GETUPVAL                         R53 11
      348 DUPTABLE                         R54 K37 [{["text"], ["size"], ["variant"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      349 GETTABLEKS                       R55 R3 K38 ["Retry"]
      351 SETTABLEKS                       R55 R54 K33 ["text"]
      353 GETUPVAL                         R55 12
      354 GETTABLEKS                       R55 R55 K39 ["Small"]
      356 SETTABLEKS                       R55 R54 K34 ["size"]
      358 GETUPVAL                         R55 13
      359 GETTABLEKS                       R55 R55 K40 ["Standard"]
      361 SETTABLEKS                       R55 R54 K35 ["variant"]
      363 SETTABLEKS                       R36 R54 K36 ["onActivated"]
      365 GETUPVAL                         R55 9
      366 GETTABLEKS                       R55 R55 K24 ["ScopePermissions"]
      368 GETTABLEKS                       R55 R55 K27 ["RetryButton"]
      370 SETTABLEKS                       R55 R54 K20 ["testId"]
      372 CALL                             R52 2 1
      373 SETTABLEKS                       R52 R51 K27 ["RetryButton"]
      375 CALL                             R48 3 1
      376 GETUPVAL                         R49 2
      377 GETTABLEKS                       R49 R49 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      379 JUMPIFNOT                        R49 ; [+8]
      380 GETUPVAL                         R49 14
      381 DUPTABLE                         R50 K42 [{"Notice", "LoadError"}]
      382 SETTABLEKS                       R47 R50 K41 ["Notice"]
      384 SETTABLEKS                       R48 R50 K25 ["LoadError"]
      386 CALL                             R49 1 -1
      387 RETURN                           R49 -1
      388 RETURN                           R48 1
      389 JUMPIF                           R17 ; [+28]
      390 GETUPVAL                         R48 6
      391 GETUPVAL                         R49 8
      392 DUPTABLE                         R50 K43 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"] = 2}]
      393 DUPTABLE                         R51 K45 [{"Loading"}]
      394 GETUPVAL                         R52 6
      395 GETUPVAL                         R53 10
      396 DUPTABLE                         R54 K47 [{["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["Text"]}]
      397 GETTABLEKS                       R55 R3 K44 ["Loading"]
      399 SETTABLEKS                       R55 R54 K30 ["Text"]
      401 CALL                             R52 2 1
      402 SETTABLEKS                       R52 R51 K44 ["Loading"]
      404 CALL                             R48 3 1
      405 GETUPVAL                         R49 2
      406 GETTABLEKS                       R49 R49 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      408 JUMPIFNOT                        R49 ; [+8]
      409 GETUPVAL                         R49 14
      410 DUPTABLE                         R50 K48 [{"Notice", "Loading"}]
      411 SETTABLEKS                       R47 R50 K41 ["Notice"]
      413 SETTABLEKS                       R48 R50 K44 ["Loading"]
      415 CALL                             R49 1 -1
      416 RETURN                           R49 -1
      417 RETURN                           R48 1
      418 GETUPVAL                         R49 2
      419 GETTABLEKS                       R49 R49 K49 ["FFlagStudioAssistantPermissionsFilter"]
      421 JUMPIFNOT                        R49 ; [+7]
      422 GETUPVAL                         R48 15
      423 GETTABLEKS                       R48 R48 K50 ["filterPermissions"]
      425 MOVE                             R49 R5
      426 MOVE                             R50 R32
      427 CALL                             R48 2 1
      428 JUMP                             ; [+1]
      429 LOADNIL                          R48
      430 JUMPIFNOTEQKNIL                  R48 ; [+2]
      432 LOADB                            R49 0 +1
      433 LOADB                            R49 1
      434 NEWTABLE                         R50 1 0
      436 GETUPVAL                         R51 16
      437 CALL                             R51 0 1
      438 LOADB                            R52 0
      439 MOVE                             R53 R5
      440 LOADNIL                          R54
      441 LOADNIL                          R55
      442 FORGPREP                         R53
      443 GETTABLEKS                       R59 R57 K51 ["key"]
      445 JUMPIFEQKS                       R59 K52 ["connect-to-the-internet"] ; [+2]
      447 LOADB                            R58 0 +1
      448 LOADB                            R58 1
      449 GETUPVAL                         R59 2
      450 GETTABLEKS                       R59 R59 K53 ["FFlagStudioAssistantPermissionsHideNetwork"]
      452 JUMPIFNOT                        R59 ; [+1]
      453 OR                               R52 R52 R58
      454 GETTABLEKS                       R59 R57 K51 ["key"]
      456 GETUPVAL                         R60 6
      457 GETUPVAL                         R61 17
      458 DUPTABLE                         R62 K58 [{"category", "onToggle", "onCategoryValue", "extraContent", "isDisabled", "LayoutOrder"}]
      459 SETTABLEKS                       R57 R62 K54 ["category"]
      461 SETTABLEKS                       R38 R62 K55 ["onToggle"]
      463 SETTABLEKS                       R39 R62 K56 ["onCategoryValue"]
      465 JUMPIFNOT                        R58 ; [+13]
      466 GETUPVAL                         R63 6
      467 GETUPVAL                         R64 18
      468 DUPTABLE                         R65 K62 [{"domains", "onAdd", "onRemove", "isDisabled"}]
      469 SETTABLEKS                       R11 R65 K59 ["domains"]
      471 SETTABLEKS                       R40 R65 K60 ["onAdd"]
      473 SETTABLEKS                       R41 R65 K61 ["onRemove"]
      475 SETTABLEKS                       R2 R65 K4 ["isDisabled"]
      477 CALL                             R63 2 1
      478 JUMP                             ; [+1]
      479 LOADNIL                          R63
      480 SETTABLEKS                       R63 R62 K57 ["extraContent"]
      482 SETTABLEKS                       R2 R62 K4 ["isDisabled"]
      484 MOVE                             R63 R51
      485 CALL                             R63 0 1
      486 SETTABLEKS                       R63 R62 K21 ["LayoutOrder"]
      488 CALL                             R60 2 1
      489 SETTABLE                         R60 R50 R59
      490 LOADK                            R59 K63 ["%*-divider"]
      491 GETTABLEKS                       R61 R57 K51 ["key"]
      493 NAMECALL                         R59 R59 K64 ["format"]
      495 CALL                             R59 2 1
      496 GETUPVAL                         R60 6
      497 GETUPVAL                         R61 19
      498 DUPTABLE                         R62 K65 [{"LayoutOrder"}]
      499 MOVE                             R63 R51
      500 CALL                             R63 0 1
      501 SETTABLEKS                       R63 R62 K21 ["LayoutOrder"]
      503 CALL                             R60 2 1
      504 SETTABLE                         R60 R50 R59
      505 FORGLOOP                         R53 2 ; [-63]
      507 GETUPVAL                         R53 2
      508 GETTABLEKS                       R53 R53 K53 ["FFlagStudioAssistantPermissionsHideNetwork"]
      510 JUMPIFNOT                        R53 ; [+36]
      511 JUMPIF                           R52 ; [+35]
      512 GETUPVAL                         R53 6
      513 GETUPVAL                         R54 8
      514 DUPTABLE                         R55 K67 [{["tag"] = "col size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
      515 MOVE                             R56 R51
      516 CALL                             R56 0 1
      517 SETTABLEKS                       R56 R55 K21 ["LayoutOrder"]
      519 DUPTABLE                         R56 K69 [{"Content"}]
      520 GETUPVAL                         R57 6
      521 GETUPVAL                         R58 18
      522 DUPTABLE                         R59 K62 [{"domains", "onAdd", "onRemove", "isDisabled"}]
      523 SETTABLEKS                       R11 R59 K59 ["domains"]
      525 SETTABLEKS                       R40 R59 K60 ["onAdd"]
      527 SETTABLEKS                       R41 R59 K61 ["onRemove"]
      529 SETTABLEKS                       R2 R59 K4 ["isDisabled"]
      531 CALL                             R57 2 1
      532 SETTABLEKS                       R57 R56 K68 ["Content"]
      534 CALL                             R53 3 1
      535 SETTABLEKS                       R53 R50 K70 ["HttpDomains"]
      537 GETUPVAL                         R53 6
      538 GETUPVAL                         R54 19
      539 DUPTABLE                         R55 K65 [{"LayoutOrder"}]
      540 MOVE                             R56 R51
      541 CALL                             R56 0 1
      542 SETTABLEKS                       R56 R55 K21 ["LayoutOrder"]
      544 CALL                             R53 2 1
      545 SETTABLEKS                       R53 R50 K71 ["HttpDomains-divider"]
      547 GETUPVAL                         R53 6
      548 GETUPVAL                         R54 8
      549 DUPTABLE                         R55 K73 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"] = 2}]
      550 DUPTABLE                         R56 K81 [{"Header", "AccessLevel", "Description", "IntroDivider", "CategoryList", "FilteredList", "UploadDirectories"}]
      551 GETUPVAL                         R57 6
      552 GETUPVAL                         R58 10
      553 DUPTABLE                         R59 K83 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      554 GETTABLEKS                       R60 R3 K74 ["Header"]
      556 SETTABLEKS                       R60 R59 K30 ["Text"]
      558 CALL                             R57 2 1
      559 SETTABLEKS                       R57 R56 K74 ["Header"]
      561 GETUPVAL                         R58 2
      562 GETTABLEKS                       R58 R58 K49 ["FFlagStudioAssistantPermissionsFilter"]
      564 JUMPIFNOT                        R58 ; [+79]
      565 GETUPVAL                         R57 6
      566 GETUPVAL                         R58 8
      567 DUPTABLE                         R59 K85 [{["tag"] = "row wrap align-y-bottom gap-medium size-full-0 auto-y", ["LayoutOrder"] = 2}]
      568 DUPTABLE                         R60 K88 [{"Selector", "Filter"}]
      569 LENGTH                           R62 R7
      570 LOADN                            R63 0
      571 JUMPIFNOTLT                      R63 R62 ; [+15]
      573 GETUPVAL                         R61 6
      574 GETUPVAL                         R62 20
      575 DUPTABLE                         R63 K92 [{["presets"], ["selectedPreset"], ["onSelect"], ["isDisabled"], ["LayoutOrder"] = 1}]
      576 SETTABLEKS                       R7 R63 K89 ["presets"]
      578 SETTABLEKS                       R9 R63 K90 ["selectedPreset"]
      580 SETTABLEKS                       R37 R63 K91 ["onSelect"]
      582 OR                               R64 R21 R2
      583 SETTABLEKS                       R64 R63 K4 ["isDisabled"]
      585 CALL                             R61 2 1
      586 JUMP                             ; [+1]
      587 LOADNIL                          R61
      588 SETTABLEKS                       R61 R60 K86 ["Selector"]
      590 GETUPVAL                         R61 6
      591 GETUPVAL                         R62 8
      592 DUPTABLE                         R63 K95 [{["tag"] = "row grow auto-y", ["Size"], ["LayoutOrder"] = 2}]
      593 GETIMPORT                        R64 K98 [UDim2.fromOffset]
      595 MOVE                             R65 R4
      596 LOADN                            R66 0
      597 CALL                             R64 2 1
      598 SETTABLEKS                       R64 R63 K94 ["Size"]
      600 DUPTABLE                         R64 K100 [{"Input"}]
      601 GETUPVAL                         R65 6
      602 GETUPVAL                         R66 21
      603 DUPTABLE                         R67 K107 [{["text"], ["placeholder"], ["onChanged"], ["size"], ["shape"], ["width"], ["hasClearButton"] = True, ["testId"]}]
      604 SETTABLEKS                       R32 R67 K33 ["text"]
      606 GETTABLEKS                       R68 R3 K108 ["FilterPlaceholder"]
      608 SETTABLEKS                       R68 R67 K101 ["placeholder"]
      610 SETTABLEKS                       R33 R67 K102 ["onChanged"]
      612 GETUPVAL                         R68 22
      613 GETTABLEKS                       R68 R68 K39 ["Small"]
      615 SETTABLEKS                       R68 R67 K34 ["size"]
      617 GETUPVAL                         R68 23
      618 GETTABLEKS                       R68 R68 K109 ["Rounded"]
      620 SETTABLEKS                       R68 R67 K103 ["shape"]
      622 GETIMPORT                        R68 K112 [UDim.new]
      624 LOADN                            R69 1
      625 LOADN                            R70 0
      626 CALL                             R68 2 1
      627 SETTABLEKS                       R68 R67 K104 ["width"]
      629 GETUPVAL                         R68 9
      630 GETTABLEKS                       R68 R68 K24 ["ScopePermissions"]
      632 GETTABLEKS                       R68 R68 K113 ["FilterInput"]
      634 SETTABLEKS                       R68 R67 K20 ["testId"]
      636 CALL                             R65 2 1
      637 SETTABLEKS                       R65 R64 K99 ["Input"]
      639 CALL                             R61 3 1
      640 SETTABLEKS                       R61 R60 K87 ["Filter"]
      642 CALL                             R57 3 1
      643 JUMP                             ; [+19]
      644 LENGTH                           R58 R7
      645 LOADN                            R59 0
      646 JUMPIFNOTLT                      R59 R58 ; [+15]
      648 GETUPVAL                         R57 6
      649 GETUPVAL                         R58 20
      650 DUPTABLE                         R59 K114 [{["presets"], ["selectedPreset"], ["onSelect"], ["isDisabled"], ["LayoutOrder"] = 2}]
      651 SETTABLEKS                       R7 R59 K89 ["presets"]
      653 SETTABLEKS                       R9 R59 K90 ["selectedPreset"]
      655 SETTABLEKS                       R37 R59 K91 ["onSelect"]
      657 OR                               R60 R21 R2
      658 SETTABLEKS                       R60 R59 K4 ["isDisabled"]
      660 CALL                             R57 2 1
      661 JUMP                             ; [+1]
      662 LOADNIL                          R57
      663 SETTABLEKS                       R57 R56 K75 ["AccessLevel"]
      665 GETUPVAL                         R57 6
      666 GETUPVAL                         R58 10
      667 DUPTABLE                         R59 K117 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 3}]
      668 GETTABLEKS                       R60 R3 K76 ["Description"]
      670 SETTABLEKS                       R60 R59 K30 ["Text"]
      672 CALL                             R57 2 1
      673 SETTABLEKS                       R57 R56 K76 ["Description"]
      675 GETUPVAL                         R57 6
      676 GETUPVAL                         R58 19
      677 DUPTABLE                         R59 K119 [{["LayoutOrder"] = 4}]
      678 CALL                             R57 2 1
      679 SETTABLEKS                       R57 R56 K77 ["IntroDivider"]
      681 GETUPVAL                         R57 6
      682 GETUPVAL                         R58 8
      683 DUPTABLE                         R59 K123 [{["tag"] = "col size-full-0 auto-y", ["Visible"], ["LayoutOrder"] = 5}]
      684 NOT                              R60 R49
      685 SETTABLEKS                       R60 R59 K121 ["Visible"]
      687 MOVE                             R60 R50
      688 CALL                             R57 3 1
      689 SETTABLEKS                       R57 R56 K78 ["CategoryList"]
      691 JUMPIFNOT                        R48 ; [+13]
      692 GETUPVAL                         R57 6
      693 GETUPVAL                         R58 24
      694 DUPTABLE                         R59 K126 [{["results"], ["query"], ["onToggle"], ["isDisabled"], ["LayoutOrder"] = 5}]
      695 SETTABLEKS                       R48 R59 K124 ["results"]
      697 SETTABLEKS                       R32 R59 K125 ["query"]
      699 SETTABLEKS                       R38 R59 K55 ["onToggle"]
      701 SETTABLEKS                       R2 R59 K4 ["isDisabled"]
      703 CALL                             R57 2 1
      704 JUMP                             ; [+1]
      705 LOADNIL                          R57
      706 SETTABLEKS                       R57 R56 K79 ["FilteredList"]
      708 JUMPIFNOT                        R49 ; [+2]
      709 LOADNIL                          R57
      710 JUMP                             ; [+14]
      711 GETUPVAL                         R57 6
      712 GETUPVAL                         R58 25
      713 DUPTABLE                         R59 K130 [{["directories"], ["onAdd"], ["onRemove"], ["isAddDisabled"], ["isDisabled"], ["LayoutOrder"] = 6}]
      714 SETTABLEKS                       R26 R59 K127 ["directories"]
      716 SETTABLEKS                       R42 R59 K60 ["onAdd"]
      718 SETTABLEKS                       R43 R59 K61 ["onRemove"]
      720 SETTABLEKS                       R30 R59 K128 ["isAddDisabled"]
      722 SETTABLEKS                       R2 R59 K4 ["isDisabled"]
      724 CALL                             R57 2 1
      725 SETTABLEKS                       R57 R56 K80 ["UploadDirectories"]
      727 CALL                             R53 3 1
      728 GETUPVAL                         R54 6
      729 GETUPVAL                         R55 8
      730 DUPTABLE                         R56 K131 [{["tag"], ["LayoutOrder"] = 3}]
      731 NEWTABLE                         R57 4 0
      733 LOADB                            R58 1
      734 SETTABLEKS                       R58 R57 K132 ["row align-x-right align-y-center gap-small size-full-0 auto-y"]
      736 GETUPVAL                         R58 2
      737 GETTABLEKS                       R58 R58 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      739 SETTABLEKS                       R58 R57 K133 ["padding-y-medium padding-left-xlarge padding-right-xxlarge"]
      741 GETUPVAL                         R59 2
      742 GETTABLEKS                       R59 R59 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      744 NOT                              R58 R59
      745 SETTABLEKS                       R58 R57 K134 ["padding-top-medium"]
      747 SETTABLEKS                       R57 R56 K18 ["tag"]
      749 DUPTABLE                         R57 K138 [{"SaveError", "SaveButton", "CancelButton"}]
      750 JUMPIF                           R15 ; [+1]
      751 JUMPIFNOT                        R28 ; [+23]
      752 GETUPVAL                         R58 6
      753 GETUPVAL                         R59 8
      754 DUPTABLE                         R60 K141 [{["tag"] = "row align-y-center grow size-0-0 auto-y", ["testId"], ["LayoutOrder"] = 0}]
      755 GETUPVAL                         R61 9
      756 GETTABLEKS                       R61 R61 K24 ["ScopePermissions"]
      758 GETTABLEKS                       R61 R61 K135 ["SaveError"]
      760 SETTABLEKS                       R61 R60 K20 ["testId"]
      762 DUPTABLE                         R61 K143 [{"Label"}]
      763 GETUPVAL                         R62 6
      764 GETUPVAL                         R63 10
      765 DUPTABLE                         R64 K145 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-alert", ["Text"]}]
      766 GETTABLEKS                       R65 R3 K135 ["SaveError"]
      768 SETTABLEKS                       R65 R64 K30 ["Text"]
      770 CALL                             R62 2 1
      771 SETTABLEKS                       R62 R61 K142 ["Label"]
      773 CALL                             R58 3 1
      774 JUMPIF                           R58 ; [+1]
      775 LOADNIL                          R58
      776 SETTABLEKS                       R58 R57 K135 ["SaveError"]
      778 GETUPVAL                         R58 6
      779 GETUPVAL                         R59 11
      780 DUPTABLE                         R60 K146 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 1}]
      781 GETTABLEKS                       R61 R3 K147 ["Save"]
      783 SETTABLEKS                       R61 R60 K33 ["text"]
      785 GETUPVAL                         R61 12
      786 GETTABLEKS                       R61 R61 K39 ["Small"]
      788 SETTABLEKS                       R61 R60 K34 ["size"]
      790 GETUPVAL                         R61 13
      791 GETTABLEKS                       R61 R61 K148 ["Emphasis"]
      793 SETTABLEKS                       R61 R60 K35 ["variant"]
      795 NOT                              R61 R46
      796 JUMPIF                           R61 ; [+3]
      797 MOVE                             R61 R21
      798 JUMPIF                           R61 ; [+1]
      799 MOVE                             R61 R2
      800 SETTABLEKS                       R61 R60 K4 ["isDisabled"]
      802 SETTABLEKS                       R44 R60 K36 ["onActivated"]
      804 GETUPVAL                         R61 9
      805 GETTABLEKS                       R61 R61 K24 ["ScopePermissions"]
      807 GETTABLEKS                       R61 R61 K136 ["SaveButton"]
      809 SETTABLEKS                       R61 R60 K20 ["testId"]
      811 CALL                             R58 2 1
      812 SETTABLEKS                       R58 R57 K136 ["SaveButton"]
      814 GETUPVAL                         R58 6
      815 GETUPVAL                         R59 11
      816 DUPTABLE                         R60 K149 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      817 GETTABLEKS                       R61 R3 K150 ["Cancel"]
      819 SETTABLEKS                       R61 R60 K33 ["text"]
      821 GETUPVAL                         R61 12
      822 GETTABLEKS                       R61 R61 K39 ["Small"]
      824 SETTABLEKS                       R61 R60 K34 ["size"]
      826 GETUPVAL                         R61 13
      827 GETTABLEKS                       R61 R61 K40 ["Standard"]
      829 SETTABLEKS                       R61 R60 K35 ["variant"]
      831 NOT                              R61 R46
      832 JUMPIF                           R61 ; [+3]
      833 MOVE                             R61 R21
      834 JUMPIF                           R61 ; [+1]
      835 MOVE                             R61 R2
      836 SETTABLEKS                       R61 R60 K4 ["isDisabled"]
      838 SETTABLEKS                       R45 R60 K36 ["onActivated"]
      840 GETUPVAL                         R61 9
      841 GETTABLEKS                       R61 R61 K24 ["ScopePermissions"]
      843 GETTABLEKS                       R61 R61 K137 ["CancelButton"]
      845 SETTABLEKS                       R61 R60 K20 ["testId"]
      847 CALL                             R58 2 1
      848 SETTABLEKS                       R58 R57 K137 ["CancelButton"]
      850 CALL                             R54 3 1
      851 GETUPVAL                         R55 2
      852 GETTABLEKS                       R55 R55 K17 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
      854 JUMPIF                           R55 ; [+17]
      855 GETUPVAL                         R55 6
      856 GETUPVAL                         R56 8
      857 DUPTABLE                         R57 K151 [{["tag"] = "col gap-medium size-full-0 auto-y", ["testId"]}]
      858 GETUPVAL                         R58 9
      859 GETTABLEKS                       R58 R58 K24 ["ScopePermissions"]
      861 GETTABLEKS                       R58 R58 K152 ["Container"]
      863 SETTABLEKS                       R58 R57 K20 ["testId"]
      865 DUPTABLE                         R58 K155 [{"Permissions", "ButtonRow"}]
      866 SETTABLEKS                       R53 R58 K153 ["Permissions"]
      868 SETTABLEKS                       R54 R58 K154 ["ButtonRow"]
      870 CALL                             R55 3 -1
      871 RETURN                           R55 -1
      872 GETUPVAL                         R55 6
      873 GETUPVAL                         R56 8
      874 DUPTABLE                         R57 K157 [{["tag"] = "col size-full-full", ["testId"]}]
      875 GETUPVAL                         R58 9
      876 GETTABLEKS                       R58 R58 K24 ["ScopePermissions"]
      878 GETTABLEKS                       R58 R58 K152 ["Container"]
      880 SETTABLEKS                       R58 R57 K20 ["testId"]
      882 DUPTABLE                         R58 K160 [{"ScrollBody", "FooterDivider", "ButtonRow"}]
      883 GETUPVAL                         R59 6
      884 GETUPVAL                         R60 26
      885 DUPTABLE                         R61 K164 [{["tag"] = "col fill size-full-0 padding-top-xlarge padding-left-xlarge padding-right-xxlarge", ["scroll"], ["layout"], ["testId"], ["LayoutOrder"] = 1}]
      886 GETUPVAL                         R62 27
      887 SETTABLEKS                       R62 R61 K162 ["scroll"]
      889 GETUPVAL                         R62 28
      890 SETTABLEKS                       R62 R61 K163 ["layout"]
      892 GETUPVAL                         R62 9
      893 GETTABLEKS                       R62 R62 K24 ["ScopePermissions"]
      895 GETTABLEKS                       R62 R62 K158 ["ScrollBody"]
      897 SETTABLEKS                       R62 R61 K20 ["testId"]
      899 DUPTABLE                         R62 K166 [{"ContentPadding"}]
      900 GETUPVAL                         R63 6
      901 GETUPVAL                         R64 8
      902 DUPTABLE                         R65 K168 [{["tag"] = "col gap-medium size-full-0 auto-y padding-bottom-medium padding-right-medium"}]
      903 DUPTABLE                         R66 K169 [{"Notice", "Permissions"}]
      904 SETTABLEKS                       R47 R66 K41 ["Notice"]
      906 SETTABLEKS                       R53 R66 K153 ["Permissions"]
      908 CALL                             R63 3 1
      909 SETTABLEKS                       R63 R62 K165 ["ContentPadding"]
      911 CALL                             R59 3 1
      912 SETTABLEKS                       R59 R58 K158 ["ScrollBody"]
      914 GETUPVAL                         R59 6
      915 GETUPVAL                         R60 19
      916 DUPTABLE                         R61 K170 [{["LayoutOrder"] = 2}]
      917 CALL                             R59 2 1
      918 SETTABLEKS                       R59 R58 K159 ["FooterDivider"]
      920 SETTABLEKS                       R54 R58 K154 ["ButtonRow"]
      922 CALL                             R55 3 -1
      923 RETURN                           R55 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["isDisabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["FFlagStudioAssistantPermissionSaveCancelFrame"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 3
       14 DUPTABLE                         R3 K4 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
       15 DUPTABLE                         R4 K7 [{"UnpublishedNotice", "Body"}]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 4
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K5 ["UnpublishedNotice"]
       21 GETUPVAL                         R5 1
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K11 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 2}]
       24 DUPTABLE                         R8 K13 [{"Content"}]
       25 GETUPVAL                         R9 1
       26 GETUPVAL                         R10 2
       27 MOVE                             R11 R0
       28 CALL                             R9 2 1
       29 SETTABLEKS                       R9 R8 K12 ["Content"]
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K6 ["Body"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

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
       47 GETTABLEKS                       R6 R6 K13 ["FilteredPermissionList"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Flags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Components"]
       59 GETTABLEKS                       R8 R8 K7 ["IntegrationManagement"]
       61 GETTABLEKS                       R8 R8 K15 ["HttpDomainsContent"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Components"]
       68 GETTABLEKS                       R9 R9 K7 ["IntegrationManagement"]
       70 GETTABLEKS                       R9 R9 K16 ["PermissionFilter"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K17 ["Util"]
       77 GETTABLEKS                       R10 R10 K18 ["TestIds"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K19 ["Resources"]
       84 GETTABLEKS                       R11 R11 K20 ["Localization"]
       86 GETTABLEKS                       R11 R11 K21 ["Translator"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K17 ["Util"]
       93 GETTABLEKS                       R12 R12 K22 ["UploadDirectories"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K6 ["Components"]
      100 GETTABLEKS                       R13 R13 K7 ["IntegrationManagement"]
      102 GETTABLEKS                       R13 R13 K23 ["UploadDirectoriesContent"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K24 ["Parent"]
      109 GETTABLEKS                       R14 R14 K25 ["Foundation"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K24 ["Parent"]
      116 GETTABLEKS                       R15 R15 K26 ["React"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K24 ["Parent"]
      123 GETTABLEKS                       R16 R16 K27 ["ReactUtils"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R16 R13 K28 ["Alert"]
      128 GETTABLEKS                       R17 R13 K29 ["Button"]
      130 GETTABLEKS                       R18 R13 K30 ["Divider"]
      132 GETTABLEKS                       R19 R13 K31 ["ScrollView"]
      134 GETTABLEKS                       R20 R13 K32 ["SearchInput"]
      136 GETTABLEKS                       R21 R13 K33 ["Text"]
      138 GETTABLEKS                       R22 R13 K34 ["View"]
      140 GETTABLEKS                       R23 R13 K35 ["Enums"]
      142 GETTABLEKS                       R23 R23 K36 ["AlertSeverity"]
      144 GETTABLEKS                       R24 R13 K35 ["Enums"]
      146 GETTABLEKS                       R24 R24 K37 ["AlertVariant"]
      148 GETTABLEKS                       R25 R13 K35 ["Enums"]
      150 GETTABLEKS                       R25 R25 K38 ["ButtonSize"]
      152 GETTABLEKS                       R26 R13 K35 ["Enums"]
      154 GETTABLEKS                       R26 R26 K39 ["ButtonVariant"]
      156 GETTABLEKS                       R27 R13 K35 ["Enums"]
      158 GETTABLEKS                       R27 R27 K40 ["InputSize"]
      160 GETTABLEKS                       R28 R13 K35 ["Enums"]
      162 GETTABLEKS                       R28 R28 K41 ["SearchInputShape"]
      164 GETTABLEKS                       R29 R15 K42 ["createNextOrder"]
      166 GETTABLEKS                       R30 R14 K43 ["createElement"]
      168 DUPTABLE                         R31 K49 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "VerticalScrollBarInset"}]
      169 GETIMPORT                        R32 K52 [UDim2.fromOffset]
      171 LOADN                            R33 0
      172 LOADN                            R34 0
      173 CALL                             R32 2 1
      174 SETTABLEKS                       R32 R31 K44 ["CanvasSize"]
      176 GETIMPORT                        R32 K56 [Enum.AutomaticSize.Y]
      178 SETTABLEKS                       R32 R31 K45 ["AutomaticCanvasSize"]
      180 GETIMPORT                        R32 K57 [Enum.ScrollingDirection.Y]
      182 SETTABLEKS                       R32 R31 K46 ["ScrollingDirection"]
      184 GETTABLEKS                       R32 R13 K35 ["Enums"]
      186 GETTABLEKS                       R32 R32 K58 ["Visibility"]
      188 GETTABLEKS                       R32 R32 K59 ["Always"]
      190 SETTABLEKS                       R32 R31 K47 ["scrollBarVisibility"]
      192 GETIMPORT                        R32 K61 [Enum.ScrollBarInset.Always]
      194 SETTABLEKS                       R32 R31 K48 ["VerticalScrollBarInset"]
      196 DUPTABLE                         R32 K64 [{"SortOrder", "FillDirection"}]
      197 GETIMPORT                        R33 K66 [Enum.SortOrder.LayoutOrder]
      199 SETTABLEKS                       R33 R32 K62 ["SortOrder"]
      201 GETIMPORT                        R33 K68 [Enum.FillDirection.Vertical]
      203 SETTABLEKS                       R33 R32 K63 ["FillDirection"]
      205 DUPCLOSURE                       R33 K69 [PROTO_0]
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R9
      212 DUPCLOSURE                       R34 K70 [PROTO_1]
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R22
      215 DUPCLOSURE                       R35 K71 [PROTO_26]
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R33
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R34
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R32
      245 DUPCLOSURE                       R36 K72 [PROTO_27]
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R35
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R33
      251 GETTABLEKS                       R37 R14 K73 ["memo"]
      253 MOVE                             R38 R36
      254 CALL                             R37 1 -1
      255 RETURN                           R37 -1
