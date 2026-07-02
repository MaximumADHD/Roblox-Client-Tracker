PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K0 ["inInstance was nil"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K3 ["outInstance was nil"]
       14 GETIMPORT                        R2 K2 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 LOADK                            R4 K4 ["Wire Up"]
       19 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K6 ["connectByWire"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+9]
       29 GETUPVAL                         R4 2
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R3
       33 SETLIST                          R6 R7 1 [1]
       35 NAMECALL                         R4 R4 K7 ["Set"]
       37 CALL                             R4 2 0
       38 JUMPIFNOT                        R2 ; [+12]
       39 JUMPIFNOT                        R3 ; [+3]
       40 GETIMPORT                        R4 K11 [Enum.FinishRecordingOperation.Commit]
       42 JUMP                             ; [+2]
       43 GETIMPORT                        R4 K13 [Enum.FinishRecordingOperation.Cancel]
       45 GETUPVAL                         R5 0
       46 MOVE                             R7 R2
       47 MOVE                             R8 R4
       48 NAMECALL                         R5 R5 K14 ["FinishRecording"]
       50 CALL                             R5 3 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getWirableInstances"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 2
        9 LOADB                            R3 0
       10 JUMPIFEQKNIL                     R1 ; [+5]
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["action"]
       19 LOADK                            R5 K3 ["WireUpDisabled"]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R3 ; [+36]
       22 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       24 MOVE                             R6 R1
       25 LOADK                            R7 K4 ["inInstance was nil"]
       26 GETIMPORT                        R5 K6 [assert]
       28 CALL                             R5 2 0
       29 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       31 MOVE                             R6 R2
       32 LOADK                            R7 K7 ["outInstance was nil"]
       33 GETIMPORT                        R5 K6 [assert]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K2 ["action"]
       39 LOADK                            R6 K8 ["WireUp"]
       40 CALL                             R5 1 1
       41 MOVE                             R4 R5
       42 GETIMPORT                        R5 K11 [string.gsub]
       44 MOVE                             R6 R4
       45 LOADK                            R7 K12 ["%%s"]
       46 GETTABLEKS                       R8 R1 K13 ["Name"]
       48 CALL                             R5 3 1
       49 MOVE                             R4 R5
       50 GETIMPORT                        R5 K11 [string.gsub]
       52 MOVE                             R6 R4
       53 LOADK                            R7 K14 ["%%t"]
       54 GETTABLEKS                       R8 R2 K13 ["Name"]
       56 CALL                             R5 3 1
       57 MOVE                             R4 R5
       58 DUPTABLE                         R5 K23 [{["Uri"], ["Enabled"], ["Visible"], ["Text"], ["Icon"] = "Wire", ["Tooltip"], ["Shortcuts"]}]
       59 DUPTABLE                         R6 K32 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Wire Up"}]
       60 SETTABLEKS                       R6 R5 K15 ["Uri"]
       62 SETTABLEKS                       R3 R5 K16 ["Enabled"]
       64 SETTABLEKS                       R3 R5 K17 ["Visible"]
       66 SETTABLEKS                       R4 R5 K18 ["Text"]
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K33 ["tooltip"]
       71 LOADK                            R7 K8 ["WireUp"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K21 ["Tooltip"]
       75 NEWTABLE                         R6 0 0
       77 SETTABLEKS                       R6 R5 K22 ["Shortcuts"]
       79 GETUPVAL                         R6 3
       80 JUMPIFNOT                        R6 ; [+6]
       81 GETUPVAL                         R6 3
       82 NAMECALL                         R6 R6 K34 ["Disconnect"]
       84 CALL                             R6 1 0
       85 LOADNIL                          R6
       86 SETUPVAL                         R6 3
       87 GETUPVAL                         R7 4
       88 MOVE                             R9 R5
       89 LOADB                            R10 1
       90 NAMECALL                         R7 R7 K35 ["CreateAsync"]
       92 CALL                             R7 3 1
       93 GETTABLEN                        R6 R7 1
       94 NEWCLOSURE                       R8 P0
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 NAMECALL                         R6 R6 K36 ["Connect"]
      100 CALL                             R6 2 1
      101 SETUPVAL                         R6 3
      102 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["SelectionChanged"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NAMECALL                         R3 R3 K3 ["Connect"]
       20 CALL                             R3 2 1
       21 SETUPVAL                         R3 5
       22 RETURN                           R0 0

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
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 NEWTABLE                         R8 2 0
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          REF R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          REF R7
       52 SETTABLEKS                       R9 R8 K16 ["register"]
       54 NEWCLOSURE                       R9 P2
       55 CAPTURE                          REF R7
       56 CAPTURE                          REF R6
       57 SETTABLEKS                       R9 R8 K17 ["deregister"]
       59 CLOSEUPVALS                      R6
       60 RETURN                           R8 1
