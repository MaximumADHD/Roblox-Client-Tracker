PROTO_0:
        0 DUPTABLE                         R1 K18 [{[1] = False, ["devtools"], ["root"], ["rows"], ["instanceEvents"], ["selectedEvents"], ["commitCount"] = 0, ["eventCount"] = 0, ["worker"], ["currentEvents"], ["filter"], ["searchTerm"] = , ["profileComponents"], ["profileEvents"], ["slices"]}]
        1 GETTABLEKS                       R2 R0 K2 ["devtools"]
        3 SETTABLEKS                       R2 R1 K2 ["devtools"]
        5 GETTABLEKS                       R2 R0 K3 ["root"]
        7 SETTABLEKS                       R2 R1 K3 ["root"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K4 ["rows"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K5 ["instanceEvents"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K6 ["selectedEvents"]
       21 SETTABLEKS                       R0 R1 K10 ["worker"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K11 ["currentEvents"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K12 ["filter"]
       31 DUPTABLE                         R2 K22 [{["sortIndex"] = , ["sortOrder"] = , ["columns"]}]
       32 NEWTABLE                         R3 0 5
       34 LOADK                            R4 K23 ["instanceName"]
       35 LOADK                            R5 K24 ["depth"]
       36 LOADK                            R6 K25 ["count"]
       37 LOADK                            R7 K26 ["renderTime"]
       38 LOADK                            R8 K27 ["time"]
       39 SETLIST                          R3 R4 5 [1]
       41 SETTABLEKS                       R3 R2 K21 ["columns"]
       43 SETTABLEKS                       R2 R1 K15 ["profileComponents"]
       45 DUPTABLE                         R2 K22 [{["sortIndex"] = , ["sortOrder"] = , ["columns"]}]
       46 NEWTABLE                         R3 0 5
       48 LOADK                            R4 K28 ["startTime"]
       49 LOADK                            R5 K26 ["renderTime"]
       50 LOADK                            R6 K27 ["time"]
       51 LOADK                            R7 K29 ["cause"]
       52 LOADK                            R8 K30 ["details"]
       53 SETLIST                          R3 R4 5 [1]
       55 SETTABLEKS                       R3 R2 K21 ["columns"]
       57 SETTABLEKS                       R2 R1 K16 ["profileEvents"]
       59 DUPTABLE                         R2 K36 [{["componentSliceStart"] = -1, ["componentSliceEnd"] = -1, ["eventSliceStart"] = -1, ["eventSliceEnd"] = -1}]
       60 SETTABLEKS                       R2 R1 K17 ["slices"]
       62 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateRows"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R1 K1 ["bridge"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["devtools"]
        3 GETTABLEKS                       R0 R0 K1 ["agent"]
        5 DUPTABLE                         R2 K3 [{"rendererID"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["devtools"]
        9 GETTABLEKS                       R3 R3 K4 ["store"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["root"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["root"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_7:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["devtools"]
        4 GETTABLEKS                       R2 R2 K1 ["store"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["getElementByID"]
        9 CALL                             R2 2 1
       10 GETTABLEN                        R3 R0 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["worker"]
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R4 K4 ["getHostNode"]
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+9]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["worker"]
       22 GETTABLEKS                       R7 R4 K5 ["id"]
       24 NAMECALL                         R5 R5 K6 ["getHostInstance"]
       26 CALL                             R5 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K3 ["worker"]
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
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K8 ["Name"]
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
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R10 R10 K16 ["rows"]
      104 GETTABLE                         R9 R10 R1
      105 JUMPIF                           R9 ; [+19]
      106 DUPTABLE                         R9 K26 [{["instanceId"], ["count"] = 0, ["depth"], ["path"], ["pathString"], ["instanceName"], ["time"] = 0, ["renderTime"] = 0}]
      107 SETTABLEKS                       R1 R9 K17 ["instanceId"]
      109 JUMPIFNOT                        R6 ; [+2]
      110 LENGTH                           R10 R6
      111 JUMP                             ; [+1]
      112 LOADN                            R10 0
      113 SETTABLEKS                       R10 R9 K20 ["depth"]
      115 MOVE                             R10 R6
      116 JUMPIF                           R10 ; [+2]
      117 NEWTABLE                         R10 0 0
      119 SETTABLEKS                       R10 R9 K21 ["path"]
      121 SETTABLEKS                       R7 R9 K22 ["pathString"]
      123 SETTABLEKS                       R8 R9 K23 ["instanceName"]
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R10 R10 K16 ["rows"]
      128 SETTABLE                         R9 R10 R1
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R11 R10 K27 ["eventCount"]
      132 ADDK                             R11 R11 K28 [1]
      133 SETTABLEKS                       R11 R10 K27 ["eventCount"]
      135 GETTABLEKS                       R10 R9 K18 ["count"]
      137 ADDK                             R10 R10 K28 [1]
      138 SETTABLEKS                       R10 R9 K18 ["count"]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K29 ["instanceEvents"]
      143 GETTABLE                         R10 R11 R1
      144 JUMPIF                           R10 ; [+6]
      145 GETUPVAL                         R10 0
      146 GETTABLEKS                       R10 R10 K29 ["instanceEvents"]
      148 NEWTABLE                         R11 0 0
      150 SETTABLE                         R11 R10 R1
      151 NEWTABLE                         R10 0 0
      153 GETTABLEKS                       R11 R3 K30 ["isFirstMount"]
      155 JUMPIFNOT                        R11 ; [+7]
      156 FASTCALL2K                       TABLE_INSERT R10 K31 ; [+4]
      158 MOVE                             R12 R10
      159 LOADK                            R13 K31 ["mount"]
      160 GETUPVAL                         R11 2
      161 CALL                             R11 2 0
      162 JUMP                             ; [+18]
      163 GETTABLEKS                       R11 R3 K32 ["props"]
      165 JUMPIFNOT                        R11 ; [+6]
      166 FASTCALL2K                       TABLE_INSERT R10 K32 ; [+4]
      168 MOVE                             R12 R10
      169 LOADK                            R13 K32 ["props"]
      170 GETUPVAL                         R11 2
      171 CALL                             R11 2 0
      172 GETTABLEKS                       R11 R3 K33 ["state"]
      174 JUMPIFNOT                        R11 ; [+6]
      175 FASTCALL2K                       TABLE_INSERT R10 K33 ; [+4]
      177 MOVE                             R12 R10
      178 LOADK                            R13 K33 ["state"]
      179 GETUPVAL                         R11 2
      180 CALL                             R11 2 0
      181 GETTABLEKS                       R12 R3 K32 ["props"]
      183 JUMPIFNOT                        R12 ; [+5]
      184 GETUPVAL                         R11 5
      185 GETTABLEKS                       R12 R3 K32 ["props"]
      187 CALL                             R11 1 1
      188 JUMP                             ; [+1]
      189 LOADK                            R11 K34 [""]
      190 GETTABLEKS                       R13 R3 K33 ["state"]
      192 JUMPIFNOT                        R13 ; [+5]
      193 GETUPVAL                         R12 5
      194 GETTABLEKS                       R13 R3 K33 ["state"]
      196 CALL                             R12 1 1
      197 JUMP                             ; [+1]
      198 LOADK                            R12 K34 [""]
      199 MOVE                             R14 R11
      200 LOADK                            R15 K35 [" "]
      201 MOVE                             R16 R12
      202 CONCAT                           R13 R14 R16
      203 DUPTABLE                         R14 K42 [{["startTime"], ["renderTime"] = 0, ["time"] = 0, ["cause"], ["updateTrace"] = "", ["log"] = "", ["details"], ["detailsTip"]}]
      204 GETUPVAL                         R15 6
      205 GETTABLEKS                       R15 R15 K43 ["timestamp"]
      207 SETTABLEKS                       R15 R14 K36 ["startTime"]
      209 GETUPVAL                         R15 3
      210 MOVE                             R16 R10
      211 LOADK                            R17 K44 [", "]
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K37 ["cause"]
      215 SETTABLEKS                       R13 R14 K40 ["details"]
      217 SETTABLEKS                       R13 R14 K41 ["detailsTip"]
      219 GETUPVAL                         R15 0
      220 GETTABLEKS                       R15 R15 K45 ["currentEvents"]
      222 SETTABLE                         R14 R15 R1
      223 GETUPVAL                         R17 0
      224 GETTABLEKS                       R17 R17 K29 ["instanceEvents"]
      226 GETTABLE                         R16 R17 R1
      227 FASTCALL2                        TABLE_INSERT R16 R14 ; [+3]
      229 MOVE                             R17 R14
      230 GETUPVAL                         R15 2
      231 CALL                             R15 2 0
      232 RETURN                           R0 0

PROTO_8:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["currentEvents"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K1 ["time"]
        9 GETTABLEN                        R4 R0 2
       10 ADD                              R3 R3 R4
       11 SETTABLEKS                       R3 R2 K1 ["time"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["rows"]
       16 GETTABLE                         R3 R4 R1
       17 GETTABLEKS                       R4 R3 K1 ["time"]
       19 GETTABLEN                        R5 R0 2
       20 ADD                              R4 R4 R5
       21 SETTABLEKS                       R4 R3 K1 ["time"]
       23 RETURN                           R0 0

PROTO_9:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["currentEvents"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K1 ["renderTime"]
        9 GETTABLEN                        R4 R0 2
       10 ADD                              R3 R3 R4
       11 SETTABLEKS                       R3 R2 K1 ["renderTime"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["rows"]
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
       75 GETTABLEKS                       R9 R0 K15 ["slices"]
       77 GETTABLEKS                       R9 R9 K16 ["eventSliceStart"]
       79 GETTABLEKS                       R10 R0 K15 ["slices"]
       81 GETTABLEKS                       R10 R10 K17 ["eventSliceEnd"]
       83 CALL                             R7 3 1
       84 GETTABLEKS                       R8 R0 K1 ["worker"]
       86 DUPTABLE                         R10 K23 [{"componentRows", "eventRows", "rowCount", "eventCount", "instanceEventCount"}]
       87 GETUPVAL                         R11 6
       88 MOVE                             R12 R5
       89 GETTABLEKS                       R13 R0 K15 ["slices"]
       91 GETTABLEKS                       R13 R13 K24 ["componentSliceStart"]
       93 GETTABLEKS                       R14 R0 K15 ["slices"]
       95 GETTABLEKS                       R14 R14 K25 ["componentSliceEnd"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceName"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["find"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["searchTerm"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["instanceName"]
        6 NAMECALL                         R1 R1 K2 ["lower"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["searchTerm"]
       12 NAMECALL                         R1 R1 K3 ["find"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["filter"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["columns"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["sortIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["profileComponents"]
       10 GETTABLEKS                       R3 R3 K3 ["sortOrder"]
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
        8 GETTABLEKS                       R2 R0 K1 ["devtools"]
       10 GETTABLEKS                       R2 R2 K2 ["agent"]
       12 LOADB                            R4 1
       13 NAMECALL                         R2 R2 K3 ["startProfiling"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R0 K1 ["devtools"]
       19 GETTABLEKS                       R2 R2 K2 ["agent"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       45 GETTABLEKS                       R16 R0 K22 ["Roact17"]
       47 GETTABLEKS                       R16 R16 K23 ["types"]
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
