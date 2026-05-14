PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
        2 GETTABLEKS                       R2 R2 K1 ["toolbar"]
        4 SETTABLEKS                       R2 R0 K1 ["toolbar"]
        6 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
        8 GETTABLEKS                       R2 R2 K2 ["mainButton"]
       10 SETTABLEKS                       R2 R0 K2 ["mainButton"]
       12 GETTABLEKS                       R2 R0 K2 ["mainButton"]
       14 GETTABLEKS                       R4 R0 K3 ["state"]
       16 GETTABLEKS                       R4 R4 K4 ["enabled"]
       18 NAMECALL                         R2 R2 K5 ["SetActive"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
       23 GETTABLEKS                       R2 R2 K6 ["mainButtonClickedSignal"]
       25 GETTABLEKS                       R4 R0 K7 ["toggleEnabled"]
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+17]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["textDocumentDidChangeConnection"]
        4 JUMPIF                           R1 ; [+13]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["TextDocumentDidChange"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["onScriptChangedCallback"]
       12 NAMECALL                         R2 R2 K3 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K0 ["textDocumentDidChangeConnection"]
       17 RETURN                           R0 0
       18 JUMPIF                           R0 ; [+14]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["textDocumentDidChangeConnection"]
       22 JUMPIFNOT                        R1 ; [+10]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["textDocumentDidChangeConnection"]
       26 NAMECALL                         R1 R1 K4 ["Disconnect"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 0
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K0 ["textDocumentDidChangeConnection"]
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["R15Migrator"]
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["onScriptAnalysisCallback"]
        6 NAMECALL                         R0 R0 K2 ["RegisterScriptAnalysisCallback"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["R15Migrator"]
        2 NAMECALL                         R0 R0 K1 ["DeregisterScriptAnalysisCallback"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 LOADNIL                          R2
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETUPVAL                         R3 0
        4 LOADK                            R5 K0 ["R15Migrator"]
        5 NAMECALL                         R3 R3 K1 ["IsScriptAnalysisCallbackRegistered"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+22]
        9 GETIMPORT                        R3 K3 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CALL                             R3 1 2
       15 MOVE                             R1 R3
       16 MOVE                             R2 R4
       17 JUMP                             ; [+13]
       18 GETUPVAL                         R3 0
       19 LOADK                            R5 K0 ["R15Migrator"]
       20 NAMECALL                         R3 R3 K1 ["IsScriptAnalysisCallbackRegistered"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETIMPORT                        R3 K3 [pcall]
       26 DUPCLOSURE                       R4 K4 [PROTO_3]
       27 CAPTURE                          UPVAL U0
       28 CALL                             R3 1 2
       29 MOVE                             R1 R3
       30 MOVE                             R2 R4
       31 JUMPIF                           R1 ; [+4]
       32 GETIMPORT                        R3 K6 [warn]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isRescan"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setScriptAnalysisEnabled"]
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["setScriptAnalysisEnabled"]
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 DUPTABLE                         R2 K4 [{"scanComplete"}]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K3 ["scanComplete"]
       21 NAMECALL                         R0 R0 K5 ["setState"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K6 ["store"]
       27 GETUPVAL                         R2 1
       28 LOADB                            R3 0
       29 CALL                             R2 1 -1
       30 NAMECALL                         R0 R0 K7 ["dispatch"]
       32 CALL                             R0 -1 0
       33 GETIMPORT                        R0 K9 [game]
       35 LOADK                            R2 K10 ["Workspace"]
       36 NAMECALL                         R0 R0 K11 ["GetService"]
       38 CALL                             R0 2 1
       39 GETIMPORT                        R2 K15 [Enum.AvatarUnificationMode.Enabled]
       41 NAMECALL                         R0 R0 K16 ["SetAvatarUnificationMode"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["analytics"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["networkInterface"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R2 3 -1
       14 NAMECALL                         R0 R0 K3 ["dispatch"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isRescan", "scanComplete"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isRescan"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["scanComplete"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["store"]
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 -1
       16 NAMECALL                         R0 R0 K5 ["dispatch"]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["state"]
        8 GETTABLEKS                       R0 R0 K3 ["enabled"]
       10 JUMPIFNOT                        R0 ; [+11]
       11 GETUPVAL                         R0 1
       12 GETIMPORT                        R1 K6 [os.time]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K7 ["StartTime"]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K8 ["setScriptDocumentChangedEnabled"]
       20 LOADB                            R1 1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K2 ["state"]
       25 GETTABLEKS                       R0 R0 K9 ["scanComplete"]
       27 JUMPIF                           R0 ; [+6]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K2 ["state"]
       31 GETTABLEKS                       R0 R0 K3 ["enabled"]
       33 JUMPIF                           R0 ; [+9]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K10 ["setScriptAnalysisEnabled"]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K2 ["state"]
       40 GETTABLEKS                       R1 R1 K3 ["enabled"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["setScriptAnalysisEnabled"]
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K4 ["setScriptDocumentChangedEnabled"]
       16 LOADB                            R1 0
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K5 ["analytics"]
       21 LOADK                            R2 K6 ["onPluginClosed"]
       22 NAMECALL                         R0 R0 K7 ["getHandler"]
       24 CALL                             R0 2 1
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["state"]
       10 GETTABLEKS                       R1 R1 K4 ["scanComplete"]
       12 JUMPIF                           R1 ; [+6]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["state"]
       16 GETTABLEKS                       R1 R1 K0 ["enabled"]
       18 JUMPIF                           R1 ; [+9]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["setScriptAnalysisEnabled"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K3 ["state"]
       25 GETTABLEKS                       R2 R2 K0 ["enabled"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+20]
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R0 K0 ["IsDescendantOf"]
        5 CALL                             R2 2 1
        6 NOT                              R1 R2
        7 JUMPIFNOT                        R1 ; [+14]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["isDescendantOfSaveFolder"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 NOT                              R1 R2
       14 JUMPIFNOT                        R1 ; [+7]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["AttributeUnificationScriptName"]
       18 NAMECALL                         R2 R0 K3 ["GetAttribute"]
       20 CALL                             R2 2 1
       21 NOT                              R1 R2
       22 RETURN                           R1 1

PROTO_13:
        0 NAMECALL                         R2 R0 K0 ["GetScript"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["includeScript"]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+13]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["store"]
       12 GETUPVAL                         R5 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["scriptConversionContext"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R1
       18 CALL                             R5 3 -1
       19 NAMECALL                         R3 R3 K4 ["dispatch"]
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["includeScript"]
        3 GETTABLEKS                       R2 R0 K1 ["script"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+6]
        7 DUPTABLE                         R1 K3 [{"diagnostics"}]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["diagnostics"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R3 R0 K1 ["script"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["localization"]
       19 NAMECALL                         R1 R1 K5 ["ScanScript"]
       21 CALL                             R1 3 1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K6 ["store"]
       25 GETUPVAL                         R4 2
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["scriptConversionContext"]
       29 GETTABLEKS                       R6 R0 K1 ["script"]
       31 MOVE                             R7 R1
       32 CALL                             R4 3 -1
       33 NAMECALL                         R2 R2 K8 ["dispatch"]
       35 CALL                             R2 -1 0
       36 NAMECALL                         R2 R1 K9 ["GetSize"]
       38 CALL                             R2 1 1
       39 LOADN                            R3 0
       40 JUMPIFNOTLT                      R3 R2 ; [+8]
       42 DUPTABLE                         R2 K3 [{"diagnostics"}]
       43 NAMECALL                         R3 R1 K10 ["GetDataForLinter"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R2 K2 ["diagnostics"]
       48 RETURN                           R2 1
       49 DUPTABLE                         R2 K3 [{"diagnostics"}]
       50 NEWTABLE                         R3 0 0
       52 SETTABLEKS                       R3 R2 K2 ["diagnostics"]
       54 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["scriptConversionContext"]
        7 MOVE                             R5 R0
        8 CALL                             R3 2 -1
        9 NAMECALL                         R1 R1 K2 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["state"]
       12 GETTABLEKS                       R1 R1 K5 ["scanComplete"]
       14 JUMPIF                           R1 ; [+6]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["state"]
       18 GETTABLEKS                       R1 R1 K0 ["enabled"]
       20 JUMPIF                           R1 ; [+9]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["setScriptAnalysisEnabled"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K4 ["state"]
       27 GETTABLEKS                       R2 R2 K0 ["enabled"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["toggleEnabled"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Summary"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K0 ["publishedDateTime"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["store"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K2 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishTime"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 NOT                              R3 R1
        9 JUMPIF                           R3 ; [+3]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["isR15ConvertedExperience"]
       13 FASTCALL1                        ASSERT R3 ; [+2]
       14 GETIMPORT                        R2 K3 [assert]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["store"]
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R2 K5 ["dispatch"]
       25 CALL                             R2 -1 0
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K6 ["getAllTabsData"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K7 ["localization"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U3
       35 CALL                             R2 2 1
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K4 ["store"]
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R2
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R3 K5 ["dispatch"]
       44 CALL                             R3 -1 0
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K4 ["store"]
       48 GETUPVAL                         R5 5
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K8 ["Summary"]
       52 CALL                             R5 1 -1
       53 NAMECALL                         R3 R3 K5 ["dispatch"]
       55 CALL                             R3 -1 0
       56 JUMPIF                           R1 ; [+1]
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 6
       59 GETIMPORT                        R4 K10 [game]
       61 GETTABLEKS                       R4 R4 K11 ["GameId"]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K12 ["api"]
       66 NAMECALL                         R5 R5 K13 ["get"]
       68 CALL                             R5 1 1
       69 NEWCLOSURE                       R6 P1
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U8
       74 CALL                             R3 3 0
       75 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPublishTime"]
        3 GETIMPORT                        R1 K3 [DateTime.now]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+18]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setScriptAnalysisEnabled"]
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["setScriptDocumentChangedEnabled"]
       14 LOADB                            R1 0
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K4 ["analytics"]
       19 LOADK                            R2 K5 ["onPluginClosed"]
       20 NAMECALL                         R0 R0 K6 ["getHandler"]
       22 CALL                             R0 2 1
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K7 ["communication"]
       27 NAMECALL                         R0 R0 K8 ["cleanup"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R2 K3 [{"enabled", "scanComplete", "isRescan"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["scanComplete"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["isRescan"]
       10 SETTABLEKS                       R2 R0 K4 ["state"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R0 K5 ["setScriptDocumentChangedEnabled"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["setScriptAnalysisEnabled"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R2 R0 K7 ["startScan"]
       28 NEWCLOSURE                       R2 P3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 SETTABLEKS                       R2 R0 K8 ["resetPlugin"]
       33 NEWCLOSURE                       R2 P4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U4
       36 SETTABLEKS                       R2 R0 K9 ["toggleEnabled"]
       38 NEWCLOSURE                       R2 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K10 ["onClose"]
       42 NEWCLOSURE                       R2 P6
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K11 ["onRestore"]
       46 DUPCLOSURE                       R2 K12 [PROTO_12]
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 SETTABLEKS                       R2 R0 K13 ["includeScript"]
       52 NEWCLOSURE                       R2 P8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 SETTABLEKS                       R2 R0 K14 ["onScriptChangedCallback"]
       57 NEWCLOSURE                       R2 P9
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U10
       61 SETTABLEKS                       R2 R0 K15 ["onScriptAnalysisCallback"]
       63 NEWCLOSURE                       R2 P10
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U10
       66 SETTABLEKS                       R2 R0 K16 ["onScriptDestroyingCallback"]
       68 NEWCLOSURE                       R2 P11
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R2 R0 K17 ["onWidgetEnabledChanged"]
       72 GETUPVAL                         R2 11
       73 GETTABLEKS                       R2 R2 K18 ["Store"]
       75 GETTABLEKS                       R2 R2 K19 ["new"]
       77 GETUPVAL                         R3 12
       78 LOADNIL                          R4
       79 NEWTABLE                         R5 0 1
       81 GETUPVAL                         R6 11
       82 GETTABLEKS                       R6 R6 K20 ["thunkMiddleware"]
       84 SETLIST                          R5 R6 1 [1]
       86 LOADNIL                          R6
       87 CALL                             R2 4 1
       88 SETTABLEKS                       R2 R0 K21 ["store"]
       90 GETUPVAL                         R2 13
       91 GETTABLEKS                       R2 R2 K22 ["Localization"]
       93 GETTABLEKS                       R2 R2 K19 ["new"]
       95 DUPTABLE                         R3 K26 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       96 GETUPVAL                         R4 14
       97 SETTABLEKS                       R4 R3 K23 ["stringResourceTable"]
       99 GETUPVAL                         R4 15
      100 SETTABLEKS                       R4 R3 K24 ["translationResourceTable"]
      102 LOADK                            R4 K27 ["R15Migrator"]
      103 SETTABLEKS                       R4 R3 K25 ["pluginName"]
      105 CALL                             R2 1 1
      106 SETTABLEKS                       R2 R0 K28 ["localization"]
      108 GETUPVAL                         R2 13
      109 GETTABLEKS                       R2 R2 K29 ["Analytics"]
      111 GETTABLEKS                       R2 R2 K19 ["new"]
      113 GETUPVAL                         R3 16
      114 CALL                             R2 1 1
      115 SETTABLEKS                       R2 R0 K30 ["analytics"]
      117 GETUPVAL                         R2 17
      118 GETTABLEKS                       R2 R2 K19 ["new"]
      120 GETTABLEKS                       R3 R0 K16 ["onScriptDestroyingCallback"]
      122 CALL                             R2 1 1
      123 SETTABLEKS                       R2 R0 K31 ["scriptConversionContext"]
      125 GETUPVAL                         R2 18
      126 GETTABLEKS                       R2 R2 K19 ["new"]
      128 CALL                             R2 0 1
      129 SETTABLEKS                       R2 R0 K32 ["networkInterface"]
      131 GETUPVAL                         R2 13
      132 GETTABLEKS                       R2 R2 K33 ["API"]
      134 GETTABLEKS                       R2 R2 K19 ["new"]
      136 CALL                             R2 0 1
      137 SETTABLEKS                       R2 R0 K34 ["api"]
      139 GETUPVAL                         R2 19
      140 GETTABLEKS                       R2 R2 K19 ["new"]
      142 GETUPVAL                         R3 20
      143 GETTABLEKS                       R3 R3 K35 ["CrossPluginCommunicationName"]
      145 CALL                             R2 1 1
      146 SETTABLEKS                       R2 R0 K36 ["communication"]
      148 GETTABLEKS                       R2 R0 K36 ["communication"]
      150 GETUPVAL                         R4 20
      151 GETTABLEKS                       R4 R4 K37 ["CrossPluginCommunicationInstructions"]
      153 GETTABLEKS                       R4 R4 K38 ["Open"]
      155 NEWCLOSURE                       R5 P12
      156 CAPTURE                          VAL R0
      157 NAMECALL                         R2 R2 K39 ["Connect"]
      159 CALL                             R2 3 0
      160 NEWCLOSURE                       R2 P13
      161 CAPTURE                          UPVAL U6
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U21
      164 CAPTURE                          UPVAL U22
      165 CAPTURE                          UPVAL U23
      166 CAPTURE                          UPVAL U24
      167 CAPTURE                          UPVAL U25
      168 CAPTURE                          UPVAL U26
      169 CAPTURE                          UPVAL U27
      170 GETUPVAL                         R3 28
      171 GETTABLEKS                       R3 R3 K40 ["IsR15ConvertedExperience"]
      173 GETTABLEKS                       R5 R1 K41 ["Plugin"]
      175 GETIMPORT                        R6 K43 [game]
      177 GETTABLEKS                       R6 R6 K44 ["GameId"]
      179 NAMECALL                         R3 R3 K45 ["getBooleanSetting"]
      181 CALL                             R3 3 1
      182 SETTABLEKS                       R3 R0 K46 ["isR15ConvertedExperience"]
      184 MOVE                             R3 R2
      185 CALL                             R3 0 0
      186 GETTABLEKS                       R3 R0 K36 ["communication"]
      188 GETUPVAL                         R5 20
      189 GETTABLEKS                       R5 R5 K37 ["CrossPluginCommunicationInstructions"]
      191 GETTABLEKS                       R5 R5 K47 ["Published"]
      193 NEWCLOSURE                       R6 P14
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          VAL R2
      196 NAMECALL                         R3 R3 K39 ["Connect"]
      198 CALL                             R3 3 0
      199 GETTABLEKS                       R3 R1 K41 ["Plugin"]
      201 GETTABLEKS                       R3 R3 K48 ["Unloading"]
      203 NEWCLOSURE                       R5 P15
      204 CAPTURE                          VAL R0
      205 NAMECALL                         R3 R3 K39 ["Connect"]
      207 CALL                             R3 2 0
      208 MOVE                             R5 R1
      209 NAMECALL                         R3 R0 K49 ["initToolbarAndButton"]
      211 CALL                             R3 2 0
      212 GETTABLEKS                       R3 R0 K21 ["store"]
      214 GETUPVAL                         R5 29
      215 GETTABLEKS                       R6 R0 K32 ["networkInterface"]
      217 CALL                             R5 1 -1
      218 NAMECALL                         R3 R3 K50 ["dispatch"]
      220 CALL                             R3 -1 0
      221 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["scanComplete"]
        4 GETTABLEKS                       R3 R0 K2 ["isR15ConvertedExperience"]
        6 JUMPIFNOT                        R3 ; [+32]
        7 DUPTABLE                         R3 K5 [{"MainView", "LoadingScreen"}]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K6 ["createElement"]
       12 GETUPVAL                         R5 1
       13 DUPTABLE                         R6 K8 [{"OnResetPlugin"}]
       14 GETTABLEKS                       R7 R0 K9 ["resetPlugin"]
       16 SETTABLEKS                       R7 R6 K7 ["OnResetPlugin"]
       18 CALL                             R4 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K3 ["MainView"]
       23 JUMPIF                           R2 ; [+11]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K6 ["createElement"]
       27 GETUPVAL                         R5 2
       28 DUPTABLE                         R6 K11 [{"StartScan"}]
       29 GETTABLEKS                       R7 R0 K12 ["startScan"]
       31 SETTABLEKS                       R7 R6 K10 ["StartScan"]
       33 CALL                             R4 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K4 ["LoadingScreen"]
       38 RETURN                           R3 1
       39 DUPTABLE                         R3 K14 [{"InitialFlow"}]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K6 ["createElement"]
       43 GETUPVAL                         R5 3
       44 NEWTABLE                         R6 0 0
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K13 ["InitialFlow"]
       49 RETURN                           R3 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 9
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 GETTABLEKS                       R13 R0 K10 ["scriptConversionContext"]
       39 GETTABLEKS                       R14 R0 K11 ["networkInterface"]
       41 GETTABLEKS                       R15 R0 K12 ["api"]
       43 SETLIST                          R6 R7 9 [1]
       45 DUPTABLE                         R7 K14 [{"MainWidget"}]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K15 ["createElement"]
       49 GETUPVAL                         R9 6
       50 NEWTABLE                         R10 16 0
       52 LOADK                            R11 K16 ["R15Migrator"]
       53 SETTABLEKS                       R11 R10 K17 ["Id"]
       55 SETTABLEKS                       R4 R10 K18 ["Enabled"]
       57 GETTABLEKS                       R11 R0 K8 ["localization"]
       59 LOADK                            R13 K2 ["Plugin"]
       60 LOADK                            R14 K19 ["Name"]
       61 NAMECALL                         R11 R11 K20 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K21 ["Title"]
       66 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       68 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       70 GETTABLEKS                       R11 R0 K26 ["onClose"]
       72 SETTABLEKS                       R11 R10 K27 ["OnClose"]
       74 LOADB                            R11 1
       75 SETTABLEKS                       R11 R10 K28 ["ShouldRestore"]
       77 GETTABLEKS                       R11 R1 K29 ["PluginLoaderContext"]
       79 GETTABLEKS                       R11 R11 K30 ["mainDockWidget"]
       81 SETTABLEKS                       R11 R10 K31 ["Widget"]
       83 GETTABLEKS                       R11 R0 K32 ["onRestore"]
       85 SETTABLEKS                       R11 R10 K33 ["OnWidgetRestored"]
       87 GETIMPORT                        R11 K35 [Vector2.new]
       89 LOADN                            R12 252
       90 LOADN                            R13 128
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K36 ["Size"]
       94 GETIMPORT                        R11 K39 [Enum.InitialDockState.Left]
       96 SETTABLEKS                       R11 R10 K37 ["InitialDockState"]
       98 GETIMPORT                        R11 K35 [Vector2.new]
      100 LOADN                            R12 252
      101 LOADN                            R13 128
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K40 ["MinSize"]
      105 GETUPVAL                         R11 5
      106 GETTABLEKS                       R11 R11 K41 ["Change"]
      108 GETTABLEKS                       R11 R11 K18 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R12 R10 R11
      113 NAMECALL                         R11 R0 K43 ["renderMain"]
      115 CALL                             R11 1 -1
      116 CALL                             R8 -1 1
      117 SETTABLEKS                       R8 R7 K13 ["MainWidget"]
      119 CALL                             R5 2 -1
      120 RETURN                           R5 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["mainButton"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptEditorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PluginDebugService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Src"]
       23 GETTABLEKS                       R4 R4 K11 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K12 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Roact"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R2 K12 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["Rodux"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R2 K12 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["Framework"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K16 ["UI"]
       49 GETTABLEKS                       R8 R7 K17 ["DockWidget"]
       51 GETTABLEKS                       R9 R6 K18 ["ContextServices"]
       53 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       55 GETTABLEKS                       R11 R9 K20 ["Mouse"]
       57 GETTABLEKS                       R12 R9 K21 ["Store"]
       59 GETTABLEKS                       R13 R6 K22 ["Util"]
       61 GETTABLEKS                       R13 R13 K23 ["CrossPluginCommunication"]
       63 GETIMPORT                        R14 K9 [require]
       65 GETTABLEKS                       R15 R2 K10 ["Src"]
       67 GETTABLEKS                       R15 R15 K24 ["Actions"]
       69 GETTABLEKS                       R15 R15 K25 ["SetScriptAnalyticsSent"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K9 [require]
       74 GETTABLEKS                       R16 R2 K10 ["Src"]
       76 GETTABLEKS                       R16 R16 K26 ["Components"]
       78 GETTABLEKS                       R16 R16 K27 ["MainView"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K9 [require]
       83 GETTABLEKS                       R17 R2 K10 ["Src"]
       85 GETTABLEKS                       R17 R17 K26 ["Components"]
       87 GETTABLEKS                       R17 R17 K28 ["LoadingScreen"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K9 [require]
       92 GETTABLEKS                       R18 R2 K10 ["Src"]
       94 GETTABLEKS                       R18 R18 K26 ["Components"]
       96 GETTABLEKS                       R18 R18 K29 ["InitialFlow"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R18 R2 K10 ["Src"]
      101 GETTABLEKS                       R18 R18 K30 ["Contexts"]
      103 GETIMPORT                        R19 K9 [require]
      105 GETTABLEKS                       R20 R18 K31 ["ScriptConversionContext"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K9 [require]
      110 GETTABLEKS                       R21 R18 K32 ["NetworkInterface"]
      112 CALL                             R20 1 1
      113 GETTABLEKS                       R21 R2 K10 ["Src"]
      115 GETTABLEKS                       R21 R21 K33 ["Thunks"]
      117 GETIMPORT                        R22 K9 [require]
      119 GETTABLEKS                       R23 R21 K34 ["OnDiagnosticsUpdated"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K9 [require]
      124 GETTABLEKS                       R24 R21 K35 ["UpdateDiagnosticsRanges"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K9 [require]
      129 GETTABLEKS                       R25 R21 K36 ["ScanAllAnimations"]
      131 CALL                             R24 1 1
      132 GETIMPORT                        R25 K9 [require]
      134 GETTABLEKS                       R26 R21 K37 ["ResetAll"]
      136 CALL                             R25 1 1
      137 GETIMPORT                        R26 K9 [require]
      139 GETTABLEKS                       R27 R21 K38 ["CheckAvatarType"]
      141 CALL                             R26 1 1
      142 GETIMPORT                        R27 K9 [require]
      144 GETTABLEKS                       R28 R2 K10 ["Src"]
      146 GETTABLEKS                       R28 R28 K24 ["Actions"]
      148 GETTABLEKS                       R28 R28 K39 ["SuccessfullyPublished"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K9 [require]
      153 GETTABLEKS                       R29 R2 K10 ["Src"]
      155 GETTABLEKS                       R29 R29 K24 ["Actions"]
      157 GETTABLEKS                       R29 R29 K40 ["SetExperienceData"]
      159 CALL                             R28 1 1
      160 GETIMPORT                        R29 K9 [require]
      162 GETTABLEKS                       R30 R2 K10 ["Src"]
      164 GETTABLEKS                       R30 R30 K24 ["Actions"]
      166 GETTABLEKS                       R30 R30 K41 ["SetAllTabsData"]
      168 CALL                             R29 1 1
      169 GETIMPORT                        R30 K9 [require]
      171 GETTABLEKS                       R31 R2 K10 ["Src"]
      173 GETTABLEKS                       R31 R31 K24 ["Actions"]
      175 GETTABLEKS                       R31 R31 K42 ["SetSelectedTab"]
      177 CALL                             R30 1 1
      178 GETIMPORT                        R31 K9 [require]
      180 GETTABLEKS                       R32 R2 K10 ["Src"]
      182 GETTABLEKS                       R32 R32 K22 ["Util"]
      184 GETTABLEKS                       R32 R32 K43 ["ScriptAnalysis"]
      186 GETTABLEKS                       R32 R32 K44 ["ScriptScanner"]
      188 CALL                             R31 1 1
      189 GETIMPORT                        R32 K9 [require]
      191 GETTABLEKS                       R33 R2 K10 ["Src"]
      193 GETTABLEKS                       R33 R33 K22 ["Util"]
      195 GETTABLEKS                       R33 R33 K43 ["ScriptAnalysis"]
      197 GETTABLEKS                       R33 R33 K45 ["Constants"]
      199 CALL                             R32 1 1
      200 GETIMPORT                        R33 K9 [require]
      202 GETTABLEKS                       R34 R2 K10 ["Src"]
      204 GETTABLEKS                       R34 R34 K22 ["Util"]
      206 GETTABLEKS                       R34 R34 K46 ["AnalyticsGlobals"]
      208 CALL                             R33 1 1
      209 GETIMPORT                        R34 K9 [require]
      211 GETTABLEKS                       R35 R2 K10 ["Src"]
      213 GETTABLEKS                       R35 R35 K22 ["Util"]
      215 GETTABLEKS                       R35 R35 K47 ["PluginSettings"]
      217 CALL                             R34 1 1
      218 GETIMPORT                        R35 K9 [require]
      220 GETTABLEKS                       R36 R2 K10 ["Src"]
      222 GETTABLEKS                       R36 R36 K22 ["Util"]
      224 GETTABLEKS                       R36 R36 K48 ["SaveInterface"]
      226 CALL                             R35 1 1
      227 GETIMPORT                        R36 K9 [require]
      229 GETTABLEKS                       R37 R2 K10 ["Src"]
      231 GETTABLEKS                       R37 R37 K22 ["Util"]
      233 GETTABLEKS                       R37 R37 K49 ["TabsData"]
      235 CALL                             R36 1 1
      236 GETIMPORT                        R37 K9 [require]
      238 GETTABLEKS                       R38 R2 K10 ["Src"]
      240 GETTABLEKS                       R38 R38 K22 ["Util"]
      242 GETTABLEKS                       R38 R38 K50 ["getExperienceData"]
      244 CALL                             R37 1 1
      245 GETIMPORT                        R38 K9 [require]
      247 GETTABLEKS                       R39 R2 K10 ["Src"]
      249 GETTABLEKS                       R39 R39 K22 ["Util"]
      251 GETTABLEKS                       R39 R39 K51 ["getLocalDateTime"]
      253 CALL                             R38 1 1
      254 GETIMPORT                        R39 K9 [require]
      256 GETTABLEKS                       R40 R2 K10 ["Src"]
      258 GETTABLEKS                       R40 R40 K52 ["Resources"]
      260 GETTABLEKS                       R40 R40 K45 ["Constants"]
      262 CALL                             R39 1 1
      263 GETIMPORT                        R40 K9 [require]
      265 GETTABLEKS                       R41 R2 K10 ["Src"]
      267 GETTABLEKS                       R41 R41 K53 ["Reducers"]
      269 GETTABLEKS                       R41 R41 K54 ["MainReducer"]
      271 CALL                             R40 1 1
      272 GETIMPORT                        R41 K9 [require]
      274 GETTABLEKS                       R42 R2 K10 ["Src"]
      276 GETTABLEKS                       R42 R42 K52 ["Resources"]
      278 GETTABLEKS                       R42 R42 K55 ["MakeTheme"]
      280 CALL                             R41 1 1
      281 GETIMPORT                        R42 K9 [require]
      283 GETTABLEKS                       R43 R2 K10 ["Src"]
      285 GETTABLEKS                       R43 R43 K52 ["Resources"]
      287 GETTABLEKS                       R43 R43 K56 ["createAnalyticsHandlers"]
      289 CALL                             R42 1 1
      290 GETTABLEKS                       R43 R2 K10 ["Src"]
      292 GETTABLEKS                       R43 R43 K52 ["Resources"]
      294 GETTABLEKS                       R43 R43 K57 ["Localization"]
      296 GETTABLEKS                       R43 R43 K58 ["SourceStrings"]
      298 GETTABLEKS                       R44 R2 K10 ["Src"]
      300 GETTABLEKS                       R44 R44 K52 ["Resources"]
      302 GETTABLEKS                       R44 R44 K57 ["Localization"]
      304 GETTABLEKS                       R44 R44 K59 ["LocalizedStrings"]
      306 GETTABLEKS                       R45 R4 K60 ["PureComponent"]
      308 LOADK                            R47 K61 ["MainPlugin"]
      309 NAMECALL                         R45 R45 K62 ["extend"]
      311 CALL                             R45 2 1
      312 DUPCLOSURE                       R46 K63 [PROTO_0]
      313 SETTABLEKS                       R46 R45 K64 ["initToolbarAndButton"]
      315 DUPCLOSURE                       R46 K65 [PROTO_23]
      316 CAPTURE                          VAL R0
      317 CAPTURE                          VAL R24
      318 CAPTURE                          VAL R14
      319 CAPTURE                          VAL R25
      320 CAPTURE                          VAL R33
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R35
      323 CAPTURE                          VAL R32
      324 CAPTURE                          VAL R23
      325 CAPTURE                          VAL R31
      326 CAPTURE                          VAL R22
      327 CAPTURE                          VAL R5
      328 CAPTURE                          VAL R40
      329 CAPTURE                          VAL R9
      330 CAPTURE                          VAL R43
      331 CAPTURE                          VAL R44
      332 CAPTURE                          VAL R42
      333 CAPTURE                          VAL R19
      334 CAPTURE                          VAL R20
      335 CAPTURE                          VAL R13
      336 CAPTURE                          VAL R39
      337 CAPTURE                          VAL R27
      338 CAPTURE                          VAL R36
      339 CAPTURE                          VAL R29
      340 CAPTURE                          VAL R30
      341 CAPTURE                          VAL R37
      342 CAPTURE                          VAL R38
      343 CAPTURE                          VAL R28
      344 CAPTURE                          VAL R34
      345 CAPTURE                          VAL R26
      346 SETTABLEKS                       R46 R45 K66 ["init"]
      348 DUPCLOSURE                       R46 K67 [PROTO_24]
      349 CAPTURE                          VAL R4
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R16
      352 CAPTURE                          VAL R17
      353 SETTABLEKS                       R46 R45 K68 ["renderMain"]
      355 DUPCLOSURE                       R46 K69 [PROTO_25]
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R10
      358 CAPTURE                          VAL R12
      359 CAPTURE                          VAL R11
      360 CAPTURE                          VAL R41
      361 CAPTURE                          VAL R4
      362 CAPTURE                          VAL R8
      363 SETTABLEKS                       R46 R45 K70 ["render"]
      365 DUPCLOSURE                       R46 K71 [PROTO_26]
      366 SETTABLEKS                       R46 R45 K72 ["didUpdate"]
      368 RETURN                           R45 1
