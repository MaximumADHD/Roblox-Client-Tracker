PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K1 ["Label"]
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["issueType"]
        2 GETTABLEKS                       R3 R0 K1 ["instanceName"]
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["PartKey"]
        8 JUMPIFNOTEQ                      R2 R5 ; [+10]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["Conversions"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["PartsKey"]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLE                         R4 R5 R3
       18 JUMP                             ; [+25]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["JointKey"]
       22 JUMPIFNOTEQ                      R2 R5 ; [+19]
       24 NEWTABLE                         R5 0 1
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K3 ["Conversions"]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K6 ["JointsKey"]
       32 GETTABLE                         R8 R9 R10
       33 GETTABLE                         R7 R8 R3
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["JointKey"]
       37 GETTABLE                         R6 R7 R8
       38 SETLIST                          R5 R6 1 [1]
       40 MOVE                             R4 R5
       41 JUMP                             ; [+2]
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETUPVAL                         R5 1
       45 NEWTABLE                         R6 0 1
       47 DUPTABLE                         R7 K9 [{"Id", "Label"}]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K10 ["UNASSIGNED"]
       51 SETTABLEKS                       R8 R7 K7 ["Id"]
       53 LOADK                            R10 K11 ["ScriptPane"]
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K10 ["UNASSIGNED"]
       57 NAMECALL                         R8 R1 K12 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K8 ["Label"]
       62 SETLIST                          R6 R7 1 [1]
       64 GETUPVAL                         R7 3
       65 MOVE                             R8 R4
       66 DUPCLOSURE                       R9 K13 [PROTO_0]
       67 CALL                             R7 2 -1
       68 CALL                             R5 -1 1
       69 DUPTABLE                         R6 K17 [{["Type"] = "Dropdown", ["Options"]}]
       70 SETTABLEKS                       R5 R6 K16 ["Options"]
       72 RETURN                           R6 1

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
       19 GETTABLEKS                       R4 R2 K7 ["rigFilters"]
       21 GETTABLEKS                       R4 R4 K8 ["R6"]
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETTABLEKS                       R4 R2 K7 ["rigFilters"]
       27 GETTABLEKS                       R4 R4 K8 ["R6"]
       29 GETTABLEKS                       R5 R1 K9 ["instanceName"]
       31 GETTABLE                         R3 R4 R5
       32 JUMPIF                           R3 ; [+2]
       33 LOADB                            R3 1
       34 RETURN                           R3 1
       35 GETIMPORT                        R3 K6 [next]
       37 GETTABLEKS                       R4 R2 K7 ["rigFilters"]
       39 GETTABLEKS                       R4 R4 K10 ["R15"]
       41 CALL                             R3 1 1
       42 JUMPIFNOT                        R3 ; [+24]
       43 GETTABLEKS                       R3 R2 K7 ["rigFilters"]
       45 GETTABLEKS                       R3 R3 K10 ["R15"]
       47 GETTABLEKS                       R3 R3 K11 ["Unassigned"]
       49 JUMPIF                           R3 ; [+5]
       50 GETTABLEKS                       R3 R1 K12 ["resolution"]
       52 JUMPIF                           R3 ; [+2]
       53 LOADB                            R3 1
       54 RETURN                           R3 1
       55 GETTABLEKS                       R3 R2 K7 ["rigFilters"]
       57 GETTABLEKS                       R3 R3 K10 ["R15"]
       59 GETTABLEKS                       R3 R3 K13 ["Assigned"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["Key"]
        3 GETTABLE                         R4 R0 R5
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["Key"]
       15 GETTABLE                         R5 R1 R6
       16 FASTCALL1                        TYPEOF R5 ; [+2]
       17 GETIMPORT                        R4 K2 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K3 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["Key"]
       28 GETTABLE                         R4 R0 R5
       29 GETTABLEKS                       R4 R4 K4 ["Value"]
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["Key"]
       35 GETTABLE                         R4 R0 R5
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K0 ["Key"]
       40 GETTABLE                         R5 R1 R6
       41 GETTABLEKS                       R5 R5 K4 ["Value"]
       43 JUMP                             ; [+4]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K0 ["Key"]
       47 GETTABLE                         R5 R1 R6
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K5 ["SortMethod"]
       51 JUMPIFNOT                        R6 ; [+11]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K5 ["SortMethod"]
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
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R6 R6 K10 ["scriptLinkSort"]
       83 GETTABLEKS                       R7 R0 K11 ["name"]
       85 GETTABLEKS                       R7 R7 K4 ["Value"]
       87 GETTABLEKS                       R8 R1 K11 ["name"]
       89 GETTABLEKS                       R8 R8 K4 ["Value"]
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
       19 GETUPVAL                         R19 0
       20 GETTABLEKS                       R19 R19 K3 ["isDiagnosticFilteredOut"]
       22 MOVE                             R20 R13
       23 MOVE                             R21 R18
       24 MOVE                             R22 R2
       25 CALL                             R19 3 1
       26 JUMPIF                           R19 ; [+277]
       27 GETTABLEKS                       R19 R18 K4 ["instanceName"]
       29 GETTABLEKS                       R20 R18 K5 ["issueType"]
       31 GETUPVAL                         R21 1
       32 GETTABLEKS                       R21 R21 K6 ["AnimationKey"]
       34 JUMPIFEQ                         R20 R21 ; [+269]
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
       72 JUMPIFNOTEQKNIL                  R21 ; [+99]
       74 DUPTABLE                         R26 K21 [{["select"], ["name"], ["count"] = 0, ["issue"], ["r6"], ["r15"], ["menu_status"], ["children"], ["Path"], ["_id"], ["_disabled"]}]
       75 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
       76 GETUPVAL                         R29 0
       77 GETTABLEKS                       R29 R29 K25 ["makeItemId"]
       79 MOVE                             R30 R10
       80 MOVE                             R31 R20
       81 MOVE                             R32 R19
       82 CALL                             R29 3 1
       83 GETTABLE                         R28 R3 R29
       84 SETTABLEKS                       R28 R27 K22 ["Value"]
       86 DUPTABLE                         R28 K28 [{["Type"] = "Checkbox"}]
       87 SETTABLEKS                       R28 R27 K23 ["Schema"]
       89 SETTABLEKS                       R27 R26 K9 ["select"]
       91 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
       92 DUPTABLE                         R28 K30 [{"Script"}]
       93 SETTABLEKS                       R12 R28 K29 ["Script"]
       95 SETTABLEKS                       R28 R27 K22 ["Value"]
       97 DUPTABLE                         R28 K32 [{["Type"] = "ScriptLink"}]
       98 SETTABLEKS                       R28 R27 K23 ["Schema"]
      100 SETTABLEKS                       R27 R26 K10 ["name"]
      102 GETUPVAL                         R28 3
      103 GETTABLE                         R27 R28 R20
      104 SETTABLEKS                       R27 R26 K13 ["issue"]
      106 SETTABLEKS                       R19 R26 K14 ["r6"]
      108 JUMPIFNOT                        R22 ; [+12]
      109 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      110 GETTABLEKS                       R28 R18 K33 ["resolution"]
      112 JUMPIF                           R28 ; [+3]
      113 GETUPVAL                         R28 4
      114 GETTABLEKS                       R28 R28 K34 ["UNASSIGNED"]
      116 SETTABLEKS                       R28 R27 K22 ["Value"]
      118 SETTABLEKS                       R22 R27 K23 ["Schema"]
      120 JUMP                             ; [+1]
      121 DUPTABLE                         R27 K36 [{["Value"] = ""}]
      122 SETTABLEKS                       R27 R26 K15 ["r15"]
      124 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      125 DUPTABLE                         R28 K39 [{["Checked"] = True}]
      126 SETTABLEKS                       R28 R27 K22 ["Value"]
      128 DUPTABLE                         R28 K41 [{["Type"] = "Status"}]
      129 SETTABLEKS                       R28 R27 K23 ["Schema"]
      131 SETTABLEKS                       R27 R26 K16 ["menu_status"]
      133 NEWTABLE                         R27 0 0
      135 SETTABLEKS                       R27 R26 K17 ["children"]
      137 DUPTABLE                         R27 K43 [{"scriptId", "instanceName", "issueType"}]
      138 SETTABLEKS                       R10 R27 K42 ["scriptId"]
      140 SETTABLEKS                       R19 R27 K4 ["instanceName"]
      142 SETTABLEKS                       R20 R27 K5 ["issueType"]
      144 SETTABLEKS                       R27 R26 K18 ["Path"]
      146 GETUPVAL                         R27 0
      147 GETTABLEKS                       R27 R27 K25 ["makeItemId"]
      149 MOVE                             R28 R10
      150 MOVE                             R29 R20
      151 MOVE                             R30 R19
      152 CALL                             R27 3 1
      153 SETTABLEKS                       R27 R26 K19 ["_id"]
      155 SETTABLEKS                       R25 R26 K20 ["_disabled"]
      157 MOVE                             R21 R26
      158 GETTABLEKS                       R26 R21 K18 ["Path"]
      160 SETTABLEKS                       R21 R26 K44 ["item"]
      162 GETTABLE                         R27 R5 R10
      163 GETTABLE                         R26 R27 R20
      164 SETTABLE                         R21 R26 R19
      165 FASTCALL2                        TABLE_INSERT R6 R21 ; [+5]
      167 MOVE                             R27 R6
      168 MOVE                             R28 R21
      169 GETIMPORT                        R26 K47 [table.insert]
      171 CALL                             R26 2 0
      172 DUPTABLE                         R26 K49 [{["select"] = , ["name"], ["count"] = , ["issue"] = "", ["r6"], ["r15"], ["menu_status"], ["Path"], ["_id"], ["_disabled"]}]
      173 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      174 DUPTABLE                         R28 K51 [{"Script", "Range"}]
      175 SETTABLEKS                       R12 R28 K29 ["Script"]
      177 GETTABLEKS                       R29 R18 K52 ["range"]
      179 SETTABLEKS                       R29 R28 K50 ["Range"]
      181 SETTABLEKS                       R28 R27 K22 ["Value"]
      183 DUPTABLE                         R28 K32 [{["Type"] = "ScriptLink"}]
      184 SETTABLEKS                       R28 R27 K23 ["Schema"]
      186 SETTABLEKS                       R27 R26 K10 ["name"]
      188 SETTABLEKS                       R19 R26 K14 ["r6"]
      190 JUMPIFNOT                        R22 ; [+12]
      191 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      192 GETTABLEKS                       R28 R18 K33 ["resolution"]
      194 JUMPIF                           R28 ; [+3]
      195 GETUPVAL                         R28 4
      196 GETTABLEKS                       R28 R28 K34 ["UNASSIGNED"]
      198 SETTABLEKS                       R28 R27 K22 ["Value"]
      200 SETTABLEKS                       R22 R27 K23 ["Schema"]
      202 JUMP                             ; [+1]
      203 DUPTABLE                         R27 K36 [{["Value"] = ""}]
      204 SETTABLEKS                       R27 R26 K15 ["r15"]
      206 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      207 DUPTABLE                         R28 K53 [{"Checked"}]
      208 GETTABLEKS                       R30 R18 K33 ["resolution"]
      210 JUMPIFNOTEQKNIL                  R30 ; [+2]
      212 LOADB                            R29 0 +1
      213 LOADB                            R29 1
      214 SETTABLEKS                       R29 R28 K37 ["Checked"]
      216 SETTABLEKS                       R28 R27 K22 ["Value"]
      218 DUPTABLE                         R28 K41 [{["Type"] = "Status"}]
      219 SETTABLEKS                       R28 R27 K23 ["Schema"]
      221 SETTABLEKS                       R27 R26 K16 ["menu_status"]
      223 DUPTABLE                         R27 K56 [{"parent", "scriptId", "issueType", "diagnostic"}]
      224 SETTABLEKS                       R21 R27 K54 ["parent"]
      226 SETTABLEKS                       R10 R27 K42 ["scriptId"]
      228 SETTABLEKS                       R20 R27 K5 ["issueType"]
      230 SETTABLEKS                       R18 R27 K55 ["diagnostic"]
      232 SETTABLEKS                       R27 R26 K18 ["Path"]
      234 GETUPVAL                         R27 0
      235 GETTABLEKS                       R27 R27 K25 ["makeItemId"]
      237 MOVE                             R28 R10
      238 MOVE                             R29 R20
      239 MOVE                             R30 R19
      240 GETTABLEKS                       R31 R18 K57 ["diagnosticId"]
      242 CALL                             R27 4 1
      243 SETTABLEKS                       R27 R26 K19 ["_id"]
      245 SETTABLEKS                       R25 R26 K20 ["_disabled"]
      247 GETTABLEKS                       R27 R21 K15 ["r15"]
      249 JUMPIFNOT                        R27 ; [+26]
      250 GETTABLEKS                       R27 R21 K15 ["r15"]
      252 GETTABLEKS                       R27 R27 K22 ["Value"]
      254 JUMPIFNOT                        R27 ; [+21]
      255 GETTABLEKS                       R27 R18 K33 ["resolution"]
      257 GETTABLEKS                       R28 R21 K15 ["r15"]
      259 GETTABLEKS                       R28 R28 K22 ["Value"]
      261 JUMPIFEQ                         R27 R28 ; [+14]
      263 JUMPIFNOT                        R22 ; [+9]
      264 DUPTABLE                         R27 K24 [{"Value", "Schema"}]
      265 GETUPVAL                         R28 4
      266 GETTABLEKS                       R28 R28 K34 ["UNASSIGNED"]
      268 SETTABLEKS                       R28 R27 K22 ["Value"]
      270 SETTABLEKS                       R22 R27 K23 ["Schema"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R27
      274 SETTABLEKS                       R27 R21 K15 ["r15"]
      276 GETTABLEKS                       R27 R18 K33 ["resolution"]
      278 JUMPIFNOTEQKNIL                  R27 ; [+8]
      280 GETTABLEKS                       R27 R21 K16 ["menu_status"]
      282 GETTABLEKS                       R27 R27 K22 ["Value"]
      284 LOADB                            R28 0
      285 SETTABLEKS                       R28 R27 K37 ["Checked"]
      287 GETTABLEKS                       R27 R26 K18 ["Path"]
      289 SETTABLEKS                       R26 R27 K44 ["item"]
      291 GETTABLEKS                       R28 R21 K17 ["children"]
      293 FASTCALL2                        TABLE_INSERT R28 R26 ; [+4]
      295 MOVE                             R29 R26
      296 GETIMPORT                        R27 K47 [table.insert]
      298 CALL                             R27 2 0
      299 GETTABLEKS                       R27 R21 K11 ["count"]
      301 ADDK                             R27 R27 K58 [1]
      302 SETTABLEKS                       R27 R21 K11 ["count"]
      304 FORGLOOP                         R14 2 ; [-286]
      306 FORGLOOP                         R7 2 ; [-299]
      308 RETURN                           R6 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Dash"]
       16 GETTABLEKS                       R3 R2 K9 ["append"]
       18 GETTABLEKS                       R4 R2 K10 ["join"]
       20 GETTABLEKS                       R5 R2 K11 ["keys"]
       22 GETTABLEKS                       R6 R2 K12 ["map"]
       24 GETTABLEKS                       R7 R2 K13 ["pretty"]
       26 GETTABLEKS                       R8 R0 K14 ["Src"]
       28 GETTABLEKS                       R8 R8 K15 ["Util"]
       30 GETIMPORT                        R9 K5 [require]
       32 GETTABLEKS                       R10 R8 K16 ["ScriptReplacement"]
       34 CALL                             R9 1 1
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R11 R8 K17 ["ScriptAnalysis"]
       39 GETTABLEKS                       R11 R11 K18 ["R6Info"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R8 K17 ["ScriptAnalysis"]
       46 GETTABLEKS                       R12 R12 K19 ["Constants"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETIMPORT                        R13 K1 [script]
       53 GETTABLEKS                       R13 R13 K20 ["Parent"]
       55 GETTABLEKS                       R13 R13 K21 ["Sort"]
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
