PROTO_0:
        0 DUPTABLE                         R3 K26 [{"font", "backgroundColor", "liveBackgroundColor", "textColor", "subTextColor", "dimmerTextColor", "itemColor", "borderColor", "hoveredItemColor", "hoveredTextColor", "primaryItemColor", "primaryBorderColor", "primaryTextColor", "primaryHoveredItemColor", "primaryHoveredBorderColor", "primaryHoveredTextColor", "selectionColor", "selectionBorderColor", "selectedTextColor", "shadowColor", "shadowTransparency", "separationLineColor", "disabledColor", "errorColor", "hoverColor", "hyperlinkTextColor"}]
        1 GETIMPORT                        R5 K30 [Enum.Font]
        3 GETTABLEKS                       R4 R5 K27 ["Gotham"]
        5 SETTABLEKS                       R4 R3 K0 ["font"]
        7 MOVE                             R4 R0
        8 GETTABLEKS                       R5 R1 K31 ["MainBackground"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["backgroundColor"]
       13 GETIMPORT                        R4 K34 [Color3.new]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K2 ["liveBackgroundColor"]
       18 MOVE                             R4 R0
       19 GETTABLEKS                       R5 R1 K35 ["MainText"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K3 ["textColor"]
       24 MOVE                             R4 R0
       25 GETTABLEKS                       R5 R1 K36 ["SubText"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K4 ["subTextColor"]
       30 MOVE                             R4 R0
       31 GETTABLEKS                       R5 R1 K37 ["DimmedText"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K5 ["dimmerTextColor"]
       36 MOVE                             R4 R0
       37 GETTABLEKS                       R5 R1 K38 ["Item"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K6 ["itemColor"]
       42 MOVE                             R4 R0
       43 GETTABLEKS                       R5 R1 K39 ["Border"]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K7 ["borderColor"]
       48 MOVE                             R4 R0
       49 GETTABLEKS                       R5 R1 K38 ["Item"]
       51 GETTABLEKS                       R6 R2 K40 ["Hover"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K8 ["hoveredItemColor"]
       56 MOVE                             R4 R0
       57 GETTABLEKS                       R5 R1 K35 ["MainText"]
       59 GETTABLEKS                       R6 R2 K40 ["Hover"]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K9 ["hoveredTextColor"]
       64 MOVE                             R4 R0
       65 GETTABLEKS                       R5 R1 K41 ["DialogMainButton"]
       67 CALL                             R4 1 1
       68 SETTABLEKS                       R4 R3 K10 ["primaryItemColor"]
       70 MOVE                             R4 R0
       71 GETTABLEKS                       R5 R1 K41 ["DialogMainButton"]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K11 ["primaryBorderColor"]
       76 MOVE                             R4 R0
       77 GETTABLEKS                       R5 R1 K42 ["DialogMainButtonText"]
       79 CALL                             R4 1 1
       80 SETTABLEKS                       R4 R3 K12 ["primaryTextColor"]
       82 MOVE                             R4 R0
       83 GETTABLEKS                       R5 R1 K41 ["DialogMainButton"]
       85 GETTABLEKS                       R6 R2 K40 ["Hover"]
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R3 K13 ["primaryHoveredItemColor"]
       90 MOVE                             R4 R0
       91 GETTABLEKS                       R5 R1 K41 ["DialogMainButton"]
       93 GETTABLEKS                       R6 R2 K40 ["Hover"]
       95 CALL                             R4 2 1
       96 SETTABLEKS                       R4 R3 K14 ["primaryHoveredBorderColor"]
       98 MOVE                             R4 R0
       99 GETTABLEKS                       R5 R1 K42 ["DialogMainButtonText"]
      101 GETTABLEKS                       R6 R2 K40 ["Hover"]
      103 CALL                             R4 2 1
      104 SETTABLEKS                       R4 R3 K15 ["primaryHoveredTextColor"]
      106 MOVE                             R4 R0
      107 GETTABLEKS                       R5 R1 K38 ["Item"]
      109 GETTABLEKS                       R6 R2 K43 ["Selected"]
      111 CALL                             R4 2 1
      112 SETTABLEKS                       R4 R3 K16 ["selectionColor"]
      114 MOVE                             R4 R0
      115 GETTABLEKS                       R5 R1 K39 ["Border"]
      117 GETTABLEKS                       R6 R2 K43 ["Selected"]
      119 CALL                             R4 2 1
      120 SETTABLEKS                       R4 R3 K17 ["selectionBorderColor"]
      122 MOVE                             R4 R0
      123 GETTABLEKS                       R5 R1 K35 ["MainText"]
      125 GETTABLEKS                       R6 R2 K43 ["Selected"]
      127 CALL                             R4 2 1
      128 SETTABLEKS                       R4 R3 K18 ["selectedTextColor"]
      130 MOVE                             R4 R0
      131 GETTABLEKS                       R5 R1 K44 ["Shadow"]
      133 CALL                             R4 1 1
      134 SETTABLEKS                       R4 R3 K19 ["shadowColor"]
      136 MOVE                             R4 R0
      137 GETTABLEKS                       R5 R1 K44 ["Shadow"]
      139 GETTABLEKS                       R6 R2 K40 ["Hover"]
      141 CALL                             R4 2 1
      142 SETTABLEKS                       R4 R3 K20 ["shadowTransparency"]
      144 MOVE                             R4 R0
      145 GETTABLEKS                       R5 R1 K45 ["Separator"]
      147 CALL                             R4 1 1
      148 SETTABLEKS                       R4 R3 K21 ["separationLineColor"]
      150 MOVE                             R4 R0
      151 GETTABLEKS                       R5 R1 K35 ["MainText"]
      153 GETTABLEKS                       R6 R2 K46 ["Disabled"]
      155 CALL                             R4 2 1
      156 SETTABLEKS                       R4 R3 K22 ["disabledColor"]
      158 MOVE                             R4 R0
      159 GETTABLEKS                       R5 R1 K47 ["ErrorText"]
      161 CALL                             R4 1 1
      162 SETTABLEKS                       R4 R3 K23 ["errorColor"]
      164 MOVE                             R4 R0
      165 GETTABLEKS                       R5 R1 K31 ["MainBackground"]
      167 GETTABLEKS                       R6 R2 K40 ["Hover"]
      169 CALL                             R4 2 1
      170 SETTABLEKS                       R4 R3 K24 ["hoverColor"]
      172 MOVE                             R4 R0
      173 GETTABLEKS                       R5 R1 K48 ["LinkText"]
      175 CALL                             R4 1 1
      176 SETTABLEKS                       R4 R3 K25 ["hyperlinkTextColor"]
      178 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K2 ["new"]
        8 RETURN                           R0 1
