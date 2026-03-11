PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 LOADK                            R3 K0 ["Packages"]
        4 SETLIST                          R2 R3 1 [1]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 LOADK                            R4 K1 ["Framework"]
        9 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K3 ["Clone"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R1 R2 K4 ["Parent"]
       20 LOADK                            R3 K1 ["Framework"]
       21 SETTABLEKS                       R3 R2 K5 ["Name"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K6 ["stubScript"]
       26 GETTABLEKS                       R6 R2 K7 ["Util"]
       28 GETTABLEKS                       R5 R6 K8 ["Typecheck"]
       30 GETTABLEKS                       R4 R5 K9 ["DocParser"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K6 ["stubScript"]
       36 GETTABLEKS                       R5 R2 K7 ["Util"]
       38 GETTABLEKS                       R4 R5 K10 ["Flags"]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R3 R4 K6 ["stubScript"]
       44 GETTABLEKS                       R6 R2 K11 ["UI"]
       46 GETTABLEKS                       R5 R6 K12 ["ContextServices"]
       48 GETTABLEKS                       R4 R5 K13 ["Localization"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K6 ["stubScript"]
       54 GETTABLEKS                       R6 R2 K14 ["Style"]
       56 GETTABLEKS                       R5 R6 K15 ["Themes"]
       58 GETTABLEKS                       R4 R5 K16 ["StudioTheme"]
       60 CALL                             R3 1 0
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K17 ["rewriteStaticFlagsWithCurrentValues"]
       64 MOVE                             R4 R2
       65 CALL                             R3 1 0
       66 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["Install React 17 package"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 0
       10 NAMECALL                         R2 R1 K4 ["Clone"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 SETTABLEKS                       R3 R2 K5 ["Parent"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["installPeerDependency"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADK                            R5 K1 ["Cryo"]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 NEWTABLE                         R3 0 1
       10 LOADK                            R4 K2 ["Packages"]
       11 SETLIST                          R3 R4 1 [1]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 LOADK                            R5 K3 ["_Index"]
       16 NAMECALL                         R3 R1 K4 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K7 [Instance.new]
       21 LOADK                            R5 K8 ["ModuleScript"]
       22 CALL                             R4 1 1
       23 LOADK                            R5 K9 ["Roact"]
       24 SETTABLEKS                       R5 R4 K10 ["Name"]
       26 LOADK                            R5 K11 ["local Packages = script:FindFirstAncestor(\"Packages\")\nreturn require(Packages._Index[\"RoactCompat\"][\"RoactCompat\"])"]
       27 SETTABLEKS                       R5 R4 K12 ["Source"]
       29 SETTABLEKS                       R2 R4 K13 ["Parent"]
       31 GETIMPORT                        R5 K7 [Instance.new]
       33 LOADK                            R6 K8 ["ModuleScript"]
       34 CALL                             R5 1 1
       35 LOADK                            R6 K14 ["Roact17"]
       36 SETTABLEKS                       R6 R5 K10 ["Name"]
       38 LOADK                            R6 K11 ["local Packages = script:FindFirstAncestor(\"Packages\")\nreturn require(Packages._Index[\"RoactCompat\"][\"RoactCompat\"])"]
       39 SETTABLEKS                       R6 R5 K12 ["Source"]
       41 SETTABLEKS                       R2 R5 K13 ["Parent"]
       43 GETUPVAL                         R6 1
       44 NEWTABLE                         R7 0 1
       46 LOADK                            R8 K3 ["_Index"]
       47 SETLIST                          R7 R8 1 [1]
       49 MOVE                             R8 R2
       50 CALL                             R6 2 1
       51 NEWTABLE                         R7 0 18
       53 LOADK                            R8 K15 ["Boolean"]
       54 LOADK                            R9 K16 ["Collections"]
       55 LOADK                            R10 K17 ["Console"]
       56 LOADK                            R11 K18 ["ES7Types"]
       57 LOADK                            R12 K19 ["InstanceOf"]
       58 LOADK                            R13 K20 ["Math"]
       59 LOADK                            R14 K21 ["Number"]
       60 LOADK                            R15 K22 ["String"]
       61 LOADK                            R16 K23 ["Symbol"]
       62 LOADK                            R17 K24 ["Timers"]
       63 LOADK                            R18 K25 ["LuauPolyfill"]
       64 LOADK                            R19 K26 ["Promise"]
       65 LOADK                            R20 K27 ["React"]
       66 LOADK                            R21 K28 ["ReactReconciler"]
       67 LOADK                            R22 K29 ["ReactRoblox"]
       68 LOADK                            R23 K30 ["RoactCompat"]
       69 SETLIST                          R7 R8 16 [1]
       71 LOADK                            R8 K31 ["Scheduler"]
       72 LOADK                            R9 K32 ["Shared"]
       73 SETLIST                          R7 R8 2 [17]
       75 GETUPVAL                         R8 2
       76 MOVE                             R9 R7
       77 NEWCLOSURE                       R10 P0
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CALL                             R8 2 0
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
       84 MOVE                             R9 R0
       85 MOVE                             R10 R1
       86 LOADK                            R11 K27 ["React"]
       87 CALL                             R8 3 0
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
       91 MOVE                             R9 R0
       92 MOVE                             R10 R1
       93 LOADK                            R11 K33 ["ReactIs"]
       94 CALL                             R8 3 0
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
       98 MOVE                             R9 R0
       99 MOVE                             R10 R1
      100 LOADK                            R11 K29 ["ReactRoblox"]
      101 CALL                             R8 3 0
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      105 MOVE                             R9 R0
      106 MOVE                             R10 R1
      107 LOADK                            R11 K9 ["Roact"]
      108 CALL                             R8 3 0
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      112 MOVE                             R9 R0
      113 MOVE                             R10 R1
      114 LOADK                            R11 K34 ["enumerate"]
      115 CALL                             R8 3 0
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      119 MOVE                             R9 R0
      120 MOVE                             R10 R1
      121 LOADK                            R11 K35 ["Dash"]
      122 CALL                             R8 3 0
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      126 MOVE                             R9 R0
      127 MOVE                             R10 R1
      128 LOADK                            R11 K36 ["RoactRodux"]
      129 CALL                             R8 3 0
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      133 MOVE                             R9 R0
      134 MOVE                             R10 R1
      135 LOADK                            R11 K37 ["Rodux"]
      136 CALL                             R8 3 0
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      140 MOVE                             R9 R0
      141 MOVE                             R10 R1
      142 LOADK                            R11 K38 ["TestLoader"]
      143 CALL                             R8 3 0
      144 GETUPVAL                         R9 0
      145 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      147 MOVE                             R9 R0
      148 MOVE                             R10 R1
      149 LOADK                            R11 K39 ["MaterialFramework"]
      150 CALL                             R8 3 0
      151 GETUPVAL                         R9 0
      152 GETTABLEKS                       R8 R9 K0 ["installPeerDependency"]
      154 MOVE                             R9 R0
      155 MOVE                             R10 R1
      156 LOADK                            R11 K40 ["ViewportToolingFramework"]
      157 CALL                             R8 3 0
      158 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 1
        3 LOADK                            R5 K0 ["Packages"]
        4 SETLIST                          R4 R5 1 [1]
        6 MOVE                             R5 R0
        7 CALL                             R3 2 1
        8 LOADK                            R6 K1 ["_Index"]
        9 NAMECALL                         R4 R1 K2 ["FindFirstChild"]
       11 CALL                             R4 2 1
       12 MOVE                             R7 R2
       13 NAMECALL                         R5 R3 K2 ["FindFirstChild"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+1]
       17 RETURN                           R0 0
       18 MOVE                             R7 R2
       19 NAMECALL                         R5 R1 K2 ["FindFirstChild"]
       21 CALL                             R5 2 1
       22 JUMPIF                           R5 ; [+6]
       23 GETIMPORT                        R6 K4 [warn]
       25 LOADK                            R7 K5 ["Skipping peer library"]
       26 MOVE                             R8 R2
       27 CALL                             R6 2 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R6 K7 [print]
       31 LOADK                            R7 K8 ["Locating"]
       32 MOVE                             R8 R2
       33 CALL                             R6 2 0
       34 MOVE                             R8 R2
       35 NAMECALL                         R6 R1 K2 ["FindFirstChild"]
       37 CALL                             R6 2 1
       38 NAMECALL                         R6 R6 K9 ["Clone"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R3 R6 K10 ["Parent"]
       43 GETTABLEKS                       R7 R6 K11 ["Source"]
       45 LOADK                            R9 K12 ["PackageIndex%[%\"([^\"]+)%\"%]"]
       46 NAMECALL                         R7 R7 K13 ["match"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K7 [print]
       51 LOADK                            R9 K14 ["Linking"]
       52 MOVE                             R10 R2
       53 LOADK                            R11 K15 ["to"]
       54 MOVE                             R12 R7
       55 CALL                             R8 4 0
       56 MOVE                             R10 R7
       57 NAMECALL                         R8 R4 K2 ["FindFirstChild"]
       59 CALL                             R8 2 1
       60 GETUPVAL                         R9 0
       61 NEWTABLE                         R10 0 1
       63 LOADK                            R11 K1 ["_Index"]
       64 SETLIST                          R10 R11 1 [1]
       66 MOVE                             R11 R3
       67 CALL                             R9 2 1
       68 NAMECALL                         R10 R8 K9 ["Clone"]
       70 CALL                             R10 1 1
       71 SETTABLEKS                       R9 R10 K10 ["Parent"]
       73 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETTABLEKS                       R5 R0 K1 ["Name"]
        5 LOADK                            R6 K2 [".stub"]
        6 CONCAT                           R4 R5 R6
        7 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R1 R2 K0 ["Parent"]
       12 GETTABLEKS                       R3 R0 K1 ["Name"]
       14 SETTABLEKS                       R3 R2 K1 ["Name"]
       16 GETTABLEKS                       R4 R0 K1 ["Name"]
       18 LOADK                            R5 K4 ["_stubbed"]
       19 CONCAT                           R3 R4 R5
       20 SETTABLEKS                       R3 R0 K1 ["Name"]
       22 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["rewriteFlagsForScript"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        3 CALL                             R2 1 1
        4 DUPCLOSURE                       R3 K1 [PROTO_5]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["rewriteFlagsForScript"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["rewriteFlagsForScript"]
        8 LOADK                            R4 K1 ["Util"]
        9 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["rewriteFlagsForScript"]
       16 LOADK                            R4 K3 ["UI"]
       17 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R2 R0 K4 ["GetChildren"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K5 [PROTO_6]
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U0
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["select(2, \"{}\", {:?})"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R3 1
        7 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R4
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R4
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1
       12 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R4
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1
       12 RETURN                           R1 1

PROTO_17:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R4
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1
       12 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K2 ["GetFVariable"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_20:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R4
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R4
        8 CALL                             R5 1 2
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R3 R6
       11 JUMP                             ; [+2]
       12 LOADB                            R3 0
       13 JUMP                             ; [0]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R4
        8 CALL                             R5 1 2
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R3 R6
       11 JUMP                             ; [+2]
       12 MOVE                             R3 R0
       13 JUMP                             ; [0]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R4
        8 CALL                             R5 1 2
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R3 R6
       11 JUMP                             ; [+2]
       12 MOVE                             R3 R0
       13 JUMP                             ; [0]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R4
        8 CALL                             R5 1 2
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R3 R6
       11 JUMP                             ; [+2]
       12 MOVE                             R3 R0
       13 JUMP                             ; [0]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 GETIMPORT                        R5 K1 [pcall]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R4
        8 CALL                             R5 1 2
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R3 R6
       11 JUMP                             ; [+2]
       12 LOADB                            R3 0
       13 JUMP                             ; [0]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["Source"]
        2 LENGTH                           R1 R2
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+9]
        6 GETIMPORT                        R1 K2 [warn]
        8 LOADK                            R2 K3 ["Skipping rewriteFlagsForScript for"]
        9 GETTABLEKS                       R3 R0 K4 ["Name"]
       11 LOADK                            R4 K5 ["because it's too large"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K0 ["Source"]
       16 LOADK                            R3 K6 ["game:DefineFastInt%(%s*\"([^\"]+)\"[^)]*%)"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R1 R1 K7 ["gsub"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["game:DefineFastFlag%(%s*\"([^\"]+)\"[^)]*%)"]
       22 GETUPVAL                         R4 2
       23 NAMECALL                         R1 R1 K7 ["gsub"]
       25 CALL                             R1 3 1
       26 LOADK                            R3 K9 ["game:DefineFastString%(%s*\"([^\"]+)\"[^)]*%)"]
       27 GETUPVAL                         R4 3
       28 NAMECALL                         R1 R1 K7 ["gsub"]
       30 CALL                             R1 3 1
       31 LOADK                            R3 K10 ["game:GetEngineFeature%(%s*\"([^\"]+)\"[^)]*%)"]
       32 GETUPVAL                         R4 4
       33 NAMECALL                         R1 R1 K7 ["gsub"]
       35 CALL                             R1 3 1
       36 LOADK                            R3 K11 ["game:GetFastFlag%(%s*\"([^\"]+)\"[^)]*%)"]
       37 GETUPVAL                         R4 2
       38 NAMECALL                         R1 R1 K7 ["gsub"]
       40 CALL                             R1 3 1
       41 LOADK                            R3 K12 ["game:GetFastString%(%s*\"([^\"]+)\"[^)]*%)"]
       42 GETUPVAL                         R4 3
       43 NAMECALL                         R1 R1 K7 ["gsub"]
       45 CALL                             R1 3 1
       46 LOADK                            R3 K13 ["game:GetFastInt%(%s*\"([^\"]+)\"[^)]*%)"]
       47 GETUPVAL                         R4 1
       48 NAMECALL                         R1 R1 K7 ["gsub"]
       50 CALL                             R1 3 1
       51 LOADK                            R3 K14 ["settings%(%):GetFFlag%(%s*\"([^\"]+)\"%)"]
       52 GETUPVAL                         R4 2
       53 NAMECALL                         R1 R1 K7 ["gsub"]
       55 CALL                             R1 3 1
       56 LOADK                            R3 K15 ["settings%(%):GetFVariable%(%s*\"([^\"]+)\"%)"]
       57 GETUPVAL                         R4 5
       58 NAMECALL                         R1 R1 K7 ["gsub"]
       60 CALL                             R1 3 1
       61 LOADK                            R3 K15 ["settings%(%):GetFVariable%(%s*\"([^\"]+)\"%)"]
       62 GETUPVAL                         R4 5
       63 NAMECALL                         R1 R1 K7 ["gsub"]
       65 CALL                             R1 3 1
       66 LOADK                            R3 K16 ["game:GetService%(\"StudioService\"%)"]
       67 LOADK                            R4 K17 ["({StudioLocaleId = \"en-us\", GetPropertyChangedSignal = function() return {Connect = function() return {Disconnect = function() end} end} end, HasInternalPermission = function() return true end})"]
       68 NAMECALL                         R1 R1 K7 ["gsub"]
       70 CALL                             R1 3 1
       71 LOADK                            R3 K18 ["game:GetService%(\"StudioSdkService\"%)"]
       72 LOADK                            R4 K19 ["({GetSdk = function() return nil end})"]
       73 NAMECALL                         R1 R1 K7 ["gsub"]
       75 CALL                             R1 3 1
       76 SETTABLEKS                       R1 R0 K0 ["Source"]
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["forEach"]
       16 GETTABLEKS                       R3 R1 K7 ["format"]
       18 GETIMPORT                        R4 K9 [game]
       20 LOADK                            R6 K10 ["ScriptStringLimit"]
       21 LOADK                            R7 K11 [200000]
       22 NAMECALL                         R4 R4 K12 ["DefineFastInt"]
       24 CALL                             R4 3 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R7 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R7 K14 ["getDeepFolder"]
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 8 0
       34 DUPCLOSURE                       R7 K15 [PROTO_0]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 SETTABLEKS                       R7 R6 K16 ["install"]
       40 DUPCLOSURE                       R7 K17 [PROTO_2]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K18 ["installPeerDependencies"]
       46 DUPCLOSURE                       R7 K19 [PROTO_3]
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R7 R6 K20 ["installPeerDependency"]
       50 DUPCLOSURE                       R7 K21 [PROTO_4]
       51 SETTABLEKS                       R7 R6 K22 ["stubScript"]
       53 DUPCLOSURE                       R7 K23 [PROTO_7]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R7 R6 K24 ["rewriteStaticFlagsWithCurrentValues"]
       58 DUPCLOSURE                       R7 K25 [PROTO_8]
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R8 K26 [PROTO_10]
       61 DUPCLOSURE                       R9 K27 [PROTO_12]
       62 DUPCLOSURE                       R10 K28 [PROTO_14]
       63 DUPCLOSURE                       R11 K29 [PROTO_16]
       64 DUPCLOSURE                       R12 K30 [PROTO_18]
       65 DUPCLOSURE                       R13 K31 [PROTO_20]
       66 DUPCLOSURE                       R14 K32 [PROTO_21]
       67 CAPTURE                          VAL R7
       68 DUPCLOSURE                       R15 K33 [PROTO_22]
       69 CAPTURE                          VAL R7
       70 DUPCLOSURE                       R16 K34 [PROTO_23]
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R17 K35 [PROTO_24]
       73 CAPTURE                          VAL R7
       74 DUPCLOSURE                       R18 K36 [PROTO_25]
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R14 R6 K37 ["rewriteFlag"]
       78 DUPCLOSURE                       R19 K38 [PROTO_26]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R18
       85 SETTABLEKS                       R19 R6 K39 ["rewriteFlagsForScript"]
       87 RETURN                           R6 1
