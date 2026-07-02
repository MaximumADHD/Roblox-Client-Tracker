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
       17 DUPTABLE                         R3 K21 [{["ROOT"] = True, ["TAG"] = True}]
       18 SETTABLEKS                       R3 R2 K9 ["CONTAINERS"]
       20 DUPTABLE                         R3 K25 [{["BULLET_LIST_ITEM"] = True, ["BULLET_LIST_ITEM_2"] = True, ["ORDERED_LIST_ITEM"] = True}]
       21 SETTABLEKS                       R3 R2 K10 ["LISTS"]
       23 DUPTABLE                         R3 K35 [{["STYLED_TEXT"] = True, ["INLINE_CODE"], ["LINK"] = True, ["IMAGE"] = True, ["ACTION"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True, ["TEXT"] = True, ["BREAK"] = True}]
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADNIL                          R4
       26 JUMP                             ; [+1]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K26 ["INLINE_CODE"]
       30 SETTABLEKS                       R3 R2 K11 ["INLINE_TEXT"]
       32 DUPTABLE                         R3 K36 [{["TEXT"] = True, ["TABLE_DIVIDER"] = True, ["TABLE_HEADER"] = True, ["TABLE_HEADER_2"] = True}]
       33 SETTABLEKS                       R3 R2 K12 ["PLAIN_TEXT"]
       35 DUPTABLE                         R3 K45 [{["BOLD"] = "b", ["BOLD_2"] = "b", ["ITALIC"] = "i", ["ITALIC_2"] = "i", ["STRIKE"] = "s"}]
       36 SETTABLEKS                       R3 R2 K13 ["STYLED_TEXT"]
       38 DUPTABLE                         R3 K49 [{["LINE_BREAK"] = True, ["DIVIDER"] = True, ["DIVIDER_2"]}]
       39 JUMPIFNOT                        R1 ; [+2]
       40 LOADNIL                          R4
       41 JUMP                             ; [+1]
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K48 ["DIVIDER_2"]
       45 SETTABLEKS                       R3 R2 K14 ["DIVIDERS"]
       47 DUPTABLE                         R3 K54 [{["WHITESPACE_PATTERN"] = "%s", ["PUNCTUATION_PATTERN"] = "[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]"}]
       48 SETTABLEKS                       R3 R2 K15 ["ASCII"]
       50 GETIMPORT                        R3 K6 [require]
       52 GETIMPORT                        R4 K1 [script]
       54 GETTABLEKS                       R4 R4 K4 ["Parent"]
       56 GETTABLEKS                       R4 R4 K55 ["UnicodeConstants"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K16 ["UNICODE"]
       61 RETURN                           R2 1
