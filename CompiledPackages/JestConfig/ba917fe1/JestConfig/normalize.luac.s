PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+24]
        7 GETIMPORT                        R2 K4 [error]
        9 GETUPVAL                         R3 0
       10 LOADK                            R4 K5 ["  Directory %s in the %s option was not found."]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K6 ["bold"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R8 R0
       16 GETIMPORT                        R7 K8 [tostring]
       18 CALL                             R7 1 1
       19 CALL                             R6 1 1
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K6 ["bold"]
       23 MOVE                             R8 R1
       24 CALL                             R7 1 -1
       25 NAMECALL                         R4 R4 K9 ["format"]
       27 CALL                             R4 -1 -1
       28 CALL                             R3 -1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R0 K1 ["id"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R0 K2 ["rootDir"]
       10 LOADNIL                          R5
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R0 K1 ["id"]
       14 GETTABLEKS                       R3 R0 K3 ["setupFiles"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R0 K3 ["setupFiles"]
       22 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["rootDir"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+14]
        7 GETIMPORT                        R1 K3 [error]
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K4 ["  Configuration option %s must be specified."]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K5 ["bold"]
       14 LOADK                            R6 K1 ["rootDir"]
       15 CALL                             R5 1 -1
       16 NAMECALL                         R3 R3 K6 ["format"]
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 -1
       20 CALL                             R1 -1 0
       21 GETTABLEKS                       R1 R0 K1 ["rootDir"]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K8 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFEQKS                       R2 K9 ["Instance"] ; [+24]
       30 GETIMPORT                        R2 K3 [error]
       32 GETUPVAL                         R3 1
       33 LOADK                            R4 K10 ["  Directory %s in the %s option was not found."]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K5 ["bold"]
       37 FASTCALL1                        TOSTRING R1 ; [+3]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K12 [tostring]
       41 CALL                             R7 1 1
       42 CALL                             R6 1 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K5 ["bold"]
       46 LOADK                            R8 K1 ["rootDir"]
       47 CALL                             R7 1 -1
       48 NAMECALL                         R4 R4 K6 ["format"]
       50 CALL                             R4 -1 -1
       51 CALL                             R3 -1 -1
       52 CALL                             R2 -1 0
       53 GETUPVAL                         R2 3
       54 GETTABLEKS                       R1 R2 K13 ["assign"]
       56 NEWTABLE                         R2 0 0
       58 MOVE                             R3 R0
       59 DUPTABLE                         R4 K14 [{"rootDir"}]
       60 GETTABLEKS                       R5 R0 K1 ["rootDir"]
       62 SETTABLEKS                       R5 R4 K1 ["rootDir"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

PROTO_7:
        0 RETURN                           R0 1

PROTO_8:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_"]
        4 JUMPIFEQKNIL                     R2 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["concat"]
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R4 R0 K0 ["_"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 GETTABLEKS                       R2 R0 K2 ["testPathPattern"]
       16 JUMPIFEQKNIL                     R2 ; [+9]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["concat"]
       21 MOVE                             R3 R1
       22 GETTABLEKS                       R4 R0 K2 ["testPathPattern"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 DUPCLOSURE                       R2 K3 [PROTO_8]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K4 ["join"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K5 ["map"]
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R4 2 1
       36 LOADK                            R5 K6 ["|"]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 1
       39 MOVE                             R5 R3
       40 CALL                             R4 1 1
       41 JUMPIFNOT                        R4 ; [+1]
       42 RETURN                           R3 1
       43 GETUPVAL                         R4 2
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 LOADK                            R4 K7 [""]
       47 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["stdout"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["log"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R2 R3 K2 ["red"]
       11 LOADK                            R6 K3 ["  Invalid testPattern %s supplied. "]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R9 R0
       14 GETIMPORT                        R8 K5 [tostring]
       16 CALL                             R8 1 1
       17 NAMECALL                         R6 R6 K6 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R4 R6
       21 LOADK                            R5 K7 ["Running all tests instead."]
       22 CONCAT                           R3 R4 R5
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["<rootDir>"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["rootDir"]
        5 RETURN                           R1 1
        6 MOVE                             R1 R0
        7 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOTEQKS                    R0 K0 ["<rootDir>"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["rootDir"]
        5 RETURN                           R1 1
        6 MOVE                             R1 R0
        7 RETURN                           R1 1

PROTO_13:
        0 RETURN                           R0 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["concat"]
        5 MOVE                             R4 R0
        6 LENGTH                           R6 R2
        7 LOADN                            R7 0
        8 JUMPIFNOTLT                      R7 R6 ; [+3]
       10 MOVE                             R5 R2
       11 JUMP                             ; [+5]
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R1
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_15:
        0 JUMPIFNOTEQKS                    R1 K0 ["resolver"] ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 JUMPIFEQKS                       R1 K1 ["setupFiles"] ; [+5]
        7 JUMPIFEQKS                       R1 K2 ["setupFilesAfterEnv"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K3 ["snapshotSerializers"] ; [+13]
       11 GETTABLE                         R4 R2 R1
       12 JUMPIFEQKNIL                     R4 ; [+362]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K4 ["map"]
       17 MOVE                             R6 R4
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 JUMP                             ; [+352]
       23 JUMPIFEQKS                       R1 K5 ["modulePaths"] ; [+3]
       25 JUMPIFNOTEQKS                    R1 K6 ["roots"] ; [+13]
       27 GETTABLE                         R4 R2 R1
       28 JUMPIFEQKNIL                     R4 ; [+346]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K4 ["map"]
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 1
       37 MOVE                             R3 R5
       38 JUMP                             ; [+336]
       39 JUMPIFNOTEQKS                    R1 K7 ["testPathIgnorePatterns"] ; [+3]
       41 GETTABLE                         R3 R2 R1
       42 JUMP                             ; [+332]
       43 JUMPIFNOTEQKS                    R1 K8 ["projects"] ; [+26]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R4 R5 K9 ["reduce"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R5 R6 K4 ["map"]
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R7 R8 K10 ["toJSBoolean"]
       54 GETTABLE                         R8 R2 R1
       55 CALL                             R7 1 1
       56 JUMPIFNOT                        R7 ; [+2]
       57 GETTABLE                         R6 R2 R1
       58 JUMPIF                           R6 ; [+2]
       59 NEWTABLE                         R6 0 0
       61 DUPCLOSURE                       R7 K11 [PROTO_13]
       62 CALL                             R5 2 1
       63 DUPCLOSURE                       R6 K12 [PROTO_14]
       64 CAPTURE                          UPVAL U1
       65 NEWTABLE                         R7 0 0
       67 CALL                             R4 3 1
       68 MOVE                             R3 R4
       69 JUMP                             ; [+305]
       70 JUMPIFEQKS                       R1 K13 ["moduleDirectories"] ; [+3]
       72 JUMPIFNOTEQKS                    R1 K14 ["testMatch"] ; [+22]
       74 GETTABLE                         R4 R2 R1
       75 JUMPIFEQKNIL                     R4 ; [+17]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R5 R6 K15 ["isArray"]
       80 MOVE                             R6 R4
       81 CALL                             R5 1 1
       82 JUMPIFNOT                        R5 ; [+8]
       83 GETUPVAL                         R6 1
       84 GETTABLEKS                       R5 R6 K4 ["map"]
       86 MOVE                             R6 R4
       87 GETUPVAL                         R7 3
       88 CALL                             R5 2 1
       89 MOVE                             R3 R5
       90 JUMP                             ; [+284]
       91 MOVE                             R3 R4
       92 JUMP                             ; [+282]
       93 MOVE                             R3 R4
       94 JUMP                             ; [+280]
       95 JUMPIFNOTEQKS                    R1 K16 ["testRegex"] ; [+33]
       97 GETTABLE                         R4 R2 R1
       98 JUMPIFEQKNIL                     R4 ; [+27]
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R5 R6 K10 ["toJSBoolean"]
      103 MOVE                             R6 R4
      104 CALL                             R5 1 1
      105 JUMPIFNOT                        R5 ; [+20]
      106 GETUPVAL                         R6 1
      107 GETTABLEKS                       R5 R6 K4 ["map"]
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R7 R8 K15 ["isArray"]
      112 MOVE                             R8 R4
      113 CALL                             R7 1 1
      114 JUMPIFNOT                        R7 ; [+2]
      115 MOVE                             R6 R4
      116 JUMP                             ; [+5]
      117 NEWTABLE                         R6 0 1
      119 MOVE                             R7 R4
      120 SETLIST                          R6 R7 1 [1]
      122 GETUPVAL                         R7 4
      123 CALL                             R5 2 1
      124 MOVE                             R3 R5
      125 JUMP                             ; [+249]
      126 NEWTABLE                         R3 0 0
      128 JUMP                             ; [+246]
      129 JUMPIFNOTEQKS                    R1 K17 ["bail"] ; [+34]
      131 GETTABLE                         R4 R2 R1
      132 FASTCALL1                        TYPEOF R4 ; [+3]
      133 MOVE                             R6 R4
      134 GETIMPORT                        R5 K19 [typeof]
      136 CALL                             R5 1 1
      137 JUMPIFNOTEQKS                    R5 K20 ["boolean"] ; [+6]
      139 JUMPIFNOT                        R4 ; [+2]
      140 LOADN                            R3 1
      141 JUMP                             ; [+233]
      142 LOADN                            R3 0
      143 JUMP                             ; [+231]
      144 FASTCALL1                        TYPEOF R4 ; [+3]
      145 MOVE                             R6 R4
      146 GETIMPORT                        R5 K19 [typeof]
      148 CALL                             R5 1 1
      149 JUMPIFNOTEQKS                    R5 K21 ["string"] ; [+12]
      151 LOADN                            R3 1
      152 GETUPVAL                         R7 5
      153 GETTABLEKS                       R6 R7 K22 ["_"]
      155 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      157 MOVE                             R7 R4
      158 GETIMPORT                        R5 K25 [table.insert]
      160 CALL                             R5 2 0
      161 JUMP                             ; [+213]
      162 GETTABLE                         R3 R2 R1
      163 JUMP                             ; [+211]
      164 JUMPIFNOTEQKS                    R1 K26 ["displayName"] ; [+74]
      166 GETTABLE                         R4 R2 R1
      167 FASTCALL1                        TYPEOF R4 ; [+3]
      168 MOVE                             R6 R4
      169 GETIMPORT                        R5 K19 [typeof]
      171 CALL                             R5 1 1
      172 JUMPIFNOTEQKS                    R5 K23 ["table"] ; [+54]
      174 GETTABLEKS                       R5 R4 K27 ["name"]
      176 GETTABLEKS                       R6 R4 K28 ["color"]
      178 GETUPVAL                         R8 2
      179 GETTABLEKS                       R7 R8 K10 ["toJSBoolean"]
      181 MOVE                             R8 R5
      182 CALL                             R7 1 1
      183 JUMPIFNOT                        R7 ; [+20]
      184 GETUPVAL                         R8 2
      185 GETTABLEKS                       R7 R8 K10 ["toJSBoolean"]
      187 MOVE                             R8 R6
      188 CALL                             R7 1 1
      189 JUMPIFNOT                        R7 ; [+14]
      190 FASTCALL1                        TYPEOF R5 ; [+3]
      191 MOVE                             R8 R5
      192 GETIMPORT                        R7 K19 [typeof]
      194 CALL                             R7 1 1
      195 JUMPIFNOTEQKS                    R7 K21 ["string"] ; [+8]
      197 FASTCALL1                        TYPEOF R6 ; [+3]
      198 MOVE                             R8 R6
      199 GETIMPORT                        R7 K19 [typeof]
      201 CALL                             R7 1 1
      202 JUMPIFEQKS                       R7 K21 ["string"] ; [+22]
      204 LOADK                            R13 K29 ["  Option \"%s\" must be of type:\n\n"]
      205 GETUPVAL                         R16 6
      206 GETTABLEKS                       R15 R16 K30 ["bold"]
      208 LOADK                            R16 K26 ["displayName"]
      209 CALL                             R15 1 -1
      210 NAMECALL                         R13 R13 K31 ["format"]
      212 CALL                             R13 -1 1
      213 MOVE                             R8 R13
      214 LOADK                            R9 K32 ["  {\n"]
      215 LOADK                            R10 K33 ["    name: string;\n"]
      216 LOADK                            R11 K34 ["    color: string;\n"]
      217 LOADK                            R12 K35 ["  }\n"]
      218 CONCAT                           R7 R8 R12
      219 GETIMPORT                        R8 K37 [error]
      221 GETUPVAL                         R9 7
      222 MOVE                             R10 R7
      223 CALL                             R9 1 -1
      224 CALL                             R8 -1 0
      225 GETTABLE                         R3 R2 R1
      226 JUMP                             ; [+148]
      227 DUPTABLE                         R5 K38 [{"color", "name"}]
      228 GETUPVAL                         R6 8
      229 GETUPVAL                         R8 0
      230 GETTABLEKS                       R7 R8 K39 ["runner"]
      232 CALL                             R6 1 1
      233 SETTABLEKS                       R6 R5 K28 ["color"]
      235 SETTABLEKS                       R4 R5 K27 ["name"]
      237 MOVE                             R3 R5
      238 JUMP                             ; [+136]
      239 JUMPIFNOTEQKS                    R1 K40 ["testTimeout"] ; [+21]
      241 GETTABLE                         R4 R2 R1
      242 LOADN                            R5 0
      243 JUMPIFNOTLT                      R4 R5 ; [+15]
      245 GETIMPORT                        R4 K37 [error]
      247 GETUPVAL                         R5 7
      248 LOADK                            R6 K41 ["  Option \"%s\" must be a natural number."]
      249 GETUPVAL                         R9 6
      250 GETTABLEKS                       R8 R9 K30 ["bold"]
      252 LOADK                            R9 K40 ["testTimeout"]
      253 CALL                             R8 1 -1
      254 NAMECALL                         R6 R6 K31 ["format"]
      256 CALL                             R6 -1 -1
      257 CALL                             R5 -1 -1
      258 CALL                             R4 -1 0
      259 GETTABLE                         R3 R2 R1
      260 JUMP                             ; [+114]
      261 JUMPIFEQKS                       R1 K42 ["automock"] ; [+111]
      263 JUMPIFEQKS                       R1 K43 ["cache"] ; [+109]
      265 JUMPIFEQKS                       R1 K44 ["changedSince"] ; [+107]
      267 JUMPIFEQKS                       R1 K45 ["changedFilesWithAncestor"] ; [+105]
      269 JUMPIFEQKS                       R1 K46 ["clearMocks"] ; [+103]
      271 JUMPIFEQKS                       R1 K47 ["collectCoverage"] ; [+101]
      273 JUMPIFEQKS                       R1 K48 ["coverageProvider"] ; [+99]
      275 JUMPIFEQKS                       R1 K49 ["coverageReporters"] ; [+97]
      277 JUMPIFEQKS                       R1 K50 ["coverageThreshold"] ; [+95]
      279 JUMPIFEQKS                       R1 K51 ["detectLeaks"] ; [+93]
      281 JUMPIFEQKS                       R1 K52 ["detectOpenHandles"] ; [+91]
      283 JUMPIFEQKS                       R1 K53 ["errorOnDeprecated"] ; [+89]
      285 JUMPIFEQKS                       R1 K54 ["expand"] ; [+87]
      287 JUMPIFEQKS                       R1 K55 ["extensionsToTreatAsEsm"] ; [+85]
      289 JUMPIFEQKS                       R1 K56 ["extraGlobals"] ; [+83]
      291 JUMPIFEQKS                       R1 K57 ["globals"] ; [+81]
      293 JUMPIFEQKS                       R1 K58 ["findRelatedTests"] ; [+79]
      295 JUMPIFEQKS                       R1 K59 ["forceCoverageMatch"] ; [+77]
      297 JUMPIFEQKS                       R1 K60 ["forceExit"] ; [+75]
      299 JUMPIFEQKS                       R1 K61 ["injectGlobals"] ; [+73]
      301 JUMPIFEQKS                       R1 K62 ["lastCommit"] ; [+71]
      303 JUMPIFEQKS                       R1 K63 ["listTests"] ; [+69]
      305 JUMPIFEQKS                       R1 K64 ["logHeapUsage"] ; [+67]
      307 JUMPIFEQKS                       R1 K65 ["maxConcurrency"] ; [+65]
      309 JUMPIFEQKS                       R1 K66 ["id"] ; [+63]
      311 JUMPIFEQKS                       R1 K67 ["noStackTrace"] ; [+61]
      313 JUMPIFEQKS                       R1 K68 ["notify"] ; [+59]
      315 JUMPIFEQKS                       R1 K69 ["notifyMode"] ; [+57]
      317 JUMPIFEQKS                       R1 K70 ["onlyChanged"] ; [+55]
      319 JUMPIFEQKS                       R1 K71 ["onlyFailures"] ; [+53]
      321 JUMPIFEQKS                       R1 K72 ["outputFile"] ; [+51]
      323 JUMPIFEQKS                       R1 K73 ["passWithNoTests"] ; [+49]
      325 JUMPIFEQKS                       R1 K74 ["replname"] ; [+47]
      327 JUMPIFEQKS                       R1 K75 ["reporters"] ; [+45]
      329 JUMPIFEQKS                       R1 K76 ["resetMocks"] ; [+43]
      331 JUMPIFEQKS                       R1 K77 ["resetModules"] ; [+41]
      333 JUMPIFEQKS                       R1 K78 ["restoreMocks"] ; [+39]
      335 JUMPIFEQKS                       R1 K79 ["rootDir"] ; [+37]
      337 JUMPIFEQKS                       R1 K80 ["runTestsByPath"] ; [+35]
      339 JUMPIFEQKS                       R1 K81 ["silent"] ; [+33]
      341 JUMPIFEQKS                       R1 K82 ["skipFilter"] ; [+31]
      343 JUMPIFEQKS                       R1 K83 ["skipNodeResolution"] ; [+29]
      345 JUMPIFEQKS                       R1 K84 ["slowTestThreshold"] ; [+27]
      347 JUMPIFEQKS                       R1 K85 ["snapshotFormat"] ; [+25]
      349 JUMPIFEQKS                       R1 K86 ["testEnvironment"] ; [+23]
      351 JUMPIFEQKS                       R1 K87 ["testEnvironmentOptions"] ; [+21]
      353 JUMPIFEQKS                       R1 K88 ["testFailureExitCode"] ; [+19]
      355 JUMPIFEQKS                       R1 K89 ["testLocationInResults"] ; [+17]
      357 JUMPIFEQKS                       R1 K90 ["testNamePattern"] ; [+15]
      359 JUMPIFEQKS                       R1 K91 ["testURL"] ; [+13]
      361 JUMPIFEQKS                       R1 K92 ["timers"] ; [+11]
      363 JUMPIFEQKS                       R1 K93 ["useStderr"] ; [+9]
      365 JUMPIFEQKS                       R1 K94 ["verbose"] ; [+7]
      367 JUMPIFEQKS                       R1 K95 ["watch"] ; [+5]
      369 JUMPIFEQKS                       R1 K96 ["watchAll"] ; [+3]
      371 JUMPIFNOTEQKS                    R1 K97 ["watchman"] ; [+3]
      373 GETTABLE                         R3 R2 R1
      374 JUMP                             ; [0]
      375 SETTABLE                         R3 R0 R1
      376 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R2 K0 ["roots[%s]"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K5 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K6 ["Instance"] ; [+24]
       16 GETIMPORT                        R3 K8 [error]
       18 GETUPVAL                         R4 0
       19 LOADK                            R5 K9 ["  Directory %s in the %s option was not found."]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K10 ["bold"]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R9 R0
       25 GETIMPORT                        R8 K2 [tostring]
       27 CALL                             R8 1 1
       28 CALL                             R7 1 1
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K10 ["bold"]
       32 MOVE                             R9 R2
       33 CALL                             R8 1 -1
       34 NAMECALL                         R5 R5 K3 ["format"]
       36 CALL                             R5 -1 -1
       37 CALL                             R4 -1 -1
       38 CALL                             R3 -1 0
       39 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 CALL                             R4 2 -1
        5 CALL                             R3 -1 1
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 GETUPVAL                         R7 6
        9 GETTABLEKS                       R6 R7 K0 ["toJSBoolean"]
       11 GETTABLEKS                       R7 R3 K1 ["id"]
       13 CALL                             R6 1 1
       14 JUMPIF                           R6 ; [+7]
       15 GETUPVAL                         R6 7
       16 GETTABLEKS                       R7 R3 K2 ["rootDir"]
       18 LOADNIL                          R8
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K1 ["id"]
       22 GETTABLEKS                       R6 R3 K3 ["setupFiles"]
       24 JUMPIFNOTEQKNIL                  R6 ; [+5]
       26 NEWTABLE                         R6 0 0
       28 SETTABLEKS                       R6 R3 K3 ["setupFiles"]
       30 MOVE                             R2 R3
       31 MOVE                             R1 R2
       32 MOVE                             R0 R1
       33 GETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       35 JUMPIF                           R1 ; [+3]
       36 GETUPVAL                         R2 8
       37 GETTABLEKS                       R1 R2 K4 ["testEnvironment"]
       39 SETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       41 GETTABLEKS                       R1 R0 K5 ["roots"]
       43 JUMPIFNOTEQKNIL                  R1 ; [+12]
       45 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       47 JUMPIFEQKNIL                     R1 ; [+8]
       49 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       51 SETTABLEKS                       R1 R0 K5 ["roots"]
       53 LOADNIL                          R1
       54 SETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       56 GETTABLEKS                       R1 R0 K5 ["roots"]
       58 JUMPIFNOTEQKNIL                  R1 ; [+9]
       60 NEWTABLE                         R1 0 1
       62 GETTABLEKS                       R2 R0 K2 ["rootDir"]
       64 SETLIST                          R1 R2 1 [1]
       66 SETTABLEKS                       R1 R0 K5 ["roots"]
       68 GETUPVAL                         R2 9
       69 GETTABLEKS                       R1 R2 K7 ["assign"]
       71 NEWTABLE                         R2 0 0
       73 GETUPVAL                         R3 8
       74 CALL                             R1 2 1
       75 GETUPVAL                         R3 9
       76 GETTABLEKS                       R2 R3 K8 ["keys"]
       78 MOVE                             R3 R0
       79 CALL                             R2 1 1
       80 GETUPVAL                         R4 10
       81 GETTABLEKS                       R3 R4 K9 ["reduce"]
       83 MOVE                             R4 R2
       84 NEWCLOSURE                       R5 P0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          UPVAL U12
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          UPVAL U13
       92 CAPTURE                          UPVAL U14
       93 CAPTURE                          UPVAL U15
       94 MOVE                             R6 R1
       95 CALL                             R3 3 0
       96 GETUPVAL                         R4 10
       97 GETTABLEKS                       R3 R4 K10 ["forEach"]
       99 GETTABLEKS                       R4 R1 K5 ["roots"]
      101 DUPCLOSURE                       R5 K11 [PROTO_16]
      102 CAPTURE                          UPVAL U14
      103 CAPTURE                          UPVAL U13
      104 CALL                             R3 2 0
      105 GETUPVAL                         R3 16
      106 GETUPVAL                         R4 3
      107 CALL                             R3 1 1
      108 SETTABLEKS                       R3 R1 K12 ["testPathPattern"]
      110 GETUPVAL                         R4 6
      111 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
      113 GETUPVAL                         R5 3
      114 GETTABLEKS                       R4 R5 K13 ["json"]
      116 CALL                             R3 1 1
      117 SETTABLEKS                       R3 R1 K13 ["json"]
      119 GETTABLEKS                       R5 R1 K15 ["testFailureExitCode"]
      121 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      123 LOADK                            R6 K16 [10]
      124 GETIMPORT                        R4 K18 [tonumber]
      126 CALL                             R4 2 1
      127 ORK                              R3 R4 K14 [0]
      128 SETTABLEKS                       R3 R1 K15 ["testFailureExitCode"]
      130 GETUPVAL                         R5 6
      131 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
      133 GETUPVAL                         R6 3
      134 GETTABLEKS                       R5 R6 K19 ["ci"]
      136 CALL                             R4 1 1
      137 JUMPIFNOT                        R4 ; [+6]
      138 GETUPVAL                         R5 3
      139 GETTABLEKS                       R4 R5 K20 ["updateSnapshot"]
      141 JUMPIF                           R4 ; [+2]
      142 LOADK                            R3 K21 ["none"]
      143 JUMP                             ; [+7]
      144 GETUPVAL                         R5 3
      145 GETTABLEKS                       R4 R5 K20 ["updateSnapshot"]
      147 JUMPIFNOT                        R4 ; [+2]
      148 LOADK                            R3 K22 ["all"]
      149 JUMP                             ; [+1]
      150 LOADK                            R3 K23 ["new"]
      151 SETTABLEKS                       R3 R1 K20 ["updateSnapshot"]
      153 GETTABLEKS                       R5 R1 K24 ["maxConcurrency"]
      155 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      157 LOADK                            R6 K16 [10]
      158 GETIMPORT                        R4 K18 [tonumber]
      160 CALL                             R4 2 1
      161 ORK                              R3 R4 K14 [0]
      162 SETTABLEKS                       R3 R1 K24 ["maxConcurrency"]
      164 GETUPVAL                         R3 17
      165 GETUPVAL                         R4 3
      166 MOVE                             R5 R0
      167 CALL                             R3 2 1
      168 SETTABLEKS                       R3 R1 K25 ["maxWorkers"]
      170 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      172 LENGTH                           R3 R4
      173 LOADN                            R4 0
      174 JUMPIFNOTLT                      R4 R3 ; [+30]
      176 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      178 JUMPIFEQKNIL                     R3 ; [+26]
      180 GETIMPORT                        R3 K29 [error]
      182 GETUPVAL                         R4 14
      183 LOADK                            R8 K30 ["  Configuration options %s and"]
      184 GETUPVAL                         R11 13
      185 GETTABLEKS                       R10 R11 K31 ["bold"]
      187 LOADK                            R11 K27 ["testMatch"]
      188 CALL                             R10 1 -1
      189 NAMECALL                         R8 R8 K32 ["format"]
      191 CALL                             R8 -1 1
      192 MOVE                             R6 R8
      193 LOADK                            R7 K33 [" %s cannot be used together."]
      194 GETUPVAL                         R10 13
      195 GETTABLEKS                       R9 R10 K31 ["bold"]
      197 LOADK                            R10 K26 ["testRegex"]
      198 CALL                             R9 1 -1
      199 NAMECALL                         R7 R7 K32 ["format"]
      201 CALL                             R7 -1 1
      202 CONCAT                           R5 R6 R7
      203 CALL                             R4 1 -1
      204 CALL                             R3 -1 0
      205 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      207 LENGTH                           R3 R4
      208 LOADN                            R4 0
      209 JUMPIFNOTLT                      R4 R3 ; [+9]
      211 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      213 JUMPIFNOTEQKNIL                  R3 ; [+5]
      215 NEWTABLE                         R3 0 0
      217 SETTABLEKS                       R3 R1 K27 ["testMatch"]
      219 GETUPVAL                         R4 6
      220 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
      222 GETTABLEKS                       R4 R1 K34 ["projects"]
      224 CALL                             R3 1 1
      225 JUMPIF                           R3 ; [+4]
      226 NEWTABLE                         R3 0 0
      228 SETTABLEKS                       R3 R1 K34 ["projects"]
      230 DUPTABLE                         R3 K37 [{"hasDeprecationWarnings", "options"}]
      231 LOADB                            R4 0
      232 SETTABLEKS                       R4 R3 K35 ["hasDeprecationWarnings"]
      234 SETTABLEKS                       R1 R3 K36 ["options"]
      236 RETURN                           R3 1

PROTO_18:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADK                            R4 K0 [∞]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["resolve"]
        8 CALL                             R5 0 1
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          UPVAL U12
       26 CAPTURE                          UPVAL U13
       27 CAPTURE                          UPVAL U14
       28 NAMECALL                         R5 R5 K2 ["andThen"]
       30 CALL                             R5 2 -1
       31 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K10 ["Promise"]
       24 CALL                             R6 1 1
       25 NEWTABLE                         R7 1 0
       27 LOADNIL                          R8
       28 GETIMPORT                        R9 K4 [require]
       30 GETTABLEKS                       R10 R0 K11 ["RobloxShared"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R10 R9 K12 ["nodeUtils"]
       35 GETTABLEKS                       R11 R10 K13 ["process"]
       37 GETTABLEKS                       R12 R9 K14 ["getRelativePath"]
       39 GETIMPORT                        R13 K4 [require]
       41 GETTABLEKS                       R14 R0 K15 ["ChalkLua"]
       43 CALL                             R13 1 1
       44 GETIMPORT                        R14 K4 [require]
       46 GETTABLEKS                       R15 R0 K16 ["JestTypes"]
       48 CALL                             R14 1 1
       49 DUPCLOSURE                       R15 K17 [PROTO_0]
       50 GETIMPORT                        R16 K4 [require]
       52 GETTABLEKS                       R17 R0 K18 ["JestUtil"]
       54 CALL                             R16 1 1
       55 GETTABLEKS                       R17 R16 K19 ["clearLine"]
       57 DUPCLOSURE                       R18 K20 [PROTO_1]
       58 GETIMPORT                        R19 K4 [require]
       60 GETTABLEKS                       R20 R0 K21 ["JestValidate"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R20 R19 K22 ["ValidationError"]
       65 GETIMPORT                        R22 K4 [require]
       67 GETIMPORT                        R25 K1 [script]
       69 GETTABLEKS                       R24 R25 K2 ["Parent"]
       71 GETTABLEKS                       R23 R24 K23 ["Defaults"]
       73 CALL                             R22 1 1
       74 GETTABLEKS                       R21 R22 K24 ["default"]
       76 GETIMPORT                        R23 K4 [require]
       78 GETIMPORT                        R26 K1 [script]
       80 GETTABLEKS                       R25 R26 K2 ["Parent"]
       82 GETTABLEKS                       R24 R25 K25 ["color"]
       84 CALL                             R23 1 1
       85 GETTABLEKS                       R22 R23 K26 ["getDisplayNameColor"]
       87 GETIMPORT                        R24 K4 [require]
       89 GETIMPORT                        R27 K1 [script]
       91 GETTABLEKS                       R26 R27 K2 ["Parent"]
       93 GETTABLEKS                       R25 R26 K27 ["getMaxWorkers"]
       95 CALL                             R24 1 1
       96 GETTABLEKS                       R23 R24 K24 ["default"]
       98 GETIMPORT                        R25 K4 [require]
      100 GETIMPORT                        R28 K1 [script]
      102 GETTABLEKS                       R27 R28 K2 ["Parent"]
      104 GETTABLEKS                       R26 R27 K28 ["setFromArgv"]
      106 CALL                             R25 1 1
      107 GETTABLEKS                       R24 R25 K24 ["default"]
      109 GETIMPORT                        R25 K4 [require]
      111 GETIMPORT                        R28 K1 [script]
      113 GETTABLEKS                       R27 R28 K2 ["Parent"]
      115 GETTABLEKS                       R26 R27 K29 ["utils"]
      117 CALL                             R25 1 1
      118 GETTABLEKS                       R26 R25 K30 ["BULLET"]
      120 GETTABLEKS                       R27 R25 K31 ["DOCUMENTATION_NOTE"]
      122 GETIMPORT                        R29 K4 [require]
      124 GETIMPORT                        R32 K1 [script]
      126 GETTABLEKS                       R31 R32 K2 ["Parent"]
      128 GETTABLEKS                       R30 R31 K32 ["validatePattern"]
      130 CALL                             R29 1 1
      131 GETTABLEKS                       R28 R29 K24 ["default"]
      133 LOADK                            R29 K33 ["%sValidation Error"]
      134 MOVE                             R31 R26
      135 NAMECALL                         R29 R29 K34 ["format"]
      137 CALL                             R29 2 1
      138 DUPCLOSURE                       R30 K35 [PROTO_2]
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R29
      141 CAPTURE                          VAL R27
      142 DUPCLOSURE                       R31 K36 [PROTO_3]
      143 CAPTURE                          VAL R30
      144 CAPTURE                          VAL R13
      145 DUPCLOSURE                       R32 K37 [PROTO_4]
      146 DUPCLOSURE                       R33 K38 [PROTO_5]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 DUPCLOSURE                       R34 K39 [PROTO_6]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R30
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R4
      154 DUPCLOSURE                       R35 K40 [PROTO_7]
      155 NEWCLOSURE                       R36 P8
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R28
      158 CAPTURE                          REF R8
      159 DUPCLOSURE                       R8 K41 [PROTO_10]
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R13
      164 DUPCLOSURE                       R37 K42 [PROTO_18]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R34
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R30
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R36
      179 CAPTURE                          VAL R23
      180 SETTABLEKS                       R37 R7 K24 ["default"]
      182 CLOSEUPVALS                      R8
      183 RETURN                           R7 1
