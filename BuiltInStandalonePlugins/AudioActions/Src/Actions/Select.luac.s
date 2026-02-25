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
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K6 ["hasInputPin"]
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
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K9 ["hasSidechainPin"]
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
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K6 ["hasOutputPin"]
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
        4 DUPTABLE                         R2 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
        5 DUPTABLE                         R3 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
        6 LOADK                            R4 K15 ["Standalone"]
        7 SETTABLEKS                       R4 R3 K10 ["DataModel"]
        9 LOADK                            R4 K16 ["Audio"]
       10 SETTABLEKS                       R4 R3 K11 ["PluginId"]
       12 LOADK                            R4 K0 ["Actions"]
       13 SETTABLEKS                       R4 R3 K12 ["Category"]
       15 LOADK                            R4 K17 ["Select Inputs"]
       16 SETTABLEKS                       R4 R3 K13 ["ItemId"]
       18 SETTABLEKS                       R3 R2 K2 ["Uri"]
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K3 ["Enabled"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K4 ["Visible"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K18 ["action"]
       29 LOADK                            R4 K19 ["SelectInputs"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K5 ["Text"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K20 ["tooltip"]
       36 LOADK                            R4 K19 ["SelectInputs"]
       37 CALL                             R3 1 1
       38 SETTABLEKS                       R3 R2 K6 ["Tooltip"]
       40 LOADK                            R3 K21 ["Help"]
       41 SETTABLEKS                       R3 R2 K7 ["Icon"]
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K8 ["Shortcuts"]
       47 DUPTABLE                         R3 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
       48 DUPTABLE                         R4 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
       49 LOADK                            R5 K15 ["Standalone"]
       50 SETTABLEKS                       R5 R4 K10 ["DataModel"]
       52 LOADK                            R5 K16 ["Audio"]
       53 SETTABLEKS                       R5 R4 K11 ["PluginId"]
       55 LOADK                            R5 K0 ["Actions"]
       56 SETTABLEKS                       R5 R4 K12 ["Category"]
       58 LOADK                            R5 K22 ["Select Outputs"]
       59 SETTABLEKS                       R5 R4 K13 ["ItemId"]
       61 SETTABLEKS                       R4 R3 K2 ["Uri"]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K3 ["Enabled"]
       66 LOADB                            R4 1
       67 SETTABLEKS                       R4 R3 K4 ["Visible"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K18 ["action"]
       72 LOADK                            R5 K23 ["SelectOutputs"]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K5 ["Text"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R4 R5 K20 ["tooltip"]
       79 LOADK                            R5 K23 ["SelectOutputs"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K6 ["Tooltip"]
       83 LOADK                            R4 K21 ["Help"]
       84 SETTABLEKS                       R4 R3 K7 ["Icon"]
       86 NEWTABLE                         R4 0 0
       88 SETTABLEKS                       R4 R3 K8 ["Shortcuts"]
       90 GETUPVAL                         R4 1
       91 JUMPIFNOT                        R4 ; [+6]
       92 GETUPVAL                         R4 1
       93 NAMECALL                         R4 R4 K24 ["Disconnect"]
       95 CALL                             R4 1 0
       96 LOADNIL                          R4
       97 SETUPVAL                         R4 1
       98 GETUPVAL                         R4 2
       99 JUMPIFNOT                        R4 ; [+6]
      100 GETUPVAL                         R4 2
      101 NAMECALL                         R4 R4 K24 ["Disconnect"]
      103 CALL                             R4 1 0
      104 LOADNIL                          R4
      105 SETUPVAL                         R4 2
      106 MOVE                             R7 R2
      107 LOADB                            R8 1
      108 NAMECALL                         R5 R1 K25 ["CreateAsync"]
      110 CALL                             R5 3 1
      111 GETTABLEN                        R4 R5 1
      112 GETUPVAL                         R6 3
      113 NAMECALL                         R4 R4 K26 ["Connect"]
      115 CALL                             R4 2 1
      116 SETUPVAL                         R4 1
      117 MOVE                             R7 R3
      118 LOADB                            R8 1
      119 NAMECALL                         R5 R1 K25 ["CreateAsync"]
      121 CALL                             R5 3 1
      122 GETTABLEN                        R4 R5 1
      123 GETUPVAL                         R6 4
      124 NAMECALL                         R4 R4 K26 ["Connect"]
      126 CALL                             R4 2 1
      127 SETUPVAL                         R4 2
      128 RETURN                           R0 0

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
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["LocalizationUtil"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["WiringUtil"]
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
