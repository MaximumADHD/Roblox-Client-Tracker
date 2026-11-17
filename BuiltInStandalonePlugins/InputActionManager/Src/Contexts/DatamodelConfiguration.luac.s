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
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R1
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R8 0 2
       51 MOVE                             R9 R2
       52 MOVE                             R10 R4
       53 SETLIST                          R8 R9 2 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K10 ["createElement"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K11 ["Provider"]
       62 DUPTABLE                         R9 K13 [{"value"}]
       63 SETTABLEKS                       R6 R9 K12 ["value"]
       65 GETTABLEKS                       R10 R0 K14 ["children"]
       67 CALL                             R7 3 -1
       68 RETURN                           R7 -1

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
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K2 ["ShowDefaultPlayerScriptsChanged"]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       13 CALL                             R2 3 2
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R3
       17 RETURN                           R4 1

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
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 1
       34 MOVE                             R9 R5
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R8 0 2
       46 MOVE                             R9 R1
       47 MOVE                             R10 R3
       48 SETLIST                          R8 R9 2 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K12 ["createElement"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K13 ["Provider"]
       57 DUPTABLE                         R9 K15 [{"value"}]
       58 SETTABLEKS                       R6 R9 K14 ["value"]
       60 GETTABLEKS                       R10 R0 K16 ["children"]
       62 CALL                             R7 3 -1
       63 RETURN                           R7 -1

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
       23 DUPTABLE                         R3 K14 [{["datamodelType"], ["createDefaultPlayerModule"] = True}]
       24 GETIMPORT                        R4 K18 [Enum.StudioDataModelType.None]
       26 SETTABLEKS                       R4 R3 K11 ["datamodelType"]
       28 GETTABLEKS                       R4 R1 K19 ["createContext"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K20 [PROTO_10]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R6 K21 [PROTO_16]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 DUPTABLE                         R7 K25 [{"Context", "Provider", "MockProvider"}]
       41 SETTABLEKS                       R4 R7 K22 ["Context"]
       43 SETTABLEKS                       R5 R7 K23 ["Provider"]
       45 SETTABLEKS                       R6 R7 K24 ["MockProvider"]
       47 RETURN                           R7 1
