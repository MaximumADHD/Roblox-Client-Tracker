PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["Name"]
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K1 [PROTO_1]
        7 CALL                             R2 2 0
        8 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R3 K5 [{"Name", "ClassName", "Children", "GetChildren", "GetDebugId"}]
        1 SETTABLEKS                       R0 R3 K0 ["Name"]
        3 SETTABLEKS                       R1 R3 K1 ["ClassName"]
        5 MOVE                             R4 R2
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K2 ["Children"]
       11 GETUPVAL                         R4 0
       12 SETTABLEKS                       R4 R3 K3 ["GetChildren"]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K4 ["GetDebugId"]
       17 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"selectedTab"}]
        3 GETTABLEKS                       R5 R1 K2 ["tab"]
        5 SETTABLEKS                       R5 R4 K0 ["selectedTab"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"targets", "expandedTargets", "selectedTarget"}]
        3 NEWTABLE                         R5 0 0
        5 SETTABLEKS                       R5 R4 K0 ["targets"]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K1 ["expandedTargets"]
       11 GETUPVAL                         R5 1
       12 SETTABLEKS                       R5 R4 K2 ["selectedTarget"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"selectedTarget"}]
        3 GETTABLEKS                       R5 R1 K2 ["target"]
        5 SETTABLEKS                       R5 R4 K0 ["selectedTarget"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K1 [{"selectedTarget"}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["selectedTarget"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"expandedTargets"}]
        3 GETTABLEKS                       R5 R1 K2 ["change"]
        5 SETTABLEKS                       R5 R4 K0 ["expandedTargets"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R2 K6 [{"Name", "ClassName", "Children", "GetChildren", "GetDebugId"}]
        4 SETTABLEKS                       R3 R2 K1 ["Name"]
        6 SETTABLEKS                       R4 R2 K2 ["ClassName"]
        8 NEWTABLE                         R5 0 0
       10 SETTABLEKS                       R5 R2 K3 ["Children"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R2 K4 ["GetChildren"]
       15 GETUPVAL                         R5 2
       16 SETTABLEKS                       R5 R2 K5 ["GetDebugId"]
       18 GETTABLEKS                       R4 R1 K0 ["name"]
       20 JUMPIFNOTEQKS                    R4 K7 ["Roact tree"] ; [+3]
       22 LOADK                            R3 K8 [""]
       23 JUMP                             ; [+4]
       24 LOADK                            R4 K9 [" - "]
       25 GETTABLEKS                       R5 R1 K0 ["name"]
       27 CONCAT                           R3 R4 R5
       28 GETTABLEKS                       R4 R1 K10 ["id"]
       30 SETTABLEKS                       R4 R2 K11 ["Id"]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K12 ["sourceName"]
       35 MOVE                             R6 R3
       36 CONCAT                           R4 R5 R6
       37 SETTABLEKS                       R4 R2 K1 ["Name"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K13 ["fromBridgeId"]
       42 SETTABLEKS                       R4 R2 K14 ["BridgeId"]
       44 GETTABLEKS                       R4 R1 K10 ["id"]
       46 MOVE                             R5 R2
       47 RETURN                           R4 2

PROTO_10:
        0 DUPTABLE                         R2 K5 [{[1] = "Plugin", ["CoreGui"] = "CoreGui", ["Library"] = "Frame", ["StandalonePlugin"] = "Plugin"}]
        1 GETTABLEKS                       R5 R1 K6 ["sourceKind"]
        3 GETTABLE                         R4 R2 R5
        4 ORK                              R3 R4 K3 ["Frame"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R1 K7 ["targets"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R0
       16 DUPTABLE                         R7 K8 [{"targets"}]
       17 SETTABLEKS                       R4 R7 K7 ["targets"]
       19 CALL                             R5 2 1
       20 RETURN                           R5 1

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
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["None"]
       25 GETTABLEKS                       R4 R2 K9 ["join"]
       27 GETTABLEKS                       R5 R2 K10 ["joinDeep"]
       29 GETTABLEKS                       R6 R2 K11 ["collect"]
       31 GETTABLEKS                       R7 R2 K12 ["values"]
       33 GETIMPORT                        R8 K15 [table.sort]
       35 GETTABLEKS                       R9 R0 K16 ["Src"]
       37 GETTABLEKS                       R9 R9 K17 ["Util"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R11 R9 K18 ["TabIds"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R0 K16 ["Src"]
       46 GETTABLEKS                       R11 R11 K19 ["Actions"]
       48 GETIMPORT                        R12 K4 [require]
       50 GETTABLEKS                       R13 R11 K20 ["SetTab"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R11 K21 ["AddTargets"]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K4 [require]
       60 GETTABLEKS                       R15 R11 K22 ["ClearTargets"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R11 K23 ["CloseTarget"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K4 [require]
       70 GETTABLEKS                       R17 R11 K24 ["SelectTarget"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K4 [require]
       75 GETTABLEKS                       R18 R11 K25 ["ToggleTarget"]
       77 CALL                             R17 1 1
       78 DUPCLOSURE                       R18 K26 [PROTO_0]
       79 DUPCLOSURE                       R19 K27 [PROTO_2]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R20 K28 [PROTO_3]
       83 CAPTURE                          VAL R19
       84 CAPTURE                          VAL R18
       85 NEWTABLE                         R21 0 2
       87 DUPTABLE                         R22 K32 [{["Id"], ["Label"] = "Elements"}]
       88 GETTABLEKS                       R23 R10 K33 ["ELEMENTS"]
       90 SETTABLEKS                       R23 R22 K29 ["Id"]
       92 DUPTABLE                         R23 K35 [{["Id"], ["Label"] = "Profile"}]
       93 GETTABLEKS                       R24 R10 K36 ["PROFILE"]
       95 SETTABLEKS                       R24 R23 K29 ["Id"]
       97 SETLIST                          R21 R22 2 [1]
       99 GETTABLEKS                       R22 R1 K37 ["createReducer"]
      101 DUPTABLE                         R23 K45 [{["tabs"], ["selectedTab"], ["targets"], ["selectedTargetName"] = , ["selectedTarget"] = , ["expandedTargets"]}]
      102 SETTABLEKS                       R21 R23 K38 ["tabs"]
      104 GETTABLEN                        R24 R21 1
      105 SETTABLEKS                       R24 R23 K39 ["selectedTab"]
      107 NEWTABLE                         R24 0 0
      109 SETTABLEKS                       R24 R23 K40 ["targets"]
      111 NEWTABLE                         R24 0 0
      113 SETTABLEKS                       R24 R23 K44 ["expandedTargets"]
      115 NEWTABLE                         R24 8 0
      117 GETTABLEKS                       R25 R12 K46 ["name"]
      119 DUPCLOSURE                       R26 K47 [PROTO_4]
      120 CAPTURE                          VAL R4
      121 SETTABLE                         R26 R24 R25
      122 GETTABLEKS                       R25 R14 K46 ["name"]
      124 DUPCLOSURE                       R26 K48 [PROTO_5]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 SETTABLE                         R26 R24 R25
      128 GETTABLEKS                       R25 R16 K46 ["name"]
      130 DUPCLOSURE                       R26 K49 [PROTO_6]
      131 CAPTURE                          VAL R4
      132 SETTABLE                         R26 R24 R25
      133 GETTABLEKS                       R25 R15 K46 ["name"]
      135 DUPCLOSURE                       R26 K50 [PROTO_7]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R3
      138 SETTABLE                         R26 R24 R25
      139 GETTABLEKS                       R25 R17 K46 ["name"]
      141 DUPCLOSURE                       R26 K51 [PROTO_8]
      142 CAPTURE                          VAL R5
      143 SETTABLE                         R26 R24 R25
      144 GETTABLEKS                       R25 R13 K46 ["name"]
      146 DUPCLOSURE                       R26 K52 [PROTO_10]
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R5
      151 SETTABLE                         R26 R24 R25
      152 CALL                             R22 2 -1
      153 RETURN                           R22 -1
