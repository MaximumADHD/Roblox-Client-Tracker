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
       15 LOADK                            R4 K4 ["Insert %*"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R4 R4 K5 ["format"]
       19 CALL                             R4 2 1
       20 NAMECALL                         R2 R2 K6 ["TryBeginRecording"]
       22 CALL                             R2 2 1
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R4 R1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETIMPORT                        R9 K9 [Instance.new]
       31 MOVE                             R10 R0
       32 CALL                             R9 1 1
       33 SETTABLEKS                       R8 R9 K10 ["Parent"]
       35 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       37 MOVE                             R11 R3
       38 MOVE                             R12 R9
       39 GETIMPORT                        R10 K13 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R4 2 ; [-14]
       44 GETUPVAL                         R4 0
       45 MOVE                             R6 R3
       46 NAMECALL                         R4 R4 K14 ["Set"]
       48 CALL                             R4 2 0
       49 JUMPIFNOT                        R2 ; [+7]
       50 GETUPVAL                         R4 1
       51 MOVE                             R6 R2
       52 GETIMPORT                        R7 K18 [Enum.FinishRecordingOperation.Commit]
       54 NAMECALL                         R4 R4 K19 ["FinishRecording"]
       56 CALL                             R4 3 0
       57 RETURN                           R0 0

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
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["getAudioInstanceDefs"]
       15 CALL                             R4 0 3
       16 FORGPREP                         R4
       17 DUPTABLE                         R9 K12 [{["Uri"], ["Enabled"] = True, ["Visible"] = True, ["Text"], ["Tooltip"], ["Icon"], ["Shortcuts"]}]
       18 DUPTABLE                         R10 K19 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"]}]
       19 LOADK                            R11 K20 ["Insert/%*"]
       20 MOVE                             R13 R7
       21 NAMECALL                         R11 R11 K21 ["format"]
       23 CALL                             R11 2 1
       24 SETTABLEKS                       R11 R10 K18 ["ItemId"]
       26 SETTABLEKS                       R10 R9 K4 ["Uri"]
       28 GETIMPORT                        R10 K24 [string.gsub]
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R11 R11 K25 ["action"]
       33 LOADK                            R12 K26 ["Insert"]
       34 CALL                             R11 1 1
       35 LOADK                            R12 K27 ["%%s"]
       36 MOVE                             R13 R7
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K8 ["Text"]
       40 GETIMPORT                        R10 K24 [string.gsub]
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K28 ["tooltip"]
       45 LOADK                            R12 K26 ["Insert"]
       46 CALL                             R11 1 1
       47 LOADK                            R12 K27 ["%%s"]
       48 MOVE                             R13 R7
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K9 ["Tooltip"]
       52 SETTABLEKS                       R7 R9 K10 ["Icon"]
       54 NEWTABLE                         R10 0 0
       56 SETTABLEKS                       R10 R9 K11 ["Shortcuts"]
       58 SETTABLE                         R9 R3 R7
       59 GETUPVAL                         R11 3
       60 MOVE                             R15 R9
       61 LOADB                            R16 1
       62 NAMECALL                         R13 R1 K29 ["CreateAsync"]
       64 CALL                             R13 3 1
       65 GETTABLEN                        R12 R13 1
       66 NEWCLOSURE                       R14 P0
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R7
       69 NAMECALL                         R12 R12 K30 ["Connect"]
       71 CALL                             R12 2 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R10 K33 [table.insert]
       75 CALL                             R10 -1 0
       76 FORGLOOP                         R4 2 ; [-60]
       78 NEWTABLE                         R4 0 3
       80 DUPTABLE                         R5 K37 [{["Uri"], ["Text"] = "In/Out", ["Tooltip"] = "In/Out", ["Enabled"] = True, ["Value"] = 0}]
       81 DUPTABLE                         R6 K39 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Settings", ["ItemId"] = "InsertInOut"}]
       82 SETTABLEKS                       R6 R5 K4 ["Uri"]
       84 DUPTABLE                         R6 K41 [{["Uri"], ["Text"] = "3D", ["Tooltip"] = "3D", ["Enabled"] = True, ["Value"] = 0}]
       85 DUPTABLE                         R7 K43 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Settings", ["ItemId"] = "InsertSpatial"}]
       86 SETTABLEKS                       R7 R6 K4 ["Uri"]
       88 DUPTABLE                         R7 K46 [{["Uri"], ["Text"] = "Effects", ["Tooltip"] = "Effects", ["Enabled"] = True, ["Value"] = 5}]
       89 DUPTABLE                         R8 K48 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Settings", ["ItemId"] = "InsertEffect"}]
       90 SETTABLEKS                       R8 R7 K4 ["Uri"]
       92 SETLIST                          R4 R5 3 [1]
       94 MOVE                             R5 R4
       95 LOADNIL                          R6
       96 LOADNIL                          R7
       97 FORGPREP                         R5
       98 NEWTABLE                         R14 0 1
      100 GETTABLEKS                       R15 R9 K4 ["Uri"]
      102 SETLIST                          R14 R15 1 [1]
      104 NAMECALL                         R12 R2 K49 ["GetAsync"]
      106 CALL                             R12 2 1
      107 GETTABLEN                        R11 R12 1
      108 JUMPIFNOTEQKNIL                  R11 ; [+2]
      110 LOADB                            R10 0 +1
      111 LOADB                            R10 1
      112 JUMPIFNOT                        R10 ; [+9]
      113 NEWTABLE                         R13 0 1
      115 MOVE                             R14 R9
      116 SETLIST                          R13 R14 1 [1]
      118 NAMECALL                         R11 R2 K50 ["UpdateAsync"]
      120 CALL                             R11 2 0
      121 JUMP                             ; [+8]
      122 NEWTABLE                         R13 0 1
      124 MOVE                             R14 R9
      125 SETLIST                          R13 R14 1 [1]
      127 NAMECALL                         R11 R2 K29 ["CreateAsync"]
      129 CALL                             R11 2 0
      130 FORGLOOP                         R5 2 ; [-33]
      132 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["LocalizationUtil"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["WiringUtil"]
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
