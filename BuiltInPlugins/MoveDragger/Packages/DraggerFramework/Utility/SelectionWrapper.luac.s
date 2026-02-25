PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_handleSelectionChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K4 [{"_selectionObject", "_selection", "_isSettingSelection", "_destroyed"}]
        1 SETTABLEKS                       R0 R2 K0 ["_selectionObject"]
        3 NAMECALL                         R3 R0 K5 ["Get"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K1 ["_selection"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["_isSettingSelection"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["_destroyed"]
       14 GETUPVAL                         R3 0
       15 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       17 GETIMPORT                        R1 K7 [setmetatable]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K8 ["new"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K9 ["onSelectionExternallyChanged"]
       26 GETTABLEKS                       R2 R0 K10 ["SelectionChanged"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R2 R2 K11 ["Connect"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K12 ["_selectionChangedConnection"]
       35 GETUPVAL                         R3 2
       36 ADDK                             R2 R3 K13 [1]
       37 SETUPVAL                         R2 2
       38 GETUPVAL                         R2 2
       39 LOADN                            R3 1
       40 JUMPIFNOTLT                      R3 R2 ; [+5]
       42 GETIMPORT                        R2 K15 [warn]
       44 LOADK                            R3 K16 ["More than one SelectionWrapper created at once, this is probably a mistake!"]
       45 CALL                             R2 1 0
       46 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_selection"]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R0 K1 ["_isSettingSelection"]
        5 GETTABLEKS                       R3 R0 K2 ["_selectionObject"]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 NAMECALL                         R3 R3 K3 ["Set"]
       11 CALL                             R3 3 0
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R0 K1 ["_isSettingSelection"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_destroyed"]
        2 NOT                              R2 R3
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K3 ["_selectionChangedConnection"]
        9 NAMECALL                         R1 R1 K4 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 0
       13 SUBK                             R1 R2 K5 [1]
       14 SETUPVAL                         R1 0
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionObject"]
        2 NAMECALL                         R1 R1 K1 ["flush"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isSettingSelection"]
        2 JUMPIF                           R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K1 ["_selectionObject"]
        5 NAMECALL                         R1 R1 K2 ["Get"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K3 ["_selection"]
       10 GETTABLEKS                       R1 R0 K4 ["onSelectionExternallyChanged"]
       12 NAMECALL                         R1 R1 K5 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_selection"]
        2 GETTABLEKS                       R4 R0 K0 ["_selection"]
        4 LENGTH                           R3 R4
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R3 K6 ["Signal"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K7 ["__index"]
       18 LOADN                            R3 0
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R3
       23 SETTABLEKS                       R4 R2 K8 ["new"]
       25 DUPCLOSURE                       R4 K9 [PROTO_2]
       26 SETTABLEKS                       R4 R2 K10 ["get"]
       28 DUPCLOSURE                       R4 K11 [PROTO_3]
       29 SETTABLEKS                       R4 R2 K12 ["set"]
       31 NEWCLOSURE                       R4 P3
       32 CAPTURE                          REF R3
       33 SETTABLEKS                       R4 R2 K13 ["destroy"]
       35 DUPCLOSURE                       R4 K14 [PROTO_5]
       36 SETTABLEKS                       R4 R2 K15 ["flush"]
       38 DUPCLOSURE                       R4 K16 [PROTO_6]
       39 SETTABLEKS                       R4 R2 K17 ["_handleSelectionChanged"]
       41 DUPCLOSURE                       R4 K18 [PROTO_7]
       42 SETTABLEKS                       R4 R2 K19 ["getActiveSelectable"]
       44 CLOSEUPVALS                      R3
       45 RETURN                           R2 1
