PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        7 GETTABLEKS                       R2 R2 K2 ["MetaBreakpointChanged"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["ContinueExecution"]
        2 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        7 GETTABLEKS                       R2 R2 K2 ["MetaBreakpointChanged"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["RemoveOnHit"]
        2 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R0 K1 ["mockMetaBreakpointManager"]
        7 GETTABLEKS                       R2 R2 K2 ["MetaBreakpointChanged"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["mockMetaBreakpointManager"]
        2 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["ContinueExecution"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+4]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K1 ["ContinueExecution"]
       14 GETTABLEKS                       R1 R0 K2 ["IsLogpoint"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+4]
       18 LOADB                            R1 0
       19 SETTABLEKS                       R1 R0 K2 ["IsLogpoint"]
       21 GETTABLEKS                       R1 R0 K3 ["RemoveOnHit"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+4]
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K3 ["RemoveOnHit"]
       28 DUPTABLE                         R1 K9 [{"Script", "Line", "Condition", "Id", "LogMessage", "Enabled", "ContinueExecution", "IsLogpoint", "RemoveOnHit"}]
       29 GETTABLEKS                       R3 R0 K4 ["Script"]
       31 ORK                              R2 R3 K10 ["1234-5678-9ABC"]
       32 SETTABLEKS                       R2 R1 K4 ["Script"]
       34 GETTABLEKS                       R3 R0 K5 ["Line"]
       36 ORK                              R2 R3 K11 [1]
       37 SETTABLEKS                       R2 R1 K5 ["Line"]
       39 GETTABLEKS                       R3 R0 K6 ["Condition"]
       41 ORK                              R2 R3 K12 [""]
       42 SETTABLEKS                       R2 R1 K6 ["Condition"]
       44 GETTABLEKS                       R3 R0 K7 ["Id"]
       46 ORK                              R2 R3 K11 [1]
       47 SETTABLEKS                       R2 R1 K7 ["Id"]
       49 GETTABLEKS                       R3 R0 K8 ["LogMessage"]
       51 ORK                              R2 R3 K12 [""]
       52 SETTABLEKS                       R2 R1 K8 ["LogMessage"]
       54 GETTABLEKS                       R2 R0 K0 ["Enabled"]
       56 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       58 GETTABLEKS                       R2 R0 K1 ["ContinueExecution"]
       60 SETTABLEKS                       R2 R1 K1 ["ContinueExecution"]
       62 GETTABLEKS                       R2 R0 K2 ["IsLogpoint"]
       64 SETTABLEKS                       R2 R1 K2 ["IsLogpoint"]
       66 GETTABLEKS                       R2 R0 K3 ["RemoveOnHit"]
       68 SETTABLEKS                       R2 R1 K3 ["RemoveOnHit"]
       70 GETUPVAL                         R4 0
       71 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       73 MOVE                             R3 R1
       74 GETIMPORT                        R2 K14 [setmetatable]
       76 CALL                             R2 2 0
       77 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K2 ["SetEnabled"]
        8 DUPCLOSURE                       R1 K3 [PROTO_1]
        9 SETTABLEKS                       R1 R0 K4 ["SetContinueExecution"]
       11 DUPCLOSURE                       R1 K5 [PROTO_2]
       12 SETTABLEKS                       R1 R0 K6 ["SetRemoveOnHit"]
       14 DUPCLOSURE                       R1 K7 [PROTO_3]
       15 SETTABLEKS                       R1 R0 K8 ["SetMockMetaBreakpointManager"]
       17 DUPCLOSURE                       R1 K9 [PROTO_4]
       18 SETTABLEKS                       R1 R0 K10 ["GetContextBreakpoints"]
       20 DUPCLOSURE                       R1 K11 [PROTO_5]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K12 ["new"]
       24 RETURN                           R0 1
