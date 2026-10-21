PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 1 0
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K0 ["row gap-small align-y-center padding-x-xsmall"]
        7 GETTABLEKS                       R3 R0 K1 ["tag"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETTABLEKS                       R3 R0 K1 ["tag"]
       12 LOADB                            R4 1
       13 SETTABLE                         R4 R2 R3
       14 LOADB                            R3 0
       15 GETTABLEKS                       R5 R0 K2 ["text"]
       17 FASTCALL1                        TYPEOF R5 ; [+2]
       18 GETIMPORT                        R4 K4 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+7]
       23 GETTABLEKS                       R4 R0 K2 ["text"]
       25 JUMPIFNOTEQKS                    R4 K6 [""] ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETTABLEKS                       R5 R0 K7 ["input"]
       31 JUMPIFNOTEQKNIL                  R5 ; [+3]
       33 LOADK                            R4 K8 ["text-align-x-left text-truncate-end fill"]
       34 JUMP                             ; [+1]
       35 LOADK                            R4 K9 ["text-align-x-left auto-x"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K10 ["createElement"]
       39 GETUPVAL                         R6 2
       40 DUPTABLE                         R7 K17 [{"tag", "Size", "LayoutOrder", "SortOrder", "onActivated", "onSecondaryActivated", "testId"}]
       41 SETTABLEKS                       R2 R7 K1 ["tag"]
       43 GETTABLEKS                       R8 R0 K18 ["size"]
       45 SETTABLEKS                       R8 R7 K11 ["Size"]
       47 GETTABLEKS                       R8 R0 K12 ["LayoutOrder"]
       49 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       51 GETIMPORT                        R8 K20 [Enum.SortOrder.LayoutOrder]
       53 SETTABLEKS                       R8 R7 K13 ["SortOrder"]
       55 GETTABLEKS                       R8 R0 K14 ["onActivated"]
       57 SETTABLEKS                       R8 R7 K14 ["onActivated"]
       59 GETTABLEKS                       R8 R0 K15 ["onSecondaryActivated"]
       61 SETTABLEKS                       R8 R7 K15 ["onSecondaryActivated"]
       63 GETTABLEKS                       R8 R0 K16 ["testId"]
       65 SETTABLEKS                       R8 R7 K16 ["testId"]
       67 DUPTABLE                         R8 K24 [{"Text", "Input", "SortIcon"}]
       68 JUMPIFNOT                        R3 ; [+28]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K10 ["createElement"]
       72 GETUPVAL                         R10 3
       73 DUPTABLE                         R11 K28 [{["tag"], ["Size"], ["fontStyle"], ["textStyle"], ["Text"], ["LayoutOrder"] = -1}]
       74 SETTABLEKS                       R4 R11 K1 ["tag"]
       76 GETIMPORT                        R12 K31 [UDim2.fromScale]
       78 LOADN                            R13 0
       79 LOADN                            R14 1
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K11 ["Size"]
       83 GETTABLEKS                       R12 R0 K25 ["fontStyle"]
       85 SETTABLEKS                       R12 R11 K25 ["fontStyle"]
       87 GETTABLEKS                       R12 R0 K26 ["textStyle"]
       89 SETTABLEKS                       R12 R11 K26 ["textStyle"]
       91 GETTABLEKS                       R12 R0 K2 ["text"]
       93 SETTABLEKS                       R12 R11 K21 ["Text"]
       95 CALL                             R9 2 1
       96 JUMP                             ; [+12]
       97 GETTABLEKS                       R11 R0 K2 ["text"]
       99 FASTCALL1                        TYPEOF R11 ; [+2]
      100 GETIMPORT                        R10 K4 [typeof]
      102 CALL                             R10 1 1
      103 JUMPIFEQKS                       R10 K5 ["string"] ; [+4]
      105 GETTABLEKS                       R9 R0 K2 ["text"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K21 ["Text"]
      111 GETTABLEKS                       R10 R0 K7 ["input"]
      113 JUMPIFNOT                        R10 ; [+12]
      114 GETUPVAL                         R9 1
      115 GETTABLEKS                       R9 R9 K10 ["createElement"]
      117 GETUPVAL                         R10 2
      118 DUPTABLE                         R11 K34 [{["tag"] = "row align-y-center fill size-0-full", ["LayoutOrder"] = 1}]
      119 DUPTABLE                         R12 K35 [{"Input"}]
      120 GETTABLEKS                       R13 R0 K7 ["input"]
      122 SETTABLEKS                       R13 R12 K22 ["Input"]
      124 CALL                             R9 3 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R9
      127 SETTABLEKS                       R9 R8 K22 ["Input"]
      129 GETTABLEKS                       R10 R0 K36 ["sortable"]
      131 JUMPIFNOT                        R10 ; [+36]
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R9 R9 K10 ["createElement"]
      135 GETUPVAL                         R10 4
      136 DUPTABLE                         R11 K40 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 3}]
      137 GETTABLEKS                       R13 R0 K41 ["sortDirection"]
      139 GETUPVAL                         R14 5
      140 GETTABLEKS                       R14 R14 K42 ["Descending"]
      142 JUMPIFNOTEQ                      R13 R14 ; [+3]
      144 LOADK                            R12 K43 ["arrow-small-down"]
      145 JUMP                             ; [+1]
      146 LOADK                            R12 K44 ["arrow-small-up"]
      147 SETTABLEKS                       R12 R11 K37 ["name"]
      149 GETUPVAL                         R12 6
      150 GETTABLEKS                       R12 R12 K45 ["XSmall"]
      152 SETTABLEKS                       R12 R11 K18 ["size"]
      154 GETTABLEKS                       R13 R0 K41 ["sortDirection"]
      156 JUMPIFNOT                        R13 ; [+3]
      157 GETTABLEKS                       R12 R0 K26 ["textStyle"]
      159 JUMP                             ; [+4]
      160 GETTABLEKS                       R12 R1 K46 ["Color"]
      162 GETTABLEKS                       R12 R12 K47 ["None"]
      164 SETTABLEKS                       R12 R11 K38 ["style"]
      166 CALL                             R9 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R9
      169 SETTABLEKS                       R9 R8 K23 ["SortIcon"]
      171 CALL                             R5 3 -1
      172 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Icon"]
       21 GETTABLEKS                       R5 R3 K10 ["Text"]
       23 GETTABLEKS                       R6 R3 K11 ["View"]
       25 GETTABLEKS                       R7 R3 K12 ["Enums"]
       27 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       29 GETTABLEKS                       R8 R3 K14 ["Hooks"]
       31 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       33 GETIMPORT                        R9 K6 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R10 R10 K4 ["Parent"]
       39 GETTABLEKS                       R10 R10 K16 ["SortDirection"]
       41 CALL                             R9 1 1
       42 DUPCLOSURE                       R10 K17 [PROTO_0]
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R7
       50 GETTABLEKS                       R11 R2 K18 ["memo"]
       52 MOVE                             R12 R10
       53 CALL                             R11 1 -1
       54 RETURN                           R11 -1
