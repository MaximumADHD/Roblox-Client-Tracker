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
        1 DUPTABLE                         R1 K2 [{"root", "widget"}]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K0 ["root"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["widget"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETIMPORT                        R0 K5 [task.defer]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 2
       20 NAMECALL                         R0 R0 K6 ["unmount"]
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 3
       24 NAMECALL                         R0 R0 K7 ["Destroy"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 ["Dialog"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 CONCAT                           R0 R1 R2
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K8 [{"Id", "InitialEnabled", "ToolDialog", "Modal", "Size", "DisableTitleBar"}]
        9 SETTABLEKS                       R0 R4 K2 ["Id"]
       11 LOADB                            R5 0
       12 SETTABLEKS                       R5 R4 K3 ["InitialEnabled"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["ToolDialog"]
       17 SETTABLEKS                       R5 R4 K4 ["ToolDialog"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K5 ["Modal"]
       22 SETTABLEKS                       R5 R4 K5 ["Modal"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K6 ["Size"]
       27 SETTABLEKS                       R5 R4 K6 ["Size"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K7 ["DisableTitleBar"]
       32 SETTABLEKS                       R5 R4 K7 ["DisableTitleBar"]
       34 NAMECALL                         R1 R1 K9 ["CreateQWidgetPluginGui"]
       36 CALL                             R1 3 1
       37 GETIMPORT                        R2 K13 [Enum.ZIndexBehavior.Sibling]
       39 SETTABLEKS                       R2 R1 K11 ["ZIndexBehavior"]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R2 R3 K14 ["createRoot"]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 1
       46 GETUPVAL                         R3 4
       47 DUPTABLE                         R4 K17 [{"root", "widget"}]
       48 SETTABLEKS                       R2 R4 K15 ["root"]
       50 SETTABLEKS                       R1 R4 K16 ["widget"]
       52 CALL                             R3 1 0
       53 NEWCLOSURE                       R3 P0
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["widget"]
       10 SETTABLEKS                       R1 R0 K2 ["current"]
       12 NEWCLOSURE                       R0 P0
       13 CAPTURE                          UPVAL U0
       14 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+22]
       12 GETUPVAL                         R0 1
       13 JUMPIFNOT                        R0 ; [+20]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["widget"]
       18 NAMECALL                         R0 R0 K3 ["GetWidgetFromPluginGui"]
       20 CALL                             R0 2 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K4 ["Size"]
       24 GETTABLEKS                       R2 R3 K5 ["X"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K4 ["Size"]
       29 GETTABLEKS                       R3 R4 K6 ["Y"]
       31 NAMECALL                         R0 R0 K7 ["SetFixedSize"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["widget"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["Name"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["widget"]
       13 LOADK                            R2 K2 ["PluginGui"]
       14 NAMECALL                         R0 R0 K3 ["IsA"]
       16 CALL                             R0 2 1
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["widget"]
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R1 R0 K4 ["Title"]
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["widget"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClosed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnClosed"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["widget"]
       15 NAMECALL                         R0 R0 K3 ["BindToClose"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["widget"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["widget"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+9]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["widget"]
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
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["use"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["use"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K3 ["use"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R4 R5 K3 ["use"]
       22 CALL                             R4 0 1
       23 NAMECALL                         R5 R4 K4 ["get"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R6 R7 K5 ["useState"]
       29 DUPTABLE                         R7 K8 [{"root", "widget"}]
       30 LOADNIL                          R8
       31 SETTABLEKS                       R8 R7 K6 ["root"]
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R7 K7 ["widget"]
       36 CALL                             R6 1 2
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R8 R9 K5 ["useState"]
       40 LOADB                            R9 0
       41 CALL                             R8 1 2
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R10 R11 K9 ["useCallback"]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          VAL R9
       47 NEWTABLE                         R12 0 1
       49 MOVE                             R13 R9
       50 SETLIST                          R12 R13 1 [1]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R12 5
       54 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       56 NEWCLOSURE                       R12 P1
       57 CAPTURE                          VAL R9
       58 NEWTABLE                         R13 0 1
       60 MOVE                             R14 R9
       61 SETLIST                          R13 R14 1 [1]
       63 CALL                             R11 2 1
       64 GETUPVAL                         R13 5
       65 GETTABLEKS                       R12 R13 K10 ["useEffect"]
       67 NEWCLOSURE                       R13 P2
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          VAL R7
       73 CAPTURE                          UPVAL U7
       74 NEWTABLE                         R14 0 2
       76 GETTABLEKS                       R15 R0 K11 ["Modal"]
       78 GETTABLEKS                       R16 R0 K12 ["DisableTitleBar"]
       80 SETLIST                          R14 R15 2 [1]
       82 CALL                             R12 2 0
       83 GETUPVAL                         R13 5
       84 GETTABLEKS                       R12 R13 K10 ["useEffect"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R6
       89 NEWTABLE                         R14 0 2
       91 GETTABLEKS                       R15 R0 K13 ["WidgetRef"]
       93 GETTABLEKS                       R16 R6 K7 ["widget"]
       95 SETLIST                          R14 R15 2 [1]
       97 CALL                             R12 2 0
       98 GETUPVAL                         R13 5
       99 GETTABLEKS                       R12 R13 K10 ["useEffect"]
      101 NEWCLOSURE                       R13 P4
      102 CAPTURE                          VAL R6
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          VAL R0
      105 NEWTABLE                         R14 0 2
      107 GETTABLEKS                       R15 R6 K7 ["widget"]
      109 GETTABLEKS                       R16 R0 K14 ["Size"]
      111 SETLIST                          R14 R15 2 [1]
      113 CALL                             R12 2 0
      114 GETTABLEKS                       R13 R0 K15 ["Title"]
      116 JUMPIFNOT                        R13 ; [+3]
      117 GETTABLEKS                       R12 R0 K15 ["Title"]
      119 JUMP                             ; [+1]
      120 LOADK                            R12 K16 ["Roblox Studio"]
      121 GETUPVAL                         R14 5
      122 GETTABLEKS                       R13 R14 K10 ["useEffect"]
      124 NEWCLOSURE                       R14 P5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R12
      127 NEWTABLE                         R15 0 2
      129 GETTABLEKS                       R16 R6 K7 ["widget"]
      131 MOVE                             R17 R12
      132 SETLIST                          R15 R16 2 [1]
      134 CALL                             R13 2 0
      135 GETUPVAL                         R14 5
      136 GETTABLEKS                       R13 R14 K10 ["useEffect"]
      138 NEWCLOSURE                       R14 P6
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R8
      141 NEWTABLE                         R15 0 2
      143 GETTABLEKS                       R16 R6 K7 ["widget"]
      145 MOVE                             R17 R8
      146 SETLIST                          R15 R16 2 [1]
      148 CALL                             R13 2 0
      149 GETUPVAL                         R14 5
      150 GETTABLEKS                       R13 R14 K10 ["useEffect"]
      152 NEWCLOSURE                       R14 P7
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R11
      156 NEWTABLE                         R15 0 3
      158 GETTABLEKS                       R16 R6 K7 ["widget"]
      160 MOVE                             R17 R11
      161 GETTABLEKS                       R18 R0 K17 ["OnClosed"]
      163 SETLIST                          R15 R16 3 [1]
      165 CALL                             R13 2 0
      166 GETTABLEKS                       R13 R6 K7 ["widget"]
      168 JUMPIFNOT                        R13 ; [+79]
      169 GETTABLEKS                       R13 R6 K6 ["root"]
      171 JUMPIFNOT                        R13 ; [+76]
      172 JUMPIFNOT                        R8 ; [+69]
      173 GETTABLEKS                       R13 R6 K6 ["root"]
      175 GETUPVAL                         R15 9
      176 NEWTABLE                         R16 0 6
      178 MOVE                             R17 R1
      179 GETUPVAL                         R19 10
      180 GETTABLEKS                       R18 R19 K18 ["new"]
      182 GETTABLEKS                       R19 R6 K7 ["widget"]
      184 CALL                             R18 1 1
      185 MOVE                             R19 R2
      186 MOVE                             R20 R3
      187 MOVE                             R21 R4
      188 GETUPVAL                         R23 11
      189 CALL                             R23 0 1
      190 JUMPIFNOT                        R23 ; [+5]
      191 GETUPVAL                         R23 12
      192 GETTABLEKS                       R22 R23 K19 ["mock"]
      194 CALL                             R22 0 1
      195 JUMP                             ; [+4]
      196 GETUPVAL                         R23 12
      197 GETTABLEKS                       R22 R23 K18 ["new"]
      199 CALL                             R22 0 1
      200 SETLIST                          R16 R17 6 [1]
      202 GETUPVAL                         R18 5
      203 GETTABLEKS                       R17 R18 K20 ["createElement"]
      205 GETUPVAL                         R19 5
      206 GETTABLEKS                       R18 R19 K21 ["Fragment"]
      208 LOADNIL                          R19
      209 NEWTABLE                         R20 1 1
      211 GETUPVAL                         R22 5
      212 GETTABLEKS                       R21 R22 K20 ["createElement"]
      214 GETUPVAL                         R23 5
      215 GETTABLEKS                       R22 R23 K21 ["Fragment"]
      217 LOADNIL                          R23
      218 GETTABLEKS                       R24 R0 K22 ["Contents"]
      220 CALL                             R21 3 1
      221 SETLIST                          R20 R21 1 [1]
      223 GETUPVAL                         R23 5
      224 GETTABLEKS                       R22 R23 K20 ["createElement"]
      226 LOADK                            R23 K23 ["StyleLink"]
      227 DUPTABLE                         R24 K25 [{"StyleSheet"}]
      228 NAMECALL                         R25 R1 K4 ["get"]
      230 CALL                             R25 1 1
      231 SETTABLEKS                       R25 R24 K24 ["StyleSheet"]
      233 CALL                             R22 2 1
      234 SETTABLEKS                       R22 R20 K23 ["StyleLink"]
      236 CALL                             R17 3 -1
      237 CALL                             R15 -1 -1
      238 NAMECALL                         R13 R13 K26 ["render"]
      240 CALL                             R13 -1 0
      241 JUMP                             ; [+6]
      242 GETTABLEKS                       R13 R6 K6 ["root"]
      244 LOADNIL                          R15
      245 NAMECALL                         R13 R13 K26 ["render"]
      247 CALL                             R13 2 0
      248 MOVE                             R13 R10
      249 MOVE                             R14 R11
      250 MOVE                             R15 R8
      251 RETURN                           R13 3

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
       13 GETIMPORT                        R3 K7 [script]
       15 LOADK                            R5 K8 ["UI"]
       16 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R2 R3 K10 ["Parent"]
       21 GETIMPORT                        R3 K12 [require]
       23 GETTABLEKS                       R5 R2 K13 ["Util"]
       25 GETTABLEKS                       R4 R5 K14 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [require]
       30 GETTABLEKS                       R6 R2 K13 ["Util"]
       32 GETTABLEKS                       R5 R6 K15 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K12 [require]
       37 GETTABLEKS                       R8 R2 K8 ["UI"]
       39 GETTABLEKS                       R7 R8 K16 ["ContextServices"]
       41 GETTABLEKS                       R6 R7 K17 ["Design"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K12 [require]
       46 GETTABLEKS                       R9 R2 K8 ["UI"]
       48 GETTABLEKS                       R8 R9 K16 ["ContextServices"]
       50 GETTABLEKS                       R7 R8 K18 ["Focus"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K12 [require]
       55 GETTABLEKS                       R10 R2 K8 ["UI"]
       57 GETTABLEKS                       R9 R10 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R9 K19 ["Localization"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K12 [require]
       64 GETTABLEKS                       R11 R2 K8 ["UI"]
       66 GETTABLEKS                       R10 R11 K16 ["ContextServices"]
       68 GETTABLEKS                       R9 R10 K20 ["Mouse"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K12 [require]
       73 GETTABLEKS                       R12 R2 K8 ["UI"]
       75 GETTABLEKS                       R11 R12 K16 ["ContextServices"]
       77 GETTABLEKS                       R10 R11 K21 ["Plugin"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K12 [require]
       82 GETTABLEKS                       R13 R2 K8 ["UI"]
       84 GETTABLEKS                       R12 R13 K16 ["ContextServices"]
       86 GETTABLEKS                       R11 R12 K22 ["provide"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K12 [require]
       91 GETTABLEKS                       R14 R2 K23 ["Style"]
       93 GETTABLEKS                       R13 R14 K24 ["Themes"]
       95 GETTABLEKS                       R12 R13 K25 ["StudioTheme"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K12 [require]
      100 GETTABLEKS                       R14 R2 K26 ["TestHelpers"]
      102 GETTABLEKS                       R13 R14 K27 ["isTestEnvironment"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K12 [require]
      107 GETTABLEKS                       R15 R2 K28 ["SharedFlags"]
      109 GETTABLEKS                       R14 R15 K29 ["getFFlagUseDialogWidgetDeferUnmount"]
      111 CALL                             R13 1 1
      112 NEWCLOSURE                       R14 P1
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R13
      121 CAPTURE                          REF R1
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R11
      126 CLOSEUPVALS                      R1
      127 RETURN                           R14 1
