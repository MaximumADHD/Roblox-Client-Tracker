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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["FlagValueType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["FlagValueInput"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K17 [{["name"] = "FlagValueInput", ["summary"] = "A component for editing different types of flag values.", ["stories"], ["controls"]}]
       29 NEWTABLE                         R6 0 4
       31 DUPTABLE                         R7 K20 [{["name"], ["summary"] = "A boolean toggle that switches between true and false.", ["story"]}]
       32 GETTABLEKS                       R8 R3 K21 ["FFlag"]
       34 SETTABLEKS                       R8 R7 K12 ["name"]
       36 DUPCLOSURE                       R8 K22 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R8 R7 K19 ["story"]
       42 DUPTABLE                         R8 K24 [{["name"], ["summary"] = "A number input for integer values.", ["story"]}]
       43 GETTABLEKS                       R9 R3 K25 ["FInt"]
       45 SETTABLEKS                       R9 R8 K12 ["name"]
       47 DUPCLOSURE                       R9 K26 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R9 R8 K19 ["story"]
       53 DUPTABLE                         R9 K28 [{["name"], ["summary"] = "A text input for string values.", ["story"]}]
       54 GETTABLEKS                       R10 R3 K29 ["FString"]
       56 SETTABLEKS                       R10 R9 K12 ["name"]
       58 DUPCLOSURE                       R10 K30 [PROTO_5]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R10 R9 K19 ["story"]
       64 DUPTABLE                         R10 K32 [{["name"], ["summary"] = "A severity dropdown and a channel number.", ["story"]}]
       65 GETTABLEKS                       R11 R3 K33 ["FLog"]
       67 SETTABLEKS                       R11 R10 K12 ["name"]
       69 DUPCLOSURE                       R11 K34 [PROTO_7]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R11 R10 K19 ["story"]
       75 SETLIST                          R6 R7 4 [1]
       77 SETTABLEKS                       R6 R5 K15 ["stories"]
       79 DUPTABLE                         R6 K38 [{["FFlag"] = False, ["FInt"] = 0, ["FString"] = "Hello world", ["FLog"]}]
       80 NEWTABLE                         R7 0 5
       82 LOADK                            R8 K39 ["Warning,6"]
       83 LOADK                            R9 K40 ["Info"]
       84 LOADK                            R10 K41 ["6"]
       85 LOADK                            R11 K42 ["Warning,0"]
       86 LOADK                            R12 K43 ["Verbose,6"]
       87 SETLIST                          R7 R8 5 [1]
       89 SETTABLEKS                       R7 R6 K33 ["FLog"]
       91 SETTABLEKS                       R6 R5 K16 ["controls"]
       93 RETURN                           R5 1
