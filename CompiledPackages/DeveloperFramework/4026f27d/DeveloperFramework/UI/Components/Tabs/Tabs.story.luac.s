PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Selected tab"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{"selectedTab"}]
        7 SETTABLEKS                       R0 R3 K3 ["selectedTab"]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"selectedTab"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R4 K3 ["Tabs"]
        5 GETTABLEN                        R2 R3 1
        6 SETTABLEKS                       R2 R1 K0 ["selectedTab"]
        8 SETTABLEKS                       R1 R0 K4 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["onTabSelected"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"Tabs", "SelectedTab", "OnTabSelected"}]
        9 GETTABLEKS                       R6 R1 K3 ["Tabs"]
       11 SETTABLEKS                       R6 R5 K3 ["Tabs"]
       13 GETTABLEKS                       R6 R2 K7 ["selectedTab"]
       15 SETTABLEKS                       R6 R5 K4 ["SelectedTab"]
       17 GETTABLEKS                       R6 R0 K8 ["onTabSelected"]
       19 SETTABLEKS                       R6 R5 K5 ["OnTabSelected"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R6 R0 K2 ["UI"]
       20 GETTABLEKS                       R5 R6 K8 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["Tabs"]
       24 GETTABLEKS                       R3 R4 K10 ["types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R6 R0 K2 ["UI"]
       31 GETTABLEKS                       R5 R6 K8 ["Components"]
       33 GETTABLEKS                       R4 R5 K9 ["Tabs"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       38 LOADK                            R6 K9 ["Tabs"]
       39 NAMECALL                         R4 R4 K12 ["extend"]
       41 CALL                             R4 2 1
       42 DUPCLOSURE                       R5 K13 [PROTO_1]
       43 SETTABLEKS                       R5 R4 K14 ["init"]
       45 DUPCLOSURE                       R5 K15 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K16 ["render"]
       50 DUPTABLE                         R5 K18 [{"stories"}]
       51 NEWTABLE                         R6 0 4
       53 DUPTABLE                         R7 K21 [{"name", "story"}]
       54 LOADK                            R8 K22 ["Labels"]
       55 SETTABLEKS                       R8 R7 K19 ["name"]
       57 GETTABLEKS                       R8 R1 K23 ["createElement"]
       59 MOVE                             R9 R4
       60 DUPTABLE                         R10 K24 [{"Tabs"}]
       61 NEWTABLE                         R11 0 3
       63 DUPTABLE                         R12 K26 [{"Label"}]
       64 LOADK                            R13 K27 ["Left"]
       65 SETTABLEKS                       R13 R12 K25 ["Label"]
       67 DUPTABLE                         R13 K26 [{"Label"}]
       68 LOADK                            R14 K28 ["Middle"]
       69 SETTABLEKS                       R14 R13 K25 ["Label"]
       71 DUPTABLE                         R14 K26 [{"Label"}]
       72 LOADK                            R15 K29 ["Right"]
       73 SETTABLEKS                       R15 R14 K25 ["Label"]
       75 SETLIST                          R11 R12 3 [1]
       77 SETTABLEKS                       R11 R10 K9 ["Tabs"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K20 ["story"]
       82 DUPTABLE                         R8 K21 [{"name", "story"}]
       83 LOADK                            R9 K30 ["Icons & tooltips"]
       84 SETTABLEKS                       R9 R8 K19 ["name"]
       86 GETTABLEKS                       R9 R1 K23 ["createElement"]
       88 MOVE                             R10 R4
       89 DUPTABLE                         R11 K24 [{"Tabs"}]
       90 NEWTABLE                         R12 0 3
       92 DUPTABLE                         R13 K33 [{"Icon", "Tooltip"}]
       93 LOADK                            R14 K34 ["rbxasset://textures/StudioToolbox/Tabs/Inventory.png"]
       94 SETTABLEKS                       R14 R13 K31 ["Icon"]
       96 LOADK                            R14 K35 ["Inventory"]
       97 SETTABLEKS                       R14 R13 K32 ["Tooltip"]
       99 DUPTABLE                         R14 K33 [{"Icon", "Tooltip"}]
      100 LOADK                            R15 K36 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
      101 SETTABLEKS                       R15 R14 K31 ["Icon"]
      103 LOADK                            R15 K37 ["Shop"]
      104 SETTABLEKS                       R15 R14 K32 ["Tooltip"]
      106 DUPTABLE                         R15 K33 [{"Icon", "Tooltip"}]
      107 LOADK                            R16 K38 ["rbxasset://textures/StudioToolbox/Tabs/Recent.png"]
      108 SETTABLEKS                       R16 R15 K31 ["Icon"]
      110 LOADK                            R16 K39 ["Recent"]
      111 SETTABLEKS                       R16 R15 K32 ["Tooltip"]
      113 SETLIST                          R12 R13 3 [1]
      115 SETTABLEKS                       R12 R11 K9 ["Tabs"]
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R8 K20 ["story"]
      120 DUPTABLE                         R9 K21 [{"name", "story"}]
      121 LOADK                            R10 K40 ["Labels & icons"]
      122 SETTABLEKS                       R10 R9 K19 ["name"]
      124 GETTABLEKS                       R10 R1 K23 ["createElement"]
      126 MOVE                             R11 R4
      127 DUPTABLE                         R12 K24 [{"Tabs"}]
      128 NEWTABLE                         R13 0 3
      130 DUPTABLE                         R14 K41 [{"Icon", "Label"}]
      131 LOADK                            R15 K34 ["rbxasset://textures/StudioToolbox/Tabs/Inventory.png"]
      132 SETTABLEKS                       R15 R14 K31 ["Icon"]
      134 LOADK                            R15 K35 ["Inventory"]
      135 SETTABLEKS                       R15 R14 K25 ["Label"]
      137 DUPTABLE                         R15 K41 [{"Icon", "Label"}]
      138 LOADK                            R16 K36 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
      139 SETTABLEKS                       R16 R15 K31 ["Icon"]
      141 LOADK                            R16 K37 ["Shop"]
      142 SETTABLEKS                       R16 R15 K25 ["Label"]
      144 DUPTABLE                         R16 K41 [{"Icon", "Label"}]
      145 LOADK                            R17 K38 ["rbxasset://textures/StudioToolbox/Tabs/Recent.png"]
      146 SETTABLEKS                       R17 R16 K31 ["Icon"]
      148 LOADK                            R17 K39 ["Recent"]
      149 SETTABLEKS                       R17 R16 K25 ["Label"]
      151 SETLIST                          R13 R14 3 [1]
      153 SETTABLEKS                       R13 R12 K9 ["Tabs"]
      155 CALL                             R10 2 1
      156 SETTABLEKS                       R10 R9 K20 ["story"]
      158 DUPTABLE                         R10 K21 [{"name", "story"}]
      159 LOADK                            R11 K42 ["Disabled tab"]
      160 SETTABLEKS                       R11 R10 K19 ["name"]
      162 GETTABLEKS                       R11 R1 K23 ["createElement"]
      164 MOVE                             R12 R4
      165 DUPTABLE                         R13 K24 [{"Tabs"}]
      166 NEWTABLE                         R14 0 3
      168 DUPTABLE                         R15 K41 [{"Icon", "Label"}]
      169 LOADK                            R16 K34 ["rbxasset://textures/StudioToolbox/Tabs/Inventory.png"]
      170 SETTABLEKS                       R16 R15 K31 ["Icon"]
      172 LOADK                            R16 K35 ["Inventory"]
      173 SETTABLEKS                       R16 R15 K25 ["Label"]
      175 DUPTABLE                         R16 K44 [{"Icon", "Label", "Disabled"}]
      176 LOADK                            R17 K36 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
      177 SETTABLEKS                       R17 R16 K31 ["Icon"]
      179 LOADK                            R17 K37 ["Shop"]
      180 SETTABLEKS                       R17 R16 K25 ["Label"]
      182 LOADB                            R17 1
      183 SETTABLEKS                       R17 R16 K43 ["Disabled"]
      185 DUPTABLE                         R17 K41 [{"Icon", "Label"}]
      186 LOADK                            R18 K38 ["rbxasset://textures/StudioToolbox/Tabs/Recent.png"]
      187 SETTABLEKS                       R18 R17 K31 ["Icon"]
      189 LOADK                            R18 K39 ["Recent"]
      190 SETTABLEKS                       R18 R17 K25 ["Label"]
      192 SETLIST                          R14 R15 3 [1]
      194 SETTABLEKS                       R14 R13 K9 ["Tabs"]
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R10 K20 ["story"]
      199 SETLIST                          R6 R7 4 [1]
      201 SETTABLEKS                       R6 R5 K17 ["stories"]
      203 RETURN                           R5 1
