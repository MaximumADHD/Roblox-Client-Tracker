PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioWidgetsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = , ["widget"] = }]
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K6 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 ["Dialog"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 CONCAT                           R0 R1 R2
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K9 [{["Id"], ["InitialEnabled"] = False, ["ToolDialog"], ["Modal"], ["Size"], ["DisableTitleBar"]}]
        9 SETTABLEKS                       R0 R4 K2 ["Id"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["ToolDialog"]
       14 SETTABLEKS                       R5 R4 K5 ["ToolDialog"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["Modal"]
       19 SETTABLEKS                       R5 R4 K6 ["Modal"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K7 ["Size"]
       24 SETTABLEKS                       R5 R4 K7 ["Size"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K8 ["DisableTitleBar"]
       29 SETTABLEKS                       R5 R4 K8 ["DisableTitleBar"]
       31 NAMECALL                         R1 R1 K10 ["CreateQWidgetPluginGui"]
       33 CALL                             R1 3 1
       34 GETIMPORT                        R2 K14 [Enum.ZIndexBehavior.Sibling]
       36 SETTABLEKS                       R2 R1 K12 ["ZIndexBehavior"]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K15 ["createRoot"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 1
       43 GETUPVAL                         R3 4
       44 DUPTABLE                         R4 K18 [{"root", "widget"}]
       45 SETTABLEKS                       R2 R4 K16 ["root"]
       47 SETTABLEKS                       R1 R4 K17 ["widget"]
       49 CALL                             R3 1 0
       50 NEWCLOSURE                       R3 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["widget"]
       10 SETTABLEKS                       R1 R0 K2 ["current"]
       12 NEWCLOSURE                       R0 P0
       13 CAPTURE                          UPVAL U0
       14 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+22]
       12 GETUPVAL                         R0 1
       13 JUMPIFNOT                        R0 ; [+20]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["widget"]
       18 NAMECALL                         R0 R0 K3 ["GetWidgetFromPluginGui"]
       20 CALL                             R0 2 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["Size"]
       24 GETTABLEKS                       R2 R2 K5 ["X"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K4 ["Size"]
       29 GETTABLEKS                       R3 R3 K6 ["Y"]
       31 NAMECALL                         R0 R0 K7 ["SetFixedSize"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["widget"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["Name"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["widget"]
       13 LOADK                            R2 K2 ["PluginGui"]
       14 NAMECALL                         R0 R0 K3 ["IsA"]
       16 CALL                             R0 2 1
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["widget"]
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R1 R0 K4 ["Title"]
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["widget"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClosed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnClosed"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["widget"]
       15 NAMECALL                         R0 R0 K3 ["BindToClose"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+9]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["widget"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R0 R0 K3 ["BindToClose"]
       20 CALL                             R0 2 0
       21 NEWCLOSURE                       R0 P1
       22 CAPTURE                          UPVAL U0
       23 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["useDialogWidget requires ReactRoblox"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["use"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["use"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["use"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K3 ["use"]
       22 CALL                             R4 0 1
       23 NAMECALL                         R5 R4 K4 ["get"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R6 R6 K5 ["useState"]
       29 DUPTABLE                         R7 K9 [{["root"] = , ["widget"] = }]
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K5 ["useState"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       39 NEWCLOSURE                       R11 P0
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R9
       44 SETLIST                          R12 R13 1 [1]
       46 CALL                             R10 2 1
       47 GETUPVAL                         R11 5
       48 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       50 NEWCLOSURE                       R12 P1
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R13 0 1
       54 MOVE                             R14 R9
       55 SETLIST                          R13 R14 1 [1]
       57 CALL                             R11 2 1
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       61 NEWCLOSURE                       R13 P2
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          VAL R7
       67 NEWTABLE                         R14 0 2
       69 GETTABLEKS                       R15 R0 K12 ["Modal"]
       71 GETTABLEKS                       R16 R0 K13 ["DisableTitleBar"]
       73 SETLIST                          R14 R15 2 [1]
       75 CALL                             R12 2 0
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       79 NEWCLOSURE                       R13 P3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R14 0 2
       84 GETTABLEKS                       R15 R0 K14 ["WidgetRef"]
       86 GETTABLEKS                       R16 R6 K8 ["widget"]
       88 SETLIST                          R14 R15 2 [1]
       90 CALL                             R12 2 0
       91 GETUPVAL                         R12 5
       92 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       94 NEWCLOSURE                       R13 P4
       95 CAPTURE                          VAL R6
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R14 0 2
      100 GETTABLEKS                       R15 R6 K8 ["widget"]
      102 GETTABLEKS                       R16 R0 K15 ["Size"]
      104 SETLIST                          R14 R15 2 [1]
      106 CALL                             R12 2 0
      107 GETTABLEKS                       R13 R0 K16 ["Title"]
      109 JUMPIFNOT                        R13 ; [+3]
      110 GETTABLEKS                       R12 R0 K16 ["Title"]
      112 JUMP                             ; [+1]
      113 LOADK                            R12 K17 ["Roblox Studio"]
      114 GETUPVAL                         R13 5
      115 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      117 NEWCLOSURE                       R14 P5
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R12
      120 NEWTABLE                         R15 0 2
      122 GETTABLEKS                       R16 R6 K8 ["widget"]
      124 MOVE                             R17 R12
      125 SETLIST                          R15 R16 2 [1]
      127 CALL                             R13 2 0
      128 GETUPVAL                         R13 5
      129 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      131 NEWCLOSURE                       R14 P6
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R8
      134 NEWTABLE                         R15 0 2
      136 GETTABLEKS                       R16 R6 K8 ["widget"]
      138 MOVE                             R17 R8
      139 SETLIST                          R15 R16 2 [1]
      141 CALL                             R13 2 0
      142 GETUPVAL                         R13 5
      143 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      145 NEWCLOSURE                       R14 P7
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R11
      149 NEWTABLE                         R15 0 3
      151 GETTABLEKS                       R16 R6 K8 ["widget"]
      153 MOVE                             R17 R11
      154 GETTABLEKS                       R18 R0 K18 ["OnClosed"]
      156 SETLIST                          R15 R16 3 [1]
      158 CALL                             R13 2 0
      159 GETTABLEKS                       R13 R6 K8 ["widget"]
      161 JUMPIFNOT                        R13 ; [+79]
      162 GETTABLEKS                       R13 R6 K6 ["root"]
      164 JUMPIFNOT                        R13 ; [+76]
      165 JUMPIFNOT                        R8 ; [+69]
      166 GETTABLEKS                       R13 R6 K6 ["root"]
      168 GETUPVAL                         R15 8
      169 NEWTABLE                         R16 0 6
      171 MOVE                             R17 R1
      172 GETUPVAL                         R18 9
      173 GETTABLEKS                       R18 R18 K19 ["new"]
      175 GETTABLEKS                       R19 R6 K8 ["widget"]
      177 CALL                             R18 1 1
      178 MOVE                             R19 R2
      179 MOVE                             R20 R3
      180 MOVE                             R21 R4
      181 GETUPVAL                         R23 10
      182 CALL                             R23 0 1
      183 JUMPIFNOT                        R23 ; [+5]
      184 GETUPVAL                         R22 11
      185 GETTABLEKS                       R22 R22 K20 ["mock"]
      187 CALL                             R22 0 1
      188 JUMP                             ; [+4]
      189 GETUPVAL                         R22 11
      190 GETTABLEKS                       R22 R22 K19 ["new"]
      192 CALL                             R22 0 1
      193 SETLIST                          R16 R17 6 [1]
      195 GETUPVAL                         R17 5
      196 GETTABLEKS                       R17 R17 K21 ["createElement"]
      198 GETUPVAL                         R18 5
      199 GETTABLEKS                       R18 R18 K22 ["Fragment"]
      201 LOADNIL                          R19
      202 NEWTABLE                         R20 1 1
      204 GETUPVAL                         R21 5
      205 GETTABLEKS                       R21 R21 K21 ["createElement"]
      207 GETUPVAL                         R22 5
      208 GETTABLEKS                       R22 R22 K22 ["Fragment"]
      210 LOADNIL                          R23
      211 GETTABLEKS                       R24 R0 K23 ["Contents"]
      213 CALL                             R21 3 1
      214 SETLIST                          R20 R21 1 [1]
      216 GETUPVAL                         R22 5
      217 GETTABLEKS                       R22 R22 K21 ["createElement"]
      219 LOADK                            R23 K24 ["StyleLink"]
      220 DUPTABLE                         R24 K26 [{"StyleSheet"}]
      221 NAMECALL                         R25 R1 K4 ["get"]
      223 CALL                             R25 1 1
      224 SETTABLEKS                       R25 R24 K25 ["StyleSheet"]
      226 CALL                             R22 2 1
      227 SETTABLEKS                       R22 R20 K24 ["StyleLink"]
      229 CALL                             R17 3 -1
      230 CALL                             R15 -1 -1
      231 NAMECALL                         R13 R13 K27 ["render"]
      233 CALL                             R13 -1 0
      234 JUMP                             ; [+6]
      235 GETTABLEKS                       R13 R6 K6 ["root"]
      237 LOADNIL                          R15
      238 NAMECALL                         R13 R13 K27 ["render"]
      240 CALL                             R13 2 0
      241 MOVE                             R13 R10
      242 MOVE                             R14 R11
      243 MOVE                             R15 R8
      244 RETURN                           R13 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADNIL                          R1
        8 GETIMPORT                        R2 K5 [pcall]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          REF R1
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K7 [script]
       15 LOADK                            R4 K8 ["UI"]
       16 NAMECALL                         R2 R2 K9 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R2 R2 K10 ["Parent"]
       21 GETIMPORT                        R3 K12 [require]
       23 GETTABLEKS                       R4 R2 K13 ["Util"]
       25 GETTABLEKS                       R4 R4 K14 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [require]
       30 GETTABLEKS                       R5 R2 K13 ["Util"]
       32 GETTABLEKS                       R5 R5 K15 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K12 [require]
       37 GETTABLEKS                       R6 R2 K8 ["UI"]
       39 GETTABLEKS                       R6 R6 K16 ["ContextServices"]
       41 GETTABLEKS                       R6 R6 K17 ["Design"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K12 [require]
       46 GETTABLEKS                       R7 R2 K8 ["UI"]
       48 GETTABLEKS                       R7 R7 K16 ["ContextServices"]
       50 GETTABLEKS                       R7 R7 K18 ["Focus"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K12 [require]
       55 GETTABLEKS                       R8 R2 K8 ["UI"]
       57 GETTABLEKS                       R8 R8 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R8 K19 ["Localization"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K12 [require]
       64 GETTABLEKS                       R9 R2 K8 ["UI"]
       66 GETTABLEKS                       R9 R9 K16 ["ContextServices"]
       68 GETTABLEKS                       R9 R9 K20 ["Mouse"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K12 [require]
       73 GETTABLEKS                       R10 R2 K8 ["UI"]
       75 GETTABLEKS                       R10 R10 K16 ["ContextServices"]
       77 GETTABLEKS                       R10 R10 K21 ["Plugin"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K12 [require]
       82 GETTABLEKS                       R11 R2 K8 ["UI"]
       84 GETTABLEKS                       R11 R11 K16 ["ContextServices"]
       86 GETTABLEKS                       R11 R11 K22 ["provide"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K12 [require]
       91 GETTABLEKS                       R12 R2 K23 ["Style"]
       93 GETTABLEKS                       R12 R12 K24 ["Themes"]
       95 GETTABLEKS                       R12 R12 K25 ["StudioTheme"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K12 [require]
      100 GETTABLEKS                       R13 R2 K26 ["TestHelpers"]
      102 GETTABLEKS                       R13 R13 K27 ["isTestEnvironment"]
      104 CALL                             R12 1 1
      105 NEWCLOSURE                       R13 P1
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R0
      113 CAPTURE                          REF R1
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CLOSEUPVALS                      R1
      119 RETURN                           R13 1
