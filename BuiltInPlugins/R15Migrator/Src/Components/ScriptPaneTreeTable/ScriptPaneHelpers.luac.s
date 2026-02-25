PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Label"]
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["issueType"]
        2 GETTABLEKS                       R3 R0 K1 ["instanceName"]
        4 LOADNIL                          R4
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["PartKey"]
        8 JUMPIFNOTEQ                      R2 R5 ; [+10]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["Conversions"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K4 ["PartsKey"]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLE                         R4 R5 R3
       18 JUMP                             ; [+25]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K5 ["JointKey"]
       22 JUMPIFNOTEQ                      R2 R5 ; [+19]
       24 NEWTABLE                         R5 0 1
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K3 ["Conversions"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K6 ["JointsKey"]
       32 GETTABLE                         R8 R9 R10
       33 GETTABLE                         R7 R8 R3
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K5 ["JointKey"]
       37 GETTABLE                         R6 R7 R8
       38 SETLIST                          R5 R6 1 [1]
       40 MOVE                             R4 R5
       41 JUMP                             ; [+2]
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETUPVAL                         R5 1
       45 NEWTABLE                         R6 0 1
       47 DUPTABLE                         R7 K9 [{"Id", "Label"}]
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K10 ["UNASSIGNED"]
       51 SETTABLEKS                       R8 R7 K7 ["Id"]
       53 LOADK                            R10 K11 ["ScriptPane"]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R11 R12 K10 ["UNASSIGNED"]
       57 NAMECALL                         R8 R1 K12 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K8 ["Label"]
       62 SETLIST                          R6 R7 1 [1]
       64 GETUPVAL                         R7 3
       65 MOVE                             R8 R4
       66 DUPCLOSURE                       R9 K13 [PROTO_0]
       67 CALL                             R7 2 -1
       68 CALL                             R5 -1 1
       69 DUPTABLE                         R6 K16 [{"Type", "Options"}]
       70 LOADK                            R7 K17 ["Dropdown"]
       71 SETTABLEKS                       R7 R6 K14 ["Type"]
       73 SETTABLEKS                       R5 R6 K15 ["Options"]
       75 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["scriptName"]
        2 JUMPIFNOT                        R3 ; [+14]
        3 GETTABLEKS                       R3 R2 K0 ["scriptName"]
        5 JUMPIFEQKS                       R3 K1 [""] ; [+11]
        7 GETIMPORT                        R3 K4 [string.find]
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R2 K0 ["scriptName"]
       12 CALL                             R3 2 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 LOADB                            R3 1
       16 RETURN                           R3 1
       17 GETIMPORT                        R3 K6 [next]
       19 GETTABLEKS                       R5 R2 K7 ["rigFilters"]
       21 GETTABLEKS                       R4 R5 K8 ["R6"]
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETTABLEKS                       R5 R2 K7 ["rigFilters"]
       27 GETTABLEKS                       R4 R5 K8 ["R6"]
       29 GETTABLEKS                       R5 R1 K9 ["instanceName"]
       31 GETTABLE                         R3 R4 R5
       32 JUMPIF                           R3 ; [+2]
       33 LOADB                            R3 1
       34 RETURN                           R3 1
       35 GETIMPORT                        R3 K6 [next]
       37 GETTABLEKS                       R5 R2 K7 ["rigFilters"]
       39 GETTABLEKS                       R4 R5 K10 ["R15"]
       41 CALL                             R3 1 1
       42 JUMPIFNOT                        R3 ; [+24]
       43 GETTABLEKS                       R5 R2 K7 ["rigFilters"]
       45 GETTABLEKS                       R4 R5 K10 ["R15"]
       47 GETTABLEKS                       R3 R4 K11 ["Unassigned"]
       49 JUMPIF                           R3 ; [+5]
       50 GETTABLEKS                       R3 R1 K12 ["resolution"]
       52 JUMPIF                           R3 ; [+2]
       53 LOADB                            R3 1
       54 RETURN                           R3 1
       55 GETTABLEKS                       R5 R2 K7 ["rigFilters"]
       57 GETTABLEKS                       R4 R5 K10 ["R15"]
       59 GETTABLEKS                       R3 R4 K13 ["Assigned"]
       61 JUMPIF                           R3 ; [+5]
       62 GETTABLEKS                       R3 R1 K12 ["resolution"]
       64 JUMPIFNOT                        R3 ; [+2]
       65 LOADB                            R3 1
       66 RETURN                           R3 1
       67 LOADB                            R3 0
       68 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R5 R0
        1 LOADK                            R6 K0 ["|"]
        2 MOVE                             R7 R1
        3 LOADK                            R8 K0 ["|"]
        4 MOVE                             R9 R2
        5 CONCAT                           R4 R5 R9
        6 JUMPIFNOT                        R3 ; [+4]
        7 MOVE                             R5 R4
        8 LOADK                            R6 K0 ["|"]
        9 MOVE                             R7 R3
       10 CONCAT                           R4 R5 R7
       11 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Key"]
        3 GETTABLE                         R4 R0 R5
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K0 ["Key"]
       15 GETTABLE                         R5 R1 R6
       16 FASTCALL1                        TYPEOF R5 ; [+2]
       17 GETIMPORT                        R4 K2 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K3 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K0 ["Key"]
       28 GETTABLE                         R5 R0 R6
       29 GETTABLEKS                       R4 R5 K4 ["Value"]
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K0 ["Key"]
       35 GETTABLE                         R4 R0 R5
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K0 ["Key"]
       40 GETTABLE                         R6 R1 R7
       41 GETTABLEKS                       R5 R6 K4 ["Value"]
       43 JUMP                             ; [+4]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K0 ["Key"]
       47 GETTABLE                         R5 R1 R6
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K5 ["SortMethod"]
       51 JUMPIFNOT                        R6 ; [+11]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K5 ["SortMethod"]
       55 MOVE                             R7 R4
       56 MOVE                             R8 R5
       57 GETUPVAL                         R9 1
       58 CALL                             R6 3 1
       59 JUMPIFEQKNIL                     R6 ; [+20]
       61 RETURN                           R6 1
       62 JUMP                             ; [+17]
       63 JUMPIFEQ                         R4 R5 ; [+16]
       65 GETUPVAL                         R6 1
       66 GETIMPORT                        R7 K9 [Enum.SortDirection.Descending]
       68 JUMPIFNOTEQ                      R6 R7 ; [+6]
       70 JUMPIFLT                         R4 R5 ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 RETURN                           R6 1
       75 JUMPIFLT                         R5 R4 ; [+2]
       77 LOADB                            R6 0 +1
       78 LOADB                            R6 1
       79 RETURN                           R6 1
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R6 R7 K10 ["scriptLinkSort"]
       83 GETTABLEKS                       R8 R0 K11 ["name"]
       85 GETTABLEKS                       R7 R8 K4 ["Value"]
       87 GETTABLEKS                       R9 R1 K11 ["name"]
       89 GETTABLEKS                       R8 R9 K4 ["Value"]
       91 GETIMPORT                        R9 K13 [Enum.SortDirection.Ascending]
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 MOVE                             R7 R0
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 FORGPREP                         R7
        8 MOVE                             R14 R10
        9 NAMECALL                         R12 R1 K0 ["getScriptInstanceFromGUID"]
       11 CALL                             R12 2 1
       12 NAMECALL                         R13 R12 K1 ["GetFullName"]
       14 CALL                             R13 1 1
       15 NAMECALL                         R14 R11 K2 ["Get"]
       17 CALL                             R14 1 3
       18 FORGPREP                         R14
       19 GETUPVAL                         R20 0
       20 GETTABLEKS                       R19 R20 K3 ["isDiagnosticFilteredOut"]
       22 MOVE                             R20 R13
       23 MOVE                             R21 R18
       24 MOVE                             R22 R2
       25 CALL                             R19 3 1
       26 JUMPIF                           R19 ; [+313]
       27 GETTABLEKS                       R19 R18 K4 ["instanceName"]
       29 GETTABLEKS                       R20 R18 K5 ["issueType"]
       31 GETUPVAL                         R22 1
       32 GETTABLEKS                       R21 R22 K6 ["AnimationKey"]
       34 JUMPIFEQ                         R20 R21 ; [+305]
       36 GETTABLE                         R21 R5 R10
       37 JUMPIF                           R21 ; [+3]
       38 NEWTABLE                         R21 0 0
       40 SETTABLE                         R21 R5 R10
       41 GETTABLE                         R22 R5 R10
       42 GETTABLE                         R21 R22 R20
       43 JUMPIF                           R21 ; [+4]
       44 GETTABLE                         R21 R5 R10
       45 NEWTABLE                         R22 0 0
       47 SETTABLE                         R22 R21 R20
       48 GETTABLE                         R23 R5 R10
       49 GETTABLE                         R22 R23 R20
       50 GETTABLE                         R21 R22 R19
       51 GETUPVAL                         R22 2
       52 MOVE                             R23 R18
       53 MOVE                             R24 R4
       54 CALL                             R22 2 1
       55 GETIMPORT                        R23 K8 [next]
       57 MOVE                             R24 R3
       58 CALL                             R23 1 2
       59 MOVE                             R25 R24
       60 JUMPIFNOT                        R25 ; [+11]
       61 LOADB                            R25 1
       62 GETTABLEKS                       R26 R24 K5 ["issueType"]
       64 JUMPIFNOTEQ                      R26 R20 ; [+7]
       66 GETTABLEKS                       R26 R24 K4 ["instanceName"]
       68 JUMPIFNOTEQ                      R26 R19 ; [+2]
       70 LOADB                            R25 0 +1
       71 LOADB                            R25 1
       72 JUMPIFNOTEQKNIL                  R21 ; [+117]
       74 DUPTABLE                         R26 K20 [{"select", "name", "count", "issue", "r6", "r15", "menu_status", "children", "Path", "_id", "_disabled"}]
       75 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
       76 GETUPVAL                         R30 0
       77 GETTABLEKS                       R29 R30 K24 ["makeItemId"]
       79 MOVE                             R30 R10
       80 MOVE                             R31 R20
       81 MOVE                             R32 R19
       82 CALL                             R29 3 1
       83 GETTABLE                         R28 R3 R29
       84 SETTABLEKS                       R28 R27 K21 ["Value"]
       86 DUPTABLE                         R28 K26 [{"Type"}]
       87 LOADK                            R29 K27 ["Checkbox"]
       88 SETTABLEKS                       R29 R28 K25 ["Type"]
       90 SETTABLEKS                       R28 R27 K22 ["Schema"]
       92 SETTABLEKS                       R27 R26 K9 ["select"]
       94 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
       95 DUPTABLE                         R28 K29 [{"Script"}]
       96 SETTABLEKS                       R12 R28 K28 ["Script"]
       98 SETTABLEKS                       R28 R27 K21 ["Value"]
      100 DUPTABLE                         R28 K26 [{"Type"}]
      101 LOADK                            R29 K30 ["ScriptLink"]
      102 SETTABLEKS                       R29 R28 K25 ["Type"]
      104 SETTABLEKS                       R28 R27 K22 ["Schema"]
      106 SETTABLEKS                       R27 R26 K10 ["name"]
      108 LOADN                            R27 0
      109 SETTABLEKS                       R27 R26 K11 ["count"]
      111 GETUPVAL                         R28 3
      112 GETTABLE                         R27 R28 R20
      113 SETTABLEKS                       R27 R26 K12 ["issue"]
      115 SETTABLEKS                       R19 R26 K13 ["r6"]
      117 JUMPIFNOT                        R22 ; [+12]
      118 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      119 GETTABLEKS                       R28 R18 K31 ["resolution"]
      121 JUMPIF                           R28 ; [+3]
      122 GETUPVAL                         R29 4
      123 GETTABLEKS                       R28 R29 K32 ["UNASSIGNED"]
      125 SETTABLEKS                       R28 R27 K21 ["Value"]
      127 SETTABLEKS                       R22 R27 K22 ["Schema"]
      129 JUMP                             ; [+4]
      130 DUPTABLE                         R27 K33 [{"Value"}]
      131 LOADK                            R28 K34 [""]
      132 SETTABLEKS                       R28 R27 K21 ["Value"]
      134 SETTABLEKS                       R27 R26 K14 ["r15"]
      136 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      137 DUPTABLE                         R28 K36 [{"Checked"}]
      138 LOADB                            R29 1
      139 SETTABLEKS                       R29 R28 K35 ["Checked"]
      141 SETTABLEKS                       R28 R27 K21 ["Value"]
      143 DUPTABLE                         R28 K26 [{"Type"}]
      144 LOADK                            R29 K37 ["Status"]
      145 SETTABLEKS                       R29 R28 K25 ["Type"]
      147 SETTABLEKS                       R28 R27 K22 ["Schema"]
      149 SETTABLEKS                       R27 R26 K15 ["menu_status"]
      151 NEWTABLE                         R27 0 0
      153 SETTABLEKS                       R27 R26 K16 ["children"]
      155 DUPTABLE                         R27 K39 [{"scriptId", "instanceName", "issueType"}]
      156 SETTABLEKS                       R10 R27 K38 ["scriptId"]
      158 SETTABLEKS                       R19 R27 K4 ["instanceName"]
      160 SETTABLEKS                       R20 R27 K5 ["issueType"]
      162 SETTABLEKS                       R27 R26 K17 ["Path"]
      164 GETUPVAL                         R28 0
      165 GETTABLEKS                       R27 R28 K24 ["makeItemId"]
      167 MOVE                             R28 R10
      168 MOVE                             R29 R20
      169 MOVE                             R30 R19
      170 CALL                             R27 3 1
      171 SETTABLEKS                       R27 R26 K18 ["_id"]
      173 SETTABLEKS                       R25 R26 K19 ["_disabled"]
      175 MOVE                             R21 R26
      176 GETTABLEKS                       R26 R21 K17 ["Path"]
      178 SETTABLEKS                       R21 R26 K40 ["item"]
      180 GETTABLE                         R27 R5 R10
      181 GETTABLE                         R26 R27 R20
      182 SETTABLE                         R21 R26 R19
      183 FASTCALL2                        TABLE_INSERT R6 R21 ; [+5]
      185 MOVE                             R27 R6
      186 MOVE                             R28 R21
      187 GETIMPORT                        R26 K43 [table.insert]
      189 CALL                             R26 2 0
      190 DUPTABLE                         R26 K44 [{"select", "name", "count", "issue", "r6", "r15", "menu_status", "Path", "_id", "_disabled"}]
      191 LOADNIL                          R27
      192 SETTABLEKS                       R27 R26 K9 ["select"]
      194 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      195 DUPTABLE                         R28 K46 [{"Script", "Range"}]
      196 SETTABLEKS                       R12 R28 K28 ["Script"]
      198 GETTABLEKS                       R29 R18 K47 ["range"]
      200 SETTABLEKS                       R29 R28 K45 ["Range"]
      202 SETTABLEKS                       R28 R27 K21 ["Value"]
      204 DUPTABLE                         R28 K26 [{"Type"}]
      205 LOADK                            R29 K30 ["ScriptLink"]
      206 SETTABLEKS                       R29 R28 K25 ["Type"]
      208 SETTABLEKS                       R28 R27 K22 ["Schema"]
      210 SETTABLEKS                       R27 R26 K10 ["name"]
      212 LOADNIL                          R27
      213 SETTABLEKS                       R27 R26 K11 ["count"]
      215 LOADK                            R27 K34 [""]
      216 SETTABLEKS                       R27 R26 K12 ["issue"]
      218 SETTABLEKS                       R19 R26 K13 ["r6"]
      220 JUMPIFNOT                        R22 ; [+12]
      221 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      222 GETTABLEKS                       R28 R18 K31 ["resolution"]
      224 JUMPIF                           R28 ; [+3]
      225 GETUPVAL                         R29 4
      226 GETTABLEKS                       R28 R29 K32 ["UNASSIGNED"]
      228 SETTABLEKS                       R28 R27 K21 ["Value"]
      230 SETTABLEKS                       R22 R27 K22 ["Schema"]
      232 JUMP                             ; [+4]
      233 DUPTABLE                         R27 K33 [{"Value"}]
      234 LOADK                            R28 K34 [""]
      235 SETTABLEKS                       R28 R27 K21 ["Value"]
      237 SETTABLEKS                       R27 R26 K14 ["r15"]
      239 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      240 DUPTABLE                         R28 K36 [{"Checked"}]
      241 GETTABLEKS                       R30 R18 K31 ["resolution"]
      243 JUMPIFNOTEQKNIL                  R30 ; [+2]
      245 LOADB                            R29 0 +1
      246 LOADB                            R29 1
      247 SETTABLEKS                       R29 R28 K35 ["Checked"]
      249 SETTABLEKS                       R28 R27 K21 ["Value"]
      251 DUPTABLE                         R28 K26 [{"Type"}]
      252 LOADK                            R29 K37 ["Status"]
      253 SETTABLEKS                       R29 R28 K25 ["Type"]
      255 SETTABLEKS                       R28 R27 K22 ["Schema"]
      257 SETTABLEKS                       R27 R26 K15 ["menu_status"]
      259 DUPTABLE                         R27 K50 [{"parent", "scriptId", "issueType", "diagnostic"}]
      260 SETTABLEKS                       R21 R27 K48 ["parent"]
      262 SETTABLEKS                       R10 R27 K38 ["scriptId"]
      264 SETTABLEKS                       R20 R27 K5 ["issueType"]
      266 SETTABLEKS                       R18 R27 K49 ["diagnostic"]
      268 SETTABLEKS                       R27 R26 K17 ["Path"]
      270 GETUPVAL                         R28 0
      271 GETTABLEKS                       R27 R28 K24 ["makeItemId"]
      273 MOVE                             R28 R10
      274 MOVE                             R29 R20
      275 MOVE                             R30 R19
      276 GETTABLEKS                       R31 R18 K51 ["diagnosticId"]
      278 CALL                             R27 4 1
      279 SETTABLEKS                       R27 R26 K18 ["_id"]
      281 SETTABLEKS                       R25 R26 K19 ["_disabled"]
      283 GETTABLEKS                       R27 R21 K14 ["r15"]
      285 JUMPIFNOT                        R27 ; [+26]
      286 GETTABLEKS                       R28 R21 K14 ["r15"]
      288 GETTABLEKS                       R27 R28 K21 ["Value"]
      290 JUMPIFNOT                        R27 ; [+21]
      291 GETTABLEKS                       R27 R18 K31 ["resolution"]
      293 GETTABLEKS                       R29 R21 K14 ["r15"]
      295 GETTABLEKS                       R28 R29 K21 ["Value"]
      297 JUMPIFEQ                         R27 R28 ; [+14]
      299 JUMPIFNOT                        R22 ; [+9]
      300 DUPTABLE                         R27 K23 [{"Value", "Schema"}]
      301 GETUPVAL                         R29 4
      302 GETTABLEKS                       R28 R29 K32 ["UNASSIGNED"]
      304 SETTABLEKS                       R28 R27 K21 ["Value"]
      306 SETTABLEKS                       R22 R27 K22 ["Schema"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R27
      310 SETTABLEKS                       R27 R21 K14 ["r15"]
      312 GETTABLEKS                       R27 R18 K31 ["resolution"]
      314 JUMPIFNOTEQKNIL                  R27 ; [+8]
      316 GETTABLEKS                       R28 R21 K15 ["menu_status"]
      318 GETTABLEKS                       R27 R28 K21 ["Value"]
      320 LOADB                            R28 0
      321 SETTABLEKS                       R28 R27 K35 ["Checked"]
      323 GETTABLEKS                       R27 R26 K17 ["Path"]
      325 SETTABLEKS                       R26 R27 K40 ["item"]
      327 GETTABLEKS                       R28 R21 K16 ["children"]
      329 FASTCALL2                        TABLE_INSERT R28 R26 ; [+4]
      331 MOVE                             R29 R26
      332 GETIMPORT                        R27 K43 [table.insert]
      334 CALL                             R27 2 0
      335 GETTABLEKS                       R27 R21 K11 ["count"]
      337 ADDK                             R27 R27 K52 [1]
      338 SETTABLEKS                       R27 R21 K11 ["count"]
      340 FORGLOOP                         R14 2 ; [-322]
      342 FORGLOOP                         R7 2 ; [-335]
      344 RETURN                           R6 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_id"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Dash"]
       16 GETTABLEKS                       R3 R2 K9 ["append"]
       18 GETTABLEKS                       R4 R2 K10 ["join"]
       20 GETTABLEKS                       R5 R2 K11 ["keys"]
       22 GETTABLEKS                       R6 R2 K12 ["map"]
       24 GETTABLEKS                       R7 R2 K13 ["pretty"]
       26 GETTABLEKS                       R9 R0 K14 ["Src"]
       28 GETTABLEKS                       R8 R9 K15 ["Util"]
       30 GETIMPORT                        R9 K5 [require]
       32 GETTABLEKS                       R10 R8 K16 ["ScriptReplacement"]
       34 CALL                             R9 1 1
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R12 R8 K17 ["ScriptAnalysis"]
       39 GETTABLEKS                       R11 R12 K18 ["R6Info"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R13 R8 K17 ["ScriptAnalysis"]
       46 GETTABLEKS                       R12 R13 K19 ["Constants"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETIMPORT                        R15 K1 [script]
       53 GETTABLEKS                       R14 R15 K20 ["Parent"]
       55 GETTABLEKS                       R13 R14 K21 ["Sort"]
       57 CALL                             R12 1 1
       58 NEWTABLE                         R13 4 0
       60 GETTABLEKS                       R14 R10 K22 ["PartKey"]
       62 LOADK                            R15 K23 ["Part"]
       63 SETTABLE                         R15 R13 R14
       64 GETTABLEKS                       R14 R11 K24 ["ReferenceKey"]
       66 LOADK                            R15 K25 ["Variable"]
       67 SETTABLE                         R15 R13 R14
       68 GETTABLEKS                       R14 R10 K26 ["JointKey"]
       70 LOADK                            R15 K27 ["Joint"]
       71 SETTABLE                         R15 R13 R14
       72 NEWTABLE                         R14 8 0
       74 DUPCLOSURE                       R15 K28 [PROTO_1]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R16 K29 [PROTO_2]
       80 SETTABLEKS                       R16 R14 K30 ["isDiagnosticFilteredOut"]
       82 DUPCLOSURE                       R16 K31 [PROTO_3]
       83 SETTABLEKS                       R16 R14 K32 ["makeItemId"]
       85 DUPCLOSURE                       R16 K33 [PROTO_5]
       86 CAPTURE                          VAL R12
       87 SETTABLEKS                       R16 R14 K34 ["genSortItems"]
       89 DUPCLOSURE                       R16 K35 [PROTO_6]
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R16 R14 K36 ["generateTreeViewItems"]
       97 DUPCLOSURE                       R16 K37 [PROTO_7]
       98 SETTABLEKS                       R16 R14 K38 ["getItemId"]
      100 RETURN                           R14 1
