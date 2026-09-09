PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetClassIcon"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DataModelTypeChanged"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R0 R0 K1 ["FireGuest"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsHost"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [xpcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K3 [PROTO_2]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 JUMPIF                           R0 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.None]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K4 ["CurrentDataModelType"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K5 ["CurrentDataModelTypeChanged"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R1 R1 K6 ["Connect"]
       23 CALL                             R1 2 1
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R1
       26 SETUPVAL                         R2 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R1 K0 ["Set"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+13]
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K0 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 GETUPVAL                         R0 4
       19 JUMPIFNOT                        R0 ; [+2]
       20 GETUPVAL                         R0 4
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R4 K0 ["GetStudioIcon"]
        1 DUPCLOSURE                       R5 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R2 3 2
        6 NEWTABLE                         R4 0 0
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 1
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+37]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R7 P2
       15 CAPTURE                          REF R5
       16 CAPTURE                          VAL R6
       17 NAMECALL                         R8 R0 K3 ["IsHost"]
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+28]
       21 GETTABLEKS                       R8 R1 K4 ["MultipleDocumentInterfaceInstance"]
       23 FASTCALL2K                       ASSERT R8 K5 ; [+5]
       25 MOVE                             R10 R8
       26 LOADK                            R11 K5 ["MultipleDocumentInterfaceInstance is not available"]
       27 GETIMPORT                        R9 K7 [assert]
       29 CALL                             R9 2 0
       30 MOVE                             R9 R7
       31 GETTABLEKS                       R10 R8 K8 ["FocusedDataModelSession"]
       33 CALL                             R9 1 0
       34 MOVE                             R10 R4
       35 LOADK                            R13 K8 ["FocusedDataModelSession"]
       36 NAMECALL                         R11 R8 K9 ["GetPropertyChangedSignal"]
       38 CALL                             R11 2 1
       39 NEWCLOSURE                       R13 P3
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 NAMECALL                         R11 R11 K10 ["Connect"]
       44 CALL                             R11 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R9 K13 [table.insert]
       48 CALL                             R9 -1 0
       49 LOADK                            R8 K14 ["ResetSelection"]
       50 DUPCLOSURE                       R9 K15 [PROTO_8]
       51 CAPTURE                          UPVAL U2
       52 NAMECALL                         R6 R0 K16 ["OnHostEvent"]
       54 CALL                             R6 3 2
       55 DUPTABLE                         R8 K19 [{"destroy", "DEPRECATED_getIconAsync", "ResetSelection"}]
       56 NEWCLOSURE                       R9 P5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          REF R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R9 R8 K17 ["destroy"]
       64 SETTABLEKS                       R2 R8 K18 ["DEPRECATED_getIconAsync"]
       66 SETTABLEKS                       R6 R8 K14 ["ResetSelection"]
       68 CLOSEUPVALS                      R5
       69 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K13 ["Src"]
       35 GETTABLEKS                       R5 R5 K15 ["Flags"]
       37 GETIMPORT                        R6 K10 [require]
       39 GETTABLEKS                       R7 R5 K16 ["getFFlagIAMLiveDebugging"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K17 [PROTO_10]
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 RETURN                           R7 1
