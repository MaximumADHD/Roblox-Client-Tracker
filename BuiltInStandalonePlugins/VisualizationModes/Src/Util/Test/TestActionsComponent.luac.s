PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["DataModel"]
        3 GETTABLEKS                       R4 R1 K0 ["DataModel"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+23]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["PluginId"]
       10 GETTABLEKS                       R4 R1 K1 ["PluginId"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+16]
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K2 ["Category"]
       17 GETTABLEKS                       R4 R1 K2 ["Category"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+9]
       21 GETTABLEKS                       R3 R0 K3 ["ItemId"]
       23 GETTABLEKS                       R4 R1 K3 ["ItemId"]
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADB                            R7 0
        5 MOVE                             R8 R1
        6 LOADNIL                          R9
        7 LOADNIL                          R10
        8 FORGPREP                         R8
        9 LOADB                            R13 0
       10 GETTABLEKS                       R14 R12 K0 ["DataModel"]
       12 GETTABLEKS                       R15 R6 K0 ["DataModel"]
       14 JUMPIFNOTEQ                      R14 R15 ; [+23]
       16 LOADB                            R13 0
       17 GETTABLEKS                       R14 R12 K1 ["PluginId"]
       19 GETTABLEKS                       R15 R6 K1 ["PluginId"]
       21 JUMPIFNOTEQ                      R14 R15 ; [+16]
       23 LOADB                            R13 0
       24 GETTABLEKS                       R14 R12 K2 ["Category"]
       26 GETTABLEKS                       R15 R6 K2 ["Category"]
       28 JUMPIFNOTEQ                      R14 R15 ; [+9]
       30 GETTABLEKS                       R14 R12 K3 ["ItemId"]
       32 GETTABLEKS                       R15 R6 K3 ["ItemId"]
       34 JUMPIFEQ                         R14 R15 ; [+2]
       36 LOADB                            R13 0 +1
       37 LOADB                            R13 1
       38 JUMPIFNOT                        R13 ; [+2]
       39 LOADB                            R7 1
       40 JUMP                             ; [+2]
       41 FORGLOOP                         R8 2 ; [-33]
       43 JUMPIF                           R7 ; [+16]
       44 GETIMPORT                        R8 K5 [error]
       46 LOADK                            R10 K6 ["(%*, %*, %*, %*) is not a valid Action Studio Uri."]
       47 GETTABLEKS                       R12 R6 K0 ["DataModel"]
       49 GETTABLEKS                       R13 R6 K1 ["PluginId"]
       51 GETTABLEKS                       R14 R6 K2 ["Category"]
       53 GETTABLEKS                       R15 R6 K3 ["ItemId"]
       55 NAMECALL                         R10 R10 K7 ["format"]
       57 CALL                             R10 5 1
       58 MOVE                             R9 R10
       59 CALL                             R8 1 0
       60 FORGLOOP                         R2 2 ; [-57]
       62 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 2
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["GetAsync"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R1
        4 SETLIST                          R3 R4 1 [1]
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K0 ["ActivateAsync"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R1
        4 SETLIST                          R3 R4 1 [1]
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K0 ["BindToChangedAsync"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["CreateWeak"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K4 [{"GetAsync", "ActivateAsync", "BindToChangedAsync"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R4 R3 K1 ["GetAsync"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R4 R3 K2 ["ActivateAsync"]
       17 NEWCLOSURE                       R4 P2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R3 K3 ["BindToChangedAsync"]
       23 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R9 0
        7 GETTABLE                         R8 R9 R7
        8 JUMPIF                           R8 ; [+12]
        9 GETUPVAL                         R8 0
       10 DUPTABLE                         R9 K2 [{"Checked", "_signal"}]
       11 LOADB                            R10 0
       12 SETTABLEKS                       R10 R9 K0 ["Checked"]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R10 R11 K3 ["new"]
       17 CALL                             R10 0 1
       18 SETTABLEKS                       R10 R9 K1 ["_signal"]
       20 SETTABLE                         R9 R8 R7
       21 GETUPVAL                         R11 0
       22 GETTABLE                         R10 R11 R7
       23 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       25 MOVE                             R9 R2
       26 GETIMPORT                        R8 K6 [table.insert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R3 2 ; [-24]
       31 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R1
        8 GETTABLEKS                       R4 R5 K0 ["Checked"]
       10 NOT                              R3 R4
       11 SETTABLEKS                       R3 R2 K0 ["Checked"]
       13 GETUPVAL                         R4 0
       14 GETTABLE                         R3 R4 R1
       15 GETTABLEKS                       R2 R3 K1 ["_signal"]
       17 GETUPVAL                         R6 0
       18 GETTABLE                         R5 R6 R1
       19 GETTABLEKS                       R4 R5 K0 ["Checked"]
       21 NAMECALL                         R2 R2 K2 ["Fire"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["new"]
        6 CALL                             R2 0 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLEKS                       R2 R3 K1 ["_signal"]
       12 RETURN                           R2 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K3 [{"GetAsync", "ActivateAsync", "BindToChangedAsync"}]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R3 R2 K0 ["GetAsync"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K1 ["ActivateAsync"]
       12 NEWCLOSURE                       R3 P2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R3 R2 K2 ["BindToChangedAsync"]
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Signal"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 DUPCLOSURE                       R6 K12 [PROTO_5]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R6 R3 K13 ["CreateStrict"]
       32 DUPCLOSURE                       R6 K14 [PROTO_9]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R6 R3 K15 ["CreateWeak"]
       36 RETURN                           R3 1
