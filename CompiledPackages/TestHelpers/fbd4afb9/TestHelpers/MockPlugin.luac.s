PROTO_0:
        0 DUPTABLE                         R3 K5 [{"Name", "Tooltip", "Icon", "Enabled", "Click"}]
        1 SETTABLEKS                       R0 R3 K0 ["Name"]
        3 SETTABLEKS                       R1 R3 K1 ["Tooltip"]
        5 SETTABLEKS                       R2 R3 K2 ["Icon"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["Enabled"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K6 ["new"]
       13 CALL                             R4 0 1
       14 SETTABLEKS                       R4 R3 K4 ["Click"]
       16 GETUPVAL                         R6 1
       17 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K8 [setmetatable]
       22 CALL                             R4 2 0
       23 RETURN                           R3 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Title", "Buttons"}]
        1 SETTABLEKS                       R0 R1 K0 ["Title"]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K1 ["Buttons"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [setmetatable]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 -1
        7 RETURN                           R4 -1

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["_signals"] ; [+2]
        2 RETURN                           R0 0
        3 SETTABLE                         R2 R0 R1
        4 GETTABLEKS                       R4 R0 K0 ["_signals"]
        6 GETTABLE                         R3 R4 R1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["fire"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["DockWidgetPluginGui's title must be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["DockWidgetPluginGui's widgetInfo must be an array"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 LENGTH                           R4 R1
       31 JUMPIFEQKN                       R4 K8 [7] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       37 LOADK                            R4 K9 ["Unexpected table provided for widgetInfo, expected an array"]
       38 GETIMPORT                        R2 K5 [assert]
       40 CALL                             R2 2 0
       41 DUPTABLE                         R2 K14 [{"Name", "Title", "ZIndexBehavior", "Enabled"}]
       42 LOADK                            R3 K15 [""]
       43 SETTABLEKS                       R3 R2 K10 ["Name"]
       45 SETTABLEKS                       R0 R2 K11 ["Title"]
       47 GETIMPORT                        R3 K18 [Enum.ZIndexBehavior.Global]
       49 SETTABLEKS                       R3 R2 K12 ["ZIndexBehavior"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R2 K13 ["Enabled"]
       54 NEWTABLE                         R3 0 0
       56 GETIMPORT                        R4 K20 [pairs]
       58 MOVE                             R5 R2
       59 CALL                             R4 1 3
       60 FORGPREP_NEXT                    R4
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K21 ["new"]
       64 CALL                             R9 0 1
       65 SETTABLE                         R9 R3 R7
       66 FORGLOOP                         R4 2 ; [-6]
       68 SETTABLEKS                       R3 R2 K22 ["_signals"]
       70 GETUPVAL                         R6 1
       71 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
       73 MOVE                             R5 R2
       74 GETIMPORT                        R4 K24 [setmetatable]
       76 CALL                             R4 2 0
       77 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Need a property to observe changes"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETTABLE                         R4 R0 R1
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 LOADK                            R5 K3 ["Could not find the key,"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K5 [tostring]
       20 CALL                             R8 1 1
       21 MOVE                             R6 R8
       22 LOADK                            R7 K6 [" please add it to the constructor"]
       23 CONCAT                           R4 R5 R7
       24 FASTCALL2                        ASSERT R3 R4 ; [+3]
       26 GETIMPORT                        R2 K2 [assert]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R3 R0 K7 ["_signals"]
       31 GETTABLE                         R2 R3 R1
       32 RETURN                           R2 1

PROTO_7:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R1 K0 ["InitialEnabled"]
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R3 R1 K0 ["InitialEnabled"]
        6 JUMPIFEQKB                       R3 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETIMPORT                        R3 K3 [Instance.new]
       12 LOADK                            R4 K4 ["BillboardGui"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R2 R3 K5 ["Enabled"]
       16 RETURN                           R3 1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"Name"}]
        1 LOADK                            R1 K2 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETUPVAL                         R3 0
        5 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [setmetatable]
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Signal"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 4 0
       14 SETTABLEKS                       R2 R2 K6 ["__index"]
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R2 K8 ["new"]
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 SETTABLEKS                       R3 R2 K10 ["SetActive"]
       24 NEWTABLE                         R3 4 0
       26 SETTABLEKS                       R3 R3 K6 ["__index"]
       28 DUPCLOSURE                       R4 K11 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K8 ["new"]
       32 DUPCLOSURE                       R4 K12 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K13 ["CreateButton"]
       36 NEWTABLE                         R4 4 0
       38 SETTABLEKS                       R4 R4 K6 ["__index"]
       40 DUPCLOSURE                       R5 K14 [PROTO_4]
       41 SETTABLEKS                       R5 R4 K15 ["__newindex"]
       43 DUPCLOSURE                       R5 K16 [PROTO_5]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R5 R4 K8 ["new"]
       48 DUPCLOSURE                       R5 K17 [PROTO_6]
       49 SETTABLEKS                       R5 R4 K18 ["GetPropertyChangedSignal"]
       51 NEWTABLE                         R5 2 0
       53 SETTABLEKS                       R5 R5 K6 ["__index"]
       55 DUPCLOSURE                       R6 K19 [PROTO_7]
       56 SETTABLEKS                       R6 R5 K8 ["new"]
       58 NEWTABLE                         R6 8 0
       60 SETTABLEKS                       R6 R6 K6 ["__index"]
       62 DUPCLOSURE                       R7 K20 [PROTO_8]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R7 R6 K8 ["new"]
       66 DUPCLOSURE                       R7 K21 [PROTO_9]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R7 R6 K22 ["CreateToolbar"]
       70 DUPCLOSURE                       R7 K23 [PROTO_10]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R7 R6 K24 ["CreateDockWidgetPluginGui"]
       74 DUPCLOSURE                       R7 K25 [PROTO_11]
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R7 R6 K26 ["CreateQWidgetPluginGui"]
       78 DUPCLOSURE                       R7 K27 [PROTO_12]
       79 SETTABLEKS                       R7 R6 K28 ["GetMouse"]
       81 RETURN                           R6 1
