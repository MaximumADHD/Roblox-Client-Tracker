PROTO_0:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K0 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K0 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 2
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Settings"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NAMECALL                         R1 R0 K1 ["Connect"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 5
       17 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R2 K4 [table.insert]
       22 CALL                             R2 2 0
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 RETURN                           R0 1

PROTO_5:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 2
       11 GETUPVAL                         R3 2
       12 JUMPIF                           R3 ; [+2]
       13 CLOSEUPVALS                      R0
       14 RETURN                           R0 0
       15 JUMPIF                           R1 ; [+14]
       16 GETUPVAL                         R3 3
       17 LOADNIL                          R4
       18 CALL                             R3 1 0
       19 GETIMPORT                        R3 K3 [warn]
       21 LOADK                            R4 K4 ["Footer could not subscribe to %*: %*"]
       22 GETUPVAL                         R6 5
       23 MOVE                             R7 R2
       24 NAMECALL                         R4 R4 K5 ["format"]
       26 CALL                             R4 3 1
       27 CALL                             R3 1 0
       28 CLOSEUPVALS                      R0
       29 RETURN                           R0 0
       30 MOVE                             R3 R0
       31 GETIMPORT                        R4 K1 [pcall]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 CALL                             R4 1 2
       37 GETUPVAL                         R6 2
       38 JUMPIFNOT                        R6 ; [+8]
       39 JUMPIFNOTEQ                      R0 R3 ; [+7]
       41 GETUPVAL                         R6 3
       42 JUMPIFNOT                        R4 ; [+2]
       43 MOVE                             R7 R5
       44 JUMP                             ; [+1]
       45 LOADNIL                          R7
       46 CALL                             R6 1 0
       47 GETUPVAL                         R6 2
       48 JUMPIFNOT                        R6 ; [+10]
       49 JUMPIF                           R4 ; [+9]
       50 GETIMPORT                        R6 K3 [warn]
       52 LOADK                            R7 K6 ["Footer could not read %*: %*"]
       53 GETUPVAL                         R9 5
       54 MOVE                             R10 R5
       55 NAMECALL                         R7 R7 K5 ["format"]
       57 CALL                             R7 3 1
       58 CALL                             R6 1 0
       59 CLOSEUPVALS                      R0
       60 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K7 [{[1] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Settings", ["ItemId"]}]
        1 SETTABLEKS                       R0 R2 K6 ["ItemId"]
        3 GETIMPORT                        R3 K10 [task.spawn]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["Value"]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K4 [{"status", "text", "tooltip"}]
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K6 [type]
       10 CALL                             R5 1 1
       11 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+6]
       13 GETUPVAL                         R6 1
       14 GETTABLE                         R5 R6 R1
       15 JUMPIFNOT                        R5 ; [+2]
       16 MOVE                             R4 R1
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K8 ["unavailable"]
       19 SETTABLEKS                       R4 R3 K1 ["status"]
       21 JUMPIFNOT                        R0 ; [+11]
       22 GETTABLEKS                       R6 R0 K9 ["Text"]
       24 FASTCALL1                        TYPE R6 ; [+2]
       25 GETIMPORT                        R5 K6 [type]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+4]
       30 GETTABLEKS                       R4 R0 K9 ["Text"]
       32 JUMP                             ; [+1]
       33 LOADK                            R4 K10 [""]
       34 SETTABLEKS                       R4 R3 K2 ["text"]
       36 JUMPIFNOT                        R0 ; [+11]
       37 GETTABLEKS                       R6 R0 K11 ["Tooltip"]
       39 FASTCALL1                        TYPE R6 ; [+2]
       40 GETIMPORT                        R5 K6 [type]
       42 CALL                             R5 1 1
       43 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+4]
       45 GETTABLEKS                       R4 R0 K11 ["Tooltip"]
       47 JUMP                             ; [+1]
       48 LOADK                            R4 K10 [""]
       49 SETTABLEKS                       R4 R3 K3 ["tooltip"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["Value"]
        4 GETUPVAL                         R2 0
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K2 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["number"] ; [+12]
       12 LOADN                            R4 0
       13 JUMPIFNOTLE                      R4 R1 ; [+9]
       15 LOADK                            R4 K4 [Infinity]
       16 JUMPIFNOTLT                      R1 R4 ; [+6]
       18 MODK                             R4 R1 K5 [1]
       19 JUMPIFNOTEQKN                    R4 K6 [0] ; [+3]
       21 MOVE                             R3 R1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 NEWTABLE                         R1 0 0
        6 LOADNIL                          R2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          REF R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          REF R2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["Unloading"]
       14 MOVE                             R6 R3
       15 NAMECALL                         R4 R4 K1 ["Connect"]
       17 CALL                             R4 2 1
       18 MOVE                             R2 R4
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R5 3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 4
       23 LOADNIL                          R5
       24 CALL                             R4 1 0
       25 GETIMPORT                        R4 K3 [pcall]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          UPVAL U1
       29 CALL                             R4 1 2
       30 JUMPIFNOT                        R4 ; [+1]
       31 JUMPIF                           R5 ; [+6]
       32 GETIMPORT                        R6 K5 [warn]
       34 LOADK                            R7 K6 ["Footer could not access MCP settings"]
       35 CALL                             R6 1 0
       36 CLOSEUPVALS                      R0
       37 RETURN                           R3 1
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          REF R0
       41 CAPTURE                          VAL R1
       42 MOVE                             R7 R6
       43 LOADK                            R8 K7 ["MCPStatus"]
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U5
       47 CALL                             R7 2 0
       48 MOVE                             R7 R6
       49 LOADK                            R8 K8 ["MCPActiveClientCount"]
       50 NEWCLOSURE                       R9 P4
       51 CAPTURE                          UPVAL U4
       52 CALL                             R7 2 0
       53 CLOSEUPVALS                      R0
       54 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagMCPClientCountAsASetting"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["useState"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R8 0 2
       26 MOVE                             R9 R0
       27 MOVE                             R10 R1
       28 SETLIST                          R8 R9 2 [1]
       30 CALL                             R6 2 0
       31 DUPTABLE                         R6 K8 [{"enabled", "status", "activeClientCount", "text", "tooltip"}]
       32 SETTABLEKS                       R1 R6 K3 ["enabled"]
       34 GETTABLEKS                       R7 R2 K4 ["status"]
       36 SETTABLEKS                       R7 R6 K4 ["status"]
       38 SETTABLEKS                       R4 R6 K5 ["activeClientCount"]
       40 GETTABLEKS                       R7 R2 K6 ["text"]
       42 SETTABLEKS                       R7 R6 K6 ["text"]
       44 GETTABLEKS                       R7 R2 K7 ["tooltip"]
       46 SETTABLEKS                       R7 R6 K7 ["tooltip"]
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K16 [{["status"] = "unavailable", ["text"] = "", ["tooltip"] = ""}]
       24 DUPTABLE                         R4 K23 [{["off"] = True, ["indeterminate"] = True, ["ready"] = True, ["connected"] = True, ["error"] = True}]
       25 DUPCLOSURE                       R5 K24 [PROTO_10]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
