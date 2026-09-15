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
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K5 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K6 ["plugin"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["useMemo"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 1
       26 MOVE                             R6 R1
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K8 ["createElement"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K9 ["Provider"]
       36 DUPTABLE                         R6 K11 [{"value"}]
       37 SETTABLEKS                       R3 R6 K10 ["value"]
       39 GETTABLEKS                       R7 R0 K12 ["children"]
       41 CALL                             R4 3 -1
       42 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.None]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R3 R0 K6 ["CurrentDataModelType"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R2 R0 K7 ["CurrentDataModelTypeChanged"]
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 1
       30 SETUPVAL                         R2 0
       31 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 LOADNIL                          R1
        6 JUMPIF                           R0 ; [+2]
        7 CLOSEUPVALS                      R1
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 MOVE                             R3 R2
       14 CALL                             R3 0 0
       15 LOADK                            R5 K2 ["FocusedDataModelSession"]
       16 NAMECALL                         R3 R0 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K4 ["Connect"]
       22 CALL                             R3 2 1
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          REF R1
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["plugin"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R0 K1 ["plugin"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R5 0 1
       28 MOVE                             R6 R1
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K4 ["createElement"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K5 ["Provider"]
       38 DUPTABLE                         R6 K7 [{"value"}]
       39 SETTABLEKS                       R3 R6 K6 ["value"]
       41 GETTABLEKS                       R7 R0 K8 ["children"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DataModelTypeChanged"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
        6 CALL                             R0 3 2
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_17:
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.Edit]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K5 ["useContext"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K6 ["Context"]
       12 CALL                             R3 1 1
       13 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       15 MOVE                             R5 R3
       16 LOADK                            R6 K7 ["Expected networking to exist"]
       17 GETIMPORT                        R4 K9 [assert]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K10 ["useEffect"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R3
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K11 ["useMemo"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R6 0 1
       39 MOVE                             R7 R1
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K12 ["createElement"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K13 ["Provider"]
       49 DUPTABLE                         R7 K15 [{"value"}]
       50 SETTABLEKS                       R4 R7 K14 ["value"]
       52 GETTABLEKS                       R8 R0 K16 ["children"]
       54 CALL                             R5 3 -1
       55 RETURN                           R5 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Datamodel"]
       31 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_getFocusedDatamodelType"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R0 K8 ["Src"]
       36 GETTABLEKS                       R4 R4 K14 ["Flags"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R4 K15 ["getFFlagIAMLiveDebugging"]
       42 CALL                             R5 1 1
       43 DUPTABLE                         R6 K17 [{"datamodelType"}]
       44 GETIMPORT                        R7 K21 [Enum.StudioDataModelType.None]
       46 SETTABLEKS                       R7 R6 K16 ["datamodelType"]
       48 GETTABLEKS                       R7 R1 K22 ["createContext"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K23 [PROTO_7]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K24 [PROTO_13]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R10 K25 [PROTO_18]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 DUPTABLE                         R11 K29 [{"Context", "Provider", "MockProvider"}]
       64 SETTABLEKS                       R7 R11 K26 ["Context"]
       66 MOVE                             R13 R5
       67 CALL                             R13 0 1
       68 JUMPIFNOT                        R13 ; [+2]
       69 MOVE                             R12 R8
       70 JUMP                             ; [+1]
       71 MOVE                             R12 R9
       72 SETTABLEKS                       R12 R11 K27 ["Provider"]
       74 MOVE                             R13 R5
       75 CALL                             R13 0 1
       76 JUMPIFNOT                        R13 ; [+2]
       77 MOVE                             R12 R10
       78 JUMP                             ; [+1]
       79 LOADNIL                          R12
       80 SETTABLEKS                       R12 R11 K28 ["MockProvider"]
       82 RETURN                           R11 1
