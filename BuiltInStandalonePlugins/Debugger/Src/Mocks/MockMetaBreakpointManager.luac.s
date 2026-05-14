PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MockMetaBreakpointsById"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 SETTABLE                         R0 R1 R2
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MockMetaBreakpointsById"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K3 ["MetaBreakpointAdded"]
       15 GETTABLEKS                       R1 R0 K3 ["MetaBreakpointAdded"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R1 R1 K4 ["Connect"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K2 ["new"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K5 ["MetaBreakpointChanged"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K2 ["new"]
       31 CALL                             R1 0 1
       32 SETTABLEKS                       R1 R0 K6 ["MetaBreakpointSetChanged"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K2 ["new"]
       37 CALL                             R1 0 1
       38 SETTABLEKS                       R1 R0 K7 ["MetaBreakpointRemoved"]
       40 NEWTABLE                         R1 0 0
       42 SETTABLEKS                       R1 R0 K8 ["MockMetaBreakpointsById"]
       44 NEWCLOSURE                       R1 P1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K9 ["MockSetMetaBreakpointById"]
       48 NEWTABLE                         R1 0 0
       50 SETTABLEKS                       R1 R0 K10 ["deletedBreakpoints"]
       52 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["deletedBreakpoints"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["MockMetaBreakpointsById"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["Signal"]
       20 NEWTABLE                         R3 4 0
       22 SETTABLEKS                       R3 R3 K9 ["__index"]
       24 DUPCLOSURE                       R4 K10 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K11 ["new"]
       29 DUPCLOSURE                       R4 K12 [PROTO_3]
       30 SETTABLEKS                       R4 R3 K13 ["RemoveBreakpointById"]
       32 DUPCLOSURE                       R4 K14 [PROTO_4]
       33 SETTABLEKS                       R4 R3 K15 ["GetBreakpointById"]
       35 RETURN                           R3 1
