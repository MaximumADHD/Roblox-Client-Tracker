PROTO_0:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETTABLEKS                       R2 R0 K0 ["message"]
        3 FASTCALL1                        TYPE R2 ; [+2]
        4 GETIMPORT                        R1 K2 [type]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+9]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R3 R0 K0 ["message"]
       12 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       14 GETIMPORT                        R1 K6 [table.insert]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["destroy"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [script]
        2 LOADK                            R4 K2 ["DesignAssist"]
        3 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K4 ["Src"]
        8 GETTABLEKS                       R3 R3 K5 ["Util"]
       10 GETIMPORT                        R4 K7 [require]
       12 GETTABLEKS                       R5 R3 K8 ["Executor"]
       14 CALL                             R4 1 1
       15 GETIMPORT                        R5 K7 [require]
       17 GETTABLEKS                       R6 R3 K9 ["CapabilityGuard"]
       19 CALL                             R5 1 1
       20 GETIMPORT                        R6 K7 [require]
       22 GETTABLEKS                       R7 R3 K10 ["PluginRuntime"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K7 [require]
       27 GETTABLEKS                       R8 R2 K4 ["Src"]
       29 GETTABLEKS                       R8 R8 K11 ["Components"]
       31 GETTABLEKS                       R8 R8 K12 ["ErrorBoundary"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K7 [require]
       36 GETTABLEKS                       R9 R2 K4 ["Src"]
       38 GETTABLEKS                       R9 R9 K13 ["Ribbon"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K7 [require]
       43 GETTABLEKS                       R10 R2 K4 ["Src"]
       45 GETTABLEKS                       R10 R10 K14 ["Resources"]
       47 GETTABLEKS                       R10 R10 K15 ["Localization"]
       49 GETTABLEKS                       R10 R10 K16 ["Translator"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K7 [require]
       54 GETTABLEKS                       R11 R2 K4 ["Src"]
       56 GETTABLEKS                       R11 R11 K17 ["Stage"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K7 [require]
       61 GETTABLEKS                       R12 R2 K4 ["Src"]
       63 GETTABLEKS                       R12 R12 K18 ["Director"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K7 [require]
       68 GETTABLEKS                       R13 R2 K4 ["Src"]
       70 GETTABLEKS                       R13 R13 K19 ["Bridge"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R4 K20 ["resolvePackage"]
       75 LOADK                            R14 K21 ["React"]
       76 CALL                             R13 1 1
       77 GETTABLEKS                       R14 R4 K20 ["resolvePackage"]
       79 LOADK                            R15 K22 ["ReactRoblox"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R4 K20 ["resolvePackage"]
       83 LOADK                            R16 K23 ["Foundation"]
       84 CALL                             R15 1 1
       85 JUMPIFNOT                        R13 ; [+1]
       86 JUMPIF                           R14 ; [+5]
       87 GETIMPORT                        R16 K25 [warn]
       89 LOADK                            R17 K26 ["[DesignAssist] Failed to load React or ReactRoblox. Plugin cannot start."]
       90 CALL                             R16 1 0
       91 RETURN                           R0 0
       92 JUMPIF                           R15 ; [+4]
       93 GETIMPORT                        R16 K25 [warn]
       95 LOADK                            R17 K27 ["[DesignAssist] Failed to load Foundation. Plugin will start but Foundation components won't be available."]
       96 CALL                             R16 1 0
       97 NEWTABLE                         R16 0 0
       99 NEWCLOSURE                       R17 P0
      100 CAPTURE                          VAL R16
      101 GETTABLEKS                       R18 R6 K28 ["getOrCreateWidget"]
      103 MOVE                             R19 R0
      104 MOVE                             R20 R1
      105 MOVE                             R21 R9
      106 CALL                             R18 3 1
      107 LOADNIL                          R19
      108 JUMPIF                           R1 ; [+13]
      109 GETTABLEKS                       R20 R6 K29 ["createLegacyToggleButton"]
      111 MOVE                             R21 R0
      112 GETTABLEKS                       R22 R8 K30 ["TOOLBAR_ICON"]
      114 MOVE                             R23 R9
      115 CALL                             R20 3 1
      116 GETTABLEKS                       R23 R18 K31 ["Enabled"]
      118 NAMECALL                         R21 R20 K32 ["SetActive"]
      120 CALL                             R21 2 0
      121 MOVE                             R19 R20
      122 GETTABLEKS                       R20 R8 K33 ["registerAction"]
      124 MOVE                             R21 R0
      125 GETTABLEKS                       R22 R18 K31 ["Enabled"]
      127 CALL                             R20 2 1
      128 JUMPIFNOT                        R20 ; [+16]
      129 GETTABLEKS                       R22 R20 K34 ["message"]
      131 FASTCALL1                        TYPE R22 ; [+2]
      132 GETIMPORT                        R21 K36 [type]
      134 CALL                             R21 1 1
      135 JUMPIFNOTEQKS                    R21 K37 ["string"] ; [+9]
      137 GETTABLEKS                       R23 R20 K34 ["message"]
      139 FASTCALL2                        TABLE_INSERT R16 R23 ; [+4]
      141 MOVE                             R22 R16
      142 GETIMPORT                        R21 K40 [table.insert]
      144 CALL                             R21 2 0
      145 GETTABLEKS                       R20 R5 K41 ["run"]
      147 LOADK                            R21 K42 ["ribbon action activation"]
      148 NEWCLOSURE                       R22 P1
      149 CAPTURE                          VAL R0
      150 LOADK                            R23 K43 ["The classic toolbar button can still open and close Design Assist."]
      151 CALL                             R20 3 3
      152 JUMPIF                           R20 ; [+18]
      153 LOADNIL                          R21
      154 JUMPIFNOT                        R22 ; [+16]
      155 GETTABLEKS                       R24 R22 K34 ["message"]
      157 FASTCALL1                        TYPE R24 ; [+2]
      158 GETIMPORT                        R23 K36 [type]
      160 CALL                             R23 1 1
      161 JUMPIFNOTEQKS                    R23 K37 ["string"] ; [+9]
      163 GETTABLEKS                       R25 R22 K34 ["message"]
      165 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      167 MOVE                             R24 R16
      168 GETIMPORT                        R23 K40 [table.insert]
      170 CALL                             R23 2 0
      171 DUPTABLE                         R23 K45 [{"React", "ReactRoblox", "Foundation", "AppFramework", "Executor", "ErrorBoundary"}]
      172 SETTABLEKS                       R13 R23 K21 ["React"]
      174 SETTABLEKS                       R14 R23 K22 ["ReactRoblox"]
      176 SETTABLEKS                       R15 R23 K23 ["Foundation"]
      178 GETTABLEKS                       R24 R4 K20 ["resolvePackage"]
      180 LOADK                            R25 K44 ["AppFramework"]
      181 CALL                             R24 1 1
      182 SETTABLEKS                       R24 R23 K44 ["AppFramework"]
      184 SETTABLEKS                       R4 R23 K8 ["Executor"]
      186 SETTABLEKS                       R7 R23 K12 ["ErrorBoundary"]
      188 GETTABLEKS                       R24 R10 K46 ["createStage"]
      190 DUPTABLE                         R25 K50 [{"widget", "plugin", "React", "ReactRoblox", "Foundation", "startupDiagnostics"}]
      191 SETTABLEKS                       R18 R25 K47 ["widget"]
      193 SETTABLEKS                       R0 R25 K48 ["plugin"]
      195 SETTABLEKS                       R13 R25 K21 ["React"]
      197 SETTABLEKS                       R14 R25 K22 ["ReactRoblox"]
      199 SETTABLEKS                       R15 R25 K23 ["Foundation"]
      201 SETTABLEKS                       R16 R25 K49 ["startupDiagnostics"]
      203 CALL                             R24 1 1
      204 GETTABLEKS                       R25 R11 K51 ["createControllers"]
      206 DUPTABLE                         R26 K54 [{"stage", "plugin", "widget", "packages"}]
      207 SETTABLEKS                       R24 R26 K52 ["stage"]
      209 SETTABLEKS                       R0 R26 K48 ["plugin"]
      211 SETTABLEKS                       R18 R26 K47 ["widget"]
      213 SETTABLEKS                       R23 R26 K53 ["packages"]
      215 CALL                             R25 1 1
      216 GETTABLEKS                       R26 R12 K55 ["createBridge"]
      218 DUPTABLE                         R27 K59 [{"director", "stage", "plugin", "widget", "actions", "toggleButton"}]
      219 SETTABLEKS                       R25 R27 K56 ["director"]
      221 SETTABLEKS                       R24 R27 K52 ["stage"]
      223 SETTABLEKS                       R0 R27 K48 ["plugin"]
      225 SETTABLEKS                       R18 R27 K47 ["widget"]
      227 SETTABLEKS                       R21 R27 K57 ["actions"]
      229 SETTABLEKS                       R19 R27 K58 ["toggleButton"]
      231 CALL                             R26 1 1
      232 GETTABLEKS                       R27 R0 K60 ["Unloading"]
      234 NEWCLOSURE                       R29 P2
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R24
      238 NAMECALL                         R27 R27 K61 ["Connect"]
      240 CALL                             R27 2 0
      241 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["start"]
        6 RETURN                           R0 1
