PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 DUPTABLE                         R3 K1 [{"count"}]
        3 SETTABLEKS                       R1 R3 K0 ["count"]
        5 NEWTABLE                         R4 0 2
        7 DUPTABLE                         R5 K8 [{["Uri"], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
        8 GETUPVAL                         R6 1
        9 SETTABLEKS                       R6 R5 K2 ["Uri"]
       11 GETUPVAL                         R6 2
       12 LOADK                            R8 K9 ["McpSettings"]
       13 GETTABLEKS                       R9 R2 K10 ["Title"]
       15 MOVE                             R10 R3
       16 NAMECALL                         R6 R6 K11 ["getText"]
       18 CALL                             R6 4 1
       19 SETTABLEKS                       R6 R5 K3 ["Text"]
       21 GETUPVAL                         R6 2
       22 LOADK                            R8 K9 ["McpSettings"]
       23 GETTABLEKS                       R9 R2 K4 ["Tooltip"]
       25 MOVE                             R10 R3
       26 NAMECALL                         R6 R6 K11 ["getText"]
       28 CALL                             R6 4 1
       29 SETTABLEKS                       R6 R5 K4 ["Tooltip"]
       31 SETTABLEKS                       R0 R5 K7 ["Value"]
       33 DUPTABLE                         R6 K8 [{["Uri"], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
       34 GETUPVAL                         R7 3
       35 SETTABLEKS                       R7 R6 K2 ["Uri"]
       37 GETUPVAL                         R7 2
       38 LOADK                            R9 K9 ["McpSettings"]
       39 LOADK                            R10 K12 ["ActiveClientCountTitle"]
       40 NAMECALL                         R7 R7 K11 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K3 ["Text"]
       45 GETUPVAL                         R7 2
       46 LOADK                            R9 K9 ["McpSettings"]
       47 LOADK                            R10 K13 ["ActiveClientCountTooltip"]
       48 NAMECALL                         R7 R7 K11 ["getText"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K4 ["Tooltip"]
       53 SETTABLEKS                       R1 R6 K7 ["Value"]
       55 SETLIST                          R4 R5 2 [1]
       57 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["Settings"]
        4 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R1 2
        9 JUMPIF                           R1 ; [+38]
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 3
       13 LOADK                            R3 K2 ["off"]
       14 LOADN                            R4 0
       15 CALL                             R2 2 3
       16 FORGPREP                         R2
       17 NEWTABLE                         R10 0 1
       19 GETTABLEKS                       R11 R6 K3 ["Uri"]
       21 SETLIST                          R10 R11 1 [1]
       23 NAMECALL                         R8 R0 K4 ["GetAsync"]
       25 CALL                             R8 2 1
       26 LENGTH                           R7 R8
       27 JUMPIFNOTEQKN                    R7 K5 [0] ; [+8]
       29 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R6
       33 GETIMPORT                        R7 K8 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-20]
       38 LENGTH                           R2 R1
       39 LOADN                            R3 0
       40 JUMPIFNOTLT                      R3 R2 ; [+5]
       42 MOVE                             R4 R1
       43 NAMECALL                         R2 R0 K9 ["CreateAsync"]
       45 CALL                             R2 2 0
       46 LOADB                            R2 1
       47 SETUPVAL                         R2 2
       48 GETUPVAL                         R1 4
       49 GETTABLEKS                       R1 R1 K10 ["written"]
       51 GETUPVAL                         R2 4
       52 GETTABLEKS                       R2 R2 K11 ["latest"]
       54 JUMPIFNOTEQ                      R1 R2 ; [+9]
       56 GETUPVAL                         R1 4
       57 GETTABLEKS                       R1 R1 K12 ["writtenCount"]
       59 GETUPVAL                         R2 4
       60 GETTABLEKS                       R2 R2 K13 ["latestCount"]
       62 JUMPIFEQ                         R1 R2 ; [+21]
       64 GETUPVAL                         R1 4
       65 GETTABLEKS                       R1 R1 K11 ["latest"]
       67 GETUPVAL                         R2 4
       68 GETTABLEKS                       R2 R2 K13 ["latestCount"]
       70 GETUPVAL                         R5 3
       71 MOVE                             R6 R1
       72 MOVE                             R7 R2
       73 CALL                             R5 2 1
       74 NAMECALL                         R3 R0 K14 ["UpdateAsync"]
       76 CALL                             R3 2 0
       77 GETUPVAL                         R3 4
       78 SETTABLEKS                       R1 R3 K10 ["written"]
       80 GETUPVAL                         R3 4
       81 SETTABLEKS                       R2 R3 K12 ["writtenCount"]
       83 JUMPBACK                         ; [-36]
       84 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 LOADB                            R2 0
       10 SETUPVAL                         R2 5
       11 JUMPIF                           R0 ; [+8]
       12 GETUPVAL                         R2 6
       13 GETTABLEKS                       R2 R2 K2 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETIMPORT                        R2 K4 [warn]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["latest"]
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTEQKS                    R0 K1 ["connected"] ; [+3]
        6 MOVE                             R3 R1
        7 JUMP                             ; [+1]
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["latestCount"]
       11 GETUPVAL                         R2 1
       12 JUMPIF                           R2 ; [+16]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["written"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["latest"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+10]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K4 ["writtenCount"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K2 ["latestCount"]
       27 JUMPIFNOTEQ                      R2 R3 ; [+2]
       29 RETURN                           R0 0
       30 LOADB                            R2 1
       31 SETUPVAL                         R2 1
       32 GETIMPORT                        R2 K7 [task.spawn]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U6
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 DUPTABLE                         R3 K7 [{[1] = "off", ["latestCount"] = 0, ["written"] = , ["writtenCount"] = }]
        2 LOADB                            R4 0
        3 LOADB                            R5 0
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          REF R5
       12 CAPTURE                          REF R2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R4
       15 CAPTURE                          VAL R6
       16 CAPTURE                          UPVAL U3
       17 CLOSEUPVALS                      R2
       18 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K15 [{["DataModel"] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Settings", ["ItemId"] = "MCPStatus"}]
       15 DUPTABLE                         R3 K17 [{["DataModel"] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Settings", ["ItemId"] = "MCPActiveClientCount"}]
       16 DUPTABLE                         R4 K23 [{"off", "indeterminate", "ready", "connected", "error"}]
       17 DUPTABLE                         R5 K28 [{["Title"] = "StatusTitleOff", ["Tooltip"] = "StatusTooltipOff"}]
       18 SETTABLEKS                       R5 R4 K18 ["off"]
       20 DUPTABLE                         R5 K31 [{["Title"] = "StatusTitleIndeterminate", ["Tooltip"] = "StatusTooltipIndeterminate"}]
       21 SETTABLEKS                       R5 R4 K19 ["indeterminate"]
       23 DUPTABLE                         R5 K34 [{["Title"] = "StatusTitleReady", ["Tooltip"] = "StatusTooltipReady"}]
       24 SETTABLEKS                       R5 R4 K20 ["ready"]
       26 DUPTABLE                         R5 K37 [{["Title"] = "StatusTitleConnected", ["Tooltip"] = "StatusTooltipConnected"}]
       27 SETTABLEKS                       R5 R4 K21 ["connected"]
       29 DUPTABLE                         R5 K40 [{["Title"] = "StatusTitleError", ["Tooltip"] = "StatusTooltipError"}]
       30 SETTABLEKS                       R5 R4 K22 ["error"]
       32 DUPCLOSURE                       R5 K41 [PROTO_4]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 DUPTABLE                         R6 K43 [{"new"}]
       38 SETTABLEKS                       R5 R6 K42 ["new"]
       40 RETURN                           R6 1
