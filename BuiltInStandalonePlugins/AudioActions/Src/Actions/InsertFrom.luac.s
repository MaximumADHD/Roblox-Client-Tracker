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
       35 DUPTABLE                         R7 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
       36 LOADK                            R8 K17 ["Standalone"]
       37 SETTABLEKS                       R8 R7 K12 ["DataModel"]
       39 LOADK                            R8 K18 ["Audio"]
       40 SETTABLEKS                       R8 R7 K13 ["PluginId"]
       42 LOADK                            R8 K19 ["Actions"]
       43 SETTABLEKS                       R8 R7 K14 ["Category"]
       45 LOADK                            R8 K20 ["Insert Before"]
       46 SETTABLEKS                       R8 R7 K15 ["ItemId"]
       48 SETTABLEKS                       R7 R6 K5 ["Uri"]
       50 SETTABLEKS                       R1 R6 K6 ["Enabled"]
       52 SETTABLEKS                       R1 R6 K7 ["Visible"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K21 ["action"]
       57 LOADK                            R8 K22 ["InsertBefore"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R7 R6 K8 ["Text"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K23 ["tooltip"]
       64 LOADK                            R8 K22 ["InsertBefore"]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       68 NEWTABLE                         R7 0 0
       70 SETTABLEKS                       R7 R6 K10 ["Shortcuts"]
       72 DUPTABLE                         R7 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Shortcuts"}]
       73 DUPTABLE                         R8 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
       74 LOADK                            R9 K17 ["Standalone"]
       75 SETTABLEKS                       R9 R8 K12 ["DataModel"]
       77 LOADK                            R9 K18 ["Audio"]
       78 SETTABLEKS                       R9 R8 K13 ["PluginId"]
       80 LOADK                            R9 K19 ["Actions"]
       81 SETTABLEKS                       R9 R8 K14 ["Category"]
       83 LOADK                            R9 K24 ["Insert After"]
       84 SETTABLEKS                       R9 R8 K15 ["ItemId"]
       86 SETTABLEKS                       R8 R7 K5 ["Uri"]
       88 SETTABLEKS                       R2 R7 K6 ["Enabled"]
       90 SETTABLEKS                       R2 R7 K7 ["Visible"]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K21 ["action"]
       95 LOADK                            R9 K25 ["InsertAfter"]
       96 CALL                             R8 1 1
       97 SETTABLEKS                       R8 R7 K8 ["Text"]
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K23 ["tooltip"]
      102 LOADK                            R9 K25 ["InsertAfter"]
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R8 R7 K9 ["Tooltip"]
      106 NEWTABLE                         R8 0 0
      108 SETTABLEKS                       R8 R7 K10 ["Shortcuts"]
      110 DUPTABLE                         R8 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Shortcuts"}]
      111 DUPTABLE                         R9 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
      112 LOADK                            R10 K17 ["Standalone"]
      113 SETTABLEKS                       R10 R9 K12 ["DataModel"]
      115 LOADK                            R10 K18 ["Audio"]
      116 SETTABLEKS                       R10 R9 K13 ["PluginId"]
      118 LOADK                            R10 K19 ["Actions"]
      119 SETTABLEKS                       R10 R9 K14 ["Category"]
      121 LOADK                            R10 K26 ["Insert Between"]
      122 SETTABLEKS                       R10 R9 K15 ["ItemId"]
      124 SETTABLEKS                       R9 R8 K5 ["Uri"]
      126 SETTABLEKS                       R5 R8 K6 ["Enabled"]
      128 SETTABLEKS                       R5 R8 K7 ["Visible"]
      130 GETUPVAL                         R9 2
      131 GETTABLEKS                       R9 R9 K21 ["action"]
      133 LOADK                            R10 K27 ["InsertBetween"]
      134 CALL                             R9 1 1
      135 SETTABLEKS                       R9 R8 K8 ["Text"]
      137 GETUPVAL                         R9 2
      138 GETTABLEKS                       R9 R9 K23 ["tooltip"]
      140 LOADK                            R10 K27 ["InsertBetween"]
      141 CALL                             R9 1 1
      142 SETTABLEKS                       R9 R8 K9 ["Tooltip"]
      144 NEWTABLE                         R9 0 0
      146 SETTABLEKS                       R9 R8 K10 ["Shortcuts"]
      148 GETUPVAL                         R9 3
      149 MOVE                             R11 R6
      150 LOADB                            R12 1
      151 NAMECALL                         R9 R9 K28 ["CreateAsync"]
      153 CALL                             R9 3 0
      154 GETUPVAL                         R9 3
      155 MOVE                             R11 R7
      156 LOADB                            R12 1
      157 NAMECALL                         R9 R9 K28 ["CreateAsync"]
      159 CALL                             R9 3 0
      160 GETUPVAL                         R9 3
      161 MOVE                             R11 R8
      162 LOADB                            R12 1
      163 NAMECALL                         R9 R9 K28 ["CreateAsync"]
      165 CALL                             R9 3 0
      166 RETURN                           R0 0

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
