PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+8]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K1 ["InstallPluginFromWebSuccess"]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R2 R2 K2 ["report"]
       10 CALL                             R2 3 0
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K3 ["InstallPluginFromWebFailure"]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 NAMECALL                         R2 R2 K2 ["report"]
       18 CALL                             R2 4 0
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R0
       23 MOVE                             R7 R1
       24 CALL                             R4 3 -1
       25 NAMECALL                         R2 R2 K4 ["dispatch"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+154]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["data"]
        7 JUMPIFNOT                        R1 ; [+149]
        8 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R1 R1 K1 ["data"]
       12 GETTABLEN                        R2 R1 1
       13 JUMPIFNOT                        R2 ; [+105]
       14 GETTABLEKS                       R3 R2 K2 ["versionId"]
       16 JUMPIFNOT                        R3 ; [+102]
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R7 R2 K3 ["name"]
       22 GETTABLEKS                       R9 R2 K5 ["description"]
       24 ORK                              R8 R9 K4 [""]
       25 GETTABLEKS                       R11 R2 K2 ["versionId"]
       27 FASTCALL1                        TOSTRING R11 ; [+2]
       28 GETIMPORT                        R10 K7 [tostring]
       30 CALL                             R10 1 1
       31 ORK                              R9 R10 K4 [""]
       32 GETTABLEKS                       R11 R2 K8 ["created"]
       34 ORK                              R10 R11 K4 [""]
       35 GETTABLEKS                       R12 R2 K9 ["updated"]
       37 ORK                              R11 R12 K4 [""]
       38 CALL                             R5 6 -1
       39 NAMECALL                         R3 R3 K10 ["dispatch"]
       41 CALL                             R3 -1 0
       42 GETTABLEKS                       R3 R2 K2 ["versionId"]
       44 GETIMPORT                        R4 K12 [pcall]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U5
       52 CALL                             R4 1 2
       53 JUMPIFNOT                        R4 ; [+32]
       54 GETUPVAL                         R6 6
       55 GETTABLEKS                       R6 R6 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       57 GETUPVAL                         R7 6
       58 GETTABLEKS                       R7 R7 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       60 JUMPIFNOTEQ                      R6 R7 ; [+8]
       62 GETUPVAL                         R7 7
       63 LOADK                            R9 K14 ["InstallPluginFromWebSuccess"]
       64 GETUPVAL                         R10 2
       65 NAMECALL                         R7 R7 K15 ["report"]
       67 CALL                             R7 3 0
       68 JUMP                             ; [+7]
       69 GETUPVAL                         R7 7
       70 LOADK                            R9 K16 ["InstallPluginFromWebFailure"]
       71 GETUPVAL                         R10 2
       72 MOVE                             R11 R6
       73 NAMECALL                         R7 R7 K15 ["report"]
       75 CALL                             R7 4 0
       76 GETUPVAL                         R7 0
       77 GETUPVAL                         R9 8
       78 GETUPVAL                         R10 2
       79 MOVE                             R11 R6
       80 LOADK                            R12 K4 [""]
       81 CALL                             R9 3 -1
       82 NAMECALL                         R7 R7 K10 ["dispatch"]
       84 CALL                             R7 -1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R6 6
       87 GETTABLEKS                       R6 R6 K17 ["PLUGIN_NOT_INSTALLED"]
       89 ORK                              R7 R5 K4 [""]
       90 GETUPVAL                         R8 6
       91 GETTABLEKS                       R8 R8 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       93 JUMPIFNOTEQ                      R6 R8 ; [+8]
       95 GETUPVAL                         R8 7
       96 LOADK                            R10 K14 ["InstallPluginFromWebSuccess"]
       97 GETUPVAL                         R11 2
       98 NAMECALL                         R8 R8 K15 ["report"]
      100 CALL                             R8 3 0
      101 JUMP                             ; [+7]
      102 GETUPVAL                         R8 7
      103 LOADK                            R10 K16 ["InstallPluginFromWebFailure"]
      104 GETUPVAL                         R11 2
      105 MOVE                             R12 R6
      106 NAMECALL                         R8 R8 K15 ["report"]
      108 CALL                             R8 4 0
      109 GETUPVAL                         R8 0
      110 GETUPVAL                         R10 8
      111 GETUPVAL                         R11 2
      112 MOVE                             R12 R6
      113 MOVE                             R13 R7
      114 CALL                             R10 3 -1
      115 NAMECALL                         R8 R8 K10 ["dispatch"]
      117 CALL                             R8 -1 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R3 R3 K18 ["PLUGIN_DETAILS_UNAVAILABLE"]
      122 GETTABLEKS                       R5 R0 K0 ["responseBody"]
      124 FASTCALL1                        TOSTRING R5 ; [+2]
      125 GETIMPORT                        R4 K7 [tostring]
      127 CALL                             R4 1 1
      128 GETUPVAL                         R5 6
      129 GETTABLEKS                       R5 R5 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
      131 JUMPIFNOTEQ                      R3 R5 ; [+8]
      133 GETUPVAL                         R5 7
      134 LOADK                            R7 K14 ["InstallPluginFromWebSuccess"]
      135 GETUPVAL                         R8 2
      136 NAMECALL                         R5 R5 K15 ["report"]
      138 CALL                             R5 3 0
      139 JUMP                             ; [+7]
      140 GETUPVAL                         R5 7
      141 LOADK                            R7 K16 ["InstallPluginFromWebFailure"]
      142 GETUPVAL                         R8 2
      143 MOVE                             R9 R3
      144 NAMECALL                         R5 R5 K15 ["report"]
      146 CALL                             R5 4 0
      147 GETUPVAL                         R5 0
      148 GETUPVAL                         R7 8
      149 GETUPVAL                         R8 2
      150 MOVE                             R9 R3
      151 MOVE                             R10 R4
      152 CALL                             R7 3 -1
      153 NAMECALL                         R5 R5 K10 ["dispatch"]
      155 CALL                             R5 -1 0
      156 RETURN                           R0 0
      157 GETUPVAL                         R1 6
      158 GETTABLEKS                       R1 R1 K18 ["PLUGIN_DETAILS_UNAVAILABLE"]
      160 GETTABLEKS                       R3 R0 K0 ["responseBody"]
      162 FASTCALL1                        TOSTRING R3 ; [+2]
      163 GETIMPORT                        R2 K7 [tostring]
      165 CALL                             R2 1 1
      166 GETUPVAL                         R3 6
      167 GETTABLEKS                       R3 R3 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
      169 JUMPIFNOTEQ                      R1 R3 ; [+8]
      171 GETUPVAL                         R3 7
      172 LOADK                            R5 K14 ["InstallPluginFromWebSuccess"]
      173 GETUPVAL                         R6 2
      174 NAMECALL                         R3 R3 K15 ["report"]
      176 CALL                             R3 3 0
      177 JUMP                             ; [+7]
      178 GETUPVAL                         R3 7
      179 LOADK                            R5 K16 ["InstallPluginFromWebFailure"]
      180 GETUPVAL                         R6 2
      181 MOVE                             R7 R1
      182 NAMECALL                         R3 R3 K15 ["report"]
      184 CALL                             R3 4 0
      185 GETUPVAL                         R3 0
      186 GETUPVAL                         R5 8
      187 GETUPVAL                         R6 2
      188 MOVE                             R7 R1
      189 MOVE                             R8 R2
      190 CALL                             R5 3 -1
      191 NAMECALL                         R3 R3 K10 ["dispatch"]
      193 CALL                             R3 -1 0
      194 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HTTP_ERROR"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["InstallPluginFromWebSuccess"]
       10 GETUPVAL                         R5 2
       11 NAMECALL                         R2 R2 K3 ["report"]
       13 CALL                             R2 3 0
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["InstallPluginFromWebFailure"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R1
       19 NAMECALL                         R2 R2 K3 ["report"]
       21 CALL                             R2 4 0
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R0
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tostring]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["true"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+33]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["Develop"]
       14 GETTABLEKS                       R2 R2 K5 ["v1"]
       16 GETTABLEKS                       R2 R2 K6 ["Plugins"]
       18 NEWTABLE                         R3 0 1
       20 GETUPVAL                         R4 1
       21 SETLIST                          R3 R4 1 [1]
       23 CALL                             R2 1 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U9
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U9
       40 NAMECALL                         R2 R2 K7 ["andThen"]
       42 CALL                             R2 3 -1
       43 RETURN                           R2 -1
       44 GETUPVAL                         R2 7
       45 GETTABLEKS                       R2 R2 K8 ["PLUGIN_NOT_OWNED"]
       47 GETUPVAL                         R3 7
       48 GETTABLEKS                       R3 R3 K9 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       50 JUMPIFNOTEQ                      R2 R3 ; [+8]
       52 GETUPVAL                         R3 8
       53 LOADK                            R5 K10 ["InstallPluginFromWebSuccess"]
       54 GETUPVAL                         R6 1
       55 NAMECALL                         R3 R3 K11 ["report"]
       57 CALL                             R3 3 0
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R3 8
       60 LOADK                            R5 K12 ["InstallPluginFromWebFailure"]
       61 GETUPVAL                         R6 1
       62 MOVE                             R7 R2
       63 NAMECALL                         R3 R3 K11 ["report"]
       65 CALL                             R3 4 0
       66 GETUPVAL                         R3 2
       67 GETUPVAL                         R5 9
       68 GETUPVAL                         R6 1
       69 MOVE                             R7 R2
       70 LOADK                            R8 K13 [""]
       71 CALL                             R5 3 -1
       72 NAMECALL                         R3 R3 K14 ["dispatch"]
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HTTP_ERROR"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["InstallPluginFromWebSuccess"]
       10 GETUPVAL                         R5 2
       11 NAMECALL                         R2 R2 K3 ["report"]
       13 CALL                             R2 3 0
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["InstallPluginFromWebFailure"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R1
       19 NAMECALL                         R2 R2 K3 ["report"]
       21 CALL                             R2 4 0
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R0
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R0 K0 ["dispatch"]
       11 CALL                             R1 -1 0
       12 NAMECALL                         R1 R0 K1 ["flush"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 LOADK                            R3 K2 ["TryInstallPluginFromWeb"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R1 R1 K3 ["report"]
       20 CALL                             R1 3 0
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U5
       38 NEWCLOSURE                       R3 P2
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U5
       44 LOADNIL                          R4
       45 GETUPVAL                         R5 8
       46 CALL                             R5 0 1
       47 JUMPIFNOT                        R5 ; [+6]
       48 GETUPVAL                         R5 9
       49 NAMECALL                         R5 R5 K4 ["GetUserId"]
       51 CALL                             R5 1 1
       52 MOVE                             R4 R5
       53 JUMP                             ; [+5]
       54 GETUPVAL                         R5 10
       55 NAMECALL                         R5 R5 K4 ["GetUserId"]
       57 CALL                             R5 1 1
       58 MOVE                             R4 R5
       59 GETUPVAL                         R5 6
       60 GETTABLEKS                       R5 R5 K5 ["Inventory"]
       62 GETTABLEKS                       R5 R5 K6 ["v1"]
       64 GETTABLEKS                       R5 R5 K7 ["Users"]
       66 GETTABLEKS                       R5 R5 K8 ["Items"]
       68 GETTABLEKS                       R5 R5 K9 ["IsOwned"]
       70 MOVE                             R6 R4
       71 GETIMPORT                        R7 K13 [Enum.AvatarItemType.Asset]
       73 GETUPVAL                         R8 1
       74 CALL                             R5 3 1
       75 MOVE                             R7 R2
       76 MOVE                             R8 R3
       77 NAMECALL                         R5 R5 K14 ["andThen"]
       79 CALL                             R5 3 0
       80 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R4
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Constants"]
       22 GETTABLEKS                       R3 R3 K9 ["PluginInstalledStatus"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Actions"]
       31 GETTABLEKS                       R4 R4 K11 ["SetPluginInstallStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Actions"]
       40 GETTABLEKS                       R5 R5 K12 ["SetPluginId"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Actions"]
       49 GETTABLEKS                       R6 R6 K13 ["SetPluginMetadata"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Actions"]
       58 GETTABLEKS                       R7 R7 K14 ["ClearPluginData"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K15 [PROTO_7]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 RETURN                           R7 1
