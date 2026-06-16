PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["lower"]
        3 CALL                             R2 1 1
        4 GETTABLE                         R1 R0 R2
        5 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K7 [{"key", "component", "value", "handler", "minimum", "maximum", "step"}]
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
       19 LOADN                            R2 0
       20 SETTABLEKS                       R2 R1 K4 ["minimum"]
       22 LOADN                            R2 255
       23 SETTABLEKS                       R2 R1 K5 ["maximum"]
       25 LOADN                            R2 1
       26 SETTABLEKS                       R2 R1 K6 ["step"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["lower"]
        3 CALL                             R2 1 1
        4 GETTABLE                         R1 R0 R2
        5 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"key", "component", "value", "handler", "minimum", "maximum"}]
        1 SETTABLEKS                       R0 R1 K0 ["key"]
        3 NAMECALL                         R2 R0 K7 ["lower"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["component"]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K8 ["map"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K2 ["value"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K3 ["handler"]
       19 LOADN                            R2 0
       20 SETTABLEKS                       R2 R1 K4 ["minimum"]
       22 JUMPIFNOTEQKS                    R0 K9 ["H"] ; [+3]
       24 LOADN                            R2 104
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K5 ["maximum"]
       29 RETURN                           R1 1

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
       18 DUPTABLE                         R13 K14 [{"key", "value", "handler", "minimum", "maximum", "step", "precision"}]
       19 LOADK                            R14 K15 ["A"]
       20 SETTABLEKS                       R14 R13 K7 ["key"]
       22 SETTABLEKS                       R3 R13 K8 ["value"]
       24 SETTABLEKS                       R7 R13 K9 ["handler"]
       26 LOADN                            R14 0
       27 SETTABLEKS                       R14 R13 K10 ["minimum"]
       29 LOADN                            R14 1
       30 SETTABLEKS                       R14 R13 K11 ["maximum"]
       32 LOADK                            R14 K16 [0.01]
       33 SETTABLEKS                       R14 R13 K12 ["step"]
       35 LOADN                            R14 3
       36 SETTABLEKS                       R14 R13 K13 ["precision"]
       38 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       40 MOVE                             R12 R10
       41 GETIMPORT                        R11 K18 [table.insert]
       43 CALL                             R11 2 0
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K0 ["map"]
       47 NEWTABLE                         R12 0 3
       49 LOADK                            R13 K19 ["H"]
       50 LOADK                            R14 K20 ["S"]
       51 LOADK                            R15 K21 ["V"]
       52 SETLIST                          R12 R13 3 [1]
       54 NEWCLOSURE                       R13 P1
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 CALL                             R11 2 1
       58 NEWTABLE                         R12 0 1
       60 DUPTABLE                         R13 K24 [{"key", "value", "handler", "placeholder", "width"}]
       61 GETUPVAL                         R15 1
       62 GETTABLEKS                       R15 R15 K25 ["Hex"]
       64 FASTCALL1                        TOSTRING R15 ; [+2]
       65 GETIMPORT                        R14 K27 [tostring]
       67 CALL                             R14 1 1
       68 SETTABLEKS                       R14 R13 K7 ["key"]
       70 SETTABLEKS                       R2 R13 K8 ["value"]
       72 SETTABLEKS                       R6 R13 K9 ["handler"]
       74 LOADK                            R14 K28 ["#000000"]
       75 SETTABLEKS                       R14 R13 K22 ["placeholder"]
       77 GETIMPORT                        R14 K31 [UDim.new]
       79 LOADN                            R15 1
       80 LOADN                            R16 0
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K23 ["width"]
       84 SETLIST                          R12 R13 1 [1]
       86 NEWTABLE                         R13 4 0
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R14 R14 K32 ["RGB"]
       91 SETTABLE                         R9 R13 R14
       92 GETUPVAL                         R14 1
       93 GETTABLEKS                       R14 R14 K33 ["RGBA"]
       95 SETTABLE                         R10 R13 R14
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R14 R14 K34 ["HSV"]
       99 SETTABLE                         R11 R13 R14
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R14 R14 K25 ["Hex"]
      103 SETTABLE                         R12 R13 R14
      104 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ColorInputMode"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_4]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 DUPTABLE                         R6 K13 [{"createInputConfigs"}]
       30 SETTABLEKS                       R5 R6 K12 ["createInputConfigs"]
       32 RETURN                           R6 1
