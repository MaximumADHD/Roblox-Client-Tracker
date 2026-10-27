PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["FFlag"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"valueType", "value", "onChanged"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["FFlag"]
       12 SETTABLEKS                       R6 R5 K3 ["valueType"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K8 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K4 ["value"]
       21 DUPCLOSURE                       R6 K9 [PROTO_0]
       22 SETTABLEKS                       R6 R5 K5 ["onChanged"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["FInt"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"valueType", "value", "onChanged"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["FInt"]
       12 SETTABLEKS                       R6 R5 K3 ["valueType"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K8 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K4 ["value"]
       21 DUPCLOSURE                       R6 K9 [PROTO_2]
       22 SETTABLEKS                       R6 R5 K5 ["onChanged"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["FString"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"valueType", "value", "onChanged"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["FString"]
       12 SETTABLEKS                       R6 R5 K3 ["valueType"]
       14 SETTABLEKS                       R2 R5 K4 ["value"]
       16 DUPCLOSURE                       R6 K7 [PROTO_4]
       17 SETTABLEKS                       R6 R5 K5 ["onChanged"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["FLog"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"valueType", "value", "onChanged"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["FLog"]
       12 SETTABLEKS                       R6 R5 K3 ["valueType"]
       14 SETTABLEKS                       R2 R5 K4 ["value"]
       16 DUPCLOSURE                       R6 K7 [PROTO_6]
       17 SETTABLEKS                       R6 R5 K5 ["onChanged"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["FlagValueType"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["FlagValueInput"]
       23 CALL                             R4 1 1
       24 DUPTABLE                         R5 K15 [{["name"] = "FlagValueInput", ["summary"] = "A component for editing different types of flag values.", ["stories"], ["controls"]}]
       25 NEWTABLE                         R6 0 4
       27 DUPTABLE                         R7 K18 [{["name"], ["summary"] = "A boolean toggle that switches between true and false.", ["story"]}]
       28 GETTABLEKS                       R8 R3 K19 ["FFlag"]
       30 SETTABLEKS                       R8 R7 K10 ["name"]
       32 DUPCLOSURE                       R8 K20 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R8 R7 K17 ["story"]
       38 DUPTABLE                         R8 K22 [{["name"], ["summary"] = "A number input for integer values.", ["story"]}]
       39 GETTABLEKS                       R9 R3 K23 ["FInt"]
       41 SETTABLEKS                       R9 R8 K10 ["name"]
       43 DUPCLOSURE                       R9 K24 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R9 R8 K17 ["story"]
       49 DUPTABLE                         R9 K26 [{["name"], ["summary"] = "A text input for string values.", ["story"]}]
       50 GETTABLEKS                       R10 R3 K27 ["FString"]
       52 SETTABLEKS                       R10 R9 K10 ["name"]
       54 DUPCLOSURE                       R10 K28 [PROTO_5]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R10 R9 K17 ["story"]
       60 DUPTABLE                         R10 K30 [{["name"], ["summary"] = "A severity dropdown and a channel number.", ["story"]}]
       61 GETTABLEKS                       R11 R3 K31 ["FLog"]
       63 SETTABLEKS                       R11 R10 K10 ["name"]
       65 DUPCLOSURE                       R11 K32 [PROTO_7]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R11 R10 K17 ["story"]
       71 SETLIST                          R6 R7 4 [1]
       73 SETTABLEKS                       R6 R5 K13 ["stories"]
       75 DUPTABLE                         R6 K36 [{["FFlag"] = False, ["FInt"] = 0, ["FString"] = "Hello world", ["FLog"]}]
       76 NEWTABLE                         R7 0 5
       78 LOADK                            R8 K37 ["Warning,6"]
       79 LOADK                            R9 K38 ["Info"]
       80 LOADK                            R10 K39 ["6"]
       81 LOADK                            R11 K40 ["Warning,0"]
       82 LOADK                            R12 K41 ["Verbose,6"]
       83 SETLIST                          R7 R8 5 [1]
       85 SETTABLEKS                       R7 R6 K31 ["FLog"]
       87 SETTABLEKS                       R6 R5 K14 ["controls"]
       89 RETURN                           R5 1
