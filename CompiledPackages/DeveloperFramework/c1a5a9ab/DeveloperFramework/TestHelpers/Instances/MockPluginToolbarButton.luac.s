PROTO_0:
        0 DUPTABLE                         R3 K11 [{"_plugin", "_toolbar", "_id", "Name", "Tooltip", "Icon", "Text", "Enabled", "Active", "ClickableWhenViewportHidden", "Click"}]
        1 SETTABLEKS                       R0 R3 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R3 K1 ["_toolbar"]
        5 SETTABLEKS                       R2 R3 K2 ["_id"]
        7 SETTABLEKS                       R2 R3 K3 ["Name"]
        9 LOADK                            R4 K12 [""]
       10 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       12 LOADK                            R4 K12 [""]
       13 SETTABLEKS                       R4 R3 K5 ["Icon"]
       15 LOADK                            R4 K12 [""]
       16 SETTABLEKS                       R4 R3 K6 ["Text"]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K7 ["Enabled"]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K8 ["Active"]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K9 ["ClickableWhenViewportHidden"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K13 ["new"]
       30 CALL                             R4 0 1
       31 SETTABLEKS                       R4 R3 K10 ["Click"]
       33 GETUPVAL                         R6 1
       34 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K15 [setmetatable]
       39 CALL                             R4 2 0
       40 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_id"]
        2 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_toolbar"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_plugin"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K1 ["Active"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 JUMPIF                           R1 ; [+5]
        7 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        9 NAMECALL                         R2 R2 K2 ["Deactivate"]
       11 CALL                             R2 1 0
       12 SETTABLEKS                       R1 R0 K1 ["Active"]
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Util"]
       13 GETTABLEKS                       R2 R2 K6 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K7 ["__index"]
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K9 ["new"]
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K11 ["getId"]
       28 DUPCLOSURE                       R3 K12 [PROTO_2]
       29 SETTABLEKS                       R3 R2 K13 ["Destroy"]
       31 DUPCLOSURE                       R3 K14 [PROTO_3]
       32 SETTABLEKS                       R3 R2 K15 ["SetActive"]
       34 RETURN                           R2 1
