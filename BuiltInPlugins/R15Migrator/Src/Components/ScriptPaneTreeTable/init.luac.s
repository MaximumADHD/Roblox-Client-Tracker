PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["Items"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["genSortItems"]
       10 GETUPVAL                         R5 3
       11 GETTABLE                         R4 R5 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K5 [table.sort]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R3
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 1
       20 DUPTABLE                         R6 K9 [{"Items", "SortChildren", "SortIndex", "SortOrder"}]
       21 SETTABLEKS                       R2 R6 K1 ["Items"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["genSortItems"]
       26 GETUPVAL                         R9 3
       27 GETTABLEN                        R8 R9 2
       28 JUMPIFNOTEQKN                    R0 K10 [2] ; [+3]
       30 MOVE                             R9 R1
       31 JUMP                             ; [+2]
       32 GETIMPORT                        R9 K14 [Enum.SortDirection.Descending]
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K6 ["SortChildren"]
       37 SETTABLEKS                       R0 R6 K7 ["SortIndex"]
       39 SETTABLEKS                       R1 R6 K8 ["SortOrder"]
       41 NAMECALL                         R4 R4 K15 ["setState"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"Selection"}]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K2 ["state"]
        6 GETTABLEKS                       R6 R6 K0 ["Selection"]
        8 NEWTABLE                         R7 1 0
       10 GETUPVAL                         R8 2
       11 GETTABLEKS                       R8 R8 K3 ["makeItemId"]
       13 GETTABLEKS                       R9 R1 K4 ["scriptId"]
       15 GETTABLEKS                       R10 R1 K5 ["issueType"]
       17 GETTABLEKS                       R11 R1 K6 ["instanceName"]
       19 CALL                             R8 3 1
       20 JUMPIFNOT                        R0 ; [+2]
       21 MOVE                             R9 R1
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R9 3
       24 SETTABLE                         R9 R7 R8
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K0 ["Selection"]
       28 NAMECALL                         R2 R2 K7 ["setState"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["Items"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K2 ["item"]
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["state"]
       13 GETTABLEKS                       R5 R5 K3 ["Selection"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R1 K4 ["parent"]
       18 JUMPIFNOT                        R5 ; [+12]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K5 ["getItemId"]
       22 GETTABLEKS                       R7 R1 K4 ["parent"]
       24 CALL                             R6 1 1
       25 GETTABLE                         R5 R4 R6
       26 JUMPIFNOT                        R5 ; [+4]
       27 GETTABLEKS                       R3 R1 K4 ["parent"]
       29 GETTABLEKS                       R1 R3 K6 ["Path"]
       31 NEWTABLE                         R5 1 0
       33 GETTABLEKS                       R6 R1 K7 ["scriptId"]
       35 NEWTABLE                         R7 0 0
       37 SETTABLE                         R7 R5 R6
       38 GETTABLEKS                       R6 R3 K8 ["r15"]
       40 SETTABLEKS                       R0 R6 K9 ["Value"]
       42 GETTABLEKS                       R6 R3 K10 ["children"]
       44 JUMPIFNOT                        R6 ; [+36]
       45 GETTABLEKS                       R6 R3 K8 ["r15"]
       47 SETTABLEKS                       R0 R6 K9 ["Value"]
       49 GETTABLEKS                       R6 R3 K10 ["children"]
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETTABLEKS                       R11 R10 K8 ["r15"]
       56 GETTABLEKS                       R11 R11 K9 ["Value"]
       58 JUMPIFEQ                         R11 R0 ; [+19]
       60 GETTABLEKS                       R11 R10 K8 ["r15"]
       62 SETTABLEKS                       R0 R11 K9 ["Value"]
       64 GETTABLEKS                       R13 R1 K7 ["scriptId"]
       66 GETTABLE                         R12 R5 R13
       67 GETTABLEKS                       R13 R10 K6 ["Path"]
       69 GETTABLEKS                       R13 R13 K11 ["diagnostic"]
       71 GETTABLEKS                       R13 R13 K12 ["diagnosticId"]
       73 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       75 GETIMPORT                        R11 K15 [table.insert]
       77 CALL                             R11 2 0
       78 FORGLOOP                         R6 2 ; [-25]
       80 JUMP                             ; [+14]
       81 GETTABLEKS                       R8 R1 K7 ["scriptId"]
       83 GETTABLE                         R7 R5 R8
       84 GETTABLEKS                       R8 R3 K6 ["Path"]
       86 GETTABLEKS                       R8 R8 K11 ["diagnostic"]
       88 GETTABLEKS                       R8 R8 K12 ["diagnosticId"]
       90 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       92 GETIMPORT                        R6 K15 [table.insert]
       94 CALL                             R6 2 0
       95 MOVE                             R6 R2
       96 LOADNIL                          R7
       97 LOADNIL                          R8
       98 FORGPREP                         R6
       99 JUMPIFNOT                        R4 ; [+43]
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R12 R12 K5 ["getItemId"]
      103 MOVE                             R13 R10
      104 CALL                             R12 1 1
      105 GETTABLE                         R11 R4 R12
      106 JUMPIFNOT                        R11 ; [+36]
      107 GETTABLEKS                       R11 R10 K6 ["Path"]
      109 GETTABLEKS                       R11 R11 K7 ["scriptId"]
      111 GETTABLEKS                       R13 R10 K6 ["Path"]
      113 GETTABLEKS                       R13 R13 K7 ["scriptId"]
      115 GETTABLE                         R12 R5 R13
      116 JUMPIF                           R12 ; [+2]
      117 NEWTABLE                         R12 0 0
      119 SETTABLE                         R12 R5 R11
      120 GETTABLEKS                       R11 R10 K10 ["children"]
      122 LOADNIL                          R12
      123 LOADNIL                          R13
      124 FORGPREP                         R11
      125 GETTABLEKS                       R18 R10 K6 ["Path"]
      127 GETTABLEKS                       R18 R18 K7 ["scriptId"]
      129 GETTABLE                         R17 R5 R18
      130 GETTABLEKS                       R18 R15 K6 ["Path"]
      132 GETTABLEKS                       R18 R18 K11 ["diagnostic"]
      134 GETTABLEKS                       R18 R18 K12 ["diagnosticId"]
      136 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
      138 GETIMPORT                        R16 K15 [table.insert]
      140 CALL                             R16 2 0
      141 FORGLOOP                         R11 2 ; [-17]
      143 FORGLOOP                         R6 2 ; [-45]
      145 MOVE                             R6 R5
      146 LOADNIL                          R7
      147 LOADNIL                          R8
      148 FORGPREP                         R6
      149 GETUPVAL                         R11 1
      150 GETTABLEKS                       R11 R11 K16 ["props"]
      152 GETTABLEKS                       R11 R11 K17 ["ApplyResolutions"]
      154 MOVE                             R12 R9
      155 MOVE                             R13 R10
      156 MOVE                             R14 R0
      157 GETUPVAL                         R15 1
      158 GETTABLEKS                       R15 R15 K16 ["props"]
      160 GETTABLEKS                       R15 R15 K18 ["ScriptConversionContext"]
      162 CALL                             R11 4 0
      163 FORGLOOP                         R6 2 ; [-15]
      165 GETUPVAL                         R6 1
      166 DUPTABLE                         R8 K19 [{"Items", "Selection"}]
      167 SETTABLEKS                       R2 R8 K1 ["Items"]
      169 NEWTABLE                         R9 0 0
      171 SETTABLEKS                       R9 R8 K3 ["Selection"]
      173 NAMECALL                         R6 R6 K20 ["setState"]
      175 CALL                             R6 2 0
      176 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKN                    R2 K0 [1] ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["onCheckboxEdited"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 RETURN                           R0 0
        9 JUMPIFNOTEQKN                    R2 K2 [6] ; [+10]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["onSuggestionApplied"]
       14 GETTABLEKS                       R4 R0 K4 ["Id"]
       16 MOVE                             R5 R1
       17 LOADB                            R6 1
       18 CALL                             R3 3 0
       19 RETURN                           R0 0
       20 LOADB                            R4 0
       21 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       23 LOADK                            R5 K5 ["Unknown column changed"]
       24 GETIMPORT                        R3 K7 [assert]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ScriptMenuActions"]
        6 GETTABLEKS                       R3 R3 K2 ["ShowInExplorer"]
        8 JUMPIFNOTEQ                      R0 R3 ; [+18]
       10 GETTABLEKS                       R3 R2 K3 ["ScriptConversionContext"]
       12 GETTABLEKS                       R5 R1 K4 ["scriptId"]
       14 NAMECALL                         R3 R3 K5 ["getScriptInstanceFromGUID"]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R3
       21 SETLIST                          R6 R7 1 [1]
       23 NAMECALL                         R4 R4 K6 ["Set"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K1 ["ScriptMenuActions"]
       30 GETTABLEKS                       R3 R3 K7 ["GoToScript"]
       32 JUMPIFNOTEQ                      R0 R3 ; [+19]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K8 ["goToScript"]
       37 GETTABLEKS                       R4 R1 K4 ["scriptId"]
       39 GETTABLEKS                       R6 R1 K9 ["diagnostic"]
       41 JUMPIFNOT                        R6 ; [+5]
       42 GETTABLEKS                       R5 R1 K9 ["diagnostic"]
       44 GETTABLEKS                       R5 R5 K10 ["range"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETTABLEKS                       R6 R2 K3 ["ScriptConversionContext"]
       50 CALL                             R3 3 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K1 ["ScriptMenuActions"]
       55 GETTABLEKS                       R3 R3 K11 ["RevertScript"]
       57 JUMPIFNOTEQ                      R0 R3 ; [+11]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K12 ["onSuggestionApplied"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K13 ["UNASSIGNED"]
       65 MOVE                             R5 R1
       66 LOADB                            R6 0
       67 CALL                             R3 3 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R3 1
       70 GETTABLEKS                       R3 R3 K1 ["ScriptMenuActions"]
       72 GETTABLEKS                       R3 R3 K14 ["SelectAllSimilar"]
       74 JUMPIFNOTEQ                      R0 R3 ; [+33]
       76 NEWTABLE                         R3 0 0
       78 GETTABLEKS                       R4 R2 K15 ["diagnostics"]
       80 LOADNIL                          R5
       81 LOADNIL                          R6
       82 FORGPREP                         R4
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K16 ["makeItemId"]
       86 MOVE                             R10 R7
       87 GETTABLEKS                       R11 R1 K17 ["issueType"]
       89 GETTABLEKS                       R12 R1 K18 ["instanceName"]
       91 CALL                             R9 3 1
       92 GETUPVAL                         R10 5
       93 MOVE                             R11 R1
       94 DUPTABLE                         R12 K19 [{"scriptId"}]
       95 SETTABLEKS                       R7 R12 K4 ["scriptId"]
       97 CALL                             R10 2 1
       98 SETTABLE                         R10 R3 R9
       99 FORGLOOP                         R4 1 ; [-17]
      101 GETUPVAL                         R4 0
      102 DUPTABLE                         R6 K21 [{"Selection"}]
      103 SETTABLEKS                       R3 R6 K20 ["Selection"]
      105 NAMECALL                         R4 R4 K22 ["setState"]
      107 CALL                             R4 2 0
      108 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["Expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K7 [{"Sizes", "SortChildren", "SortIndex", "SortOrder", "Expansion", "Selection", "_Ref"}]
        1 NEWTABLE                         R2 0 7
        3 GETIMPORT                        R3 K10 [UDim.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 24
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K10 [UDim.new]
       10 LOADK                            R5 K11 [0.5]
       11 LOADN                            R6 172
       12 CALL                             R4 2 1
       13 GETIMPORT                        R5 K10 [UDim.new]
       15 LOADN                            R6 0
       16 LOADN                            R7 24
       17 CALL                             R5 2 1
       18 GETIMPORT                        R6 K10 [UDim.new]
       20 LOADN                            R7 0
       21 LOADN                            R8 72
       22 CALL                             R6 2 1
       23 GETIMPORT                        R7 K10 [UDim.new]
       25 LOADK                            R8 K12 [0.25]
       26 LOADN                            R9 214
       27 CALL                             R7 2 1
       28 GETIMPORT                        R8 K10 [UDim.new]
       30 LOADK                            R9 K12 [0.25]
       31 LOADN                            R10 214
       32 CALL                             R8 2 1
       33 GETIMPORT                        R9 K10 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 48
       37 CALL                             R9 2 -1
       38 SETLIST                          R2 R3 -1 [1]
       40 SETTABLEKS                       R2 R1 K0 ["Sizes"]
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K1 ["SortChildren"]
       45 LOADN                            R2 5
       46 SETTABLEKS                       R2 R1 K2 ["SortIndex"]
       48 GETIMPORT                        R2 K16 [Enum.SortDirection.Ascending]
       50 SETTABLEKS                       R2 R1 K3 ["SortOrder"]
       52 NEWTABLE                         R2 0 0
       54 SETTABLEKS                       R2 R1 K4 ["Expansion"]
       56 NEWTABLE                         R2 0 0
       58 SETTABLEKS                       R2 R1 K5 ["Selection"]
       60 DUPTABLE                         R2 K19 [{"diagnostics", "searchFilters"}]
       61 LOADNIL                          R3
       62 SETTABLEKS                       R3 R2 K17 ["diagnostics"]
       64 LOADNIL                          R3
       65 SETTABLEKS                       R3 R2 K18 ["searchFilters"]
       67 SETTABLEKS                       R2 R1 K6 ["_Ref"]
       69 SETTABLEKS                       R1 R0 K20 ["state"]
       71 NEWCLOSURE                       R1 P0
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R1 R0 K21 ["onSizesChange"]
       75 NEWCLOSURE                       R1 P1
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U2
       80 SETTABLEKS                       R1 R0 K22 ["onSortChange"]
       82 NEWCLOSURE                       R1 P2
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U3
       87 SETTABLEKS                       R1 R0 K23 ["onCheckboxEdited"]
       89 NEWCLOSURE                       R1 P3
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U1
       93 SETTABLEKS                       R1 R0 K24 ["onSuggestionApplied"]
       95 NEWCLOSURE                       R1 P4
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R1 R0 K25 ["onCellEdited"]
       99 NEWCLOSURE                       R1 P5
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          UPVAL U0
      106 SETTABLEKS                       R1 R0 K26 ["onCellAction"]
      108 NEWCLOSURE                       R1 P6
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U0
      111 SETTABLEKS                       R1 R0 K27 ["onExpansionChange"]
      113 LOADNIL                          R1
      114 SETTABLEKS                       R1 R0 K28 ["ExpandAllEventConn"]
      116 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["diagnostics"]
        2 GETTABLEKS                       R3 R1 K1 ["_Ref"]
        4 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+9]
        8 GETTABLEKS                       R2 R0 K2 ["SearchFilters"]
       10 GETTABLEKS                       R3 R1 K1 ["_Ref"]
       12 GETTABLEKS                       R3 R3 K2 ["SearchFilters"]
       14 JUMPIFEQ                         R2 R3 ; [+59]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["generateTreeViewItems"]
       19 GETTABLEKS                       R3 R0 K0 ["diagnostics"]
       21 GETTABLEKS                       R4 R0 K4 ["ScriptConversionContext"]
       23 GETTABLEKS                       R5 R0 K2 ["SearchFilters"]
       25 GETTABLEKS                       R6 R1 K5 ["Selection"]
       27 GETTABLEKS                       R7 R0 K6 ["Localization"]
       29 CALL                             R2 5 1
       30 GETTABLEKS                       R3 R1 K7 ["SortIndex"]
       32 JUMPIFNOT                        R3 ; [+18]
       33 GETTABLEKS                       R3 R1 K8 ["SortOrder"]
       35 JUMPIFNOT                        R3 ; [+15]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K9 ["genSortItems"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R6 R1 K7 ["SortIndex"]
       42 GETTABLE                         R4 R5 R6
       43 GETTABLEKS                       R5 R1 K8 ["SortOrder"]
       45 CALL                             R3 2 1
       46 GETIMPORT                        R4 K12 [table.sort]
       48 MOVE                             R5 R2
       49 MOVE                             R6 R3
       50 CALL                             R4 2 0
       51 DUPTABLE                         R3 K14 [{"Items", "_Ref"}]
       52 SETTABLEKS                       R2 R3 K13 ["Items"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R5 R1 K1 ["_Ref"]
       57 DUPTABLE                         R6 K17 [{"diagnostics", "completedScripts", "searchFilters"}]
       58 GETTABLEKS                       R7 R0 K0 ["diagnostics"]
       60 SETTABLEKS                       R7 R6 K0 ["diagnostics"]
       62 GETTABLEKS                       R7 R0 K15 ["completedScripts"]
       64 SETTABLEKS                       R7 R6 K15 ["completedScripts"]
       66 GETTABLEKS                       R7 R0 K2 ["SearchFilters"]
       68 SETTABLEKS                       R7 R6 K16 ["searchFilters"]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R3 K1 ["_Ref"]
       73 RETURN                           R3 1
       74 RETURN                           R0 0

PROTO_10:
        0 ORK                              R0 R0 K0 []
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["Items"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K3 ["getItemId"]
       14 MOVE                             R8 R6
       15 CALL                             R7 1 1
       16 SETTABLE                         R0 R1 R7
       17 FORGLOOP                         R2 2 ; [-7]
       19 GETUPVAL                         R2 0
       20 DUPTABLE                         R4 K5 [{"Expansion"}]
       21 SETTABLEKS                       R1 R4 K4 ["Expansion"]
       23 NAMECALL                         R2 R2 K6 ["setState"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["ExpandTreeView"]
        4 GETTABLEKS                       R1 R1 K2 ["Event"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K3 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K4 ["ExpandAllEventConn"]
       14 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["ExpandAllEventConn"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["ExpandAllEventConn"]
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"Name", "Width"}]
        3 GETTABLEKS                       R6 R0 K0 ["Name"]
        5 JUMPIFNOT                        R6 ; [+8]
        6 GETUPVAL                         R5 1
        7 LOADK                            R7 K3 ["ScriptPane"]
        8 GETTABLEKS                       R8 R0 K0 ["Name"]
       10 NAMECALL                         R5 R5 K4 ["getText"]
       12 CALL                             R5 3 1
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K5 [""]
       15 SETTABLEKS                       R5 R4 K0 ["Name"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["state"]
       20 GETTABLEKS                       R6 R6 K7 ["Sizes"]
       22 GETTABLE                         R5 R6 R1
       23 SETTABLEKS                       R5 R4 K1 ["Width"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R0
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["createElement"]
       16 GETUPVAL                         R6 4
       17 DUPTABLE                         R7 K24 [{"LayoutOrder", "Size", "SortIndex", "SortOrder", "SortChildren", "OnSortChange", "Columns", "OnExpansionChange", "CellComponent", "Expansion", "Selection", "RootItems", "GetChildren", "GetItemId", "OnCellEdited", "OnCellAction", "Scroll", "ClampSize", "UseDeficit", "Renderers"}]
       18 GETTABLEKS                       R8 R2 K4 ["LayoutOrder"]
       20 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       22 GETTABLEKS                       R8 R2 K5 ["Size"]
       24 SETTABLEKS                       R8 R7 K5 ["Size"]
       26 GETTABLEKS                       R8 R0 K0 ["state"]
       28 GETTABLEKS                       R8 R8 K6 ["SortIndex"]
       30 SETTABLEKS                       R8 R7 K6 ["SortIndex"]
       32 GETTABLEKS                       R8 R0 K0 ["state"]
       34 GETTABLEKS                       R8 R8 K7 ["SortOrder"]
       36 SETTABLEKS                       R8 R7 K7 ["SortOrder"]
       38 GETTABLEKS                       R8 R0 K0 ["state"]
       40 GETTABLEKS                       R8 R8 K8 ["SortChildren"]
       42 SETTABLEKS                       R8 R7 K8 ["SortChildren"]
       44 GETTABLEKS                       R8 R0 K25 ["onSortChange"]
       46 SETTABLEKS                       R8 R7 K9 ["OnSortChange"]
       48 SETTABLEKS                       R4 R7 K10 ["Columns"]
       50 GETTABLEKS                       R8 R0 K26 ["onExpansionChange"]
       52 SETTABLEKS                       R8 R7 K11 ["OnExpansionChange"]
       54 GETUPVAL                         R8 5
       55 SETTABLEKS                       R8 R7 K12 ["CellComponent"]
       57 GETTABLEKS                       R8 R0 K0 ["state"]
       59 GETTABLEKS                       R8 R8 K13 ["Expansion"]
       61 SETTABLEKS                       R8 R7 K13 ["Expansion"]
       63 GETTABLEKS                       R8 R0 K0 ["state"]
       65 GETTABLEKS                       R8 R8 K14 ["Selection"]
       67 SETTABLEKS                       R8 R7 K14 ["Selection"]
       69 GETTABLEKS                       R8 R0 K0 ["state"]
       71 GETTABLEKS                       R8 R8 K27 ["Items"]
       73 SETTABLEKS                       R8 R7 K15 ["RootItems"]
       75 GETUPVAL                         R8 6
       76 SETTABLEKS                       R8 R7 K16 ["GetChildren"]
       78 GETUPVAL                         R8 7
       79 GETTABLEKS                       R8 R8 K28 ["getItemId"]
       81 SETTABLEKS                       R8 R7 K17 ["GetItemId"]
       83 GETTABLEKS                       R8 R0 K29 ["onCellEdited"]
       85 SETTABLEKS                       R8 R7 K18 ["OnCellEdited"]
       87 GETTABLEKS                       R8 R0 K30 ["onCellAction"]
       89 SETTABLEKS                       R8 R7 K19 ["OnCellAction"]
       91 LOADB                            R8 1
       92 SETTABLEKS                       R8 R7 K20 ["Scroll"]
       94 LOADB                            R8 1
       95 SETTABLEKS                       R8 R7 K21 ["ClampSize"]
       97 LOADB                            R8 1
       98 SETTABLEKS                       R8 R7 K22 ["UseDeficit"]
      100 DUPTABLE                         R8 K34 [{"ScriptLink", "Dropdown", "Status"}]
      101 GETUPVAL                         R9 8
      102 GETTABLEKS                       R9 R9 K35 ["ScriptLinkCell"]
      104 SETTABLEKS                       R9 R8 K31 ["ScriptLink"]
      106 GETUPVAL                         R9 8
      107 GETTABLEKS                       R9 R9 K36 ["DropdownCell"]
      109 SETTABLEKS                       R9 R8 K32 ["Dropdown"]
      111 GETUPVAL                         R9 8
      112 GETTABLEKS                       R9 R9 K37 ["StatusCell"]
      114 SETTABLEKS                       R9 R8 K33 ["Status"]
      116 SETTABLEKS                       R8 R7 K23 ["Renderers"]
      118 CALL                             R5 2 -1
      119 RETURN                           R5 -1

PROTO_15:
        0 DUPTABLE                         R2 K1 [{"diagnostics"}]
        1 GETTABLEKS                       R3 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"ApplyResolutions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ApplyResolutions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["RoactRodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R5 K16 ["Analytics"]
       40 GETTABLEKS                       R8 R5 K17 ["Localization"]
       42 GETIMPORT                        R9 K9 [require]
       44 GETTABLEKS                       R10 R1 K18 ["Src"]
       46 GETTABLEKS                       R10 R10 K19 ["Contexts"]
       48 GETTABLEKS                       R10 R10 K20 ["ScriptConversionContext"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R4 K21 ["Style"]
       53 GETTABLEKS                       R10 R10 K22 ["Stylizer"]
       55 GETTABLEKS                       R11 R4 K23 ["Dash"]
       57 GETTABLEKS                       R12 R11 K24 ["append"]
       59 GETTABLEKS                       R13 R11 K25 ["join"]
       61 GETTABLEKS                       R14 R11 K26 ["map"]
       63 GETTABLEKS                       R15 R11 K27 ["None"]
       65 GETIMPORT                        R16 K9 [require]
       67 GETIMPORT                        R17 K5 [script]
       69 GETTABLEKS                       R17 R17 K28 ["CellComponent"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K9 [require]
       74 GETIMPORT                        R18 K5 [script]
       76 GETTABLEKS                       R18 R18 K29 ["Renderers"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K9 [require]
       81 GETIMPORT                        R19 K5 [script]
       83 GETTABLEKS                       R19 R19 K30 ["ScriptPaneHelpers"]
       85 CALL                             R18 1 1
       86 GETTABLEKS                       R19 R4 K31 ["UI"]
       88 GETTABLEKS                       R20 R19 K32 ["Pane"]
       90 GETTABLEKS                       R21 R19 K33 ["TreeTable"]
       92 GETTABLEKS                       R22 R1 K18 ["Src"]
       94 GETTABLEKS                       R22 R22 K34 ["Actions"]
       96 GETTABLEKS                       R23 R1 K18 ["Src"]
       98 GETTABLEKS                       R23 R23 K35 ["Components"]
      100 GETIMPORT                        R24 K9 [require]
      102 GETTABLEKS                       R25 R1 K18 ["Src"]
      104 GETTABLEKS                       R25 R25 K36 ["Resources"]
      106 GETTABLEKS                       R25 R25 K37 ["Constants"]
      108 CALL                             R24 1 1
      109 GETTABLEKS                       R25 R1 K18 ["Src"]
      111 GETTABLEKS                       R25 R25 K38 ["Thunks"]
      113 GETIMPORT                        R26 K9 [require]
      115 GETTABLEKS                       R27 R25 K39 ["ApplyResolutions"]
      117 CALL                             R26 1 1
      118 GETTABLEKS                       R27 R1 K18 ["Src"]
      120 GETTABLEKS                       R27 R27 K40 ["Util"]
      122 GETIMPORT                        R28 K9 [require]
      124 GETTABLEKS                       R29 R27 K41 ["ScriptReplacement"]
      126 CALL                             R28 1 1
      127 GETIMPORT                        R29 K9 [require]
      129 GETIMPORT                        R30 K5 [script]
      131 GETTABLEKS                       R30 R30 K42 ["Sort"]
      133 CALL                             R29 1 1
      134 GETIMPORT                        R30 K9 [require]
      136 GETTABLEKS                       R31 R1 K18 ["Src"]
      138 GETTABLEKS                       R31 R31 K43 ["Types"]
      140 CALL                             R30 1 1
      141 NEWTABLE                         R31 0 7
      143 DUPTABLE                         R32 K47 [{"Name", "Key", "SortMethod"}]
      144 LOADNIL                          R33
      145 SETTABLEKS                       R33 R32 K44 ["Name"]
      147 LOADK                            R33 K48 ["select"]
      148 SETTABLEKS                       R33 R32 K45 ["Key"]
      150 GETTABLEKS                       R33 R29 K49 ["booleanSort"]
      152 SETTABLEKS                       R33 R32 K46 ["SortMethod"]
      154 DUPTABLE                         R33 K47 [{"Name", "Key", "SortMethod"}]
      155 LOADK                            R34 K50 ["NameTitle"]
      156 SETTABLEKS                       R34 R33 K44 ["Name"]
      158 LOADK                            R34 K51 ["name"]
      159 SETTABLEKS                       R34 R33 K45 ["Key"]
      161 GETTABLEKS                       R34 R29 K52 ["scriptLinkSort"]
      163 SETTABLEKS                       R34 R33 K46 ["SortMethod"]
      165 DUPTABLE                         R34 K47 [{"Name", "Key", "SortMethod"}]
      166 LOADNIL                          R35
      167 SETTABLEKS                       R35 R34 K44 ["Name"]
      169 LOADK                            R35 K53 ["count"]
      170 SETTABLEKS                       R35 R34 K45 ["Key"]
      172 GETTABLEKS                       R35 R29 K54 ["optionalNumSort"]
      174 SETTABLEKS                       R35 R34 K46 ["SortMethod"]
      176 DUPTABLE                         R35 K55 [{"Name", "Key"}]
      177 LOADK                            R36 K56 ["TypeTitle"]
      178 SETTABLEKS                       R36 R35 K44 ["Name"]
      180 LOADK                            R36 K57 ["issue"]
      181 SETTABLEKS                       R36 R35 K45 ["Key"]
      183 DUPTABLE                         R36 K55 [{"Name", "Key"}]
      184 LOADK                            R37 K58 ["R6Title"]
      185 SETTABLEKS                       R37 R36 K44 ["Name"]
      187 LOADK                            R37 K59 ["r6"]
      188 SETTABLEKS                       R37 R36 K45 ["Key"]
      190 DUPTABLE                         R37 K55 [{"Name", "Key"}]
      191 LOADK                            R38 K60 ["R15Title"]
      192 SETTABLEKS                       R38 R37 K44 ["Name"]
      194 LOADK                            R38 K61 ["r15"]
      195 SETTABLEKS                       R38 R37 K45 ["Key"]
      197 DUPTABLE                         R38 K47 [{"Name", "Key", "SortMethod"}]
      198 LOADNIL                          R39
      199 SETTABLEKS                       R39 R38 K44 ["Name"]
      201 LOADK                            R39 K62 ["menu_status"]
      202 SETTABLEKS                       R39 R38 K45 ["Key"]
      204 GETTABLEKS                       R39 R29 K49 ["booleanSort"]
      206 SETTABLEKS                       R39 R38 K46 ["SortMethod"]
      208 SETLIST                          R31 R32 7 [1]
      210 DUPCLOSURE                       R32 K63 [PROTO_0]
      211 GETTABLEKS                       R33 R2 K64 ["PureComponent"]
      213 LOADK                            R35 K65 ["ScriptPaneTreeTable"]
      214 NAMECALL                         R33 R33 K66 ["extend"]
      216 CALL                             R33 2 1
      217 DUPCLOSURE                       R34 K67 [PROTO_8]
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R28
      225 SETTABLEKS                       R34 R33 K68 ["init"]
      227 DUPCLOSURE                       R34 K69 [PROTO_9]
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R13
      231 SETTABLEKS                       R34 R33 K70 ["getDerivedStateFromProps"]
      233 DUPCLOSURE                       R34 K71 [PROTO_11]
      234 CAPTURE                          VAL R18
      235 SETTABLEKS                       R34 R33 K72 ["didMount"]
      237 DUPCLOSURE                       R34 K73 [PROTO_12]
      238 SETTABLEKS                       R34 R33 K74 ["willUnmount"]
      240 DUPCLOSURE                       R34 K75 [PROTO_14]
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R31
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R17
      250 SETTABLEKS                       R34 R33 K76 ["render"]
      252 MOVE                             R34 R6
      253 DUPTABLE                         R35 K77 [{"Analytics", "Localization", "Stylizer", "ScriptConversionContext"}]
      254 SETTABLEKS                       R7 R35 K16 ["Analytics"]
      256 SETTABLEKS                       R8 R35 K17 ["Localization"]
      258 SETTABLEKS                       R10 R35 K22 ["Stylizer"]
      260 SETTABLEKS                       R9 R35 K20 ["ScriptConversionContext"]
      262 CALL                             R34 1 1
      263 MOVE                             R35 R33
      264 CALL                             R34 1 1
      265 MOVE                             R33 R34
      266 DUPCLOSURE                       R34 K78 [PROTO_15]
      267 DUPCLOSURE                       R35 K79 [PROTO_17]
      268 CAPTURE                          VAL R26
      269 GETTABLEKS                       R36 R3 K80 ["connect"]
      271 MOVE                             R37 R34
      272 MOVE                             R38 R35
      273 CALL                             R36 2 1
      274 MOVE                             R37 R33
      275 CALL                             R36 1 1
      276 MOVE                             R33 R36
      277 RETURN                           R33 1
