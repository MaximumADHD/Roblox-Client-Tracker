PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [script]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R1 ; [+2]
        2 GETIMPORT                        R0 K1 [type]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["function"] ; [+3]
        7 LOADB                            R0 0
        8 RETURN                           R0 1
        9 GETIMPORT                        R0 K4 [pcall]
       11 DUPCLOSURE                       R1 K5 [PROTO_0]
       12 CAPTURE                          UPVAL U0
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 DUPTABLE                         R1 K5 [{[1] = False, ["error"] = "DesignAssist requires debug.loadmodule. In Studio, go to File > Open Flag Editor, search for 'EnableLoadModule', toggle it to true, then restart Studio.", ["name"]}]
        6 SETTABLEKS                       R0 R1 K4 ["name"]
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 ADDK                             R2 R2 K0 [1]
        6 SETUPVAL                         R2 1
        7 DUPTABLE                         R2 K6 [{["identity"], ["sourceMap"], ["sourceIds"], ["sourceCounter"] = 0}]
        8 LOADK                            R4 K7 ["story-session-"]
        9 GETUPVAL                         R6 1
       10 FASTCALL1                        TOSTRING R6 ; [+2]
       11 GETIMPORT                        R5 K9 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 SETTABLEKS                       R3 R2 K1 ["identity"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K10 ["create"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K2 ["sourceMap"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K3 ["sourceIds"]
       27 GETUPVAL                         R3 0
       28 SETTABLE                         R2 R3 R0
       29 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["sourceIds"]
        7 GETTABLE                         R2 R3 R0
        8 JUMPIF                           R2 ; [+22]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R3 K1 ["sourceCounter"]
       12 ADDK                             R4 R4 K2 [1]
       13 SETTABLEKS                       R4 R3 K1 ["sourceCounter"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["identity"]
       18 LOADK                            R4 K4 [":source-"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K1 ["sourceCounter"]
       22 FASTCALL1                        TOSTRING R6 ; [+2]
       23 GETIMPORT                        R5 K6 [tostring]
       25 CALL                             R5 1 1
       26 CONCAT                           R2 R3 R5
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K0 ["sourceIds"]
       30 SETTABLE                         R2 R3 R0
       31 GETUPVAL                         R3 2
       32 MOVE                             R5 R0
       33 GETTABLEKS                       R6 R0 K7 ["Source"]
       35 GETUPVAL                         R8 3
       36 JUMPIFEQ                         R0 R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 MOVE                             R8 R2
       41 NAMECALL                         R3 R3 K8 ["setSourceForModule"]
       43 CALL                             R3 5 0
       44 GETUPVAL                         R3 4
       45 DUPTABLE                         R4 K12 [{"name", "parent", "source"}]
       46 GETTABLEKS                       R5 R0 K13 ["Name"]
       48 SETTABLEKS                       R5 R4 K9 ["name"]
       50 GETTABLEKS                       R5 R0 K14 ["Parent"]
       52 SETTABLEKS                       R5 R4 K10 ["parent"]
       54 GETTABLEKS                       R5 R0 K7 ["Source"]
       56 SETTABLEKS                       R5 R4 K11 ["source"]
       58 SETTABLE                         R4 R3 R0
       59 GETUPVAL                         R3 0
       60 SETTABLE                         R2 R3 R0
       61 GETUPVAL                         R4 5
       62 DUPTABLE                         R5 K18 [{"moduleScript", "sourceId", "fullName", "name"}]
       63 SETTABLEKS                       R0 R5 K15 ["moduleScript"]
       65 SETTABLEKS                       R2 R5 K16 ["sourceId"]
       67 NAMECALL                         R6 R0 K19 ["GetFullName"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K17 ["fullName"]
       72 GETTABLEKS                       R6 R0 K13 ["Name"]
       74 SETTABLEKS                       R6 R5 K9 ["name"]
       76 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       78 GETIMPORT                        R3 K22 [table.insert]
       80 CALL                             R3 2 0
       81 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R4 K2 [string.match]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K3 [":(%d+):"]
        4 CALL                             R4 2 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R3 K5 [tonumber]
        8 CALL                             R3 -1 1
        9 JUMPIF                           R3 ; [+9]
       10 GETIMPORT                        R4 K2 [string.match]
       12 MOVE                             R5 R1
       13 LOADK                            R6 K6 ["%((%d+),"]
       14 CALL                             R4 2 -1
       15 FASTCALL                         TONUMBER ; [+2]
       16 GETIMPORT                        R3 K5 [tonumber]
       18 CALL                             R3 -1 1
       19 DUPTABLE                         R4 K15 [{["__storyDiagnostic"] = True, ["code"], ["message"], ["moduleScript"], ["modulePath"], ["sourceId"], ["line"]}]
       20 SETTABLEKS                       R2 R4 K9 ["code"]
       22 SETTABLEKS                       R1 R4 K10 ["message"]
       24 SETTABLEKS                       R0 R4 K11 ["moduleScript"]
       26 NAMECALL                         R5 R0 K16 ["GetFullName"]
       28 CALL                             R5 1 1
       29 SETTABLEKS                       R5 R4 K12 ["modulePath"]
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K13 ["sourceId"]
       36 SETTABLEKS                       R3 R4 K14 ["line"]
       38 RETURN                           R4 1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+45]
        7 GETTABLEKS                       R3 R0 K3 ["__storyDiagnostic"]
        9 JUMPIFNOT                        R3 ; [+41]
       10 DUPTABLE                         R3 K10 [{["success"] = False, ["error"], ["diagnosticCode"], ["diagnostic"], ["name"]}]
       11 MOVE                             R5 R1
       12 GETTABLEKS                       R6 R0 K11 ["message"]
       14 CONCAT                           R4 R5 R6
       15 SETTABLEKS                       R4 R3 K6 ["error"]
       17 GETTABLEKS                       R4 R0 K12 ["code"]
       19 SETTABLEKS                       R4 R3 K7 ["diagnosticCode"]
       21 DUPTABLE                         R4 K17 [{"code", "message", "moduleScript", "modulePath", "sourceId", "line"}]
       22 GETTABLEKS                       R5 R0 K12 ["code"]
       24 SETTABLEKS                       R5 R4 K12 ["code"]
       26 GETTABLEKS                       R5 R0 K11 ["message"]
       28 SETTABLEKS                       R5 R4 K11 ["message"]
       30 GETTABLEKS                       R5 R0 K13 ["moduleScript"]
       32 SETTABLEKS                       R5 R4 K13 ["moduleScript"]
       34 GETTABLEKS                       R5 R0 K14 ["modulePath"]
       36 SETTABLEKS                       R5 R4 K14 ["modulePath"]
       38 GETTABLEKS                       R5 R0 K15 ["sourceId"]
       40 SETTABLEKS                       R5 R4 K15 ["sourceId"]
       42 GETTABLEKS                       R5 R0 K16 ["line"]
       44 SETTABLEKS                       R5 R4 K16 ["line"]
       46 SETTABLEKS                       R4 R3 K8 ["diagnostic"]
       48 SETTABLEKS                       R2 R3 K9 ["name"]
       50 RETURN                           R3 1
       51 DUPTABLE                         R3 K18 [{["success"] = False, ["error"], ["name"]}]
       52 MOVE                             R5 R1
       53 FASTCALL1                        TOSTRING R0 ; [+3]
       54 MOVE                             R7 R0
       55 GETIMPORT                        R6 K20 [tostring]
       57 CALL                             R6 1 1
       58 CONCAT                           R4 R5 R6
       59 SETTABLEKS                       R4 R3 K6 ["error"]
       61 SETTABLEKS                       R2 R3 K9 ["name"]
       63 RETURN                           R3 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADN                            R2 -1
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADN                            R8 -1
       10 GETTABLEKS                       R9 R7 K0 ["fullName"]
       12 JUMPIFEQ                         R0 R9 ; [+10]
       14 GETIMPORT                        R9 K3 [string.find]
       16 MOVE                             R10 R0
       17 GETTABLEKS                       R11 R7 K0 ["fullName"]
       19 LOADN                            R12 1
       20 LOADB                            R13 1
       21 CALL                             R9 4 1
       22 JUMPIFNOT                        R9 ; [+5]
       23 GETTABLEKS                       R10 R7 K0 ["fullName"]
       25 LENGTH                           R9 R10
       26 ADDK                             R8 R9 K4 [1000]
       27 JUMP                             ; [+16]
       28 GETTABLEKS                       R9 R7 K5 ["name"]
       30 JUMPIFEQ                         R0 R9 ; [+10]
       32 GETIMPORT                        R9 K3 [string.find]
       34 MOVE                             R10 R0
       35 GETTABLEKS                       R11 R7 K5 ["name"]
       37 LOADN                            R12 1
       38 LOADB                            R13 1
       39 CALL                             R9 4 1
       40 JUMPIFNOT                        R9 ; [+3]
       41 GETTABLEKS                       R9 R7 K5 ["name"]
       43 LENGTH                           R8 R9
       44 JUMPIFNOTLT                      R2 R8 ; [+3]
       46 MOVE                             R1 R7
       47 MOVE                             R2 R8
       48 FORGLOOP                         R3 2 ; [-40]
       50 JUMPIFNOT                        R1 ; [+10]
       51 DUPTABLE                         R3 K8 [{"sourceId", "moduleScript"}]
       52 GETTABLEKS                       R4 R1 K6 ["sourceId"]
       54 SETTABLEKS                       R4 R3 K6 ["sourceId"]
       56 GETTABLEKS                       R4 R1 K7 ["moduleScript"]
       58 SETTABLEKS                       R4 R3 K7 ["moduleScript"]
       60 RETURN                           R3 1
       61 LOADNIL                          R3
       62 RETURN                           R3 1

PROTO_9:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+13]
        2 LOADK                            R4 K0 ["ModuleScript"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 GETTABLEKS                       R1 R1 K2 ["Parent"]
       14 JUMPBACK                         ; [-14]
       15 LOADB                            R2 0
       16 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R0 K0 ["logicalName"]
        3 GETTABLE                         R4 R5 R6
        4 JUMPIFNOT                        R4 ; [+53]
        5 GETTABLEKS                       R5 R0 K1 ["canonicalPath"]
        7 JUMPIFEQ                         R4 R5 ; [+50]
        9 JUMPIFEQKS                       R1 K2 ["inject"] ; [+5]
       11 GETTABLEKS                       R5 R0 K0 ["logicalName"]
       13 JUMPIFNOTEQKS                    R5 K3 ["Foundation"] ; [+21]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R7 R0 K0 ["logicalName"]
       18 GETTABLE                         R5 R6 R7
       19 JUMPIFNOT                        R5 ; [+44]
       20 GETTABLEKS                       R6 R5 K4 ["aliases"]
       22 JUMPIF                           R6 ; [+2]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K4 ["aliases"]
       27 GETTABLEKS                       R6 R5 K4 ["aliases"]
       29 GETTABLEKS                       R7 R0 K5 ["requestedPath"]
       31 GETTABLEKS                       R8 R0 K1 ["canonicalPath"]
       33 SETTABLE                         R8 R6 R7
       34 JUMP                             ; [+29]
       35 GETTABLEKS                       R6 R0 K0 ["logicalName"]
       37 JUMPIFNOTEQKS                    R6 K6 ["React"] ; [+3]
       39 LOADK                            R5 K7 ["duplicate-react"]
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K8 ["duplicate-package"]
       42 GETIMPORT                        R6 K10 [error]
       44 LOADK                            R8 K11 ["["]
       45 MOVE                             R9 R5
       46 LOADK                            R10 K12 ["] Conflicting canonical "]
       47 GETTABLEKS                       R11 R0 K0 ["logicalName"]
       49 LOADK                            R12 K13 [" packages: "]
       50 MOVE                             R13 R4
       51 LOADK                            R14 K14 [" and "]
       52 GETTABLEKS                       R15 R0 K1 ["canonicalPath"]
       54 CONCAT                           R7 R8 R15
       55 LOADN                            R8 3
       56 CALL                             R6 2 0
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R6 R0 K0 ["logicalName"]
       61 GETTABLEKS                       R7 R0 K1 ["canonicalPath"]
       63 SETTABLE                         R7 R5 R6
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R7 R0 K0 ["logicalName"]
       67 GETTABLE                         R5 R6 R7
       68 JUMPIFNOT                        R5 ; [+12]
       69 GETTABLEKS                       R6 R5 K15 ["facades"]
       71 LOADB                            R7 1
       72 SETTABLE                         R7 R6 R3
       73 GETTABLEKS                       R6 R0 K16 ["via"]
       75 JUMPIFNOTEQKS                    R6 K17 ["dev"] ; [+4]
       77 LOADB                            R6 1
       78 SETTABLEKS                       R6 R5 K18 ["requestedViaDev"]
       80 RETURN                           R0 0
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R7 R0 K0 ["logicalName"]
       84 DUPTABLE                         R8 K23 [{"logicalName", "mode", "packageRootPath", "requestedPath", "canonicalPath", "concretePath", "via", "profile", "facades"}]
       85 GETTABLEKS                       R9 R0 K0 ["logicalName"]
       87 SETTABLEKS                       R9 R8 K0 ["logicalName"]
       89 SETTABLEKS                       R1 R8 K19 ["mode"]
       91 GETTABLEKS                       R9 R0 K24 ["packageRoot"]
       93 NAMECALL                         R9 R9 K25 ["GetFullName"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K20 ["packageRootPath"]
       98 GETTABLEKS                       R9 R0 K5 ["requestedPath"]
      100 SETTABLEKS                       R9 R8 K5 ["requestedPath"]
      102 GETTABLEKS                       R9 R0 K1 ["canonicalPath"]
      104 SETTABLEKS                       R9 R8 K1 ["canonicalPath"]
      106 SETTABLEKS                       R2 R8 K21 ["concretePath"]
      108 GETTABLEKS                       R9 R0 K16 ["via"]
      110 SETTABLEKS                       R9 R8 K16 ["via"]
      112 GETUPVAL                         R9 2
      113 GETTABLEKS                       R9 R9 K22 ["profile"]
      115 SETTABLEKS                       R9 R8 K22 ["profile"]
      117 NEWTABLE                         R9 1 0
      119 LOADB                            R10 1
      120 SETTABLE                         R10 R9 R3
      121 SETTABLEKS                       R9 R8 K15 ["facades"]
      123 SETTABLE                         R8 R6 R7
      124 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETTABLEKS                       R1 R0 K0 ["Name"]
        5 JUMPIFNOTEQKS                    R1 K1 ["Foundation"] ; [+7]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 2
       11 LOADB                            R2 1
       12 SETTABLE                         R2 R1 R0
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+3]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 1
       19 SETTABLE                         R2 R1 R0
       20 GETUPVAL                         R2 5
       21 GETTABLE                         R1 R2 R0
       22 GETUPVAL                         R2 6
       23 JUMPIFNOTEQ                      R1 R2 ; [+15]
       25 GETIMPORT                        R2 K3 [error]
       27 GETUPVAL                         R3 7
       28 MOVE                             R4 R0
       29 LOADK                            R6 K4 ["[require-cycle] Circular ModuleScript require detected at "]
       30 NAMECALL                         R7 R0 K5 ["GetFullName"]
       32 CALL                             R7 1 1
       33 CONCAT                           R5 R6 R7
       34 LOADK                            R6 K6 ["require-cycle"]
       35 CALL                             R3 3 1
       36 LOADN                            R4 0
       37 CALL                             R2 2 0
       38 JUMP                             ; [+8]
       39 GETUPVAL                         R2 8
       40 JUMPIFNOTEQ                      R1 R2 ; [+3]
       42 LOADNIL                          R2
       43 RETURN                           R2 1
       44 JUMPIFEQKNIL                     R1 ; [+2]
       46 RETURN                           R1 1
       47 GETUPVAL                         R2 5
       48 GETUPVAL                         R3 6
       49 SETTABLE                         R3 R2 R0
       50 GETUPVAL                         R2 9
       51 MOVE                             R3 R0
       52 CALL                             R2 1 0
       53 GETUPVAL                         R2 10
       54 MOVE                             R3 R0
       55 CALL                             R2 1 2
       56 JUMPIF                           R2 ; [+20]
       57 GETIMPORT                        R4 K3 [error]
       59 GETUPVAL                         R5 7
       60 MOVE                             R6 R0
       61 LOADK                            R8 K7 ["Compile error in "]
       62 NAMECALL                         R12 R0 K5 ["GetFullName"]
       64 CALL                             R12 1 1
       65 MOVE                             R9 R12
       66 LOADK                            R10 K8 [": "]
       67 FASTCALL1                        TOSTRING R3 ; [+3]
       68 MOVE                             R12 R3
       69 GETIMPORT                        R11 K10 [tostring]
       71 CALL                             R11 1 1
       72 CONCAT                           R7 R8 R11
       73 LOADK                            R8 K11 ["compile-error"]
       74 CALL                             R5 3 1
       75 LOADN                            R6 0
       76 CALL                             R4 2 0
       77 GETIMPORT                        R4 K13 [getfenv]
       79 MOVE                             R5 R2
       80 CALL                             R4 1 1
       81 NEWCLOSURE                       R5 P0
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R5 R4 K14 ["require"]
       86 GETUPVAL                         R5 12
       87 SETTABLEKS                       R5 R4 K15 ["game"]
       89 GETUPVAL                         R5 13
       90 SETTABLEKS                       R5 R4 K16 ["task"]
       92 GETIMPORT                        R5 K18 [pcall]
       94 MOVE                             R6 R2
       95 CALL                             R5 1 2
       96 JUMPIF                           R5 ; [+80]
       97 FASTCALL1                        TYPE R6 ; [+3]
       98 MOVE                             R8 R6
       99 GETIMPORT                        R7 K20 [type]
      101 CALL                             R7 1 1
      102 JUMPIFNOTEQKS                    R7 K21 ["table"] ; [+9]
      104 GETTABLEKS                       R7 R6 K22 ["__storyDiagnostic"]
      106 JUMPIFNOT                        R7 ; [+5]
      107 GETIMPORT                        R7 K3 [error]
      109 MOVE                             R8 R6
      110 LOADN                            R9 0
      111 CALL                             R7 2 0
      112 FASTCALL1                        TOSTRING R6 ; [+3]
      113 MOVE                             R8 R6
      114 GETIMPORT                        R7 K10 [tostring]
      116 CALL                             R7 1 1
      117 GETIMPORT                        R9 K25 [string.find]
      119 MOVE                             R10 R7
      120 LOADK                            R11 K26 ["[external-appframework-unsupported]"]
      121 LOADN                            R12 1
      122 LOADB                            R13 1
      123 CALL                             R9 4 1
      124 JUMPIFNOT                        R9 ; [+2]
      125 LOADK                            R8 K27 ["external-appframework-unsupported"]
      126 JUMP                             ; [+41]
      127 GETIMPORT                        R9 K25 [string.find]
      129 MOVE                             R10 R7
      130 LOADK                            R11 K28 ["[duplicate-react]"]
      131 LOADN                            R12 1
      132 LOADB                            R13 1
      133 CALL                             R9 4 1
      134 JUMPIFNOT                        R9 ; [+2]
      135 LOADK                            R8 K29 ["duplicate-react"]
      136 JUMP                             ; [+31]
      137 GETIMPORT                        R9 K25 [string.find]
      139 MOVE                             R10 R7
      140 LOADK                            R11 K30 ["[duplicate-package]"]
      141 LOADN                            R12 1
      142 LOADB                            R13 1
      143 CALL                             R9 4 1
      144 JUMPIFNOT                        R9 ; [+2]
      145 LOADK                            R8 K31 ["duplicate-package"]
      146 JUMP                             ; [+21]
      147 GETIMPORT                        R9 K25 [string.find]
      149 MOVE                             R10 R7
      150 LOADK                            R11 K32 ["[resource-limit-exceeded]"]
      151 LOADN                            R12 1
      152 LOADB                            R13 1
      153 CALL                             R9 4 1
      154 JUMPIFNOT                        R9 ; [+2]
      155 LOADK                            R8 K33 ["resource-limit-exceeded"]
      156 JUMP                             ; [+11]
      157 GETIMPORT                        R9 K25 [string.find]
      159 MOVE                             R10 R7
      160 LOADK                            R11 K34 ["[execution-timeout]"]
      161 LOADN                            R12 1
      162 LOADB                            R13 1
      163 CALL                             R9 4 1
      164 JUMPIFNOT                        R9 ; [+2]
      165 LOADK                            R8 K35 ["execution-timeout"]
      166 JUMP                             ; [+1]
      167 LOADK                            R8 K36 ["runtime-error"]
      168 GETIMPORT                        R9 K3 [error]
      170 GETUPVAL                         R10 7
      171 MOVE                             R11 R0
      172 MOVE                             R12 R7
      173 MOVE                             R13 R8
      174 CALL                             R10 3 1
      175 LOADN                            R11 0
      176 CALL                             R9 2 0
      177 GETTABLEKS                       R7 R0 K0 ["Name"]
      179 JUMPIFNOTEQKS                    R7 K1 ["Foundation"] ; [+17]
      181 SETUPVAL                         R6 14
      182 JUMPIFEQKNIL                     R6 ; [+14]
      184 GETUPVAL                         R8 15
      185 GETTABLE                         R7 R8 R6
      186 JUMPIF                           R7 ; [+10]
      187 GETUPVAL                         R7 15
      188 LOADB                            R8 1
      189 SETTABLE                         R8 R7 R6
      190 GETUPVAL                         R8 16
      191 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      193 MOVE                             R9 R6
      194 GETIMPORT                        R7 K38 [table.insert]
      196 CALL                             R7 2 0
      197 GETUPVAL                         R7 5
      198 JUMPIFNOTEQKNIL                  R6 ; [+3]
      200 GETUPVAL                         R8 8
      201 JUMP                             ; [+1]
      202 MOVE                             R8 R6
      203 SETTABLE                         R8 R7 R0
      204 GETUPVAL                         R7 17
      205 LOADB                            R8 1
      206 SETTABLE                         R8 R7 R0
      207 GETUPVAL                         R7 3
      208 MOVE                             R8 R0
      209 CALL                             R7 1 1
      210 JUMPIF                           R7 ; [+3]
      211 GETUPVAL                         R7 18
      212 LOADB                            R8 1
      213 SETTABLE                         R8 R7 R0
      214 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Packages"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R2 R1 K2 ["GetFullName"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["Src"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+4]
       20 NAMECALL                         R3 R2 K2 ["GetFullName"]
       22 CALL                             R3 1 1
       23 RETURN                           R3 1
       24 LOADK                            R4 K4 ["DesignAssist."]
       25 MOVE                             R5 R0
       26 CONCAT                           R3 R4 R5
       27 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["modeForIdentity"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K1 ["reject"] ; [+9]
        7 GETIMPORT                        R3 K3 [error]
        9 LOADK                            R5 K4 ["[external-appframework-unsupported] Explicit external harness sessions cannot import "]
       10 GETTABLEKS                       R6 R1 K5 ["logicalName"]
       12 CONCAT                           R4 R5 R6
       13 LOADN                            R5 3
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R4 R1 K6 ["requestedModule"]
       18 LOADB                            R5 1
       19 SETTABLE                         R5 R3 R4
       20 JUMPIFNOTEQKS                    R2 K7 ["inject"] ; [+71]
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R0
       24 CALL                             R3 1 1
       25 JUMPIFNOT                        R3 ; [+11]
       26 LOADB                            R3 1
       27 GETTABLEKS                       R4 R1 K5 ["logicalName"]
       29 JUMPIFEQKS                       R4 K8 ["React"] ; [+7]
       31 GETTABLEKS                       R4 R1 K5 ["logicalName"]
       33 JUMPIFEQKS                       R4 K9 ["ReactRoblox"] ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K10 ["resolveInjected"]
       40 GETTABLEKS                       R5 R1 K5 ["logicalName"]
       42 GETUPVAL                         R6 4
       43 MOVE                             R7 R3
       44 CALL                             R4 3 1
       45 JUMPIFNOTEQKNIL                  R4 ; [+9]
       47 GETIMPORT                        R5 K3 [error]
       49 LOADK                            R7 K11 ["[package-resolution-failed] Unable to inject "]
       50 GETTABLEKS                       R8 R1 K5 ["logicalName"]
       52 CONCAT                           R6 R7 R8
       53 LOADN                            R7 3
       54 CALL                             R5 2 0
       55 GETTABLEKS                       R6 R1 K5 ["logicalName"]
       57 JUMPIFNOTEQKS                    R6 K8 ["React"] ; [+6]
       59 JUMPIFNOT                        R3 ; [+2]
       60 LOADK                            R5 K12 ["raw"]
       61 JUMP                             ; [+15]
       62 LOADK                            R5 K13 ["instrumented"]
       63 JUMP                             ; [+13]
       64 GETTABLEKS                       R6 R1 K5 ["logicalName"]
       66 JUMPIFNOTEQKS                    R6 K14 ["Motion"] ; [+3]
       68 LOADK                            R5 K15 ["time-scaled"]
       69 JUMP                             ; [+7]
       70 GETTABLEKS                       R6 R1 K5 ["logicalName"]
       72 JUMPIFNOTEQKS                    R6 K9 ["ReactRoblox"] ; [+3]
       74 LOADK                            R5 K16 ["renderer"]
       75 JUMP                             ; [+1]
       76 LOADK                            R5 K17 ["injected"]
       77 GETUPVAL                         R6 5
       78 MOVE                             R7 R1
       79 MOVE                             R8 R2
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R10 R1 K5 ["logicalName"]
       83 CALL                             R9 1 1
       84 MOVE                             R10 R5
       85 CALL                             R6 4 0
       86 GETUPVAL                         R6 7
       87 GETTABLEKS                       R7 R1 K6 ["requestedModule"]
       89 LOADB                            R8 1
       90 SETTABLE                         R8 R6 R7
       91 RETURN                           R4 1
       92 GETUPVAL                         R4 8
       93 GETTABLEKS                       R5 R1 K5 ["logicalName"]
       95 GETTABLE                         R3 R4 R5
       96 JUMPIFNOT                        R3 ; [+27]
       97 GETUPVAL                         R4 7
       98 GETTABLEKS                       R5 R1 K6 ["requestedModule"]
      100 LOADB                            R6 1
      101 SETTABLE                         R6 R4 R5
      102 GETUPVAL                         R5 9
      103 GETTABLEKS                       R6 R1 K5 ["logicalName"]
      105 GETTABLE                         R4 R5 R6
      106 JUMPIFNOT                        R4 ; [+14]
      107 GETTABLEKS                       R5 R4 K18 ["aliases"]
      109 JUMPIF                           R5 ; [+2]
      110 NEWTABLE                         R5 0 0
      112 SETTABLEKS                       R5 R4 K18 ["aliases"]
      114 GETTABLEKS                       R5 R4 K18 ["aliases"]
      116 GETTABLEKS                       R6 R1 K19 ["requestedPath"]
      118 GETTABLEKS                       R7 R1 K20 ["canonicalPath"]
      120 SETTABLE                         R7 R5 R6
      121 GETTABLEKS                       R5 R3 K21 ["value"]
      123 RETURN                           R5 1
      124 GETUPVAL                         R4 5
      125 MOVE                             R5 R1
      126 MOVE                             R6 R2
      127 GETTABLEKS                       R7 R1 K20 ["canonicalPath"]
      129 LOADK                            R8 K22 ["branch"]
      130 CALL                             R4 4 0
      131 GETUPVAL                         R4 10
      132 GETTABLEKS                       R5 R1 K23 ["canonicalModule"]
      134 LOADB                            R6 1
      135 SETTABLE                         R6 R4 R5
      136 GETUPVAL                         R4 11
      137 GETTABLEKS                       R5 R1 K23 ["canonicalModule"]
      139 LOADB                            R6 1
      140 SETTABLE                         R6 R4 R5
      141 GETUPVAL                         R4 12
      142 GETTABLEKS                       R5 R1 K23 ["canonicalModule"]
      144 CALL                             R4 1 1
      145 GETUPVAL                         R5 8
      146 GETTABLEKS                       R6 R1 K5 ["logicalName"]
      148 DUPTABLE                         R7 K25 [{"value", "identity"}]
      149 SETTABLEKS                       R4 R7 K21 ["value"]
      151 SETTABLEKS                       R1 R7 K24 ["identity"]
      153 SETTABLE                         R7 R5 R6
      154 GETUPVAL                         R5 7
      155 GETTABLEKS                       R6 R1 K6 ["requestedModule"]
      157 LOADB                            R7 1
      158 SETTABLE                         R7 R5 R6
      159 GETTABLEKS                       R5 R1 K5 ["logicalName"]
      161 JUMPIFNOTEQKS                    R5 K26 ["Foundation"] ; [+2]
      163 SETUPVAL                         R4 13
      164 RETURN                           R4 1

PROTO_15:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+104]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["stringAliases"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIFNOT                        R2 ; [+90]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K1 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+3]
       19 MOVE                             R3 R2
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R3 R2 K4 ["Name"]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R6 R2
       25 GETIMPORT                        R5 K6 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K7 ["Instance"] ; [+3]
       30 MOVE                             R4 R2
       31 JUMP                             ; [+8]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K8 ["findAliasModule"]
       35 MOVE                             R5 R3
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K9 ["packageRoots"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETUPVAL                         R5 2
       42 MOVE                             R6 R0
       43 MOVE                             R7 R4
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K10 ["modeForName"]
       49 MOVE                             R6 R3
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K11 ["reject"] ; [+9]
       53 GETIMPORT                        R6 K13 [error]
       55 LOADK                            R8 K14 ["[external-appframework-unsupported] Explicit external harness sessions cannot import "]
       56 MOVE                             R9 R3
       57 CONCAT                           R7 R8 R9
       58 LOADN                            R8 2
       59 CALL                             R6 2 0
       60 JUMP                             ; [+41]
       61 JUMPIFNOTEQKS                    R5 K15 ["inject"] ; [+40]
       63 GETUPVAL                         R6 3
       64 MOVE                             R7 R0
       65 CALL                             R6 1 1
       66 JUMPIFNOT                        R6 ; [+7]
       67 LOADB                            R6 1
       68 JUMPIFEQKS                       R3 K16 ["React"] ; [+5]
       70 JUMPIFEQKS                       R3 K17 ["ReactRoblox"] ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R7 R7 K18 ["resolveInjected"]
       77 MOVE                             R8 R3
       78 GETUPVAL                         R9 5
       79 MOVE                             R10 R6
       80 CALL                             R7 3 1
       81 JUMPIFEQKNIL                     R7 ; [+20]
       83 GETUPVAL                         R8 6
       84 GETUPVAL                         R10 6
       85 GETTABLE                         R9 R10 R3
       86 JUMPIF                           R9 ; [+13]
       87 DUPTABLE                         R9 K25 [{["logicalName"], ["mode"] = "inject", ["concretePath"], ["via"] = "string-alias", ["profile"]}]
       88 SETTABLEKS                       R3 R9 K19 ["logicalName"]
       90 GETUPVAL                         R10 7
       91 MOVE                             R11 R3
       92 CALL                             R10 1 1
       93 SETTABLEKS                       R10 R9 K21 ["concretePath"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K24 ["profile"]
       98 SETTABLEKS                       R10 R9 K24 ["profile"]
      100 SETTABLE                         R9 R8 R3
      101 RETURN                           R7 1
      102 GETUPVAL                         R3 4
      103 GETTABLEKS                       R3 R3 K26 ["resolveByName"]
      105 MOVE                             R4 R1
      106 GETUPVAL                         R5 5
      107 LOADK                            R6 K27 ["Use real ModuleScript requires for playable stories."]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1
      110 FASTCALL1                        TYPEOF R1 ; [+3]
      111 MOVE                             R3 R1
      112 GETIMPORT                        R2 K6 [typeof]
      114 CALL                             R2 1 1
      115 JUMPIFNOTEQKS                    R2 K7 ["Instance"] ; [+31]
      117 LOADK                            R4 K28 ["ModuleScript"]
      118 NAMECALL                         R2 R1 K29 ["IsA"]
      120 CALL                             R2 2 1
      121 JUMPIFNOT                        R2 ; [+25]
      122 GETUPVAL                         R2 1
      123 GETTABLEKS                       R2 R2 K30 ["canonicalizeModule"]
      125 MOVE                             R3 R1
      126 GETUPVAL                         R4 0
      127 GETTABLEKS                       R4 R4 K9 ["packageRoots"]
      129 CALL                             R2 2 1
      130 JUMPIFNOT                        R2 ; [+5]
      131 GETUPVAL                         R3 8
      132 MOVE                             R4 R0
      133 MOVE                             R5 R2
      134 CALL                             R3 2 -1
      135 RETURN                           R3 -1
      136 GETUPVAL                         R3 3
      137 MOVE                             R4 R0
      138 CALL                             R3 1 1
      139 JUMPIFNOT                        R3 ; [+3]
      140 GETUPVAL                         R3 9
      141 LOADB                            R4 1
      142 SETTABLE                         R4 R3 R1
      143 GETUPVAL                         R3 10
      144 MOVE                             R4 R1
      145 CALL                             R3 1 -1
      146 RETURN                           R3 -1
      147 GETIMPORT                        R2 K13 [error]
      149 LOADK                            R4 K31 ["Invalid require target: "]
      150 FASTCALL1                        TOSTRING R1 ; [+3]
      151 MOVE                             R6 R1
      152 GETIMPORT                        R5 K33 [tostring]
      154 CALL                             R5 1 1
      155 CONCAT                           R3 R4 R5
      156 LOADN                            R4 2
      157 CALL                             R2 2 0
      158 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["path"]
        2 GETTABLEKS                       R4 R1 K0 ["path"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"sourceId", "path"}]
        7 GETUPVAL                         R11 0
        8 GETTABLE                         R10 R11 R5
        9 SETTABLEKS                       R10 R9 K0 ["sourceId"]
       11 NAMECALL                         R10 R5 K3 ["GetFullName"]
       13 CALL                             R10 1 1
       14 SETTABLEKS                       R10 R9 K1 ["path"]
       16 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 1 ; [-17]
       24 GETIMPORT                        R2 K8 [table.sort]
       26 MOVE                             R3 R1
       27 DUPCLOSURE                       R4 K9 [PROTO_16]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

PROTO_18:
        0 NAMECALL                         R3 R0 K0 ["GetFullName"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R1 K0 ["GetFullName"]
        5 CALL                             R4 1 1
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 GETIMPORT                        R2 K4 [table.sort]
       17 MOVE                             R3 R1
       18 DUPCLOSURE                       R4 K5 [PROTO_18]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"attempted", "successful"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["attempted"]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["successful"]
       11 SETTABLEKS                       R1 R0 K3 ["dependencies"]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K4 ["attemptedWatchModules"]
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R2 5
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K5 ["successfulWatchModules"]
       23 RETURN                           R0 1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["path"]
        2 GETTABLEKS                       R4 R1 K0 ["path"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_22:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K3 [{"sourceId", "path", "hash"}]
        7 GETUPVAL                         R10 1
        8 GETTABLE                         R9 R10 R4
        9 SETTABLEKS                       R9 R8 K0 ["sourceId"]
       11 NAMECALL                         R9 R4 K4 ["GetFullName"]
       13 CALL                             R9 1 1
       14 SETTABLEKS                       R9 R8 K1 ["path"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R9 R9 K5 ["compute"]
       19 GETTABLEKS                       R10 R5 K6 ["source"]
       21 CALL                             R9 1 1
       22 SETTABLEKS                       R9 R8 K2 ["hash"]
       24 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K9 [table.insert]
       29 CALL                             R6 2 0
       30 FORGLOOP                         R1 2 ; [-25]
       32 GETIMPORT                        R1 K11 [table.sort]
       34 MOVE                             R2 R0
       35 DUPCLOSURE                       R3 K12 [PROTO_21]
       36 CALL                             R1 2 0
       37 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 SETTABLEKS                       R1 R0 K1 ["Name"]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["parent"]
       10 SETTABLEKS                       R1 R0 K3 ["Parent"]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["source"]
       16 SETTABLEKS                       R1 R0 K5 ["Source"]
       18 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R3 K0 ["Name"]
        6 GETTABLEKS                       R6 R4 K1 ["name"]
        8 JUMPIFNOTEQ                      R5 R6 ; [+13]
       10 GETTABLEKS                       R5 R3 K2 ["Parent"]
       12 GETTABLEKS                       R6 R4 K3 ["parent"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+7]
       16 GETTABLEKS                       R5 R3 K4 ["Source"]
       18 GETTABLEKS                       R6 R4 K5 ["source"]
       20 JUMPIFEQ                         R5 R6 ; [+17]
       22 LOADK                            R6 K6 ["[tracked-module-mutation] Evaluation mutated Name, Parent, or Source for "]
       23 GETTABLEKS                       R7 R4 K1 ["name"]
       25 CONCAT                           R5 R6 R7
       26 GETIMPORT                        R6 K8 [pcall]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CALL                             R6 1 0
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R3
       34 MOVE                             R8 R5
       35 LOADK                            R9 K9 ["tracked-module-mutation"]
       36 CALL                             R6 3 -1
       37 RETURN                           R6 -1
       38 FORGLOOP                         R0 2 ; [-35]
       40 LOADNIL                          R0
       41 RETURN                           R0 1

PROTO_25:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["__designAssistReactIdentity"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 OR                               R3 R2 R0
       12 GETUPVAL                         R4 0
       13 JUMPIFEQ                         R3 R4 ; [+4]
       15 LOADB                            R4 0
       16 LOADK                            R5 K4 ["[duplicate-react] Story and harness must use DesignAssist's approved React identity"]
       17 RETURN                           R4 2
       18 JUMPIFEQKNIL                     R1 ; [+7]
       20 GETUPVAL                         R4 1
       21 JUMPIFEQ                         R1 R4 ; [+4]
       23 LOADB                            R4 0
       24 LOADK                            R5 K5 ["[renderer-incompatible] Story and harness must use DesignAssist's approved ReactRoblox identity"]
       25 RETURN                           R4 2
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["createElement"]
       29 FASTCALL1                        TYPE R5 ; [+2]
       30 GETIMPORT                        R4 K1 [type]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K7 ["function"] ; [+28]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K8 ["createRoot"]
       38 FASTCALL1                        TYPE R5 ; [+2]
       39 GETIMPORT                        R4 K1 [type]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K7 ["function"] ; [+19]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K9 ["createPortal"]
       47 FASTCALL1                        TYPE R5 ; [+2]
       48 GETIMPORT                        R4 K1 [type]
       50 CALL                             R4 1 1
       51 JUMPIFNOTEQKS                    R4 K7 ["function"] ; [+10]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K10 ["flushSync"]
       56 FASTCALL1                        TYPE R5 ; [+2]
       57 GETIMPORT                        R4 K1 [type]
       59 CALL                             R4 1 1
       60 JUMPIFEQKS                       R4 K7 ["function"] ; [+4]
       62 LOADB                            R4 0
       63 LOADK                            R5 K11 ["[renderer-incompatible] Approved renderer pair is missing required probes"]
       64 RETURN                           R4 2
       65 LOADB                            R4 1
       66 LOADNIL                          R5
       67 RETURN                           R4 2

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_27:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+24]
        3 GETIMPORT                        R4 K1 [pcall]
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 0
        7 CALL                             R4 2 2
        8 JUMPIF                           R4 ; [+6]
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R5
       11 LOADK                            R8 K2 ["Storybook harness error: "]
       12 MOVE                             R9 R2
       13 CALL                             R6 3 -1
       14 RETURN                           R6 -1
       15 FASTCALL1                        TYPE R5 ; [+3]
       16 MOVE                             R7 R5
       17 GETIMPORT                        R6 K4 [type]
       19 CALL                             R6 1 1
       20 JUMPIFEQKS                       R6 K5 ["table"] ; [+5]
       22 DUPTABLE                         R6 K11 [{["success"] = False, ["error"] = "Storybook harness must return a table", ["name"]}]
       23 SETTABLEKS                       R2 R6 K10 ["name"]
       25 RETURN                           R6 1
       26 MOVE                             R3 R5
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K12 ["resolve"]
       30 LOADK                            R5 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K12 ["resolve"]
       35 LOADK                            R6 K14 ["ReactRoblox"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K15 ["resolveInjected"]
       40 LOADK                            R7 K13 ["React"]
       41 GETUPVAL                         R8 5
       42 LOADB                            R9 0
       43 CALL                             R6 3 1
       44 FASTCALL2K                       ASSERT R6 K16 ; [+5]
       46 MOVE                             R8 R6
       47 LOADK                            R9 K16 ["Approved React package is unavailable"]
       48 GETIMPORT                        R7 K18 [assert]
       50 CALL                             R7 2 0
       51 GETUPVAL                         R7 6
       52 GETTABLEKS                       R7 R7 K19 ["normalize"]
       54 MOVE                             R8 R0
       55 DUPTABLE                         R9 K25 [{"moduleScriptName", "implicitHarness", "storybook", "reactIs", "isRendererCompatible"}]
       56 GETUPVAL                         R10 7
       57 GETTABLEKS                       R10 R10 K26 ["Name"]
       59 SETTABLEKS                       R10 R9 K20 ["moduleScriptName"]
       61 DUPTABLE                         R10 K29 [{"roact", "reactRoblox"}]
       62 SETTABLEKS                       R6 R10 K27 ["roact"]
       64 SETTABLEKS                       R5 R10 K28 ["reactRoblox"]
       66 SETTABLEKS                       R10 R9 K21 ["implicitHarness"]
       68 SETTABLEKS                       R3 R9 K22 ["storybook"]
       70 GETUPVAL                         R10 8
       71 SETTABLEKS                       R10 R9 K23 ["reactIs"]
       73 NEWCLOSURE                       R10 P0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R10 R9 K24 ["isRendererCompatible"]
       78 CALL                             R7 2 1
       79 GETTABLEKS                       R8 R7 K30 ["ok"]
       81 JUMPIF                           R8 ; [+30]
       82 GETTABLEKS                       R9 R7 K31 ["diagnostics"]
       84 GETTABLEN                        R8 R9 1
       85 JUMPIFNOT                        R8 ; [+3]
       86 GETTABLEKS                       R9 R8 K32 ["message"]
       88 JUMP                             ; [+1]
       89 LOADK                            R9 K33 ["Story Contract normalization failed"]
       90 JUMPIFNOT                        R8 ; [+3]
       91 GETTABLEKS                       R10 R8 K34 ["category"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R10
       95 GETIMPORT                        R11 K37 [string.find]
       97 MOVE                             R12 R9
       98 LOADK                            R13 K38 ["[duplicate-react]"]
       99 LOADN                            R14 1
      100 LOADB                            R15 1
      101 CALL                             R11 4 1
      102 JUMPIFNOT                        R11 ; [+1]
      103 LOADK                            R10 K39 ["duplicate-react"]
      104 DUPTABLE                         R11 K41 [{["success"] = False, ["error"], ["diagnosticCode"], ["name"]}]
      105 SETTABLEKS                       R9 R11 K8 ["error"]
      107 SETTABLEKS                       R10 R11 K40 ["diagnosticCode"]
      109 SETTABLEKS                       R2 R11 K10 ["name"]
      111 RETURN                           R11 1
      112 GETTABLEKS                       R8 R7 K42 ["variants"]
      114 FASTCALL1                        ASSERT R8 ; [+3]
      115 MOVE                             R10 R8
      116 GETIMPORT                        R9 K18 [assert]
      118 CALL                             R9 1 0
      119 GETTABLEKS                       R9 R7 K43 ["defaultVariantId"]
      121 FASTCALL1                        ASSERT R9 ; [+3]
      122 MOVE                             R11 R9
      123 GETIMPORT                        R10 K18 [assert]
      125 CALL                             R10 1 0
      126 GETTABLEKS                       R10 R7 K44 ["controlSchema"]
      128 FASTCALL1                        ASSERT R10 ; [+3]
      129 MOVE                             R12 R10
      130 GETIMPORT                        R11 K18 [assert]
      132 CALL                             R11 1 0
      133 MOVE                             R11 R8
      134 LOADNIL                          R12
      135 LOADNIL                          R13
      136 FORGPREP                         R11
      137 GETTABLEKS                       R16 R15 K45 ["component"]
      139 FASTCALL1                        TYPE R16 ; [+3]
      140 MOVE                             R18 R16
      141 GETIMPORT                        R17 K4 [type]
      143 CALL                             R17 1 1
      144 JUMPIFEQKS                       R17 K46 ["function"] ; [+5]
      146 MOVE                             R17 R16
      147 NEWCLOSURE                       R16 P1
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R17
      150 GETUPVAL                         R17 9
      151 GETTABLEKS                       R17 R17 K47 ["getOrCreate"]
      153 LOADK                            R19 K48 ["__DesignAssistStoryContract:"]
      154 GETUPVAL                         R20 10
      155 GETTABLEKS                       R20 R20 K49 ["identity"]
      157 LOADK                            R21 K50 [":"]
      158 GETTABLEKS                       R22 R15 K51 ["id"]
      160 CONCAT                           R18 R19 R22
      161 MOVE                             R19 R16
      162 GETTABLEKS                       R20 R15 K10 ["name"]
      164 CALL                             R17 3 1
      165 SETTABLEKS                       R17 R15 K45 ["component"]
      167 FORGLOOP                         R11 2 ; [-31]
      169 DUPTABLE                         R11 K71 [{["success"] = True, ["element"] = , ["controlDefs"], ["sourceMap"], ["foundationPackage"], ["foundationPackages"], ["providerMode"], ["definition"], ["variants"], ["defaultVariantId"], ["controlSchema"], ["rendererContext"], ["storyIdentity"], ["origin"], ["dependencies"], ["attemptedWatchModules"], ["successfulWatchModules"], ["sourceHashes"], ["executionSession"], ["harnessModulePath"], ["packageProvenance"], ["name"]}]
      170 NEWTABLE                         R12 0 0
      172 SETTABLEKS                       R12 R11 K55 ["controlDefs"]
      174 SETTABLEKS                       R1 R11 K56 ["sourceMap"]
      176 GETUPVAL                         R12 11
      177 SETTABLEKS                       R12 R11 K57 ["foundationPackage"]
      179 GETUPVAL                         R12 12
      180 SETTABLEKS                       R12 R11 K58 ["foundationPackages"]
      182 GETUPVAL                         R13 0
      183 JUMPIFNOT                        R13 ; [+2]
      184 LOADK                            R12 K72 ["explicit"]
      185 JUMP                             ; [+1]
      186 LOADK                            R12 K73 ["implicit"]
      187 SETTABLEKS                       R12 R11 K59 ["providerMode"]
      189 GETTABLEKS                       R12 R7 K60 ["definition"]
      191 SETTABLEKS                       R12 R11 K60 ["definition"]
      193 SETTABLEKS                       R8 R11 K42 ["variants"]
      195 SETTABLEKS                       R9 R11 K43 ["defaultVariantId"]
      197 SETTABLEKS                       R10 R11 K44 ["controlSchema"]
      199 DUPTABLE                         R12 K76 [{"react", "reactRoblox", "logical"}]
      200 SETTABLEKS                       R4 R12 K74 ["react"]
      202 SETTABLEKS                       R5 R12 K28 ["reactRoblox"]
      204 GETTABLEKS                       R13 R7 K61 ["rendererContext"]
      206 SETTABLEKS                       R13 R12 K75 ["logical"]
      208 SETTABLEKS                       R12 R11 K61 ["rendererContext"]
      210 GETUPVAL                         R12 10
      211 GETTABLEKS                       R12 R12 K49 ["identity"]
      213 SETTABLEKS                       R12 R11 K62 ["storyIdentity"]
      215 GETUPVAL                         R12 13
      216 SETTABLEKS                       R12 R11 K63 ["origin"]
      218 DUPTABLE                         R12 K79 [{"attempted", "successful"}]
      219 GETUPVAL                         R13 14
      220 GETUPVAL                         R14 15
      221 CALL                             R13 1 1
      222 SETTABLEKS                       R13 R12 K77 ["attempted"]
      224 GETUPVAL                         R13 14
      225 GETUPVAL                         R14 16
      226 CALL                             R13 1 1
      227 SETTABLEKS                       R13 R12 K78 ["successful"]
      229 SETTABLEKS                       R12 R11 K64 ["dependencies"]
      231 GETUPVAL                         R12 17
      232 GETUPVAL                         R13 18
      233 CALL                             R12 1 1
      234 SETTABLEKS                       R12 R11 K65 ["attemptedWatchModules"]
      236 GETUPVAL                         R12 17
      237 GETUPVAL                         R13 19
      238 CALL                             R12 1 1
      239 SETTABLEKS                       R12 R11 K66 ["successfulWatchModules"]
      241 GETUPVAL                         R12 20
      242 CALL                             R12 0 1
      243 SETTABLEKS                       R12 R11 K67 ["sourceHashes"]
      245 GETUPVAL                         R12 21
      246 SETTABLEKS                       R12 R11 K68 ["executionSession"]
      248 GETUPVAL                         R13 0
      249 JUMPIFNOT                        R13 ; [+5]
      250 GETUPVAL                         R12 0
      251 NAMECALL                         R12 R12 K80 ["GetFullName"]
      253 CALL                             R12 1 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R12
      256 SETTABLEKS                       R12 R11 K69 ["harnessModulePath"]
      258 GETUPVAL                         R12 22
      259 SETTABLEKS                       R12 R11 K70 ["packageProvenance"]
      261 SETTABLEKS                       R2 R11 K10 ["name"]
      263 RETURN                           R11 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 GETIMPORT                        R2 K2 [game]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 JUMPIFEQ                         R0 R4 ; [+6]
       14 MOVE                             R8 R4
       15 NAMECALL                         R6 R0 K3 ["IsDescendantOf"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADB                            R6 1
       20 RETURN                           R6 1
       21 FORGLOOP                         R1 1 ; [-10]
       23 LOADB                            R1 0
       24 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 DUPTABLE                         R1 K3 [{[1] = "added", ["instance"]}]
       10 SETTABLEKS                       R0 R1 K2 ["instance"]
       12 SETUPVAL                         R1 1
       13 GETUPVAL                         R1 3
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K4 ["registerTemporary"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 DUPTABLE                         R1 K3 [{[1] = "removed", ["instance"]}]
       10 SETTABLEKS                       R0 R1 K2 ["instance"]
       12 SETUPVAL                         R1 1
       13 RETURN                           R0 0

PROTO_31:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R0 0
        1 GETIMPORT                        R1 K2 [task.defer]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CALL                             R1 1 0
        6 GETIMPORT                        R2 K6 [os.clock]
        8 CALL                             R2 0 1
        9 ADDK                             R1 R2 K3 [1]
       10 GETIMPORT                        R2 K8 [task.wait]
       12 CALL                             R2 0 0
       13 JUMPIF                           R0 ; [+6]
       14 GETIMPORT                        R2 K6 [os.clock]
       16 CALL                             R2 0 1
       17 JUMPIFLE                         R1 R2 ; [+2]
       19 JUMPBACK                         ; [-10]
       20 LOADB                            R2 0
       21 SETUPVAL                         R2 0
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R4 2
       24 NAMECALL                         R2 R2 K9 ["releaseConnection"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R4 3
       29 NAMECALL                         R2 R2 K9 ["releaseConnection"]
       31 CALL                             R2 2 0
       32 CLOSEUPVALS                      R0
       33 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Name"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["classify"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["discover"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 2
       16 JUMPIFNOT                        R4 ; [+14]
       17 DUPTABLE                         R5 K8 [{["success"] = False, ["error"], ["diagnosticCode"], ["name"]}]
       18 GETTABLEKS                       R6 R4 K9 ["message"]
       20 SETTABLEKS                       R6 R5 K5 ["error"]
       22 GETTABLEKS                       R6 R4 K10 ["code"]
       24 SETTABLEKS                       R6 R5 K6 ["diagnosticCode"]
       26 GETTABLEKS                       R6 R0 K0 ["Name"]
       28 SETTABLEKS                       R6 R5 K7 ["name"]
       30 RETURN                           R5 1
       31 JUMPIFNOTEQKS                    R2 K11 ["external"] ; [+8]
       33 JUMPIF                           R3 ; [+6]
       34 DUPTABLE                         R5 K14 [{["success"] = False, ["error"] = "[external-harness-required] External stories must provide a structural .storybook harness", ["diagnosticCode"] = "external-harness-required", ["name"]}]
       35 GETTABLEKS                       R6 R0 K0 ["Name"]
       37 SETTABLEKS                       R6 R5 K7 ["name"]
       39 RETURN                           R5 1
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K15 ["create"]
       43 MOVE                             R6 R0
       44 MOVE                             R7 R3
       45 MOVE                             R8 R2
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K16 ["Packages"]
       49 CALL                             R5 4 1
       50 NEWTABLE                         R6 0 0
       52 NEWTABLE                         R7 0 0
       54 NEWTABLE                         R8 0 0
       56 NEWTABLE                         R9 0 0
       58 GETUPVAL                         R10 5
       59 GETTABLEKS                       R10 R10 K17 ["new"]
       61 CALL                             R10 0 1
       62 GETUPVAL                         R11 6
       63 MOVE                             R12 R0
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R12 R11 K18 ["sourceMap"]
       67 NAMECALL                         R13 R12 K19 ["clear"]
       69 CALL                             R13 1 0
       70 JUMPIFNOTEQKS                    R2 K11 ["external"] ; [+2]
       72 LOADB                            R15 0 +1
       73 LOADB                            R15 1
       74 JUMPIFNOTEQKS                    R2 K11 ["external"] ; [+3]
       76 LOADK                            R16 K20 ["external-session"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R16
       79 NAMECALL                         R13 R12 K21 ["setSessionEditability"]
       81 CALL                             R13 3 0
       82 NEWTABLE                         R13 0 0
       84 NEWTABLE                         R14 0 0
       86 NEWTABLE                         R15 0 0
       88 NEWCLOSURE                       R16 P0
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R13
       95 NEWCLOSURE                       R17 P1
       96 CAPTURE                          VAL R16
       97 DUPCLOSURE                       R18 K22 [PROTO_7]
       98 NEWCLOSURE                       R19 P3
       99 CAPTURE                          VAL R13
      100 MOVE                             R20 R16
      101 MOVE                             R21 R0
      102 CALL                             R20 1 0
      103 GETUPVAL                         R20 7
      104 GETTABLEKS                       R20 R20 K23 ["createWrappedRuntime"]
      106 MOVE                             R21 R10
      107 CALL                             R20 1 2
      108 GETTABLEKS                       R22 R0 K0 ["Name"]
      110 DUPTABLE                         R23 K31 [{["sourceMap"], ["storyName"], ["resolveSource"], ["requester"] = , ["packagePolicy"], ["sessionPackageCache"], ["recordPackageResolution"] = }]
      111 SETTABLEKS                       R12 R23 K18 ["sourceMap"]
      113 SETTABLEKS                       R22 R23 K24 ["storyName"]
      115 SETTABLEKS                       R19 R23 K25 ["resolveSource"]
      117 SETTABLEKS                       R5 R23 K28 ["packagePolicy"]
      119 SETTABLEKS                       R6 R23 K29 ["sessionPackageCache"]
      121 LOADNIL                          R24
      122 NEWTABLE                         R25 0 0
      124 NEWTABLE                         R26 0 0
      126 NEWTABLE                         R27 0 0
      128 NEWTABLE                         R28 0 0
      130 JUMPIFNOT                        R3 ; [+2]
      131 LOADB                            R29 1
      132 SETTABLE                         R29 R27 R3
      133 NEWTABLE                         R29 0 0
      135 NEWTABLE                         R30 0 0
      137 NEWTABLE                         R31 0 0
      139 NEWTABLE                         R32 0 0
      141 NEWTABLE                         R33 0 0
      143 NEWTABLE                         R34 0 0
      145 NEWTABLE                         R35 0 0
      147 LOADNIL                          R36
      148 NEWCLOSURE                       R37 P4
      149 CAPTURE                          VAL R27
      150 NEWCLOSURE                       R38 P5
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R5
      154 NEWCLOSURE                       R39 P6
      155 CAPTURE                          VAL R32
      156 CAPTURE                          VAL R27
      157 CAPTURE                          VAL R28
      158 CAPTURE                          VAL R37
      159 CAPTURE                          VAL R34
      160 CAPTURE                          VAL R31
      161 CAPTURE                          VAL R29
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R30
      164 CAPTURE                          VAL R16
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          REF R36
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R21
      169 CAPTURE                          REF R24
      170 CAPTURE                          VAL R26
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R33
      173 CAPTURE                          VAL R35
      174 DUPCLOSURE                       R40 K32 [PROTO_13]
      175 CAPTURE                          UPVAL U4
      176 NEWCLOSURE                       R41 P8
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R37
      180 CAPTURE                          UPVAL U9
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R38
      183 CAPTURE                          VAL R40
      184 CAPTURE                          VAL R33
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R39
      190 CAPTURE                          REF R24
      191 NEWCLOSURE                       R36 P9
      192 CAPTURE                          VAL R5
      193 CAPTURE                          UPVAL U10
      194 CAPTURE                          REF R36
      195 CAPTURE                          VAL R37
      196 CAPTURE                          UPVAL U9
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R40
      200 CAPTURE                          VAL R41
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R39
      203 NEWCLOSURE                       R42 P10
      204 CAPTURE                          VAL R14
      205 DUPCLOSURE                       R43 K33 [PROTO_19]
      206 NEWCLOSURE                       R44 P12
      207 CAPTURE                          VAL R42
      208 CAPTURE                          VAL R32
      209 CAPTURE                          VAL R33
      210 CAPTURE                          VAL R43
      211 CAPTURE                          VAL R34
      212 CAPTURE                          VAL R35
      213 NEWCLOSURE                       R45 P13
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R14
      216 CAPTURE                          UPVAL U11
      217 NEWCLOSURE                       R46 P14
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R17
      220 NEWCLOSURE                       R47 P15
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R39
      223 CAPTURE                          VAL R18
      224 CAPTURE                          UPVAL U12
      225 CAPTURE                          UPVAL U9
      226 CAPTURE                          VAL R23
      227 CAPTURE                          UPVAL U13
      228 CAPTURE                          VAL R0
      229 CAPTURE                          UPVAL U14
      230 CAPTURE                          UPVAL U15
      231 CAPTURE                          VAL R11
      232 CAPTURE                          REF R24
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R42
      236 CAPTURE                          VAL R32
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R43
      239 CAPTURE                          VAL R34
      240 CAPTURE                          VAL R35
      241 CAPTURE                          VAL R45
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R8
      244 LOADNIL                          R48
      245 LOADB                            R49 1
      246 NEWCLOSURE                       R50 P16
      247 CAPTURE                          VAL R28
      248 GETIMPORT                        R51 K35 [game]
      250 GETTABLEKS                       R51 R51 K36 ["DescendantAdded"]
      252 NEWCLOSURE                       R53 P17
      253 CAPTURE                          REF R49
      254 CAPTURE                          REF R48
      255 CAPTURE                          VAL R50
      256 CAPTURE                          VAL R10
      257 NAMECALL                         R51 R51 K37 ["Connect"]
      259 CALL                             R51 2 1
      260 GETIMPORT                        R52 K35 [game]
      262 GETTABLEKS                       R52 R52 K38 ["DescendantRemoving"]
      264 NEWCLOSURE                       R54 P18
      265 CAPTURE                          REF R49
      266 CAPTURE                          REF R48
      267 CAPTURE                          VAL R50
      268 NAMECALL                         R52 R52 K37 ["Connect"]
      270 CALL                             R52 2 1
      271 MOVE                             R55 R51
      272 NAMECALL                         R53 R10 K39 ["registerConnection"]
      274 CALL                             R53 2 0
      275 MOVE                             R55 R52
      276 NAMECALL                         R53 R10 K39 ["registerConnection"]
      278 CALL                             R53 2 0
      279 NEWCLOSURE                       R53 P19
      280 CAPTURE                          REF R49
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R51
      283 CAPTURE                          VAL R52
      284 GETIMPORT                        R54 K41 [pcall]
      286 MOVE                             R55 R39
      287 MOVE                             R56 R0
      288 CALL                             R54 2 2
      289 JUMPIF                           R54 ; [+15]
      290 MOVE                             R56 R53
      291 CALL                             R56 0 0
      292 NAMECALL                         R56 R10 K42 ["cleanup"]
      294 CALL                             R56 1 0
      295 MOVE                             R56 R44
      296 MOVE                             R57 R18
      297 MOVE                             R58 R55
      298 LOADK                            R59 K43 ["Runtime error: "]
      299 GETTABLEKS                       R60 R0 K0 ["Name"]
      301 CALL                             R57 3 -1
      302 CALL                             R56 -1 -1
      303 CLOSEUPVALS                      R24
      304 RETURN                           R56 -1
      305 MOVE                             R56 R47
      306 MOVE                             R57 R55
      307 MOVE                             R58 R12
      308 GETTABLEKS                       R59 R0 K0 ["Name"]
      310 CALL                             R56 3 1
      311 MOVE                             R57 R53
      312 CALL                             R57 0 0
      313 MOVE                             R57 R46
      314 CALL                             R57 0 1
      315 JUMPIFNOT                        R57 ; [+13]
      316 NAMECALL                         R58 R10 K42 ["cleanup"]
      318 CALL                             R58 1 0
      319 MOVE                             R58 R44
      320 MOVE                             R59 R18
      321 MOVE                             R60 R57
      322 LOADK                            R61 K43 ["Runtime error: "]
      323 GETTABLEKS                       R62 R0 K0 ["Name"]
      325 CALL                             R59 3 -1
      326 CALL                             R58 -1 -1
      327 CLOSEUPVALS                      R24
      328 RETURN                           R58 -1
      329 JUMPIFNOT                        R48 ; [+28]
      330 MOVE                             R58 R48
      331 MOVE                             R59 R17
      332 MOVE                             R60 R0
      333 LOADK                            R62 K44 ["[unsafe-datamodel-mutation] Evaluation "]
      334 GETTABLEKS                       R63 R58 K45 ["kind"]
      336 LOADK                            R64 K46 [" DataModel descendant "]
      337 GETTABLEKS                       R65 R58 K47 ["instance"]
      339 NAMECALL                         R65 R65 K48 ["GetFullName"]
      341 CALL                             R65 1 1
      342 CONCAT                           R61 R62 R65
      343 LOADK                            R62 K49 ["unsafe-datamodel-mutation"]
      344 CALL                             R59 3 1
      345 NAMECALL                         R60 R10 K42 ["cleanup"]
      347 CALL                             R60 1 0
      348 MOVE                             R60 R44
      349 MOVE                             R61 R18
      350 MOVE                             R62 R59
      351 LOADK                            R63 K43 ["Runtime error: "]
      352 GETTABLEKS                       R64 R0 K0 ["Name"]
      354 CALL                             R61 3 -1
      355 CALL                             R60 -1 -1
      356 CLOSEUPVALS                      R24
      357 RETURN                           R60 -1
      358 NAMECALL                         R58 R10 K50 ["finishEvaluation"]
      360 CALL                             R58 1 0
      361 GETTABLEKS                       R58 R56 K3 ["success"]
      363 JUMPIFNOT                        R58 ; [+3]
      364 SETTABLEKS                       R24 R56 K51 ["foundationPackage"]
      366 JUMP                             ; [+3]
      367 NAMECALL                         R58 R10 K42 ["cleanup"]
      369 CALL                             R58 1 0
      370 MOVE                             R58 R44
      371 MOVE                             R59 R56
      372 CALL                             R58 1 -1
      373 CLOSEUPVALS                      R24
      374 RETURN                           R58 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["Executor must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Src"]
       18 GETTABLEKS                       R2 R2 K10 ["Util"]
       20 GETTABLEKS                       R2 R2 K11 ["PackageRegistry"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [require]
       25 GETTABLEKS                       R3 R0 K9 ["Src"]
       27 GETTABLEKS                       R3 R3 K10 ["Util"]
       29 GETTABLEKS                       R3 R3 K12 ["SourceHash"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K8 [require]
       34 GETTABLEKS                       R4 R0 K9 ["Src"]
       36 GETTABLEKS                       R4 R4 K10 ["Util"]
       38 GETTABLEKS                       R4 R4 K13 ["SourceMap"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K8 [require]
       43 GETTABLEKS                       R5 R0 K9 ["Src"]
       45 GETTABLEKS                       R5 R5 K10 ["Util"]
       47 GETTABLEKS                       R5 R5 K14 ["StoryContract"]
       49 CALL                             R4 1 1
       50 GETIMPORT                        R5 K8 [require]
       52 GETTABLEKS                       R6 R0 K9 ["Src"]
       54 GETTABLEKS                       R6 R6 K10 ["Util"]
       56 GETTABLEKS                       R6 R6 K15 ["StoryOrigin"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K8 [require]
       61 GETTABLEKS                       R7 R0 K9 ["Src"]
       63 GETTABLEKS                       R7 R7 K10 ["Util"]
       65 GETTABLEKS                       R7 R7 K16 ["StorybookDiscovery"]
       67 CALL                             R6 1 1
       68 GETIMPORT                        R7 K8 [require]
       70 GETTABLEKS                       R8 R0 K17 ["Packages"]
       72 GETTABLEKS                       R8 R8 K18 ["ReactIs"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K8 [require]
       77 GETIMPORT                        R9 K1 [script]
       79 GETTABLEKS                       R9 R9 K19 ["ExecutionSession"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K8 [require]
       84 GETIMPORT                        R10 K1 [script]
       86 GETTABLEKS                       R10 R10 K20 ["PackageIdentity"]
       88 CALL                             R9 1 1
       89 GETIMPORT                        R10 K8 [require]
       91 GETIMPORT                        R11 K1 [script]
       93 GETTABLEKS                       R11 R11 K21 ["PackagePolicy"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K8 [require]
       98 GETIMPORT                        R12 K1 [script]
      100 GETTABLEKS                       R12 R12 K22 ["PackageResolver"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K8 [require]
      105 GETIMPORT                        R13 K1 [script]
      107 GETTABLEKS                       R13 R13 K23 ["StableWrappers"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K8 [require]
      112 GETIMPORT                        R14 K1 [script]
      114 GETTABLEKS                       R14 R14 K24 ["TimeScale"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K26 [debug]
      119 GETTABLEKS                       R14 R14 K27 ["loadmodule"]
      121 DUPCLOSURE                       R15 K28 [PROTO_1]
      122 CAPTURE                          VAL R14
      123 DUPCLOSURE                       R16 K29 [PROTO_2]
      124 CAPTURE                          VAL R15
      125 LOADN                            R17 0
      126 NEWTABLE                         R19 0 0
      128 DUPTABLE                         R20 K32 [{["__mode"] = "k"}]
      129 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      131 GETIMPORT                        R18 K34 [setmetatable]
      133 CALL                             R18 2 1
      134 NEWCLOSURE                       R19 P2
      135 CAPTURE                          VAL R18
      136 CAPTURE                          REF R17
      137 CAPTURE                          VAL R3
      138 DUPCLOSURE                       R20 K35 [PROTO_4]
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R18
      141 DUPCLOSURE                       R21 K36 [PROTO_33]
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R12
      158 DUPTABLE                         R22 K46 [{["executeModule"], ["isLoadModuleAvailable"], ["LOADMODULE_UNAVAILABLE_ERROR"] = "DesignAssist requires debug.loadmodule. In Studio, go to File > Open Flag Editor, search for 'EnableLoadModule', toggle it to true, then restart Studio.", ["resolvePackage"], ["setTimeScale"], ["getTimeScale"], ["clearStableWrappers"], ["getStableWrapperName"]}]
      159 SETTABLEKS                       R21 R22 K37 ["executeModule"]
      161 SETTABLEKS                       R15 R22 K38 ["isLoadModuleAvailable"]
      163 GETTABLEKS                       R23 R11 K47 ["resolve"]
      165 SETTABLEKS                       R23 R22 K41 ["resolvePackage"]
      167 GETTABLEKS                       R23 R13 K48 ["set"]
      169 SETTABLEKS                       R23 R22 K42 ["setTimeScale"]
      171 GETTABLEKS                       R23 R13 K49 ["get"]
      173 SETTABLEKS                       R23 R22 K43 ["getTimeScale"]
      175 SETTABLEKS                       R20 R22 K44 ["clearStableWrappers"]
      177 GETTABLEKS                       R23 R12 K50 ["getName"]
      179 SETTABLEKS                       R23 R22 K45 ["getStableWrapperName"]
      181 CLOSEUPVALS                      R17
      182 RETURN                           R22 1
