MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Util"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 DUPTABLE                         R2 K17 [{"CONTAINERS", "LISTS", "INLINE_TEXT", "PLAIN_TEXT", "STYLED_TEXT", "DIVIDERS", "ASCII", "UNICODE"}]
       18 DUPTABLE                         R3 K20 [{"ROOT", "TAG"}]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K18 ["ROOT"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K19 ["TAG"]
       25 SETTABLEKS                       R3 R2 K9 ["CONTAINERS"]
       27 DUPTABLE                         R3 K24 [{"BULLET_LIST_ITEM", "BULLET_LIST_ITEM_2", "ORDERED_LIST_ITEM"}]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K21 ["BULLET_LIST_ITEM"]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K22 ["BULLET_LIST_ITEM_2"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K23 ["ORDERED_LIST_ITEM"]
       37 SETTABLEKS                       R3 R2 K10 ["LISTS"]
       39 DUPTABLE                         R3 K34 [{"STYLED_TEXT", "INLINE_CODE", "LINK", "IMAGE", "ACTION", "TABLE_DIVIDER", "TABLE_HEADER", "TABLE_HEADER_2", "TEXT", "BREAK"}]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K13 ["STYLED_TEXT"]
       43 JUMPIFNOT                        R1 ; [+2]
       44 LOADNIL                          R4
       45 JUMP                             ; [+1]
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R3 K25 ["INLINE_CODE"]
       49 LOADB                            R4 1
       50 SETTABLEKS                       R4 R3 K26 ["LINK"]
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K27 ["IMAGE"]
       55 LOADB                            R4 1
       56 SETTABLEKS                       R4 R3 K28 ["ACTION"]
       58 LOADB                            R4 1
       59 SETTABLEKS                       R4 R3 K29 ["TABLE_DIVIDER"]
       61 LOADB                            R4 1
       62 SETTABLEKS                       R4 R3 K30 ["TABLE_HEADER"]
       64 LOADB                            R4 1
       65 SETTABLEKS                       R4 R3 K31 ["TABLE_HEADER_2"]
       67 LOADB                            R4 1
       68 SETTABLEKS                       R4 R3 K32 ["TEXT"]
       70 LOADB                            R4 1
       71 SETTABLEKS                       R4 R3 K33 ["BREAK"]
       73 SETTABLEKS                       R3 R2 K11 ["INLINE_TEXT"]
       75 DUPTABLE                         R3 K35 [{"TEXT", "TABLE_DIVIDER", "TABLE_HEADER", "TABLE_HEADER_2"}]
       76 LOADB                            R4 1
       77 SETTABLEKS                       R4 R3 K32 ["TEXT"]
       79 LOADB                            R4 1
       80 SETTABLEKS                       R4 R3 K29 ["TABLE_DIVIDER"]
       82 LOADB                            R4 1
       83 SETTABLEKS                       R4 R3 K30 ["TABLE_HEADER"]
       85 LOADB                            R4 1
       86 SETTABLEKS                       R4 R3 K31 ["TABLE_HEADER_2"]
       88 SETTABLEKS                       R3 R2 K12 ["PLAIN_TEXT"]
       90 DUPTABLE                         R3 K41 [{"BOLD", "BOLD_2", "ITALIC", "ITALIC_2", "STRIKE"}]
       91 LOADK                            R4 K42 ["b"]
       92 SETTABLEKS                       R4 R3 K36 ["BOLD"]
       94 LOADK                            R4 K42 ["b"]
       95 SETTABLEKS                       R4 R3 K37 ["BOLD_2"]
       97 LOADK                            R4 K43 ["i"]
       98 SETTABLEKS                       R4 R3 K38 ["ITALIC"]
      100 LOADK                            R4 K43 ["i"]
      101 SETTABLEKS                       R4 R3 K39 ["ITALIC_2"]
      103 LOADK                            R4 K44 ["s"]
      104 SETTABLEKS                       R4 R3 K40 ["STRIKE"]
      106 SETTABLEKS                       R3 R2 K13 ["STYLED_TEXT"]
      108 DUPTABLE                         R3 K48 [{"LINE_BREAK", "DIVIDER", "DIVIDER_2"}]
      109 LOADB                            R4 1
      110 SETTABLEKS                       R4 R3 K45 ["LINE_BREAK"]
      112 LOADB                            R4 1
      113 SETTABLEKS                       R4 R3 K46 ["DIVIDER"]
      115 JUMPIFNOT                        R1 ; [+2]
      116 LOADNIL                          R4
      117 JUMP                             ; [+1]
      118 LOADB                            R4 1
      119 SETTABLEKS                       R4 R3 K47 ["DIVIDER_2"]
      121 SETTABLEKS                       R3 R2 K14 ["DIVIDERS"]
      123 DUPTABLE                         R3 K51 [{"WHITESPACE_PATTERN", "PUNCTUATION_PATTERN"}]
      124 LOADK                            R4 K52 ["%s"]
      125 SETTABLEKS                       R4 R3 K49 ["WHITESPACE_PATTERN"]
      127 LOADK                            R4 K53 ["[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]"]
      128 SETTABLEKS                       R4 R3 K50 ["PUNCTUATION_PATTERN"]
      130 SETTABLEKS                       R3 R2 K15 ["ASCII"]
      132 GETIMPORT                        R3 K6 [require]
      134 GETIMPORT                        R6 K1 [script]
      136 GETTABLEKS                       R5 R6 K4 ["Parent"]
      138 GETTABLEKS                       R4 R5 K54 ["UnicodeConstants"]
      140 CALL                             R3 1 1
      141 SETTABLEKS                       R3 R2 K16 ["UNICODE"]
      143 RETURN                           R2 1
