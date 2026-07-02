PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["C"] ; [+3]
        2 LOADK                            R1 K1 [" With A Lot Of Extra Text To See How It Behaves When It Might Need To Be WrappedTo Multiple Lines Because It's Just So Long We Simply Cannot Fit It On One Line"]
        3 JUMP                             ; [+1]
        4 LOADK                            R1 K2 [""]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K4 ["Item"]
       12 DUPTABLE                         R6 K10 [{"value", "icon", "label", "description", "size"}]
       13 SETTABLEKS                       R0 R6 K5 ["value"]
       15 GETUPVAL                         R8 3
       16 GETIMPORT                        R9 K13 [math.random]
       18 LOADN                            R10 1
       19 GETUPVAL                         R12 3
       20 LENGTH                           R11 R12
       21 CALL                             R9 2 1
       22 GETTABLE                         R7 R8 R9
       23 SETTABLEKS                       R7 R6 K6 ["icon"]
       25 GETUPVAL                         R9 4
       26 LENGTH                           R8 R9
       27 LOADN                            R9 0
       28 JUMPIFNOTLT                      R9 R8 ; [+10]
       30 LOADK                            R8 K14 ["%*%* %*"]
       31 GETUPVAL                         R10 4
       32 MOVE                             R11 R1
       33 MOVE                             R12 R0
       34 NAMECALL                         R8 R8 K15 ["format"]
       36 CALL                             R8 4 1
       37 MOVE                             R7 R8
       38 JUMP                             ; [+1]
       39 LOADK                            R7 K2 [""]
       40 SETTABLEKS                       R7 R6 K7 ["label"]
       42 GETUPVAL                         R9 5
       43 LENGTH                           R8 R9
       44 LOADN                            R9 0
       45 JUMPIFNOTLT                      R9 R8 ; [+10]
       47 LOADK                            R8 K14 ["%*%* %*"]
       48 GETUPVAL                         R10 5
       49 MOVE                             R11 R1
       50 MOVE                             R12 R0
       51 NAMECALL                         R8 R8 K15 ["format"]
       53 CALL                             R8 4 1
       54 MOVE                             R7 R8
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K8 ["description"]
       59 GETUPVAL                         R7 6
       60 GETTABLEKS                       R7 R7 K9 ["size"]
       62 SETTABLEKS                       R7 R6 K9 ["size"]
       64 CALL                             R4 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R2 K18 [table.insert]
       68 CALL                             R2 -1 0
       69 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Checking value"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["optionLabel"]
        4 GETTABLEKS                       R3 R1 K2 ["optionDescription"]
        6 NEWTABLE                         R4 0 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["forEach"]
       11 GETUPVAL                         R6 1
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 CALL                             R5 2 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["createElement"]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K5 ["Root"]
       27 DUPTABLE                         R7 K9 [{"value", "onValueChanged", "orientation"}]
       28 GETTABLEKS                       R8 R1 K6 ["value"]
       30 SETTABLEKS                       R8 R7 K6 ["value"]
       32 DUPCLOSURE                       R8 K10 [PROTO_1]
       33 SETTABLEKS                       R8 R7 K7 ["onValueChanged"]
       35 GETTABLEKS                       R8 R1 K8 ["orientation"]
       37 SETTABLEKS                       R8 R7 K8 ["orientation"]
       39 MOVE                             R8 R4
       40 CALL                             R5 3 -1
       41 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["Orientation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["OptionSelectorGroup"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 0 6
       42 LOADK                            R8 K14 ["A"]
       43 LOADK                            R9 K15 ["B"]
       44 LOADK                            R10 K16 ["C"]
       45 LOADK                            R11 K17 ["D"]
       46 LOADK                            R12 K18 ["E"]
       47 LOADK                            R13 K19 ["F"]
       48 SETLIST                          R7 R8 6 [1]
       50 NEWTABLE                         R8 0 6
       52 LOADK                            R9 K20 ["arm-left"]
       53 LOADK                            R10 K21 ["hat-fedora"]
       54 LOADK                            R11 K22 ["chart-pie"]
       55 LOADK                            R12 K23 ["lipstick"]
       56 LOADK                            R13 K24 ["moon"]
       57 LOADK                            R14 K25 ["star"]
       58 SETLIST                          R8 R9 6 [1]
       60 DUPCLOSURE                       R9 K26 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 DUPTABLE                         R10 K31 [{["summary"] = "OptionSelectorGroup component", ["stories"], ["controls"]}]
       67 NEWTABLE                         R11 0 1
       69 DUPTABLE                         R12 K35 [{["name"] = "Basic", ["story"]}]
       70 SETTABLEKS                       R9 R12 K34 ["story"]
       72 SETLIST                          R11 R12 1 [1]
       74 SETTABLEKS                       R11 R10 K29 ["stories"]
       76 DUPTABLE                         R11 K43 [{["optionLabel"] = "Option", ["optionDescription"] = "Description", ["orientation"], ["size"], ["value"]}]
       77 GETTABLEKS                       R12 R3 K44 ["values"]
       79 MOVE                             R13 R5
       80 CALL                             R12 1 1
       81 SETTABLEKS                       R12 R11 K40 ["orientation"]
       83 GETTABLEKS                       R12 R3 K44 ["values"]
       85 MOVE                             R13 R4
       86 CALL                             R12 1 1
       87 SETTABLEKS                       R12 R11 K41 ["size"]
       89 GETTABLEKS                       R12 R3 K44 ["values"]
       91 MOVE                             R13 R7
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K42 ["value"]
       95 SETTABLEKS                       R11 R10 K30 ["controls"]
       97 RETURN                           R10 1
