PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+8]
        7 NEWTABLE                         R2 0 1
        9 GETIMPORT                        R3 K3 [workspace]
       11 SETLIST                          R2 R3 1 [1]
       13 MOVE                             R1 R2
       14 GETUPVAL                         R2 1
       15 LOADK                            R5 K4 ["Insert %*"]
       16 MOVE                             R7 R0
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 NAMECALL                         R2 R2 K6 ["TryBeginRecording"]
       23 CALL                             R2 2 1
       24 NEWTABLE                         R3 0 0
       26 MOVE                             R4 R1
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 GETIMPORT                        R9 K9 [Instance.new]
       32 MOVE                             R10 R0
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R8 R9 K10 ["Parent"]
       36 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       38 MOVE                             R11 R3
       39 MOVE                             R12 R9
       40 GETIMPORT                        R10 K13 [table.insert]
       42 CALL                             R10 2 0
       43 FORGLOOP                         R4 2 ; [-14]
       45 GETUPVAL                         R4 0
       46 MOVE                             R6 R3
       47 NAMECALL                         R4 R4 K14 ["Set"]
       49 CALL                             R4 2 0
       50 JUMPIFNOT                        R2 ; [+7]
       51 GETUPVAL                         R4 1
       52 MOVE                             R6 R2
       53 GETIMPORT                        R7 K18 [Enum.FinishRecordingOperation.Commit]
       55 NAMECALL                         R4 R4 K19 ["FinishRecording"]
       57 CALL                             R4 3 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+3]
        5 NAMECALL                         R5 R4 K0 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 ; [-5]
       10 NEWTABLE                         R0 0 0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Settings"]
        5 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 0
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["getAudioInstanceDefs"]
       15 CALL                             R4 0 3
       16 FORGPREP                         R4
       17 DUPTABLE                         R9 K11 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
       18 DUPTABLE                         R10 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
       19 LOADK                            R11 K17 ["Standalone"]
       20 SETTABLEKS                       R11 R10 K12 ["DataModel"]
       22 LOADK                            R11 K18 ["Audio"]
       23 SETTABLEKS                       R11 R10 K13 ["PluginId"]
       25 LOADK                            R11 K0 ["Actions"]
       26 SETTABLEKS                       R11 R10 K14 ["Category"]
       28 LOADK                            R12 K19 ["Insert/%*"]
       29 MOVE                             R14 R7
       30 NAMECALL                         R12 R12 K20 ["format"]
       32 CALL                             R12 2 1
       33 MOVE                             R11 R12
       34 SETTABLEKS                       R11 R10 K15 ["ItemId"]
       36 SETTABLEKS                       R10 R9 K4 ["Uri"]
       38 LOADB                            R10 1
       39 SETTABLEKS                       R10 R9 K5 ["Enabled"]
       41 LOADB                            R10 1
       42 SETTABLEKS                       R10 R9 K6 ["Visible"]
       44 GETIMPORT                        R10 K23 [string.gsub]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R11 R12 K24 ["action"]
       49 LOADK                            R12 K25 ["Insert"]
       50 CALL                             R11 1 1
       51 LOADK                            R12 K26 ["%%s"]
       52 MOVE                             R13 R7
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K7 ["Text"]
       56 GETIMPORT                        R10 K23 [string.gsub]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R11 R12 K27 ["tooltip"]
       61 LOADK                            R12 K25 ["Insert"]
       62 CALL                             R11 1 1
       63 LOADK                            R12 K26 ["%%s"]
       64 MOVE                             R13 R7
       65 CALL                             R10 3 1
       66 SETTABLEKS                       R10 R9 K8 ["Tooltip"]
       68 SETTABLEKS                       R7 R9 K9 ["Icon"]
       70 NEWTABLE                         R10 0 0
       72 SETTABLEKS                       R10 R9 K10 ["Shortcuts"]
       74 SETTABLE                         R9 R3 R7
       75 GETUPVAL                         R11 3
       76 MOVE                             R15 R9
       77 LOADB                            R16 1
       78 NAMECALL                         R13 R1 K28 ["CreateAsync"]
       80 CALL                             R13 3 1
       81 GETTABLEN                        R12 R13 1
       82 NEWCLOSURE                       R14 P0
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R7
       85 NAMECALL                         R12 R12 K29 ["Connect"]
       87 CALL                             R12 2 -1
       88 FASTCALL                         TABLE_INSERT ; [+2]
       89 GETIMPORT                        R10 K32 [table.insert]
       91 CALL                             R10 -1 0
       92 FORGLOOP                         R4 2 ; [-76]
       94 NEWTABLE                         R4 0 3
       96 DUPTABLE                         R5 K34 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
       97 DUPTABLE                         R6 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
       98 LOADK                            R7 K17 ["Standalone"]
       99 SETTABLEKS                       R7 R6 K12 ["DataModel"]
      101 LOADK                            R7 K18 ["Audio"]
      102 SETTABLEKS                       R7 R6 K13 ["PluginId"]
      104 LOADK                            R7 K2 ["Settings"]
      105 SETTABLEKS                       R7 R6 K14 ["Category"]
      107 LOADK                            R7 K35 ["InsertInOut"]
      108 SETTABLEKS                       R7 R6 K15 ["ItemId"]
      110 SETTABLEKS                       R6 R5 K4 ["Uri"]
      112 LOADK                            R6 K36 ["In/Out"]
      113 SETTABLEKS                       R6 R5 K7 ["Text"]
      115 LOADK                            R6 K36 ["In/Out"]
      116 SETTABLEKS                       R6 R5 K8 ["Tooltip"]
      118 LOADB                            R6 1
      119 SETTABLEKS                       R6 R5 K5 ["Enabled"]
      121 LOADN                            R6 0
      122 SETTABLEKS                       R6 R5 K33 ["Value"]
      124 DUPTABLE                         R6 K34 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
      125 DUPTABLE                         R7 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
      126 LOADK                            R8 K17 ["Standalone"]
      127 SETTABLEKS                       R8 R7 K12 ["DataModel"]
      129 LOADK                            R8 K18 ["Audio"]
      130 SETTABLEKS                       R8 R7 K13 ["PluginId"]
      132 LOADK                            R8 K2 ["Settings"]
      133 SETTABLEKS                       R8 R7 K14 ["Category"]
      135 LOADK                            R8 K37 ["InsertSpatial"]
      136 SETTABLEKS                       R8 R7 K15 ["ItemId"]
      138 SETTABLEKS                       R7 R6 K4 ["Uri"]
      140 LOADK                            R7 K38 ["3D"]
      141 SETTABLEKS                       R7 R6 K7 ["Text"]
      143 LOADK                            R7 K38 ["3D"]
      144 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
      146 LOADB                            R7 1
      147 SETTABLEKS                       R7 R6 K5 ["Enabled"]
      149 LOADN                            R7 0
      150 SETTABLEKS                       R7 R6 K33 ["Value"]
      152 DUPTABLE                         R7 K34 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
      153 DUPTABLE                         R8 K16 [{"DataModel", "PluginId", "Category", "ItemId"}]
      154 LOADK                            R9 K17 ["Standalone"]
      155 SETTABLEKS                       R9 R8 K12 ["DataModel"]
      157 LOADK                            R9 K18 ["Audio"]
      158 SETTABLEKS                       R9 R8 K13 ["PluginId"]
      160 LOADK                            R9 K2 ["Settings"]
      161 SETTABLEKS                       R9 R8 K14 ["Category"]
      163 LOADK                            R9 K39 ["InsertEffect"]
      164 SETTABLEKS                       R9 R8 K15 ["ItemId"]
      166 SETTABLEKS                       R8 R7 K4 ["Uri"]
      168 LOADK                            R8 K40 ["Effects"]
      169 SETTABLEKS                       R8 R7 K7 ["Text"]
      171 LOADK                            R8 K40 ["Effects"]
      172 SETTABLEKS                       R8 R7 K8 ["Tooltip"]
      174 LOADB                            R8 1
      175 SETTABLEKS                       R8 R7 K5 ["Enabled"]
      177 LOADN                            R8 5
      178 SETTABLEKS                       R8 R7 K33 ["Value"]
      180 SETLIST                          R4 R5 3 [1]
      182 MOVE                             R5 R4
      183 LOADNIL                          R6
      184 LOADNIL                          R7
      185 FORGPREP                         R5
      186 NEWTABLE                         R14 0 1
      188 GETTABLEKS                       R15 R9 K4 ["Uri"]
      190 SETLIST                          R14 R15 1 [1]
      192 NAMECALL                         R12 R2 K41 ["GetAsync"]
      194 CALL                             R12 2 1
      195 GETTABLEN                        R11 R12 1
      196 JUMPIFNOTEQKNIL                  R11 ; [+2]
      198 LOADB                            R10 0 +1
      199 LOADB                            R10 1
      200 JUMPIFNOT                        R10 ; [+9]
      201 NEWTABLE                         R13 0 1
      203 MOVE                             R14 R9
      204 SETLIST                          R13 R14 1 [1]
      206 NAMECALL                         R11 R2 K42 ["UpdateAsync"]
      208 CALL                             R11 2 0
      209 JUMP                             ; [+8]
      210 NEWTABLE                         R13 0 1
      212 MOVE                             R14 R9
      213 SETLIST                          R13 R14 1 [1]
      215 NAMECALL                         R11 R2 K28 ["CreateAsync"]
      217 CALL                             R11 2 0
      218 FORGLOOP                         R5 2 ; [-33]
      220 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AudioActions"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R6 R2 K11 ["Src"]
       23 GETTABLEKS                       R5 R6 K12 ["Util"]
       25 GETTABLEKS                       R4 R5 K13 ["LocalizationUtil"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R7 R2 K11 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["WiringUtil"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K15 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R6 0 0
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          REF R6
       44 NEWTABLE                         R8 2 0
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R9 R8 K16 ["register"]
       54 DUPCLOSURE                       R9 K17 [PROTO_4]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R8 K18 ["deregister"]
       58 CLOSEUPVALS                      R6
       59 RETURN                           R8 1
