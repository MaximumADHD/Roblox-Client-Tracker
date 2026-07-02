PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["BreakpointIdsInDebuggerConnection"]
        2 JUMPIFNOT                        R2 ; [+22]
        3 GETTABLEKS                       R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
        5 GETTABLEKS                       R4 R1 K1 ["debuggerConnectionId"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+16]
        9 GETTABLEKS                       R4 R0 K0 ["BreakpointIdsInDebuggerConnection"]
       11 GETTABLEKS                       R5 R1 K1 ["debuggerConnectionId"]
       13 GETTABLE                         R3 R4 R5
       14 GETTABLEKS                       R4 R1 K2 ["metaBreakpoint"]
       16 GETTABLEKS                       R4 R4 K3 ["id"]
       18 GETTABLE                         R2 R3 R4
       19 JUMPIFNOT                        R2 ; [+5]
       20 LOADB                            R3 0
       21 FASTCALL1                        ASSERT R3 ; [+2]
       22 GETIMPORT                        R2 K5 [assert]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       28 GETTABLEKS                       R2 R2 K7 ["join"]
       30 GETTABLEKS                       R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
       32 NEWTABLE                         R4 1 0
       34 GETTABLEKS                       R5 R1 K1 ["debuggerConnectionId"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K6 ["Dictionary"]
       39 GETTABLEKS                       R6 R6 K7 ["join"]
       41 GETTABLEKS                       R8 R0 K0 ["BreakpointIdsInDebuggerConnection"]
       43 JUMPIFNOT                        R8 ; [+6]
       44 GETTABLEKS                       R8 R0 K0 ["BreakpointIdsInDebuggerConnection"]
       46 GETTABLEKS                       R9 R1 K1 ["debuggerConnectionId"]
       48 GETTABLE                         R7 R8 R9
       49 JUMPIF                           R7 ; [+2]
       50 NEWTABLE                         R7 0 0
       52 NEWTABLE                         R8 1 0
       54 GETTABLEKS                       R9 R1 K2 ["metaBreakpoint"]
       56 GETTABLEKS                       R9 R9 K3 ["id"]
       58 GETTABLEKS                       R10 R1 K2 ["metaBreakpoint"]
       60 GETTABLEKS                       R10 R10 K3 ["id"]
       62 SETTABLE                         R10 R8 R9
       63 CALL                             R6 2 1
       64 SETTABLE                         R6 R4 R5
       65 CALL                             R2 2 1
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       69 GETTABLEKS                       R3 R3 K7 ["join"]
       71 GETTABLEKS                       R4 R0 K8 ["MetaBreakpoints"]
       73 NEWTABLE                         R5 1 0
       75 GETTABLEKS                       R6 R1 K2 ["metaBreakpoint"]
       77 GETTABLEKS                       R6 R6 K3 ["id"]
       79 GETTABLEKS                       R7 R1 K2 ["metaBreakpoint"]
       81 SETTABLE                         R7 R5 R6
       82 CALL                             R3 2 1
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K6 ["Dictionary"]
       86 GETTABLEKS                       R4 R4 K7 ["join"]
       88 MOVE                             R5 R0
       89 DUPTABLE                         R6 K9 [{"BreakpointIdsInDebuggerConnection"}]
       90 SETTABLEKS                       R2 R6 K0 ["BreakpointIdsInDebuggerConnection"]
       92 DUPTABLE                         R7 K10 [{"MetaBreakpoints"}]
       93 SETTABLEKS                       R3 R7 K8 ["MetaBreakpoints"]
       95 CALL                             R4 3 -1
       96 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["BreakpointIdsInDebuggerConnection"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 GETTABLEKS                       R4 R0 K3 ["MetaBreakpoints"]
        8 GETTABLEKS                       R5 R1 K4 ["metaBreakpoint"]
       10 GETTABLEKS                       R5 R5 K5 ["id"]
       12 GETTABLE                         R3 R4 R5
       13 FASTCALL1                        ASSERT R3 ; [+2]
       14 GETIMPORT                        R2 K2 [assert]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K7 ["join"]
       22 GETTABLEKS                       R3 R0 K3 ["MetaBreakpoints"]
       24 NEWTABLE                         R4 1 0
       26 GETTABLEKS                       R5 R1 K4 ["metaBreakpoint"]
       28 GETTABLEKS                       R5 R5 K5 ["id"]
       30 GETTABLEKS                       R6 R1 K4 ["metaBreakpoint"]
       32 SETTABLE                         R6 R4 R5
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       37 GETTABLEKS                       R3 R3 K7 ["join"]
       39 MOVE                             R4 R0
       40 DUPTABLE                         R5 K8 [{"MetaBreakpoints"}]
       41 SETTABLEKS                       R2 R5 K3 ["MetaBreakpoints"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"SortDirection", "ColumnIndex"}]
        7 GETTABLEKS                       R5 R1 K5 ["sortDirection"]
        9 SETTABLEKS                       R5 R4 K2 ["SortDirection"]
       11 GETTABLEKS                       R5 R1 K6 ["columnIndex"]
       13 SETTABLEKS                       R5 R4 K3 ["ColumnIndex"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["MetaBreakpoints"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["MetaBreakpoints"]
        5 GETTABLEKS                       R4 R1 K1 ["metaBreakpointId"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+5]
        9 LOADB                            R3 0
       10 FASTCALL1                        ASSERT R3 ; [+2]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R3 R0 K0 ["MetaBreakpoints"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R1 K1 ["metaBreakpointId"]
       20 LOADNIL                          R4
       21 SETTABLE                         R4 R2 R3
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R4 R0 K4 ["BreakpointIdsInDebuggerConnection"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K6 [pairs]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 GETTABLEKS                       R9 R1 K1 ["metaBreakpointId"]
       33 LOADNIL                          R10
       34 SETTABLE                         R10 R8 R9
       35 FORGLOOP                         R4 2 ; [-5]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K7 ["Dictionary"]
       40 GETTABLEKS                       R4 R4 K8 ["join"]
       42 MOVE                             R5 R0
       43 DUPTABLE                         R6 K9 [{"BreakpointIdsInDebuggerConnection"}]
       44 SETTABLEKS                       R3 R6 K4 ["BreakpointIdsInDebuggerConnection"]
       46 DUPTABLE                         R7 K10 [{"MetaBreakpoints"}]
       47 SETTABLEKS                       R2 R7 K0 ["MetaBreakpoints"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfEnabledColumns"}]
        7 GETTABLEKS                       R5 R1 K2 ["listOfEnabledColumns"]
        9 SETTABLEKS                       R5 R4 K2 ["listOfEnabledColumns"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Models"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R3 K11 ["BreakpointsWindow"]
       35 GETTABLEKS                       R6 R6 K12 ["AddBreakpoint"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R3 K11 ["BreakpointsWindow"]
       42 GETTABLEKS                       R7 R7 K13 ["DeleteBreakpoint"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R3 K11 ["BreakpointsWindow"]
       49 GETTABLEKS                       R8 R8 K14 ["ModifyBreakpoint"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R3 K11 ["BreakpointsWindow"]
       56 GETTABLEKS                       R9 R9 K15 ["SetBreakpointSortState"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R10 R3 K11 ["BreakpointsWindow"]
       63 GETTABLEKS                       R10 R10 K16 ["BreakpointColumnFilter"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R11 R4 K17 ["MetaBreakpoint"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R12 R0 K5 ["Packages"]
       75 GETTABLEKS                       R12 R12 K18 ["Framework"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R11 K19 ["Util"]
       80 GETTABLEKS                       R13 R12 K20 ["deepCopy"]
       82 DUPTABLE                         R14 K27 [{["BreakpointIdsInDebuggerConnection"], ["MetaBreakpoints"], ["SortDirection"] = , ["ColumnIndex"] = , ["listOfEnabledColumns"]}]
       83 NEWTABLE                         R15 0 0
       85 SETTABLEKS                       R15 R14 K21 ["BreakpointIdsInDebuggerConnection"]
       87 NEWTABLE                         R15 0 0
       89 SETTABLEKS                       R15 R14 K22 ["MetaBreakpoints"]
       91 NEWTABLE                         R15 0 0
       93 SETTABLEKS                       R15 R14 K26 ["listOfEnabledColumns"]
       95 GETTABLEKS                       R15 R1 K28 ["createReducer"]
       97 MOVE                             R16 R14
       98 NEWTABLE                         R17 8 0
      100 GETTABLEKS                       R18 R5 K29 ["name"]
      102 DUPCLOSURE                       R19 K30 [PROTO_0]
      103 CAPTURE                          VAL R2
      104 SETTABLE                         R19 R17 R18
      105 GETTABLEKS                       R18 R7 K29 ["name"]
      107 DUPCLOSURE                       R19 K31 [PROTO_1]
      108 CAPTURE                          VAL R2
      109 SETTABLE                         R19 R17 R18
      110 GETTABLEKS                       R18 R8 K29 ["name"]
      112 DUPCLOSURE                       R19 K32 [PROTO_2]
      113 CAPTURE                          VAL R2
      114 SETTABLE                         R19 R17 R18
      115 GETTABLEKS                       R18 R6 K29 ["name"]
      117 DUPCLOSURE                       R19 K33 [PROTO_3]
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R2
      120 SETTABLE                         R19 R17 R18
      121 GETTABLEKS                       R18 R9 K29 ["name"]
      123 DUPCLOSURE                       R19 K34 [PROTO_4]
      124 CAPTURE                          VAL R2
      125 SETTABLE                         R19 R17 R18
      126 CALL                             R15 2 -1
      127 RETURN                           R15 -1
