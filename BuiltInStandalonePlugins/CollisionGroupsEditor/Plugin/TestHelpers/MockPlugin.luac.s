PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Name", "Tooltip", "Icon", "Enabled", "Click"}]
        1 LOADK                            R1 K6 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 LOADK                            R1 K6 [""]
        5 SETTABLEKS                       R1 R0 K1 ["Tooltip"]
        7 LOADK                            R1 K6 [""]
        8 SETTABLEKS                       R1 R0 K2 ["Icon"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["Enabled"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K7 ["new"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K4 ["Click"]
       19 GETUPVAL                         R3 1
       20 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K9 [setmetatable]
       25 CALL                             R1 2 0
       26 RETURN                           R0 1

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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 -1
        4 RETURN                           R4 -1

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
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R9 R10 K21 ["new"]
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
        0 DUPTABLE                         R0 K1 [{"Name"}]
        1 LOADK                            R1 K2 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETUPVAL                         R3 0
        5 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [setmetatable]
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Plugin"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["Signal"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 4 0
       20 SETTABLEKS                       R2 R2 K8 ["__index"]
       22 DUPCLOSURE                       R3 K9 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K10 ["new"]
       27 DUPCLOSURE                       R3 K11 [PROTO_1]
       28 SETTABLEKS                       R3 R2 K12 ["SetActive"]
       30 NEWTABLE                         R3 4 0
       32 SETTABLEKS                       R3 R3 K8 ["__index"]
       34 DUPCLOSURE                       R4 K13 [PROTO_2]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K10 ["new"]
       38 DUPCLOSURE                       R4 K14 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R3 K15 ["CreateButton"]
       42 NEWTABLE                         R4 4 0
       44 SETTABLEKS                       R4 R4 K8 ["__index"]
       46 DUPCLOSURE                       R5 K16 [PROTO_4]
       47 SETTABLEKS                       R5 R4 K17 ["__newindex"]
       49 DUPCLOSURE                       R5 K18 [PROTO_5]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R5 R4 K10 ["new"]
       54 DUPCLOSURE                       R5 K19 [PROTO_6]
       55 SETTABLEKS                       R5 R4 K20 ["GetPropertyChangedSignal"]
       57 NEWTABLE                         R5 4 0
       59 SETTABLEKS                       R5 R5 K8 ["__index"]
       61 DUPCLOSURE                       R6 K21 [PROTO_7]
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R6 R5 K10 ["new"]
       65 DUPCLOSURE                       R6 K22 [PROTO_8]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R6 R5 K23 ["CreateToolbar"]
       69 DUPCLOSURE                       R6 K24 [PROTO_9]
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R6 R5 K25 ["CreateDockWidgetPluginGui"]
       73 RETURN                           R5 1
