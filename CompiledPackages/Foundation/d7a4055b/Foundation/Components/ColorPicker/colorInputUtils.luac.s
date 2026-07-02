PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["lower"]
        3 CALL                             R2 1 1
        4 GETTABLE                         R1 R0 R2
        5 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K10 [{[1], ["component"], ["value"], ["handler"], ["minimum"] = 0, ["maximum"] = 255, ["step"] = 1}]
        1 SETTABLEKS                       R0 R1 K0 ["key"]
        3 NAMECALL                         R2 R0 K11 ["lower"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["component"]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K12 ["map"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K2 ["value"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K3 ["handler"]
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["lower"]
        3 CALL                             R2 1 1
        4 GETTABLE                         R1 R0 R2
        5 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K7 [{[1], ["component"], ["value"], ["handler"], ["minimum"] = 0, ["maximum"]}]
        1 SETTABLEKS                       R0 R1 K0 ["key"]
        3 NAMECALL                         R2 R0 K8 ["lower"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["component"]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K9 ["map"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K2 ["value"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K3 ["handler"]
       19 JUMPIFNOTEQKS                    R0 K10 ["H"] ; [+3]
       21 LOADN                            R2 360
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K6 ["maximum"]
       26 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["map"]
        3 NEWTABLE                         R10 0 3
        5 LOADK                            R11 K1 ["R"]
        6 LOADK                            R12 K2 ["G"]
        7 LOADK                            R13 K3 ["B"]
        8 SETLIST                          R10 R11 3 [1]
       10 NEWCLOSURE                       R11 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R4
       13 CALL                             R9 2 1
       14 GETIMPORT                        R10 K6 [table.clone]
       16 MOVE                             R11 R9
       17 CALL                             R10 1 1
       18 DUPTABLE                         R13 K19 [{["key"] = "A", ["value"], ["handler"], ["minimum"] = 0, ["maximum"] = 1, ["step"] = 0.01, ["precision"] = 3}]
       19 SETTABLEKS                       R3 R13 K9 ["value"]
       21 SETTABLEKS                       R7 R13 K10 ["handler"]
       23 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       25 MOVE                             R12 R10
       26 GETIMPORT                        R11 K21 [table.insert]
       28 CALL                             R11 2 0
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K0 ["map"]
       32 NEWTABLE                         R12 0 3
       34 LOADK                            R13 K22 ["H"]
       35 LOADK                            R14 K23 ["S"]
       36 LOADK                            R15 K24 ["V"]
       37 SETLIST                          R12 R13 3 [1]
       39 NEWCLOSURE                       R13 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 CALL                             R11 2 1
       43 NEWTABLE                         R12 0 1
       45 DUPTABLE                         R13 K28 [{["key"], ["value"], ["handler"], ["placeholder"] = "#000000", ["width"]}]
       46 GETUPVAL                         R15 1
       47 GETTABLEKS                       R15 R15 K29 ["Hex"]
       49 FASTCALL1                        TOSTRING R15 ; [+2]
       50 GETIMPORT                        R14 K31 [tostring]
       52 CALL                             R14 1 1
       53 SETTABLEKS                       R14 R13 K7 ["key"]
       55 SETTABLEKS                       R2 R13 K9 ["value"]
       57 SETTABLEKS                       R6 R13 K10 ["handler"]
       59 GETTABLEKS                       R15 R8 K32 ["Size"]
       61 JUMPIFNOT                        R15 ; [+10]
       62 GETTABLEKS                       R15 R8 K32 ["Size"]
       64 GETTABLEKS                       R15 R15 K33 ["Size_2000"]
       66 JUMPIFNOT                        R15 ; [+5]
       67 GETTABLEKS                       R14 R8 K32 ["Size"]
       69 GETTABLEKS                       R14 R14 K33 ["Size_2000"]
       71 JUMPIF                           R14 ; [+1]
       72 LOADNIL                          R14
       73 SETTABLEKS                       R14 R13 K27 ["width"]
       75 SETLIST                          R12 R13 1 [1]
       77 NEWTABLE                         R13 4 0
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K34 ["RGB"]
       82 SETTABLE                         R9 R13 R14
       83 GETUPVAL                         R14 1
       84 GETTABLEKS                       R14 R14 K35 ["RGBA"]
       86 SETTABLE                         R10 R13 R14
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K36 ["HSV"]
       90 SETTABLE                         R11 R13 R14
       91 GETUPVAL                         R14 1
       92 GETTABLEKS                       R14 R14 K29 ["Hex"]
       94 SETTABLE                         R12 R13 R14
       95 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ColorInputMode"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_4]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 DUPTABLE                         R6 K13 [{"createInputConfigs"}]
       30 SETTABLEKS                       R5 R6 K12 ["createInputConfigs"]
       32 RETURN                           R6 1
