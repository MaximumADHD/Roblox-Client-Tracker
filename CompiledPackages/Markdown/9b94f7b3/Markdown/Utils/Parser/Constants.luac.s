MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["FFlagMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K17 [{"CONTAINERS", "LISTS", "INLINE_TEXT", "PLAIN_TEXT", "STYLED_TEXT", "DIVIDERS", "ASCII", "UNICODE"}]
       17 DUPTABLE                         R3 K20 [{"ROOT", "TAG"}]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K18 ["ROOT"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K19 ["TAG"]
       24 SETTABLEKS                       R3 R2 K9 ["CONTAINERS"]
       26 DUPTABLE                         R3 K24 [{"BULLET_LIST_ITEM", "BULLET_LIST_ITEM_2", "ORDERED_LIST_ITEM"}]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K21 ["BULLET_LIST_ITEM"]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K22 ["BULLET_LIST_ITEM_2"]
       33 LOADB                            R4 1
       34 SETTABLEKS                       R4 R3 K23 ["ORDERED_LIST_ITEM"]
       36 SETTABLEKS                       R3 R2 K10 ["LISTS"]
       38 DUPTABLE                         R3 K34 [{"STYLED_TEXT", "INLINE_CODE", "LINK", "IMAGE", "ACTION", "TABLE_DIVIDER", "TABLE_HEADER", "TABLE_HEADER_2", "TEXT", "BREAK"}]
       39 LOADB                            R4 1
       40 SETTABLEKS                       R4 R3 K13 ["STYLED_TEXT"]
       42 JUMPIFNOT                        R1 ; [+2]
       43 LOADNIL                          R4
       44 JUMP                             ; [+1]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K25 ["INLINE_CODE"]
       48 LOADB                            R4 1
       49 SETTABLEKS                       R4 R3 K26 ["LINK"]
       51 LOADB                            R4 1
       52 SETTABLEKS                       R4 R3 K27 ["IMAGE"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K28 ["ACTION"]
       57 LOADB                            R4 1
       58 SETTABLEKS                       R4 R3 K29 ["TABLE_DIVIDER"]
       60 LOADB                            R4 1
       61 SETTABLEKS                       R4 R3 K30 ["TABLE_HEADER"]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K31 ["TABLE_HEADER_2"]
       66 LOADB                            R4 1
       67 SETTABLEKS                       R4 R3 K32 ["TEXT"]
       69 LOADB                            R4 1
       70 SETTABLEKS                       R4 R3 K33 ["BREAK"]
       72 SETTABLEKS                       R3 R2 K11 ["INLINE_TEXT"]
       74 DUPTABLE                         R3 K35 [{"TEXT", "TABLE_DIVIDER", "TABLE_HEADER", "TABLE_HEADER_2"}]
       75 LOADB                            R4 1
       76 SETTABLEKS                       R4 R3 K32 ["TEXT"]
       78 LOADB                            R4 1
       79 SETTABLEKS                       R4 R3 K29 ["TABLE_DIVIDER"]
       81 LOADB                            R4 1
       82 SETTABLEKS                       R4 R3 K30 ["TABLE_HEADER"]
       84 LOADB                            R4 1
       85 SETTABLEKS                       R4 R3 K31 ["TABLE_HEADER_2"]
       87 SETTABLEKS                       R3 R2 K12 ["PLAIN_TEXT"]
       89 DUPTABLE                         R3 K41 [{"BOLD", "BOLD_2", "ITALIC", "ITALIC_2", "STRIKE"}]
       90 LOADK                            R4 K42 ["b"]
       91 SETTABLEKS                       R4 R3 K36 ["BOLD"]
       93 LOADK                            R4 K42 ["b"]
       94 SETTABLEKS                       R4 R3 K37 ["BOLD_2"]
       96 LOADK                            R4 K43 ["i"]
       97 SETTABLEKS                       R4 R3 K38 ["ITALIC"]
       99 LOADK                            R4 K43 ["i"]
      100 SETTABLEKS                       R4 R3 K39 ["ITALIC_2"]
      102 LOADK                            R4 K44 ["s"]
      103 SETTABLEKS                       R4 R3 K40 ["STRIKE"]
      105 SETTABLEKS                       R3 R2 K13 ["STYLED_TEXT"]
      107 DUPTABLE                         R3 K48 [{"LINE_BREAK", "DIVIDER", "DIVIDER_2"}]
      108 LOADB                            R4 1
      109 SETTABLEKS                       R4 R3 K45 ["LINE_BREAK"]
      111 LOADB                            R4 1
      112 SETTABLEKS                       R4 R3 K46 ["DIVIDER"]
      114 JUMPIFNOT                        R1 ; [+2]
      115 LOADNIL                          R4
      116 JUMP                             ; [+1]
      117 LOADB                            R4 1
      118 SETTABLEKS                       R4 R3 K47 ["DIVIDER_2"]
      120 SETTABLEKS                       R3 R2 K14 ["DIVIDERS"]
      122 DUPTABLE                         R3 K51 [{"WHITESPACE_PATTERN", "PUNCTUATION_PATTERN"}]
      123 LOADK                            R4 K52 ["%s"]
      124 SETTABLEKS                       R4 R3 K49 ["WHITESPACE_PATTERN"]
      126 LOADK                            R4 K53 ["[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]"]
      127 SETTABLEKS                       R4 R3 K50 ["PUNCTUATION_PATTERN"]
      129 SETTABLEKS                       R3 R2 K15 ["ASCII"]
      131 GETIMPORT                        R3 K6 [require]
      133 GETIMPORT                        R4 K1 [script]
      135 GETTABLEKS                       R4 R4 K4 ["Parent"]
      137 GETTABLEKS                       R4 R4 K54 ["UnicodeConstants"]
      139 CALL                             R3 1 1
      140 SETTABLEKS                       R3 R2 K16 ["UNICODE"]
      142 RETURN                           R2 1
