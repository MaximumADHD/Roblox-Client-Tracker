PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioSdkService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 NAMECALL                         R4 R0 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R10 R2
        8 NAMECALL                         R8 R7 K3 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+5]
       12 GETTABLEKS                       R8 R7 K4 ["Name"]
       14 JUMPIFNOTEQ                      R8 R1 ; [+2]
       16 RETURN                           R7 1
       17 FORGLOOP                         R3 2 [inext] ; [-11]
       19 LOADNIL                          R3
       20 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["pluginNamespace must be a string"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["optional"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K5 ["instance"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 -1
       19 CALL                             R3 -1 1
       20 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       22 LOADK                            R4 K6 ["hostService must be an instance if defined"]
       23 GETIMPORT                        R2 K3 [assert]
       25 CALL                             R2 2 0
       26 DUPTABLE                         R2 K9 [{"hostService", "pluginNamespace"}]
       27 MOVE                             R3 R1
       28 JUMPIF                           R3 ; [+6]
       29 GETIMPORT                        R3 K11 [game]
       31 LOADK                            R5 K12 ["StudioSdkService"]
       32 NAMECALL                         R3 R3 K13 ["GetService"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K7 ["hostService"]
       37 SETTABLEKS                       R0 R2 K8 ["pluginNamespace"]
       39 GETUPVAL                         R5 1
       40 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       42 MOVE                             R4 R2
       43 GETIMPORT                        R3 K15 [setmetatable]
       45 CALL                             R3 2 1
       46 RETURN                           R3 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getNamespaceFolder"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["Destroy"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Folder"]
        4 CALL                             R3 3 1
        5 JUMPIF                           R3 ; [+9]
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 LOADK                            R5 K0 ["Folder"]
        9 CALL                             R4 1 1
       10 MOVE                             R3 R4
       11 SETTABLEKS                       R2 R3 K4 ["Name"]
       13 SETTABLEKS                       R1 R3 K5 ["Parent"]
       15 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["hostService"]
        2 GETTABLEKS                       R4 R0 K1 ["BASE_FOLDER_NAME"]
        4 NAMECALL                         R1 R0 K2 ["ensureFolderExists"]
        6 CALL                             R1 3 1
        7 MOVE                             R4 R1
        8 GETTABLEKS                       R5 R0 K3 ["pluginNamespace"]
       10 NAMECALL                         R2 R0 K2 ["ensureFolderExists"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["name must be a string"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 NAMECALL                         R2 R0 K4 ["getNamespaceFolder"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 MOVE                             R5 R1
       17 LOADK                            R6 K5 ["BindableFunction"]
       18 CALL                             R3 3 1
       19 JUMPIF                           R3 ; [+7]
       20 GETIMPORT                        R4 K7 [error]
       22 LOADK                            R6 K8 ["No function named "]
       23 MOVE                             R7 R1
       24 LOADK                            R8 K9 [" exists"]
       25 CONCAT                           R5 R6 R8
       26 CALL                             R4 1 0
       27 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["name must be a string"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 NAMECALL                         R2 R0 K4 ["getNamespaceFolder"]
       13 CALL                             R2 1 1
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K5 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+16]
       19 LOADK                            R7 K6 ["BindableFunction"]
       20 NAMECALL                         R5 R3 K7 ["IsA"]
       22 CALL                             R5 2 1
       23 LOADK                            R6 K8 ["CrossPluginCommunication expected %s to be a BindableFunction but it was a %s"]
       24 MOVE                             R8 R1
       25 GETTABLEKS                       R9 R3 K9 ["ClassName"]
       27 NAMECALL                         R6 R6 K10 ["format"]
       29 CALL                             R6 3 -1
       30 FASTCALL                         ASSERT ; [+2]
       31 GETIMPORT                        R4 K3 [assert]
       33 CALL                             R4 -1 0
       34 RETURN                           R3 1
       35 GETIMPORT                        R4 K13 [Instance.new]
       37 LOADK                            R5 K6 ["BindableFunction"]
       38 CALL                             R4 1 1
       39 MOVE                             R3 R4
       40 SETTABLEKS                       R1 R3 K14 ["Name"]
       42 SETTABLEKS                       R2 R3 K15 ["Parent"]
       44 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["name must be a string"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 NAMECALL                         R2 R0 K4 ["getNamespaceFolder"]
       13 CALL                             R2 1 1
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K5 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+16]
       19 LOADK                            R7 K6 ["BindableEvent"]
       20 NAMECALL                         R5 R3 K7 ["IsA"]
       22 CALL                             R5 2 1
       23 LOADK                            R6 K8 ["CrossPluginCommunication expected %s to be a BindableEvent but it was a %s"]
       24 MOVE                             R8 R1
       25 GETTABLEKS                       R9 R3 K9 ["ClassName"]
       27 NAMECALL                         R6 R6 K10 ["format"]
       29 CALL                             R6 3 -1
       30 FASTCALL                         ASSERT ; [+2]
       31 GETIMPORT                        R4 K3 [assert]
       33 CALL                             R4 -1 0
       34 RETURN                           R3 1
       35 GETIMPORT                        R4 K13 [Instance.new]
       37 LOADK                            R5 K6 ["BindableEvent"]
       38 CALL                             R4 1 1
       39 MOVE                             R3 R4
       40 SETTABLEKS                       R1 R3 K14 ["Name"]
       42 SETTABLEKS                       R2 R3 K15 ["Parent"]
       44 RETURN                           R3 1

PROTO_9:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["string"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["name must be a string"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K4 ["ensureEventExists"]
       15 CALL                             R2 2 1
       16 GETVARARGS                       R5 -1
       17 NAMECALL                         R3 R2 K5 ["Fire"]
       19 CALL                             R3 -1 -1
       20 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["string"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["name must be a string"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["callback"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       18 LOADK                            R5 K5 ["callback must be a function"]
       19 GETIMPORT                        R3 K3 [assert]
       21 CALL                             R3 2 0
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K6 ["ensureEventExists"]
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R4 R3 K7 ["Event"]
       28 MOVE                             R6 R2
       29 NAMECALL                         R4 R4 K8 ["Connect"]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

PROTO_11:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["string"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["name must be a string"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K4 ["getFunction"]
       15 CALL                             R2 2 1
       16 GETVARARGS                       R5 -1
       17 NAMECALL                         R3 R2 K5 ["Invoke"]
       19 CALL                             R3 -1 -1
       20 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["string"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["name must be a string"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["callback"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       18 LOADK                            R5 K5 ["callback must be a function"]
       19 GETIMPORT                        R3 K3 [assert]
       21 CALL                             R3 2 0
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K6 ["ensureFunctionExists"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R2 R3 K7 ["OnInvoke"]
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [require]
        4 GETIMPORT                        R5 K4 [script]
        6 GETTABLEKS                       R4 R5 K5 ["Parent"]
        8 GETTABLEKS                       R3 R4 K6 ["Typecheck"]
       10 GETTABLEKS                       R2 R3 K7 ["t"]
       12 CALL                             R1 1 1
       13 DUPCLOSURE                       R2 K8 [PROTO_1]
       14 NEWTABLE                         R3 16 0
       16 SETTABLEKS                       R3 R3 K9 ["__index"]
       18 LOADK                            R4 K10 ["CrossPluginCommunication"]
       19 SETTABLEKS                       R4 R3 K11 ["BASE_FOLDER_NAME"]
       21 DUPCLOSURE                       R4 K12 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R4 R3 K13 ["new"]
       26 DUPCLOSURE                       R4 K14 [PROTO_3]
       27 SETTABLEKS                       R4 R3 K15 ["cleanup"]
       29 DUPCLOSURE                       R4 K16 [PROTO_4]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K17 ["ensureFolderExists"]
       33 DUPCLOSURE                       R4 K18 [PROTO_5]
       34 SETTABLEKS                       R4 R3 K19 ["getNamespaceFolder"]
       36 DUPCLOSURE                       R4 K20 [PROTO_6]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K21 ["getFunction"]
       41 DUPCLOSURE                       R4 K22 [PROTO_7]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R4 R3 K23 ["ensureFunctionExists"]
       45 DUPCLOSURE                       R4 K24 [PROTO_8]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K25 ["ensureEventExists"]
       49 DUPCLOSURE                       R4 K26 [PROTO_9]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R4 R3 K27 ["Fire"]
       53 DUPCLOSURE                       R4 K28 [PROTO_10]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R4 R3 K29 ["Connect"]
       57 DUPCLOSURE                       R4 K30 [PROTO_11]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R4 R3 K31 ["Invoke"]
       61 DUPCLOSURE                       R4 K32 [PROTO_12]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R4 R3 K33 ["OnInvoke"]
       65 RETURN                           R3 1
