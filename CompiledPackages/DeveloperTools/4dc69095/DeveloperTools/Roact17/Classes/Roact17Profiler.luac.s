PROTO_0:
        0 DUPTABLE                         R1 K15 [{"active", "devtools", "root", "rows", "instanceEvents", "selectedEvents", "commitCount", "eventCount", "worker", "currentEvents", "filter", "searchTerm", "profileComponents", "profileEvents", "slices"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["active"]
        4 GETTABLEKS                       R2 R0 K1 ["devtools"]
        6 SETTABLEKS                       R2 R1 K1 ["devtools"]
        8 GETTABLEKS                       R2 R0 K2 ["root"]
       10 SETTABLEKS                       R2 R1 K2 ["root"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K3 ["rows"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K4 ["instanceEvents"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K5 ["selectedEvents"]
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R1 K6 ["commitCount"]
       27 LOADN                            R2 0
       28 SETTABLEKS                       R2 R1 K7 ["eventCount"]
       30 SETTABLEKS                       R0 R1 K8 ["worker"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K9 ["currentEvents"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K10 ["filter"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K11 ["searchTerm"]
       43 DUPTABLE                         R2 K19 [{"sortIndex", "sortOrder", "columns"}]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K16 ["sortIndex"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K17 ["sortOrder"]
       50 NEWTABLE                         R3 0 5
       52 LOADK                            R4 K20 ["instanceName"]
       53 LOADK                            R5 K21 ["depth"]
       54 LOADK                            R6 K22 ["count"]
       55 LOADK                            R7 K23 ["renderTime"]
       56 LOADK                            R8 K24 ["time"]
       57 SETLIST                          R3 R4 5 [1]
       59 SETTABLEKS                       R3 R2 K18 ["columns"]
       61 SETTABLEKS                       R2 R1 K12 ["profileComponents"]
       63 DUPTABLE                         R2 K19 [{"sortIndex", "sortOrder", "columns"}]
       64 LOADNIL                          R3
       65 SETTABLEKS                       R3 R2 K16 ["sortIndex"]
       67 LOADNIL                          R3
       68 SETTABLEKS                       R3 R2 K17 ["sortOrder"]
       70 NEWTABLE                         R3 0 5
       72 LOADK                            R4 K25 ["startTime"]
       73 LOADK                            R5 K23 ["renderTime"]
       74 LOADK                            R6 K24 ["time"]
       75 LOADK                            R7 K26 ["cause"]
       76 LOADK                            R8 K27 ["details"]
       77 SETLIST                          R3 R4 5 [1]
       79 SETTABLEKS                       R3 R2 K18 ["columns"]
       81 SETTABLEKS                       R2 R1 K13 ["profileEvents"]
       83 DUPTABLE                         R2 K32 [{"componentSliceStart", "componentSliceEnd", "eventSliceStart", "eventSliceEnd"}]
       84 LOADN                            R3 255
       85 SETTABLEKS                       R3 R2 K28 ["componentSliceStart"]
       87 LOADN                            R3 255
       88 SETTABLEKS                       R3 R2 K29 ["componentSliceEnd"]
       90 LOADN                            R3 255
       91 SETTABLEKS                       R3 R2 K30 ["eventSliceStart"]
       93 LOADN                            R3 255
       94 SETTABLEKS                       R3 R2 K31 ["eventSliceEnd"]
       96 SETTABLEKS                       R2 R1 K14 ["slices"]
       98 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateRows"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R2 K1 ["bridge"]
        4 LOADK                            R3 K2 ["profilingData"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K3 ["addListener"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLE                         R4 R0 R1
        1 SETTABLEKS                       R2 R4 K0 ["sortIndex"]
        3 GETTABLE                         R4 R0 R1
        4 SETTABLEKS                       R3 R4 K1 ["sortOrder"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["devtools"]
        3 GETTABLEKS                       R0 R1 K1 ["agent"]
        5 DUPTABLE                         R2 K3 [{"rendererID"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["devtools"]
        9 GETTABLEKS                       R3 R4 K4 ["store"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K5 ["root"]
       14 NAMECALL                         R3 R3 K6 ["getRendererIDForElement"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K2 ["rendererID"]
       19 NAMECALL                         R0 R0 K7 ["getProfilingData"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["slices"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+9]
        8 LOADK                            R6 K3 ["getProfilingData%(%) called before any profiling data was recorded"]
        9 NAMECALL                         R4 R3 K4 ["find"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+4]
       13 GETIMPORT                        R4 K6 [warn]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["rootID"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["root"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_7:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["devtools"]
        4 GETTABLEKS                       R2 R3 K1 ["store"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["getElementByID"]
        9 CALL                             R2 2 1
       10 GETTABLEN                        R3 R0 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["worker"]
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R4 K4 ["getHostNode"]
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+9]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K3 ["worker"]
       22 GETTABLEKS                       R7 R4 K5 ["id"]
       24 NAMECALL                         R5 R5 K6 ["getHostInstance"]
       26 CALL                             R5 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K3 ["worker"]
       33 MOVE                             R8 R5
       34 NAMECALL                         R6 R6 K7 ["getPath"]
       36 CALL                             R6 2 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 JUMPIFNOT                        R6 ; [+33]
       41 NEWTABLE                         R8 0 0
       43 JUMPIFEQKNIL                     R5 ; [+14]
       45 GETUPVAL                         R9 1
       46 JUMPIFEQ                         R5 R9 ; [+11]
       48 GETTABLEKS                       R11 R5 K8 ["Name"]
       50 FASTCALL2                        TABLE_INSERT R8 R11 ; [+3]
       52 MOVE                             R10 R8
       53 GETUPVAL                         R9 2
       54 CALL                             R9 2 0
       55 GETTABLEKS                       R5 R5 K9 ["Parent"]
       57 JUMPBACK                         ; [-15]
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R11 R12 K8 ["Name"]
       61 FASTCALL2                        TABLE_INSERT R8 R11 ; [+3]
       63 MOVE                             R10 R8
       64 GETUPVAL                         R9 2
       65 CALL                             R9 2 0
       66 GETUPVAL                         R9 3
       67 GETUPVAL                         R10 4
       68 MOVE                             R11 R8
       69 CALL                             R10 1 1
       70 LOADK                            R11 K10 ["."]
       71 CALL                             R9 2 1
       72 MOVE                             R7 R9
       73 JUMP                             ; [+1]
       74 LOADK                            R7 K11 ["Unknown"]
       75 JUMPIFNOT                        R2 ; [+3]
       76 GETTABLEKS                       R8 R2 K12 ["displayName"]
       78 JUMP                             ; [+1]
       79 LOADK                            R8 K11 ["Unknown"]
       80 JUMPIFNOT                        R2 ; [+20]
       81 GETTABLEKS                       R10 R2 K13 ["key"]
       83 LENGTH                           R9 R10
       84 LOADN                            R10 0
       85 JUMPIFNOTLT                      R10 R9 ; [+15]
       87 GETTABLEKS                       R9 R2 K13 ["key"]
       89 GETTABLEKS                       R10 R2 K12 ["displayName"]
       91 JUMPIFEQ                         R9 R10 ; [+9]
       93 LOADK                            R9 K14 ["%s: %s"]
       94 GETTABLEKS                       R11 R2 K13 ["key"]
       96 MOVE                             R12 R8
       97 NAMECALL                         R9 R9 K15 ["format"]
       99 CALL                             R9 3 1
      100 MOVE                             R8 R9
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R10 R11 K16 ["rows"]
      104 GETTABLE                         R9 R10 R1
      105 JUMPIF                           R9 ; [+28]
      106 DUPTABLE                         R9 K25 [{"instanceId", "count", "depth", "path", "pathString", "instanceName", "time", "renderTime"}]
      107 SETTABLEKS                       R1 R9 K17 ["instanceId"]
      109 LOADN                            R10 0
      110 SETTABLEKS                       R10 R9 K18 ["count"]
      112 JUMPIFNOT                        R6 ; [+2]
      113 LENGTH                           R10 R6
      114 JUMP                             ; [+1]
      115 LOADN                            R10 0
      116 SETTABLEKS                       R10 R9 K19 ["depth"]
      118 MOVE                             R10 R6
      119 JUMPIF                           R10 ; [+2]
      120 NEWTABLE                         R10 0 0
      122 SETTABLEKS                       R10 R9 K20 ["path"]
      124 SETTABLEKS                       R7 R9 K21 ["pathString"]
      126 SETTABLEKS                       R8 R9 K22 ["instanceName"]
      128 LOADN                            R10 0
      129 SETTABLEKS                       R10 R9 K23 ["time"]
      131 LOADN                            R10 0
      132 SETTABLEKS                       R10 R9 K24 ["renderTime"]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R10 R11 K16 ["rows"]
      137 SETTABLE                         R9 R10 R1
      138 GETUPVAL                         R10 0
      139 GETTABLEKS                       R11 R10 K26 ["eventCount"]
      141 ADDK                             R11 R11 K27 [1]
      142 SETTABLEKS                       R11 R10 K26 ["eventCount"]
      144 GETTABLEKS                       R10 R9 K18 ["count"]
      146 ADDK                             R10 R10 K27 [1]
      147 SETTABLEKS                       R10 R9 K18 ["count"]
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R11 R12 K28 ["instanceEvents"]
      152 GETTABLE                         R10 R11 R1
      153 JUMPIF                           R10 ; [+6]
      154 GETUPVAL                         R11 0
      155 GETTABLEKS                       R10 R11 K28 ["instanceEvents"]
      157 NEWTABLE                         R11 0 0
      159 SETTABLE                         R11 R10 R1
      160 NEWTABLE                         R10 0 0
      162 GETTABLEKS                       R11 R3 K29 ["isFirstMount"]
      164 JUMPIFNOT                        R11 ; [+7]
      165 FASTCALL2K                       TABLE_INSERT R10 K30 ; [+4]
      167 MOVE                             R12 R10
      168 LOADK                            R13 K30 ["mount"]
      169 GETUPVAL                         R11 2
      170 CALL                             R11 2 0
      171 JUMP                             ; [+18]
      172 GETTABLEKS                       R11 R3 K31 ["props"]
      174 JUMPIFNOT                        R11 ; [+6]
      175 FASTCALL2K                       TABLE_INSERT R10 K31 ; [+4]
      177 MOVE                             R12 R10
      178 LOADK                            R13 K31 ["props"]
      179 GETUPVAL                         R11 2
      180 CALL                             R11 2 0
      181 GETTABLEKS                       R11 R3 K32 ["state"]
      183 JUMPIFNOT                        R11 ; [+6]
      184 FASTCALL2K                       TABLE_INSERT R10 K32 ; [+4]
      186 MOVE                             R12 R10
      187 LOADK                            R13 K32 ["state"]
      188 GETUPVAL                         R11 2
      189 CALL                             R11 2 0
      190 GETTABLEKS                       R12 R3 K31 ["props"]
      192 JUMPIFNOT                        R12 ; [+5]
      193 GETUPVAL                         R11 5
      194 GETTABLEKS                       R12 R3 K31 ["props"]
      196 CALL                             R11 1 1
      197 JUMP                             ; [+1]
      198 LOADK                            R11 K33 [""]
      199 GETTABLEKS                       R13 R3 K32 ["state"]
      201 JUMPIFNOT                        R13 ; [+5]
      202 GETUPVAL                         R12 5
      203 GETTABLEKS                       R13 R3 K32 ["state"]
      205 CALL                             R12 1 1
      206 JUMP                             ; [+1]
      207 LOADK                            R12 K33 [""]
      208 MOVE                             R14 R11
      209 LOADK                            R15 K34 [" "]
      210 MOVE                             R16 R12
      211 CONCAT                           R13 R14 R16
      212 DUPTABLE                         R14 K41 [{"startTime", "renderTime", "time", "cause", "updateTrace", "log", "details", "detailsTip"}]
      213 GETUPVAL                         R16 6
      214 GETTABLEKS                       R15 R16 K42 ["timestamp"]
      216 SETTABLEKS                       R15 R14 K35 ["startTime"]
      218 LOADN                            R15 0
      219 SETTABLEKS                       R15 R14 K24 ["renderTime"]
      221 LOADN                            R15 0
      222 SETTABLEKS                       R15 R14 K23 ["time"]
      224 GETUPVAL                         R15 3
      225 MOVE                             R16 R10
      226 LOADK                            R17 K43 [", "]
      227 CALL                             R15 2 1
      228 SETTABLEKS                       R15 R14 K36 ["cause"]
      230 LOADK                            R15 K33 [""]
      231 SETTABLEKS                       R15 R14 K37 ["updateTrace"]
      233 LOADK                            R15 K33 [""]
      234 SETTABLEKS                       R15 R14 K38 ["log"]
      236 SETTABLEKS                       R13 R14 K39 ["details"]
      238 SETTABLEKS                       R13 R14 K40 ["detailsTip"]
      240 GETUPVAL                         R16 0
      241 GETTABLEKS                       R15 R16 K44 ["currentEvents"]
      243 SETTABLE                         R14 R15 R1
      244 GETUPVAL                         R18 0
      245 GETTABLEKS                       R17 R18 K28 ["instanceEvents"]
      247 GETTABLE                         R16 R17 R1
      248 FASTCALL2                        TABLE_INSERT R16 R14 ; [+3]
      250 MOVE                             R17 R14
      251 GETUPVAL                         R15 2
      252 CALL                             R15 2 0
      253 RETURN                           R0 0

PROTO_8:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["currentEvents"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K1 ["time"]
        9 GETTABLEN                        R4 R0 2
       10 ADD                              R3 R3 R4
       11 SETTABLEKS                       R3 R2 K1 ["time"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["rows"]
       16 GETTABLE                         R3 R4 R1
       17 GETTABLEKS                       R4 R3 K1 ["time"]
       19 GETTABLEN                        R5 R0 2
       20 ADD                              R4 R4 R5
       21 SETTABLEKS                       R4 R3 K1 ["time"]
       23 RETURN                           R0 0

PROTO_9:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["currentEvents"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K1 ["renderTime"]
        9 GETTABLEN                        R4 R0 2
       10 ADD                              R3 R3 R4
       11 SETTABLEKS                       R3 R2 K1 ["renderTime"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["rows"]
       16 GETTABLE                         R3 R4 R1
       17 GETTABLEKS                       R4 R3 K1 ["renderTime"]
       19 GETTABLEN                        R5 R0 2
       20 ADD                              R4 R4 R5
       21 SETTABLEKS                       R4 R3 K1 ["renderTime"]
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["dataForRoots"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R0 K1 ["worker"]
       10 GETTABLEKS                       R5 R0 K2 ["root"]
       12 NAMECALL                         R3 R3 K3 ["getHostInstance"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R2 K4 ["commitData"]
       17 GETTABLEKS                       R5 R0 K5 ["commitCount"]
       19 LENGTH                           R6 R4
       20 JUMPIFNOTLT                      R5 R6 ; [+46]
       22 GETTABLEKS                       R5 R0 K5 ["commitCount"]
       24 ADDK                             R5 R5 K6 [1]
       25 SETTABLEKS                       R5 R0 K5 ["commitCount"]
       27 GETTABLEKS                       R6 R0 K5 ["commitCount"]
       29 GETTABLE                         R5 R4 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R7 R5 K7 ["changeDescriptions"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R5
       41 CALL                             R6 2 0
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R7 R5 K8 ["fiberActualDurations"]
       45 NEWCLOSURE                       R8 P2
       46 CAPTURE                          VAL R0
       47 CALL                             R6 2 0
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R7 R5 K9 ["fiberSelfDurations"]
       51 NEWCLOSURE                       R8 P3
       52 CAPTURE                          VAL R0
       53 CALL                             R6 2 0
       54 GETIMPORT                        R6 K11 [pairs]
       56 GETTABLEKS                       R7 R0 K12 ["currentEvents"]
       58 CALL                             R6 1 3
       59 FORGPREP_NEXT                    R6
       60 GETTABLEKS                       R11 R0 K12 ["currentEvents"]
       62 LOADNIL                          R12
       63 SETTABLE                         R12 R11 R9
       64 FORGLOOP                         R6 1 ; [-5]
       66 JUMPBACK                         ; [-50]
       67 NAMECALL                         R5 R0 K13 ["getComponentRows"]
       69 CALL                             R5 1 1
       70 NAMECALL                         R6 R0 K14 ["getEventRows"]
       72 CALL                             R6 1 1
       73 GETUPVAL                         R7 6
       74 MOVE                             R8 R6
       75 GETTABLEKS                       R10 R0 K15 ["slices"]
       77 GETTABLEKS                       R9 R10 K16 ["eventSliceStart"]
       79 GETTABLEKS                       R11 R0 K15 ["slices"]
       81 GETTABLEKS                       R10 R11 K17 ["eventSliceEnd"]
       83 CALL                             R7 3 1
       84 GETTABLEKS                       R8 R0 K1 ["worker"]
       86 DUPTABLE                         R10 K23 [{"componentRows", "eventRows", "rowCount", "eventCount", "instanceEventCount"}]
       87 GETUPVAL                         R11 6
       88 MOVE                             R12 R5
       89 GETTABLEKS                       R14 R0 K15 ["slices"]
       91 GETTABLEKS                       R13 R14 K24 ["componentSliceStart"]
       93 GETTABLEKS                       R15 R0 K15 ["slices"]
       95 GETTABLEKS                       R14 R15 K25 ["componentSliceEnd"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K18 ["componentRows"]
      100 SETTABLEKS                       R7 R10 K19 ["eventRows"]
      102 LENGTH                           R11 R5
      103 SETTABLEKS                       R11 R10 K20 ["rowCount"]
      105 GETTABLEKS                       R11 R0 K21 ["eventCount"]
      107 SETTABLEKS                       R11 R10 K21 ["eventCount"]
      109 GETTABLEKS                       R12 R0 K26 ["selectedEvents"]
      111 LENGTH                           R11 R12
      112 SETTABLEKS                       R11 R10 K22 ["instanceEventCount"]
      114 NAMECALL                         R8 R8 K27 ["showProfileData"]
      116 CALL                             R8 2 0
      117 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["instanceEvents"]
        2 GETTABLEKS                       R4 R0 K0 ["instanceEvents"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 SETTABLE                         R3 R2 R1
        9 GETTABLEKS                       R3 R0 K0 ["instanceEvents"]
       11 GETTABLE                         R2 R3 R1
       12 SETTABLEKS                       R2 R0 K1 ["selectedEvents"]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceName"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["find"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["searchTerm"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["instanceName"]
        6 NAMECALL                         R1 R1 K2 ["lower"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["searchTerm"]
       12 NAMECALL                         R1 R1 K3 ["find"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["filter"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 1
       25 NOT                              R1 R2
       26 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["rows"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R6
       12 GETUPVAL                         R7 0
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-7]
       16 GETTABLEKS                       R2 R0 K3 ["filter"]
       18 JUMPIF                           R2 ; [+3]
       19 GETTABLEKS                       R2 R0 K4 ["searchTerm"]
       21 JUMPIFNOT                        R2 ; [+7]
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 MOVE                             R4 R1
       30 GETTABLEKS                       R5 R0 K5 ["profileComponents"]
       32 NAMECALL                         R2 R0 K6 ["getSortedData"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["selectedEvents"]
        2 GETTABLEKS                       R4 R0 K1 ["profileEvents"]
        4 NAMECALL                         R1 R0 K2 ["getSortedData"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["columns"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["sortIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["profileComponents"]
       10 GETTABLEKS                       R3 R4 K3 ["sortOrder"]
       12 GETIMPORT                        R4 K7 [Enum.SortDirection.Descending]
       14 JUMPIFNOTEQ                      R3 R4 ; [+8]
       16 GETTABLE                         R4 R0 R2
       17 GETTABLE                         R5 R1 R2
       18 JUMPIFLT                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1
       23 GETTABLE                         R4 R0 R2
       24 GETTABLE                         R5 R1 R2
       25 JUMPIFLT                         R5 R4 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R3 R2 K0 ["sortIndex"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CALL                             R3 2 0
        9 RETURN                           R1 1

PROTO_18:
        0 NAMECALL                         R2 R1 K0 ["lower"]
        2 CALL                             R2 1 1
        3 SETTABLEKS                       R2 R0 K1 ["searchTerm"]
        5 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["events"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["eventCount"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["commitCount"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K3 ["rows"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K4 ["instanceEvents"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K5 ["selectedEvents"]
       22 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["active"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["active"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R3 R0 K1 ["devtools"]
       10 GETTABLEKS                       R2 R3 K2 ["agent"]
       12 LOADB                            R4 1
       13 NAMECALL                         R2 R2 K3 ["startProfiling"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K1 ["devtools"]
       19 GETTABLEKS                       R2 R3 K2 ["agent"]
       21 LOADB                            R4 1
       22 NAMECALL                         R2 R2 K4 ["stopProfiling"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["setActive"]
        3 CALL                             R1 2 0
        4 NAMECALL                         R1 R0 K1 ["clearData"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["class"]
       18 GETTABLEKS                       R4 R2 K7 ["slice"]
       20 GETTABLEKS                       R5 R2 K8 ["filter"]
       22 GETTABLEKS                       R6 R2 K9 ["forEach"]
       24 GETTABLEKS                       R7 R2 K10 ["pretty"]
       26 GETTABLEKS                       R8 R2 K11 ["reverse"]
       28 GETTABLEKS                       R9 R2 K12 ["some"]
       30 GETTABLEKS                       R10 R2 K13 ["find"]
       32 GETIMPORT                        R11 K16 [table.concat]
       34 GETIMPORT                        R12 K18 [table.insert]
       36 GETIMPORT                        R13 K20 [table.sort]
       38 GETIMPORT                        R14 K4 [require]
       40 GETTABLEKS                       R15 R0 K21 ["Types"]
       42 CALL                             R14 1 1
       43 GETIMPORT                        R15 K4 [require]
       45 GETTABLEKS                       R17 R0 K22 ["Roact17"]
       47 GETTABLEKS                       R16 R17 K23 ["types"]
       49 CALL                             R15 1 1
       50 MOVE                             R16 R3
       51 LOADK                            R17 K24 ["Roact17Profiler"]
       52 DUPCLOSURE                       R18 K25 [PROTO_0]
       53 CALL                             R16 2 1
       54 DUPCLOSURE                       R17 K26 [PROTO_2]
       55 SETTABLEKS                       R17 R16 K27 ["_init"]
       57 DUPCLOSURE                       R17 K28 [PROTO_3]
       58 SETTABLEKS                       R17 R16 K29 ["sortData"]
       60 DUPCLOSURE                       R17 K30 [PROTO_5]
       61 SETTABLEKS                       R17 R16 K31 ["getData"]
       63 DUPCLOSURE                       R17 K32 [PROTO_10]
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R17 R16 K33 ["updateRows"]
       73 DUPCLOSURE                       R17 K34 [PROTO_11]
       74 SETTABLEKS                       R17 R16 K35 ["selectInstance"]
       76 DUPCLOSURE                       R17 K36 [PROTO_14]
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R17 R16 K37 ["getComponentRows"]
       82 DUPCLOSURE                       R17 K38 [PROTO_15]
       83 SETTABLEKS                       R17 R16 K39 ["getEventRows"]
       85 DUPCLOSURE                       R17 K40 [PROTO_17]
       86 CAPTURE                          VAL R13
       87 SETTABLEKS                       R17 R16 K41 ["getSortedData"]
       89 DUPCLOSURE                       R17 K42 [PROTO_18]
       90 SETTABLEKS                       R17 R16 K43 ["setSearchTerm"]
       92 DUPCLOSURE                       R17 K44 [PROTO_19]
       93 SETTABLEKS                       R17 R16 K45 ["clearData"]
       95 DUPCLOSURE                       R17 K46 [PROTO_20]
       96 SETTABLEKS                       R17 R16 K47 ["setActive"]
       98 DUPCLOSURE                       R17 K48 [PROTO_21]
       99 SETTABLEKS                       R17 R16 K49 ["destroy"]
      101 RETURN                           R16 1
