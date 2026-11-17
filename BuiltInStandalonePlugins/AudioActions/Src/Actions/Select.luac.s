PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LENGTH                           R7 R1
        7 LOADK                            R10 K0 ["Wire"]
        8 NAMECALL                         R8 R6 K1 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+11]
       12 GETTABLEKS                       R8 R6 K2 ["SourceInstance"]
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETTABLEKS                       R10 R6 K2 ["SourceInstance"]
       17 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       19 MOVE                             R9 R1
       20 GETIMPORT                        R8 K5 [table.insert]
       22 CALL                             R8 2 0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K6 ["hasInputPin"]
       26 MOVE                             R9 R6
       27 CALL                             R8 1 1
       28 JUMPIFNOT                        R8 ; [+18]
       29 LOADK                            R10 K7 ["Input"]
       30 NAMECALL                         R8 R6 K8 ["GetConnectedWires"]
       32 CALL                             R8 2 1
       33 MOVE                             R9 R8
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 GETTABLEKS                       R16 R13 K2 ["SourceInstance"]
       39 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       41 MOVE                             R15 R1
       42 GETIMPORT                        R14 K5 [table.insert]
       44 CALL                             R14 2 0
       45 FORGLOOP                         R9 2 ; [-9]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K9 ["hasSidechainPin"]
       50 MOVE                             R9 R6
       51 CALL                             R8 1 1
       52 JUMPIFNOT                        R8 ; [+18]
       53 LOADK                            R10 K10 ["Sidechain"]
       54 NAMECALL                         R8 R6 K8 ["GetConnectedWires"]
       56 CALL                             R8 2 1
       57 MOVE                             R9 R8
       58 LOADNIL                          R10
       59 LOADNIL                          R11
       60 FORGPREP                         R9
       61 GETTABLEKS                       R16 R13 K2 ["SourceInstance"]
       63 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       65 MOVE                             R15 R1
       66 GETIMPORT                        R14 K5 [table.insert]
       68 CALL                             R14 2 0
       69 FORGLOOP                         R9 2 ; [-9]
       71 LOADK                            R10 K11 ["AudioListener"]
       72 NAMECALL                         R8 R6 K1 ["IsA"]
       74 CALL                             R8 2 1
       75 JUMPIFNOT                        R8 ; [+16]
       76 NAMECALL                         R8 R6 K12 ["GetInteractingEmitters"]
       78 CALL                             R8 1 1
       79 MOVE                             R9 R8
       80 LOADNIL                          R10
       81 LOADNIL                          R11
       82 FORGPREP                         R9
       83 FASTCALL2                        TABLE_INSERT R1 R13 ; [+5]
       85 MOVE                             R15 R1
       86 MOVE                             R16 R13
       87 GETIMPORT                        R14 K5 [table.insert]
       89 CALL                             R14 2 0
       90 FORGLOOP                         R9 2 ; [-8]
       92 LENGTH                           R8 R1
       93 JUMPIFNOTEQ                      R7 R8 ; [+8]
       95 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       97 MOVE                             R9 R1
       98 MOVE                             R10 R6
       99 GETIMPORT                        R8 K5 [table.insert]
      101 CALL                             R8 2 0
      102 FORGLOOP                         R2 2 ; [-97]
      104 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LENGTH                           R7 R1
        7 LOADK                            R10 K0 ["Wire"]
        8 NAMECALL                         R8 R6 K1 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+11]
       12 GETTABLEKS                       R8 R6 K2 ["TargetInstance"]
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETTABLEKS                       R10 R6 K2 ["TargetInstance"]
       17 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       19 MOVE                             R9 R1
       20 GETIMPORT                        R8 K5 [table.insert]
       22 CALL                             R8 2 0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K6 ["hasOutputPin"]
       26 MOVE                             R9 R6
       27 CALL                             R8 1 1
       28 JUMPIFNOT                        R8 ; [+15]
       29 LOADK                            R10 K7 ["Output"]
       30 NAMECALL                         R8 R6 K8 ["GetConnectedWires"]
       32 CALL                             R8 2 3
       33 FORGPREP                         R8
       34 GETTABLEKS                       R15 R12 K2 ["TargetInstance"]
       36 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       38 MOVE                             R14 R1
       39 GETIMPORT                        R13 K5 [table.insert]
       41 CALL                             R13 2 0
       42 FORGLOOP                         R8 2 ; [-9]
       44 LOADK                            R10 K9 ["AudioEmitter"]
       45 NAMECALL                         R8 R6 K1 ["IsA"]
       47 CALL                             R8 2 1
       48 JUMPIFNOT                        R8 ; [+16]
       49 NAMECALL                         R8 R6 K10 ["GetInteractingListeners"]
       51 CALL                             R8 1 1
       52 MOVE                             R9 R8
       53 LOADNIL                          R10
       54 LOADNIL                          R11
       55 FORGPREP                         R9
       56 FASTCALL2                        TABLE_INSERT R1 R13 ; [+5]
       58 MOVE                             R15 R1
       59 MOVE                             R16 R13
       60 GETIMPORT                        R14 K5 [table.insert]
       62 CALL                             R14 2 0
       63 FORGLOOP                         R9 2 ; [-8]
       65 LENGTH                           R8 R1
       66 JUMPIFNOTEQ                      R7 R8 ; [+8]
       68 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       70 MOVE                             R9 R1
       71 MOVE                             R10 R6
       72 GETIMPORT                        R8 K5 [table.insert]
       74 CALL                             R8 2 0
       75 FORGLOOP                         R2 2 ; [-70]
       77 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["Set"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K1 ["Set"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 DUPTABLE                         R2 K11 [{["Uri"], ["Enabled"] = True, ["Visible"] = True, ["Text"], ["Tooltip"], ["Icon"] = "Help", ["Shortcuts"]}]
        5 DUPTABLE                         R3 K19 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Select Inputs"}]
        6 SETTABLEKS                       R3 R2 K2 ["Uri"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K20 ["action"]
       11 LOADK                            R4 K21 ["SelectInputs"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K6 ["Text"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K22 ["tooltip"]
       18 LOADK                            R4 K21 ["SelectInputs"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K7 ["Tooltip"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K10 ["Shortcuts"]
       26 DUPTABLE                         R3 K11 [{["Uri"], ["Enabled"] = True, ["Visible"] = True, ["Text"], ["Tooltip"], ["Icon"] = "Help", ["Shortcuts"]}]
       27 DUPTABLE                         R4 K24 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Select Outputs"}]
       28 SETTABLEKS                       R4 R3 K2 ["Uri"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K20 ["action"]
       33 LOADK                            R5 K25 ["SelectOutputs"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K6 ["Text"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K22 ["tooltip"]
       40 LOADK                            R5 K25 ["SelectOutputs"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K7 ["Tooltip"]
       44 NEWTABLE                         R4 0 0
       46 SETTABLEKS                       R4 R3 K10 ["Shortcuts"]
       48 GETUPVAL                         R4 1
       49 JUMPIFNOT                        R4 ; [+6]
       50 GETUPVAL                         R4 1
       51 NAMECALL                         R4 R4 K26 ["Disconnect"]
       53 CALL                             R4 1 0
       54 LOADNIL                          R4
       55 SETUPVAL                         R4 1
       56 GETUPVAL                         R4 2
       57 JUMPIFNOT                        R4 ; [+6]
       58 GETUPVAL                         R4 2
       59 NAMECALL                         R4 R4 K26 ["Disconnect"]
       61 CALL                             R4 1 0
       62 LOADNIL                          R4
       63 SETUPVAL                         R4 2
       64 MOVE                             R7 R2
       65 LOADB                            R8 1
       66 NAMECALL                         R5 R1 K27 ["CreateAsync"]
       68 CALL                             R5 3 1
       69 GETTABLEN                        R4 R5 1
       70 GETUPVAL                         R6 3
       71 NAMECALL                         R4 R4 K28 ["Connect"]
       73 CALL                             R4 2 1
       74 SETUPVAL                         R4 1
       75 MOVE                             R7 R3
       76 LOADB                            R8 1
       77 NAMECALL                         R5 R1 K27 ["CreateAsync"]
       79 CALL                             R5 3 1
       80 GETTABLEN                        R4 R5 1
       81 GETUPVAL                         R6 4
       82 NAMECALL                         R4 R4 K28 ["Connect"]
       84 CALL                             R4 2 1
       85 SETUPVAL                         R4 2
       86 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AudioActions"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["LocalizationUtil"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["WiringUtil"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R5 K15 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R6 K16 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R0
       38 DUPCLOSURE                       R7 K17 [PROTO_3]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R0
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 NEWTABLE                         R10 2 0
       45 NEWCLOSURE                       R11 P4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R8
       48 CAPTURE                          REF R9
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R11 R10 K18 ["register"]
       53 NEWCLOSURE                       R11 P5
       54 CAPTURE                          REF R8
       55 CAPTURE                          REF R9
       56 SETTABLEKS                       R11 R10 K19 ["deregister"]
       58 CLOSEUPVALS                      R8
       59 RETURN                           R10 1
