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
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R5 R7 K12 ["sourceName"]
       35 MOVE                             R6 R3
       36 CONCAT                           R4 R5 R6
       37 SETTABLEKS                       R4 R2 K1 ["Name"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K13 ["fromBridgeId"]
       42 SETTABLEKS                       R4 R2 K14 ["BridgeId"]
       44 GETTABLEKS                       R4 R1 K10 ["id"]
       46 MOVE                             R5 R2
       47 RETURN                           R4 2

PROTO_10:
        0 DUPTABLE                         R2 K4 [{"Plugin", "CoreGui", "Library", "StandalonePlugin"}]
        1 LOADK                            R3 K0 ["Plugin"]
        2 SETTABLEKS                       R3 R2 K0 ["Plugin"]
        4 LOADK                            R3 K1 ["CoreGui"]
        5 SETTABLEKS                       R3 R2 K1 ["CoreGui"]
        7 LOADK                            R3 K5 ["Frame"]
        8 SETTABLEKS                       R3 R2 K2 ["Library"]
       10 LOADK                            R3 K0 ["Plugin"]
       11 SETTABLEKS                       R3 R2 K3 ["StandalonePlugin"]
       13 GETTABLEKS                       R5 R1 K6 ["sourceKind"]
       15 GETTABLE                         R4 R2 R5
       16 ORK                              R3 R4 K5 ["Frame"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R5 R1 K7 ["targets"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R1
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R0
       28 DUPTABLE                         R7 K8 [{"targets"}]
       29 SETTABLEKS                       R4 R7 K7 ["targets"]
       31 CALL                             R5 2 1
       32 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["None"]
       25 GETTABLEKS                       R4 R2 K9 ["join"]
       27 GETTABLEKS                       R5 R2 K10 ["joinDeep"]
       29 GETTABLEKS                       R6 R2 K11 ["collect"]
       31 GETTABLEKS                       R7 R2 K12 ["values"]
       33 GETIMPORT                        R8 K15 [table.sort]
       35 GETTABLEKS                       R10 R0 K16 ["Src"]
       37 GETTABLEKS                       R9 R10 K17 ["Util"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R11 R9 K18 ["TabIds"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R12 R0 K16 ["Src"]
       46 GETTABLEKS                       R11 R12 K19 ["Actions"]
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
       87 DUPTABLE                         R22 K31 [{"Id", "Label"}]
       88 GETTABLEKS                       R23 R10 K32 ["ELEMENTS"]
       90 SETTABLEKS                       R23 R22 K29 ["Id"]
       92 LOADK                            R23 K33 ["Elements"]
       93 SETTABLEKS                       R23 R22 K30 ["Label"]
       95 DUPTABLE                         R23 K31 [{"Id", "Label"}]
       96 GETTABLEKS                       R24 R10 K34 ["PROFILE"]
       98 SETTABLEKS                       R24 R23 K29 ["Id"]
      100 LOADK                            R24 K35 ["Profile"]
      101 SETTABLEKS                       R24 R23 K30 ["Label"]
      103 SETLIST                          R21 R22 2 [1]
      105 GETTABLEKS                       R22 R1 K36 ["createReducer"]
      107 DUPTABLE                         R23 K43 [{"tabs", "selectedTab", "targets", "selectedTargetName", "selectedTarget", "expandedTargets"}]
      108 SETTABLEKS                       R21 R23 K37 ["tabs"]
      110 GETTABLEN                        R24 R21 1
      111 SETTABLEKS                       R24 R23 K38 ["selectedTab"]
      113 NEWTABLE                         R24 0 0
      115 SETTABLEKS                       R24 R23 K39 ["targets"]
      117 LOADNIL                          R24
      118 SETTABLEKS                       R24 R23 K40 ["selectedTargetName"]
      120 LOADNIL                          R24
      121 SETTABLEKS                       R24 R23 K41 ["selectedTarget"]
      123 NEWTABLE                         R24 0 0
      125 SETTABLEKS                       R24 R23 K42 ["expandedTargets"]
      127 NEWTABLE                         R24 8 0
      129 GETTABLEKS                       R25 R12 K44 ["name"]
      131 DUPCLOSURE                       R26 K45 [PROTO_4]
      132 CAPTURE                          VAL R4
      133 SETTABLE                         R26 R24 R25
      134 GETTABLEKS                       R25 R14 K44 ["name"]
      136 DUPCLOSURE                       R26 K46 [PROTO_5]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R3
      139 SETTABLE                         R26 R24 R25
      140 GETTABLEKS                       R25 R16 K44 ["name"]
      142 DUPCLOSURE                       R26 K47 [PROTO_6]
      143 CAPTURE                          VAL R4
      144 SETTABLE                         R26 R24 R25
      145 GETTABLEKS                       R25 R15 K44 ["name"]
      147 DUPCLOSURE                       R26 K48 [PROTO_7]
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R3
      150 SETTABLE                         R26 R24 R25
      151 GETTABLEKS                       R25 R17 K44 ["name"]
      153 DUPCLOSURE                       R26 K49 [PROTO_8]
      154 CAPTURE                          VAL R5
      155 SETTABLE                         R26 R24 R25
      156 GETTABLEKS                       R25 R13 K44 ["name"]
      158 DUPCLOSURE                       R26 K50 [PROTO_10]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R5
      163 SETTABLE                         R26 R24 R25
      164 CALL                             R22 2 -1
      165 RETURN                           R22 -1
