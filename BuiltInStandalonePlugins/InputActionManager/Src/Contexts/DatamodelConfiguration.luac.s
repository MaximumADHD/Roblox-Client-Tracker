PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FocusedDataModelSession"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["plugin"]
        7 GETTABLEKS                       R2 R2 K1 ["MultipleDocumentInterfaceInstance"]
        9 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["MultipleDocumentInterfaceInstance is not available"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R4 R2 K5 ["FocusedDataModelSession"]
       19 CALL                             R3 1 0
       20 LOADK                            R5 K5 ["FocusedDataModelSession"]
       21 NAMECALL                         R3 R2 K6 ["GetPropertyChangedSignal"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 NAMECALL                         R3 R3 K7 ["Connect"]
       29 CALL                             R3 2 1
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          REF R0
       32 CAPTURE                          VAL R3
       33 CLOSEUPVALS                      R0
       34 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["ShowDefaultPlayerScriptsChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       10 CALL                             R0 3 2
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"datamodelType", "createDefaultPlayerModule"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createDefaultPlayerModule"]
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 GETIMPORT                        R3 K6 [Enum.StudioDataModelType.None]
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 LOADB                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R8 0 1
       26 GETTABLEKS                       R9 R0 K8 ["plugin"]
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 0
       31 GETUPVAL                         R6 2
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R6 ; [+12]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R1
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 2
       54 MOVE                             R9 R2
       55 MOVE                             R10 R4
       56 SETLIST                          R8 R9 2 [1]
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K10 ["createElement"]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K11 ["Provider"]
       65 DUPTABLE                         R9 K13 [{"value"}]
       66 SETTABLEKS                       R6 R9 K12 ["value"]
       68 GETTABLEKS                       R10 R0 K14 ["children"]
       70 CALL                             R7 3 -1
       71 RETURN                           R7 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DataModelTypeChanged"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
        6 CALL                             R0 3 2
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K2 ["ShowDefaultPlayerScriptsChanged"]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R3 R3 K1 ["OnGuestEvent"]
       17 CALL                             R3 3 2
       18 MOVE                             R0 R3
       19 MOVE                             R2 R4
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R2
       23 CLOSEUPVALS                      R2
       24 RETURN                           R3 1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{"datamodelType", "createDefaultPlayerModule"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createDefaultPlayerModule"]
        7 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.Edit]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["useContext"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K6 ["Context"]
       17 CALL                             R5 1 1
       18 FASTCALL2K                       ASSERT R5 K7 ; [+5]
       20 MOVE                             R7 R5
       21 LOADK                            R8 K7 ["Expected networking to exist"]
       22 GETIMPORT                        R6 K9 [assert]
       24 CALL                             R6 2 0
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R5
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 0
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R8 0 2
       47 MOVE                             R9 R1
       48 MOVE                             R10 R3
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K12 ["createElement"]
       55 GETUPVAL                         R8 3
       56 GETTABLEKS                       R8 R8 K13 ["Provider"]
       58 DUPTABLE                         R9 K15 [{"value"}]
       59 SETTABLEKS                       R6 R9 K14 ["value"]
       61 GETTABLEKS                       R10 R0 K16 ["children"]
       63 CALL                             R7 3 -1
       64 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["Networking"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagIAMPlayerScripts"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K16 [{["datamodelType"], ["createDefaultPlayerModule"] = True}]
       33 GETIMPORT                        R5 K20 [Enum.StudioDataModelType.None]
       35 SETTABLEKS                       R5 R4 K13 ["datamodelType"]
       37 GETTABLEKS                       R5 R1 K21 ["createContext"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K22 [PROTO_10]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R7 K23 [PROTO_16]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R8 K27 [{"Context", "Provider", "MockProvider"}]
       52 SETTABLEKS                       R5 R8 K24 ["Context"]
       54 SETTABLEKS                       R6 R8 K25 ["Provider"]
       56 SETTABLEKS                       R7 R8 K26 ["MockProvider"]
       58 RETURN                           R8 1
