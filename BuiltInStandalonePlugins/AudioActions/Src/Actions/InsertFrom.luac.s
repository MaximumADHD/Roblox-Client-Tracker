PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 LENGTH                           R2 R0
        6 JUMPIFNOTEQKN                    R2 K1 [1] ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["hasInputPin"]
       11 GETTABLEN                        R2 R0 1
       12 CALL                             R1 1 1
       13 LOADB                            R2 0
       14 LENGTH                           R3 R0
       15 JUMPIFNOTEQKN                    R3 K1 [1] ; [+6]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["hasOutputPin"]
       20 GETTABLEN                        R3 R0 1
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["getWirableInstances"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 2
       27 LOADB                            R5 0
       28 JUMPIFEQKNIL                     R3 ; [+5]
       30 JUMPIFNOTEQKNIL                  R4 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 DUPTABLE                         R6 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Shortcuts"}]
       35 DUPTABLE                         R7 K20 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Insert Before"}]
       36 SETTABLEKS                       R7 R6 K5 ["Uri"]
       38 SETTABLEKS                       R1 R6 K6 ["Enabled"]
       40 SETTABLEKS                       R1 R6 K7 ["Visible"]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K21 ["action"]
       45 LOADK                            R8 K22 ["InsertBefore"]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K8 ["Text"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K23 ["tooltip"]
       52 LOADK                            R8 K22 ["InsertBefore"]
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       56 NEWTABLE                         R7 0 0
       58 SETTABLEKS                       R7 R6 K10 ["Shortcuts"]
       60 DUPTABLE                         R7 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Shortcuts"}]
       61 DUPTABLE                         R8 K25 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Insert After"}]
       62 SETTABLEKS                       R8 R7 K5 ["Uri"]
       64 SETTABLEKS                       R2 R7 K6 ["Enabled"]
       66 SETTABLEKS                       R2 R7 K7 ["Visible"]
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K21 ["action"]
       71 LOADK                            R9 K26 ["InsertAfter"]
       72 CALL                             R8 1 1
       73 SETTABLEKS                       R8 R7 K8 ["Text"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K23 ["tooltip"]
       78 LOADK                            R9 K26 ["InsertAfter"]
       79 CALL                             R8 1 1
       80 SETTABLEKS                       R8 R7 K9 ["Tooltip"]
       82 NEWTABLE                         R8 0 0
       84 SETTABLEKS                       R8 R7 K10 ["Shortcuts"]
       86 DUPTABLE                         R8 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Shortcuts"}]
       87 DUPTABLE                         R9 K28 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Insert Between"}]
       88 SETTABLEKS                       R9 R8 K5 ["Uri"]
       90 SETTABLEKS                       R5 R8 K6 ["Enabled"]
       92 SETTABLEKS                       R5 R8 K7 ["Visible"]
       94 GETUPVAL                         R9 2
       95 GETTABLEKS                       R9 R9 K21 ["action"]
       97 LOADK                            R10 K29 ["InsertBetween"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K8 ["Text"]
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R9 R9 K23 ["tooltip"]
      104 LOADK                            R10 K29 ["InsertBetween"]
      105 CALL                             R9 1 1
      106 SETTABLEKS                       R9 R8 K9 ["Tooltip"]
      108 NEWTABLE                         R9 0 0
      110 SETTABLEKS                       R9 R8 K10 ["Shortcuts"]
      112 GETUPVAL                         R9 3
      113 MOVE                             R11 R6
      114 LOADB                            R12 1
      115 NAMECALL                         R9 R9 K30 ["CreateAsync"]
      117 CALL                             R9 3 0
      118 GETUPVAL                         R9 3
      119 MOVE                             R11 R7
      120 LOADB                            R12 1
      121 NAMECALL                         R9 R9 K30 ["CreateAsync"]
      123 CALL                             R9 3 0
      124 GETUPVAL                         R9 3
      125 MOVE                             R11 R8
      126 LOADB                            R12 1
      127 NAMECALL                         R9 R9 K30 ["CreateAsync"]
      129 CALL                             R9 3 0
      130 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 MOVE                             R3 R2
       10 CALL                             R3 0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["SelectionChanged"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R2
       16 NAMECALL                         R3 R3 K3 ["Connect"]
       18 CALL                             R3 2 1
       19 SETUPVAL                         R3 3
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

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
       31 LOADNIL                          R4
       32 NEWTABLE                         R5 2 0
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          REF R4
       39 SETTABLEKS                       R6 R5 K14 ["register"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          REF R4
       43 SETTABLEKS                       R6 R5 K15 ["deregister"]
       45 CLOSEUPVALS                      R4
       46 RETURN                           R5 1
