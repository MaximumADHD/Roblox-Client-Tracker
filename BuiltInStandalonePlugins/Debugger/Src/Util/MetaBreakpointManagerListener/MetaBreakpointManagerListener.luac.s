PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fromMetaBreakpoint"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["store"]
        7 NAMECALL                         R3 R3 K2 ["getState"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R0 K1 ["store"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R7 R3 K3 ["Common"]
       15 GETTABLEKS                       R7 R7 K4 ["currentDebuggerConnectionId"]
       17 MOVE                             R8 R2
       18 CALL                             R6 2 -1
       19 NAMECALL                         R4 R4 K5 ["dispatch"]
       21 CALL                             R4 -1 0
       22 GETTABLEKS                       R4 R0 K1 ["store"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R7 R1 K6 ["Script"]
       27 LOADK                            R8 K7 [""]
       28 CALL                             R6 2 -1
       29 NAMECALL                         R4 R4 K5 ["dispatch"]
       31 CALL                             R4 -1 0
       32 MOVE                             R6 R1
       33 NAMECALL                         R4 R0 K8 ["updateScriptWatcher"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R1 K0 ["GetContextBreakpoints"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [pairs]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 GETTABLEKS                       R8 R7 K3 ["connectionId"]
       10 GETTABLEKS                       R9 R7 K4 ["breakpoints"]
       12 GETIMPORT                        R10 K6 [ipairs]
       14 MOVE                             R11 R9
       15 CALL                             R10 1 3
       16 FORGPREP_INEXT                   R10
       17 GETTABLEKS                       R15 R0 K7 ["_crossDmScriptChangeListenerService"]
       19 GETTABLEKS                       R17 R14 K8 ["Script"]
       21 MOVE                             R18 R8
       22 GETTABLEKS                       R19 R14 K9 ["Line"]
       24 NAMECALL                         R15 R15 K10 ["StartWatchingScriptLine"]
       26 CALL                             R15 4 0
       27 FORGLOOP                         R10 2 [inext] ; [-11]
       29 FORGLOOP                         R3 2 ; [-22]
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fromMetaBreakpoint"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R0 K1 ["updateScriptWatcher"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R0 K2 ["store"]
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R2
       13 CALL                             R5 1 -1
       14 NAMECALL                         R3 R3 K3 ["dispatch"]
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["store"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R5 R1 K1 ["Id"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K2 ["dispatch"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onMetaBreakpointAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onMetaBreakpointChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["onMetaBreakpointChanged"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onMetaBreakpointRemoved"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+6]
        2 GETIMPORT                        R3 K1 [game]
        4 LOADK                            R5 K2 ["MetaBreakpointManager"]
        5 NAMECALL                         R3 R3 K3 ["GetService"]
        7 CALL                             R3 2 1
        8 MOVE                             R4 R2
        9 JUMPIF                           R4 ; [+6]
       10 GETIMPORT                        R4 K1 [game]
       12 LOADK                            R6 K4 ["CrossDMScriptChangeListener"]
       13 NAMECALL                         R4 R4 K3 ["GetService"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R0 K5 ["_crossDmScriptChangeListenerService"]
       18 GETTABLEKS                       R4 R3 K6 ["MetaBreakpointAdded"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R4 R4 K7 ["Connect"]
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R0 K8 ["_metaBreakpointAddedConnection"]
       27 GETTABLEKS                       R4 R3 K9 ["MetaBreakpointChanged"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R4 R4 K7 ["Connect"]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R0 K10 ["_metaBreakpointChangedConnection"]
       36 GETTABLEKS                       R4 R3 K11 ["MetaBreakpointSetChanged"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R4 R4 K7 ["Connect"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R0 K12 ["_metaBreakpointSetChangedConnection"]
       45 GETTABLEKS                       R4 R3 K13 ["MetaBreakpointRemoved"]
       47 NEWCLOSURE                       R6 P3
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R4 R4 K7 ["Connect"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R0 K14 ["_metaBreakpointRemovedConnection"]
       54 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_metaBreakpointAddedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_metaBreakpointAddedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_metaBreakpointAddedConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_metaBreakpointRemovedConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_metaBreakpointRemovedConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_metaBreakpointRemovedConnection"]
       22 GETTABLEKS                       R1 R0 K3 ["_metaBreakpointChangedConnection"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["_metaBreakpointChangedConnection"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["_metaBreakpointChangedConnection"]
       33 GETTABLEKS                       R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETTABLEKS                       R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
       38 NAMECALL                         R1 R1 K1 ["Disconnect"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K4 ["_metaBreakpointSetChangedConnection"]
       44 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R3 K1 [{"store"}]
        1 SETTABLEKS                       R0 R3 K0 ["store"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R3
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 CALL                             R4 3 0
        8 GETUPVAL                         R6 1
        9 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K3 [setmetatable]
       14 CALL                             R4 2 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Actions"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R0 K6 ["Models"]
       15 GETTABLEKS                       R3 R3 K7 ["MetaBreakpoint"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K8 ["BreakpointsWindow"]
       22 GETTABLEKS                       R4 R4 K9 ["AddBreakpoint"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["BreakpointsWindow"]
       29 GETTABLEKS                       R5 R5 K10 ["ModifyBreakpoint"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K8 ["BreakpointsWindow"]
       36 GETTABLEKS                       R6 R6 K11 ["DeleteBreakpoint"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K12 ["Common"]
       43 GETTABLEKS                       R7 R7 K13 ["SetFilenameForGuid"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 8 0
       48 SETTABLEKS                       R7 R7 K14 ["__index"]
       50 DUPCLOSURE                       R8 K15 [PROTO_0]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R8 R7 K16 ["onMetaBreakpointAdded"]
       56 DUPCLOSURE                       R8 K17 [PROTO_1]
       57 SETTABLEKS                       R8 R7 K18 ["updateScriptWatcher"]
       59 DUPCLOSURE                       R8 K19 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R8 R7 K20 ["onMetaBreakpointChanged"]
       64 DUPCLOSURE                       R8 K21 [PROTO_3]
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R8 R7 K22 ["onMetaBreakpointRemoved"]
       68 DUPCLOSURE                       R8 K23 [PROTO_8]
       69 DUPCLOSURE                       R9 K24 [PROTO_9]
       70 SETTABLEKS                       R9 R7 K25 ["destroy"]
       72 DUPCLOSURE                       R9 K26 [PROTO_10]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R9 R7 K27 ["new"]
       77 RETURN                           R7 1
